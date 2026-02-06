import maya.cmds as cmds
import maya.mel as mel
import pymel.core as pm
import animation.hik as hik
import os
import main.fbxutils as fbxutils
import main.utils as mutils;



old_avatar = 'base_male'    # or 'female', 'def_male'
new_avatar = 'def_male'     # 

base_dir = "q:\\avatar\\anatomy\\"
old_anim_folder = 'q:\\Avatar\\anatomy\\%s\\animations\\' % old_avatar
new_anim_folder = 'q:\\Avatar\\anatomy\\%s\\animations\\' % new_avatar
anim_export_folder = 'q:\\Avatar\\anatomy\\%s\\export\\animations\\' % new_avatar
sansar_def_hik_xml = "q:\\Avatar\\skeleton\\rigs\\sansar_def_HIK.xml"
new_skel = "q:\\Avatar\\skeleton\\%s_skel.ma" % new_avatar

x_list = [
        "jog_left.ma", 
        "jog_right.ma", 
        "walk_crouching_left.ma", 
        "walk_crouching_right.ma", 
        "walk_left.ma", 
        "walk_right.ma"
         ]

z_list = [
        "jog_forward.ma", 
        "run_forward.ma", 
        "walk.ma", 
        "walk_crouching_forward.ma"
         ]

xz_list = [
        "jog_backwards.ma", 
        "walk_backwards.ma", 
        "walk_crouching_backwards.ma", 
        "jog_backleft.ma", 
        "jog_backright.ma", 
        "jog_frontleft.ma", 
        "jog_frontright.ma", 
        "walk_backleft.ma", 
        "walk_backright.ma", 
        "walk_frontleft.ma", 
        "walk_frontright.ma"
         ]


def doit( retarget=1, loco_keys=("x", "z")):    
    for anim_file in anim_list:
        # new file
        pm.newFile(f=1)
        
        retarget( anim_file )
        
        move_root_keys_to_loco(loco_keys)
        
        # clean up scene
        # mel.eval("cleanUpScene 3")
        mutils.sceneCleanup()
        
        # save as new_anim.ma
        pm.saveAs( new_anim_folder + anim_file )
        
        # export as fbx to new_anim export folder
        export_fbx( anim_export_folder + anim_file.replace( '.ma', '.fbx' ))
        

def get_anim_list():
    singleFilter = "All Files (*.*)"
    return cmds.fileDialog2(fileFilter=singleFilter, dialogStyle=2, fileMode=4, dir=base_dir )
    

def set_frame_range( animjoint ):
    try:
        pm.select( animjoint, r=1 )
        if cmds.keyframe(q=1):
            endtime = cmds.keyframe(q=1)[-1]
            cmds.playbackOptions( fps=30, max=endtime, aet=endtime, min=1, ast=1 )
        return endtime
    except:
        print "NAW"

def retarget( anim_file ):
    # import animation .ma into file, preserve refs
    animfile = pm.importFile( old_anim_folder + anim_file, loadReferenceDepth='all', preserveReferences=True )
    animfile_root = pm.ls( 'skel:root' )[0]
    set_frame_range( animfile_root )
    
    # characterize animation.ma file (menu)
    hik.bakeAnimToHIKRig()
    
    # set source to stance 
    mel.eval( 'hikSetCurrentCharacter("rig:base_male_HIK")' )
    mel.eval( 'mayaHIKsetStanceInput("rig:base_male_HIK")' )
    
    # ref new_skel (q:\Avatar\skeleton\def_male_skel.ma)
    newskelref = pm.createReference( new_skel, namespace='skel' )
    
    # characterize new_skel to HIK (create sansar HIK def in menu)
    pm.select( 'skel:Locomotion_Vector', r=1 )
    hik.createSansarHIKCharacter(hikCharName="sansarDefHIKChar", defFilePath=os.path.normpath(sansar_def_hik_xml))
    
    # set new_skel HIK source to old_anim
    mel.eval( 'hikSetCurrentCharacter("sansarDefHIKChar")' )
    mel.eval( 'hikSetCharacterInput( "sansarDefHIKChar", "rig:base_male_HIK" )' )
    
    # set old_anim source to control rig
    mel.eval( 'mayaHIKsetRigInput( "rig:base_male_HIK" )' )
    # mel.eval( 'updateHIKCharacterToolEnableCheckBox()' )
       
    # bake anim on new_skel to skeleton 
    mel.eval( 'hikSetCurrentCharacter("sansarDefHIKChar")' )
    mel.eval( 'optionVar -intValue keyFullBody 1' )
    mel.eval( 'setKeyingMode( )' )
    mel.eval( 'hikBakeCharacter(0)' )
    
    # remove old_anim reference
    for ref in pm.ls(type='reference'):
        if ref.name() == 'rigRN':
            pm.system.FileReference( ref.referenceFile() ).remove()

def export_fbx( exportfile ):
    pm.mel.FBXResetExport()
    pm.mel.FBXExportAnimationOnly(v=False)
    pm.mel.FBXExportCameras(v=False)
    pm.mel.FBXExportConstraints(v=False)
    pm.mel.FBXExportHardEdges(v=False)
    pm.mel.FBXExportInputConnections(v=True)
    pm.mel.FBXExportShapes(v=True)
    pm.mel.FBXExportSkins(v=True)
    pm.mel.FBXExportReferencedAssetsContent(v=True)
    pm.mel.FBXExportShapes(v=True)
    pm.mel.FBXExportSkeletonDefinitions(v=True)
    pm.mel.FBXExportSmoothMesh(v=True)
    pm.mel.FBXExportInAscii (v=True)
    pm.mel.FBXExport(f=exportfile) #Actual export command

def move_root_keys_to_loco( key_axes=('x', 'z') ):
    loco_vector = pm.ls( "skel:Locomotion_Vector" )[0]
    skel_root = pm.ls( "skel:root" )[0]
    attrs = list()
    
    # go to frame 1
    pm.currentTime(1)
    # key "skel:Locomotion_Vector" tx and tz
    for axis in key_axes:
        pm.setKeyframe( getattr(loco_vector, "t%s" % axis ) )
        attrs.append( "t%s" % axis )
    
    # cut and paste keys from root to loco_vector
    pm.cutKey( skel_root, attribute=attrs, time=":", hierarchy=0, controlPoints=0, shape=1 )
    pm.pasteKey( loco_vector, attribute=attrs, time=1, option='insert', copies=1, connect=1, timeOffset=0, floatOffset=0, valueOffset=0 )

    for axis in key_axes:
        pm.setAttr( getattr(skel_root, "t%s" % axis ), 0 )