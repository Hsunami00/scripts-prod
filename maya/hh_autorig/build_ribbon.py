### SAFE TO DELETE, CODE HAS BEEN COPIED TO PROPER AUTORIG.PY FILE

import maya.cmds as cmds
import maya.mel as mel
import pymel.core as pm
import maya.OpenMaya as om
import maya.OpenMayaAnim as oma
import maya.OpenMayaUI as omu
import maya.api.OpenMaya as api
import math
import os

import hh_autorig.widgets.widgets as widgets
#  MVector distance
# (om.MVector(v1-v2).length())
#
# pm.openFile(pm.sceneName(), f=1)
#


def build_ribbon(joints, bendycount, ribbonwidth, bodypart, boneAimDir):
    first_z = False
    curvelines = []
    bendybones = []
    bendylocs = []
    bendyctrls = []
    bindbones = list(joints)
    rigGrp = pm.group(n='{}_rigGrp'.format(bodypart), em=1, w=1)
    pm.matchTransform(rigGrp, joints[0], pos=1, rot=1)
    ribbGrp = pm.group(n='{}_ribbonGrp'.format(bodypart), em=1 ) #, p=rigGrp)
    pm.parent(ribbGrp, rigGrp)

    for j in joints:
        xAxis = om.MVector(*tuple(j.getMatrix(ws=1)[0][:3])).normal()
        if (boneAimDir == '-x'):
            xAxis = -xAxis
        xParent = (j.getTranslation(ws=1) - j.getParent().getTranslation(ws=1)).normal()
        zAxis = om.MVector(*tuple(j.getMatrix(ws=1)[2][:3])).normal()
        first_z = zAxis if (not first_z) else first_z     # use shoulder z-axis for all joints (since wrist is different)

        # make curveline at bone position
        origin = om.MVector(*tuple(j.getMatrix(ws=1)[3][:3]))
        pt2 = (origin - (first_z * ribbonwidth))
        pt1 = (origin + (first_z * ribbonwidth))
        curveline = pm.curve(n='{}_ribboncurve'.format(j), d=1, p=[pt1, pt2])
        # print('made 1st curve line at {}'.format(j))

        # make extra curveline 0.1 units in front and back of main line for all inside joints
        if j is not joints[0] and j is not joints[-1]:
            bp1 = pt1 - xParent
            bp2 = pt2 - xParent
            fp2 = pt2 + xAxis
            fp1 = pt1 + xAxis
            curvelineback = pm.curve(n='{}_creaseRibboncurve'.format(j), d=1, p=[bp1, bp2])
            curvelinefwd = pm.curve(n='{}_creaseRibboncurve'.format(j), d=1, p=[fp1, fp2])
            curvelines.append((curvelineback, curveline, curvelinefwd))
            # print('made joint bend helper lines')
        else:
            # print('no bend helper line made at {}'.format(j))
            curvelines.append(curveline)

        # make curves and joints for bendybones now
        if j != joints[-1] and bendycount:  # not the last joint in chain
            j1 = j.getTranslation(ws=1)
            j2 = j.listRelatives(c=1)[0].getTranslation(ws=1)
            dist = om.MVector(j2 - j1).length()
            bendyincrement = dist / (bendycount + 1)
            bendygrp = pm.createNode('transform', name='{}_bendyParentGrp'.format(j), ss=1, p=rigGrp)
            # TODO: try using opm connections instead of constraints
            pm.matchTransform(bendygrp, j, pos=1, rot=1)
            pm.pointConstraint(j, bendygrp, mo=1)
            pm.orientConstraint(j, bendygrp, mo=1)
            for i in range(bendycount):         # make a line curve at each bendy location
                pt = j1 + (xAxis * ((i+1) * bendyincrement))
                pt2 = (pt - (first_z * ribbonwidth))
                pt1 = (pt + (first_z * ribbonwidth))
                bendyjoint = pm.joint(n='{0}_bendy0{1}'.format(j, i+1), p=pt, o=j.getRotation(ws=1))
                bendy_CTRL_joint =  pm.joint(n='{0}_bendy0{1}_CTRL'.format(j, i+1), p=pt, o=j.getRotation(ws=0), rad=2)
                bindbones.append(bendy_CTRL_joint)
                bendyctrls.append(bendy_CTRL_joint)
                pm.parent(bendyjoint, j)
                pm.parent(bendy_CTRL_joint, bendygrp)
                bendylocShape = pm.createNode('locator', n='{0}Shape'.format(bendyjoint.name()))
                bendyloc = bendylocShape.listRelatives(parent=True, fullPath=True)[0]
                bendyloc.rename(bendyjoint.name() + '_loc')
                nodeMatrix = bendyjoint.getMatrix(worldSpace=True)
                bendyloc.setMatrix(nodeMatrix, worldSpace=True)
                pm.parent(bendyloc, ribbGrp)
                bendylocs.append(bendyloc)
                bendycurveline = pm.curve(n='{0}_0{1}_bendyRibboncurve'.format(j, i+1), d=1, p=[pt1, pt2])
                curvelines.append(bendycurveline)
                # print('made bendy {} curve line'.format(i+1))
    ribb = pm.loft(curvelines, n='{}_ribbon'.format(bodypart),ch=1, u=0, c=0, ar=1, d=1, ss=1, rn=0, po=0, rsn=True, rb=1)
    pm.rebuildSurface(ribb[0], ch=1, rpo=1, rt=0, end=1, kr=0, kcp=1, kc=0, su=4, du=1, sv=4, dv=3, tol=0.001, fr=0, dir=2)
    pm.delete(ribb[0], ch=1)
    pm.parent(ribb[0], ribbGrp)
    pm.delete(curvelines)
    pm.select(d=1)
    pm.skinCluster(bindbones, ribb[0], n='{}_skinCluster'.format(ribb[0]), tsb=1, bm=1, sm=0, nw=1, wd=1, mi=2, omi=1, dr=0.1, fnw=1, rui=0 )
    # uv pin locators to ribbon
    # print(bendylocs)
    pin_to_uv(ribb[0], bendylocs)
    # parent / point & orient constraint bendy bone to locator (or use offsetParentMatrix connections)
    # create control shapes for bendys


    return ribbGrp, rigGrp


def pin_to_uv(surface, locs):
    # check if there already is a shape origin node
    shapeOrig = None
    shapes = pm.listRelatives(surface, c=True, s=True)

    if len(shapes) > 1:
        for s in shapes:
            io = pm.getAttr("{0}.intermediateObject".format(s))
            if io == 1:
                shapeOrig = s
            else:
                shape = s

    pin = pm.createNode("uvPin", name="{0}_uvPin".format(surface))
    pin.normalAxis.set(4)
    pin.tangentAxis.set(5)
    pin.relativeSpaceMode.set(1)

    shape.worldSpace[0] >> pin.deformedGeometry
    shapeOrig.local >> pin.originalGeometry

    readout = pm.createNode("closestPointOnSurface")
    shape.worldSpace[0] >> readout.inputSurface

    c = 0
    for loc in locs:
        locPos = loc.worldPosition.get()
        readout.setAttr('inPosition', locPos[0], locPos[1], locPos[2])
        u, v = readout.u.get(), readout.v.get()
        pm.setAttr("{0}.coordinate[{1}]".format(pin, c), u, v)
        pin.outputMatrix[c] >> loc.offsetParentMatrix
        loc.setTranslation(0)
        loc.setRotation((0, 0, 0))
        loc.setScale((1, 1, 1))
        c+=1
    pm.delete(readout)

    return pin


def create_control_at_bone(name, bone, buffergroups, ctrltype, aimdir, scale, color, thickness, parent):
    ctrl = widgets.create_curve(ctrltype, name, aimdir, scale)
    parentgroup = None
    for i in range(1, buffergroups + 2):
        bg = pm.createNode('transform', name='{}_ptr{}'.format(name, i - 1), ss=1, p=parentgroup)
        parentgroup = bg
        if i == 1:
            topgrp = bg
            topgrp.rename(topgrp.replace('_ptr0', '_parentOffsetGrp'))
        if i == (buffergroups + 1):
            pm.parent(ctrl, bg)
    pm.matchTransform(topgrp, bone, pos=1, rot=1)

    if parent:
        pm.parent(topgrp, parent)
    return ctrl, topgrp


def build_ik_fk_limb(bones, bodypart, buffergroups, rigGrp):
    origin_bone = bones[0]
    center_bones = bones[1:-1]
    end_bone = bones[-1]

    # create IK ctrl and handle
    ikcontrols=[]
    ik_grp = pm.createNode('transform', name='{}_IKGrp'.format(bodypart), ss=1, p=rigGrp )
    ik_control = create_control_at_bone('{0}_IK_Ctrl'.format(bodypart), bones[-1], 3, 'cube', (1,0,0), (5,5,5), 'blue', 2, rigGrp)
    limb_IK = pm.ikHandle(sol='ikRPsolver', sj=origin_bone, ee=end_bone, name=('{}_IKhandle'.format(bodypart)))
    pm.ikHandle(limb_IK[0], e=1, dh=1)

    # create locator to guide poleVec and parent the loc to origin_bone and put the locator behind the center_bone
    # TODO: write logic for hind legs / legs with >2 bones
    # TODO: rewrite this better with maths
    pole_loc = pm.spaceLocator(name='{}_pole_loc'.format(bodypart))    # create locator to place pole vector during IKFK switch; parent to upperarm_L
    if center_bones[0].getTranslation(ws=1)[1] > end_bone.getTranslation(ws=1)[1]:
        _pole_offset = 20
        aimdir = (0, -1, 0)
    elif center_bones[0].getTranslation(ws=1)[1] < end_bone.getTranslation(ws=1)[1]:
        _pole_offset = -20
        aimdir = (0, 1, 0)
    pole_control = create_control_at_bone('{}_poleVec_Ctrl'.format(bodypart), center_bones[0], 3, 'cone',
                                          aimdir, (1, 1, 1), 'blue', 2, rigGrp)
    ikcontrols.extend([ik_control, pole_control])
    pm.move(pole_control[1], 0, _pole_offset, 0, r=True, os=True, wd=True)
    # pm.setAttr('%s.visibility' % pole_loc, 0)
    pm.pointConstraint(origin_bone, pole_loc, mo=1, w=1)
    pm.matchTransform( pole_loc, pole_control[1], pos=1, rot=1)
    # TODO: find better alternative to parentConstraint with opm
    pm.parentConstraint(origin_bone, pole_loc, mo=1, w=1)
    pm.poleVectorConstraint(pole_control[0], limb_IK[0], w=1)

    # Connect the IK handle visibility to the end_bone IK enable attribute.
    pm.addAttr(ik_control[0], ln='enableIK', at='bool', k=1, dv=0, h=0)
    ik_control[0].enableIK >> limb_IK[0].ikBlend
    # ik_control[0].enableIK >> ik_control[0].visibility
    # ik_control[0].enableIK >> pole_control[0].visibility
    pm.parent(limb_IK, pole_control[1], pole_loc, ik_control[1], ik_grp)

    # build FK controls for each bone first; match parenting
    fkcontrols = []
    newctrl = None
    for i in bones:
        parent = rigGrp if (i == bones[0]) else newctrl[0]
        newctrl = create_control_at_bone('{}_FK_Ctrl'.format(i), i, buffergroups, 'circle', (1, 0, 0), (5, 5, 5), 'blue', 2, parent)
        pm.pointConstraint(newctrl[0], i, mo=1, w=1)
        pm.orientConstraint(newctrl[0], i, mo=1, w=1)
        fkcontrols.append(newctrl)

    # self.lock_attrs(ik_control, ['sx', 'sy', 'sz'])
    pm.setAttr('%s.v' % ik_control[0], keyable=0, channelBox=0)
    # self.lock_attrs(pole_control, ['sx', 'sy', 'sz', 'rx', 'ry', 'rz'])
    pm.setAttr('%s.v' % pole_control[0], keyable=0, channelBox=0)

    if pm.ls('%s_offset' % (end_bone)):
        pm.orientConstraint(ik_control, '%s_offset' % (end_bone), mo=True)

    pm.select(d=1)

    return (fkcontrols, ikcontrols)


# create FK controls for bones
# create IK handle, polevec, and controls
# create stretchy
# create squash
# create elbow slide



armbones = pm.ls('upperarm_l', 'lowerarm_l', 'hand_l')
spinebones = pm.ls('spine_01', 'spine_02', 'spine_03', 'spine_04')
legbones = pm.ls('thigh_l', 'calf_l', 'foot_l')
# hindlegbones = pm.ls('thigh_l', 'calf_l', 'foot_l')

armRibb = build_ribbon(armbones, 3, 3, 'arm_L', 'x')
spineRibb = build_ribbon(spinebones, 1, 6, 'spine', 'x')
legRibb = build_ribbon(legbones, 3, 3, 'leg_L', '-x')
# hindlegribb = pm.ls('thigh_l', 'calf_l', 'foot_l') build_ribbon(legbones, 3, 3, 'leg_L', '-x')

armIK = build_ik_fk_limb(armbones, 'arm_L', 3, armRibb[1])
# spineIK = build_ik_fk_spine( ,  )
legIK = build_ik_fk_limb(legbones, 'leg_L', 3, legRibb[1])
# hindlegIK = pm.ls('thigh_l', 'calf_l', 'foot_l')

# build reverse foot ik
#