import maya.cmds as cmds
import maya.mel as mel
import pymel.core as pm
import animation.hik as hik
import os

anim_list = [ 
            "walk_crouching_backwards.ma"
            ]

old_anim_folder = 'q:\\Avatar\\anatomy\\base_female\\animations\\'
new_anim_folder = 'q:\\Avatar\\anatomy\\base_male\\animations\\'
anim_export_folder = 'q:\\Avatar\\anatomy\\base_male\\export\\animations\\'
sansar_def_hik_xml = "q:\\Avatar\\skeleton\\rigs\\sansar_HIK.xml"
new_skel = "q:\\Avatar\\skeleton\\base_male_skel.ma"

def select_files_dialog():
    # open file dialog w/ multi select, selection will populate anim_list
    pass


def set_frame_range( animjoint ):
    try:
        pm.select( animjoint, r=1 )
        if cmds.keyframe(q=1):
            endtime = cmds.keyframe(q=1)[-1]
            cmds.playbackOptions( fps=30, max=endtime, aet=endtime, min=1, ast=1 )
        return endtime
    except:
        print "NAW"
    
def doit():    
    for anim_file in anim_list:
        # new file
        pm.newFile(f=1)
        
        retarget( anim_file )
        
        # clean up scene
        mel.eval("cleanUpScene 3")
        
        # save as new_anim.ma
        pm.saveAs( new_anim_folder + anim_file )
        
        # export as fbx to new_anim export folder
        export_fbx( anim_export_folder + anim_file.replace( '.ma', '.fbx' ))
        

def retarget( anim_file ):
    # import animation .ma into file, preserve refs
    animfile = pm.importFile( old_anim_folder + anim_file, loadReferenceDepth='all', preserveReferences=True )
    animfile_root = pm.ls( 'skel:root' )[0]
    set_frame_range( animfile_root )
    
    # characterize animation.ma file (menu)
    hik.bakeAnimToHIKRig()
    
    # set source to stance 
    mel.eval( 'hikSetCurrentCharacter("rig:base_female_HIK")' )
    mel.eval( 'mayaHIKsetStanceInput("rig:base_female_HIK")' )
    
    # ref new_skel (q:\Avatar\skeleton\def_male_skel.ma)
    newskelref = pm.createReference( new_skel, namespace='skel' )
    
    # characterize new_skel to HIK (create sansar HIK def in menu)
    pm.select( 'skel:root', r=1 )
    hik.createSansarHIKCharacter(hikCharName="sansarDefHIKChar", defFilePath=os.path.normpath( sansar_def_hik_xml ))
    
    # set new_skel HIK source to old_anim
    mel.eval( 'hikSetCurrentCharacter("sansarDefHIKChar")' )
    mel.eval( 'hikSetCharacterInput( "sansarDefHIKChar", "rig:base_female_HIK" )' )
    
    # set old_anim source to control rig
    mel.eval( 'mayaHIKsetRigInput( "rig:base_female_HIK" )' )
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
    
doit()