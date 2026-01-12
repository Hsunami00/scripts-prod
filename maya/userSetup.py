print('start HH scripts folder userSetup.py file')

import maya.cmds as cmds
from maya import mel
import pymel.core as pm
import maya.OpenMaya as om
import maya.api.OpenMaya as api
import os 
import platform 
from hh_tools import hh_utils as hhu


def initialize_maya():
    # pass
    # cmds.evalDeferred('import LL_tools.main.startup;LL_tools.main.startup.setupMenu()', lowestPriority=True) # ;del(main)
    cmds.evalDeferred('import hh_tools.startup;hh_tools.startup.setupMenu()', lowestPriority=True)       # 

def get_unit():
    return cmds.currentUnit(q=1)
    
def num_sel():
    return len(cmds.ls(sl=1, fl=1))
    
def num_influences():
    try:
        return len(cmds.skinCluster(q=1, inf=1))
    except:
        return 0

def num_weighted_influences():
    try:
        return len(cmds.skinCluster(q=1, wi=1))
    except:
        return 0

def frame_rate():
    return cmds.currentUnit( q=1, t=1 )


def toggle_hud():
    objs =  cmds.headsUpDisplay('numObj', q=1, ex=1)
    infs = cmds.headsUpDisplay('numInf', q=1, ex=1)
    w_infs = cmds.headsUpDisplay('numWeightedInf', q=1, ex=1)
    units = cmds.headsUpDisplay('currentUnits', q=1, ex=1)
    fps = cmds.headsUpDisplay('fpsRate', q=1, ex=1)
    hud_on = 1
    
    if objs and infs and units and fps:   
        cmds.headsUpDisplay('currentUnits', rem=1)
        cmds.headsUpDisplay('numObj', rem=1)
        cmds.headsUpDisplay('numInf', rem=1)
        cmds.headsUpDisplay('numWeightedInf', rem=1)
        cmds.headsUpDisplay('fpsRate', rem=1)
    else:
        cmds.headsUpDisplay('currentUnits', s=0, c=get_unit, b=8, atr=1, l="Working Unit:")
        cmds.headsUpDisplay('numObj', s=0, c=num_sel, b=9,  atr=1, l="Selected:")
        cmds.headsUpDisplay('numInf', s=0, c=num_influences, b=10,  atr=1, l="Skinned Infs:")
        cmds.headsUpDisplay('numWeightedInf', s=0, c=num_weighted_influences, b=11,  atr=1, l="Weighted Infs:")
        cmds.headsUpDisplay('fpsRate', s=0, c=frame_rate, b=12,  atr=1, l="Frame rate:")


def set_settings():
    cmds.currentUnit(l='cm', time='ntsc')
    cmds.grid(s=100, sp=100)
    pm.playbackOptions( min=1, ast=1, max=60, aet=60 )


if __name__ == '__main__':
    initialize_maya()
    toggle_hud()
    cmds.evalDeferred('set_settings()', lowestPriority=True)
    del(initialize_maya)

print('finished HH scripts folder userSetup.py file')