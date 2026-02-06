import pymel.core as pm
import main.p4cmd as p4

filelist = ["q:\\Avatar\\anatomy\\base_male\\animations\\jump_jog_f_jump.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_jog_f_jump_lu.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_jog_f_jump_ru.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_jog_l_jump.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_jog_l_jump_lu.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_jog_l_jump_ru.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_jog_r_jump.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_jog_r_jump_lu.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_jog_r_jump_ru.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_run_f_jump.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_run_f_jump_lu.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_run_f_jump_ru.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_run_l_jump_lu.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_run_l_jump_ru.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_run_r_jump_lu.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_run_r_jump_ru.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_stand_relaxed_jump.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_stand_relaxed_jump_b.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_stand_relaxed_jump_f.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_stand_relaxed_jump_l.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_stand_relaxed_jump_r.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_walk_b_jump.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_walk_b_jump_lu.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_walk_b_jump_ru.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_walk_f_jump.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_walk_f_jump_lu.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_walk_f_jump_ru.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_walk_l_jump.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_walk_l_jump_lu.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_walk_l_jump_ru.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_walk_r_jump.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_walk_r_jump_lu.ma", 
            "q:\\Avatar\\anatomy\\base_male\\animations\\jump_walk_r_jump_ru.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_jog_f_jump.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_jog_f_jump_lu.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_jog_f_jump_ru.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_jog_l_jump.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_jog_l_jump_lu.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_jog_l_jump_ru.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_jog_r_jump.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_jog_r_jump_lu.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_jog_r_jump_ru.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_run_f_jump.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_run_f_jump_lu.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_run_f_jump_ru.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_run_l_jump_lu.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_run_l_jump_ru.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_run_r_jump_lu.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_run_r_jump_ru.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_stand_relaxed_jump.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_stand_relaxed_jump_b.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_stand_relaxed_jump_f.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_stand_relaxed_jump_l.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_stand_relaxed_jump_r.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_walk_b_jump.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_walk_b_jump_lu.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_walk_b_jump_ru.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_walk_f_jump.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_walk_f_jump_lu.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_walk_f_jump_ru.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_walk_l_jump.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_walk_l_jump_lu.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_walk_l_jump_ru.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_walk_r_jump.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_walk_r_jump_lu.ma", 
            "q:\\Avatar\\anatomy\\base_female\\animations\\jump_walk_r_jump_ru.ma", 
            "Q:\\Avatar\\anatomy\\base_female\\animations\\walk_crouching_backleft.ma", 
            "Q:\\Avatar\\anatomy\\base_female\\animations\\walk_crouching_backright.ma", 
            "Q:\\Avatar\\anatomy\\base_female\\animations\\walk_crouching_backwards.ma", 
            "Q:\\Avatar\\anatomy\\base_female\\animations\\walk_crouching_forward.ma", 
            "Q:\\Avatar\\anatomy\\base_female\\animations\\walk_crouching_frontleft.ma", 
            "Q:\\Avatar\\anatomy\\base_female\\animations\\walk_crouching_frontright.ma", 
            "Q:\\Avatar\\anatomy\\base_female\\animations\\walk_crouching_idle.ma", 
            "Q:\\Avatar\\anatomy\\base_female\\animations\\walk_crouching_left.ma", 
            "Q:\\Avatar\\anatomy\\base_female\\animations\\walk_crouching_right.ma", 
            "Q:\\Avatar\\anatomy\\base_male\\animations\\walk_crouching_backleft.ma", 
            "Q:\\Avatar\\anatomy\\base_male\\animations\\walk_crouching_backright.ma", 
            "Q:\\Avatar\\anatomy\\base_male\\animations\\walk_crouching_backwards.ma", 
            "Q:\\Avatar\\anatomy\\base_male\\animations\\walk_crouching_forward.ma", 
            "Q:\\Avatar\\anatomy\\base_male\\animations\\walk_crouching_frontleft.ma", 
            "Q:\\Avatar\\anatomy\\base_male\\animations\\walk_crouching_frontright.ma", 
            "Q:\\Avatar\\anatomy\\base_male\\animations\\walk_crouching_idle.ma", 
            "Q:\\Avatar\\anatomy\\base_male\\animations\\walk_crouching_left.ma", 
            "Q:\\Avatar\\anatomy\\base_male\\animations\\walk_crouching_right.ma"
            ]

def root_motion_to_head( skipaxes=('x','y','z') ):
    # delete other locators
    lst = [pm.listRelatives(loc, p=1)[0] for loc in pm.ls(type='locator') if ( pm.listRelatives(loc, p=1)[0] != 'temploc' )]
    pm.delete(lst)

    pm.currentTime( 1 )
    skelroot = pm.ls('skel:root')[0]
    pm.select( skelroot, r=1)
        
    cmds.playbackOptions(max=cmds.keyframe(q=1)[-1], fps=30, aet=cmds.keyframe(q=1)[-1])
    endframe = cmds.playbackOptions(q=1, max=1 )
        
    # create locator
    temploc = pm.spaceLocator( n='temploc', a=1 )
        
    # move temploc to head.tx and head.tz
    head = pm.ls('skel:head')[0]
    loco = pm.ls('skel:Locomotion_Vector')[0]
    skelroot = pm.ls('skel:root')[0]
        
    headpos = pm.xform( head, q=1, t=1, ws=1 )
    pm.xform( temploc, t=(headpos[0], 0, headpos[2]), ws=1, a=1 ) 
        
    # freeze xforms
    pm.makeIdentity( temploc, a=1, t=1, r=1, s=1, n=0, pn=1 )

    #constrain loco to temploc
    root_cnst = pm.pointConstraint( skelroot, temploc, mo=1, skip=skipaxes ) 
    temploc_cnst = pm.pointConstraint( temploc, loco, mo=0 ) 

    # keep temploc above 0 in y
    pm.transformLimits(temploc, ety=( 1, 0 ) )

    # bake keys on loco
    pm.bakeResults( loco, t= (1,endframe) , simulation = 1, sparseAnimCurveBake = 0, minimizeRotation = 1 )

    # delete temploc
    templocpos = temploc.localPosition.get()
    pm.delete(temploc)

    # goto first frame
    pm.currentTime(1)
        
    # create offset grp
    pm.select(d=1)
    offset_grp = pm.group( n='offset' )
    pm.select(d=1)

    # move offset grp to loco pos
    pm.move(offset_grp, templocpos )
    pm.parent( skelroot, offset_grp )

    # move offset grp to (0,0,0)
    pm.move(offset_grp, (0, 0, 0) )
       
    # create new anim layer for skel:root
    pm.select( skelroot, r=1 )
    new_anim_layer = pm.animLayer( "new_anim_layer", aso=1 )

    # unparent skel:root from offset (parent to world)
    pm.parent( skelroot, w=1 )

    # move root in new anim layer by offset
    new_x = pm.ls('skel:root')[0].getTranslation().x + pm.ls('offset')[0].getTranslation().x
    new_z = pm.ls('skel:root')[0].getTranslation().z + pm.ls('offset')[0].getTranslation().z
    pm.xform( pm.ls('skel:root')[0], ws=1, t=( new_x, pm.ls('skel:root')[0].getTranslation().y , new_z) )

    # key root in new layer
    pm.setKeyframe( skelroot, at='translate', animLayer=new_anim_layer)

    # merge layers
    # pm.bakeResults( ('skel:root.translateX', 'skel:root.translateY', 'skel:root.translateZ'), simulation = False, dic = False, removeBakedAttributeFromLayer = 1, destinationLayer = 'BaseAnimation', sampleBy = 1, time = "1:%s" % endframe, resolveWithoutLayer = ('BaseAnimation', 'new_anim_layer') )
    pm.bakeResults( ('skel:root.translateX', 'skel:root.translateY', 'skel:root.translateZ'), simulation = False, dic = False, removeBakedAttributeFromLayer = 1, destinationLayer = 'BaseLayer', sampleBy = 1, time = (1,"%s" % endframe) )
    pm.delete( offset_grp )


for file in filelist:
    pm.openFile( file, f=1 )
    # p4.p4CurrentScene(sync=True, edit=True)
    root_motion_to_head()
    pm.saveAs( file, f=1 )