import os
import pymel.core as pm

fingers = ['skel:L_thumb_01',
         'skel:L_index_01',
         'skel:L_middle_01',
         'skel:L_ring_01',
         'skel:L_pinky_01',
         'skel:R_index_01',
         'skel:R_middle_01',
         'skel:R_ring_01',
         'skel:R_pinky_01',
         'skel:R_thumb_01'
         ]

source_hands = pm.sceneName()         
gender_dir = "base_{0}".format( source_hands.split('/')[-2] )
dirname = "q:\\Avatar\\anatomy\\%s\\animations\\" % gender_dir
basemesh = pm.ls( "mesh:{0}_hands".format(gender_dir) )

for joint in fingers:
    pm.openFile( source_hands, f=1 )
    side = 'left' if joint.split('_')[0][-1] == 'L' else 'right'
    finger = joint.split('_')[1]
    filename = "hands_{0}_{1}_curl.ma".format( side, finger )

    exportfile = dirname + filename
    
    pm.select( fingers, r=1 )    
    pm.select( joint, d=1 )
    pm.select(hi=1)
    
    # break connections
    for jnt in pm.ls(sl=1):
        jnt = pm.ls(jnt)[0]
        anim_curves = pm.listConnections( jnt, s=True, type="animCurve")
        pm.delete( anim_curves )
    
    # bindpose
    for pose in cmds.ls(type='dagPose'):
        cmds.dagPose(pose, r=1)
    
    pm.delete( basemesh )
    # saveas
    pm.saveAs( exportfile, f=1 )