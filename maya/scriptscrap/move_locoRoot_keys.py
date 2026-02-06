import maya.cmds as cmds
import maya.mel as mel
import pymel.core as pm
import sys
import os
import main.fbxutils as fbxutils

new_anim_folder = "q:\\Avatar\\anatomy\\def_male\\animations\\"

x_list = ["jog_left.ma", 
"jog_right.ma", 
"walk_crouching_left.ma", 
"walk_crouching_right.ma", 
"walk_left.ma", 
"walk_right.ma"]

z_list = ["jog_forward.ma", 
"run_forward.ma", 
"walk.ma", 
"walk_crouching_forward.ma"]

xz_list = ["jog_backwards.ma", 
"walk_backwards.ma", 
"walk_crouching_backwards.ma", 
"jog_backleft.ma", 
"jog_backright.ma", 
"jog_frontleft.ma", 
"jog_frontright.ma", 
"walk_backleft.ma", 
"walk_backright.ma", 
"walk_frontleft.ma", 
"walk_frontright.ma"]

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

pm.newFile(f=1)
for anim in x_list:
    pm.openFile( new_anim_folder + anim )
    move_root_keys_to_loco('x')
    pm.saveFile( f=1 )
    fbxutils.exportCurrFileAsFBX()
    pm.newFile(f=1)

for anim in z_list:
    pm.openFile( new_anim_folder + anim )
    move_root_keys_to_loco('z')
    pm.saveFile( f=1 )
    fbxutils.exportCurrFileAsFBX()
    pm.newFile(f=1)

for anim in xz_list:
    pm.openFile( new_anim_folder + anim )
    move_root_keys_to_loco(('x', 'z'))
    pm.saveFile( f=1 )
    fbxutils.exportCurrFileAsFBX()
    pm.newFile(f=1)
