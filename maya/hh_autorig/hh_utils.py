import maya.cmds as cmds
import maya.mel as mel
import pymel.core as pm
import maya.OpenMaya as om
import maya.OpenMayaAnim as oma
import maya.OpenMayaUI as omu
import maya.api.OpenMaya as api

import math

RAD2DEG = (180/math.pi)
DEG2RAD = (math.pi/180)

curveColorList = {
    "MID GREY": (0, (142, 142, 142)),
    "BLACK" : (1, (0, 0, 0)),
    "DARK GREY": (2, (64, 64, 64)),
    "GREY" : (3, (153, 153, 153)),
    "DARK RED" : (4, (155, 0, 40)),
    "DARK BLUE" : (5, (0, 4, 96)),
    "BLUE" : (6, (0, 0, 255)),
    "DARK GREEN" : (7, (0, 70, 25)),
    "DARK PURPLE" : (8, (38, 0, 67)),
    "HOT PINK" : (9, (200, 0, 200)),
    "BROWN" : (10, (138, 72, 51)),
    "DARK BROWN" : (11, (63, 35, 31)),
    "ORANGE": (12, (153, 38, 0)),
    "BRIGHT RED" : (13, (255, 0, 0)),
    "NEON GREEN" : (14, (0, 255, 0)),
    "NAVY BLUE" : (15, (0, 65, 153)),
    "WHITE" : (16, (255, 255, 255)),
    "YELLOW" : (17, (255, 255, 0)),
    "LIGHT BLUE" : (18, (100, 220, 255)),
    "TURQUOISE" : (19, (67, 255, 163)),
    "PINK": (20, (255, 176, 176)),
    "BEIGE" : (21, (228, 172, 121)),
    "PALE YELLOW": (22, (255, 255, 99)),
    "GREEN": (23, (0, 153, 84)),
    "LIGHT BROWN": (24, (161, 106, 48)),
    "GREENISH BROWN": (25, (158, 161, 48)),
    "DULL GREEN": (26, (104, 161, 48)),
    "TEAL": (27, (48, 161, 93)),
    "AQUA": (28, (48, 161, 161)),
    "DULL BLUE": (29, (48, 103, 161)),
    "PURPLE" : (30, (111, 48, 161)),
    "FUSCIA": (31, (161, 48, 106))
}

def set_sel():
    sel = pm.selected()[0]
    return sel

def bind_multi_meshes():
    jnts = []
    meshes = []
    for sel in pm.ls(sl=1):
        if sel.type() == 'joint':
            jnts.append(sel)
        if sel.type() == 'transform':
            meshes.append(sel)

    for mesh in meshes:
        pm.skinCluster( jnts, mesh, n='newSkinCluster', tsb=1, bm=1, sm=0, nw=1, wd=1, mi=4, omi=1, dr=4.0, fnw=1, rui=0 )


def change_aim_dir(object, defaultdir, newdir):
    sel_list = api.MSelectionList()
    sel_list.add(object.name())
    object = sel_list.getDependNode(0)
    object = api.MFnTransform(object)

    defaultdir = api.MVector(defaultdir)
    newdir = api.MVector(newdir)

    rotangle = defaultdir.angle(newdir)
    rotaxis = defaultdir ^ newdir

    if rotaxis == api.MVector(0, 0, 0):
        object.setScale(api.MVector(object.scale()) * -1)
    else:
        quatrot = api.MQuaternion(rotangle, rotaxis)
        object.rotateBy(quatrot, om.MSpace.kTransform)


def change_curve_color(color, *curve):
    if not curve:
        curve = pm.selected()
    for c in curve:
        cshape = c.getShape()
        cshape.overrideEnabled.set(1)
        cshape.setAttr("overrideColor", colorList[color])
    pm.select(d=1)


# Get the component object from the given string of a node name
def getMObjectFromName(node_name):
    depNode = om.MObject()
    selectionList = om.MSelectionList()
    selectionList.add(node_name)
    selectionList.getDependNode(0, depNode)
    return depNode


# Get the MDagPath from the given string of a node name
def getMDagPathFromName(node_name):
    dagPath = om.MDagPath()
    selectionList = om.MSelectionList()
    selectionList.add(node_name)
    selectionList.getDagPath(0, dagPath)
    return dagPath


# Get the MDagPath from index 0 of the currently selected transform or components
def getMDagPathFromSelected():
    dagPath = om.MDagPath()
    selectList = om.MSelectionList()
    om.MGlobal.getActiveSelectionList(selectList)
    if selectList.isEmpty():
        pm.error("Nothing Selected.")
    else:
        selectList.getDagPath(0, dagPath)
        return dagPath


# Get the components from index 0 of the currently selected transform or components
def getMObjectFromSelected():
    depNode = om.MObject()
    selectList = om.MSelectionList()
    om.MGlobal.getActiveSelectionList(selectList)
    if selectList.isEmpty():
        pm.error("Nothing Selected")
    else:
        selectList.getDependNode(0, depNode)
        return depNode


# Unlock and delete given string or object
def unlockAndDelete(node):
    node = pm.PyNode(node)
    pm.lockNode(node.name(), lock=False)
    pm.delete(node)


# Unlock and delete selected objects
def unlockAndDeleteSelected():
    allSelected = pm.ls(selection=True)
    for item in allSelected:
        unlockAndDelete(item)


def delete_all_layers():
    for layer in cmds.ls(type='displayLayer'):
        if layer != 'defaultLayer':
            cmds.delete(layer)


def set_frame_range():
    allcurves = cmds.ls(type=['animCurveTA', 'animCurveTL', 'animCurveTT', 'animCurveTU'])
    endframe = 1
    for curve in allcurves:
        keys = pm.keyframe(curve, q=1)
        if max(keys) > endframe:
            endframe = max(keys) 
    cmds.playbackOptions(max=endframe, fps=30, aet=endframe, ast=1, min=1 )
    
    return int(endframe)
    

def remove_references():
    refs = []
    for sel in cmds.ls(sl=1):
        if cmds.referenceQuery( sel, f=1 ) not in refs:
            refs.append( cmds.referenceQuery(sel, f=1) )

    for refFile in refs:
        try:
            cmds.file(refFile, rr=1)
        except:
            refParentFile = cmds.referenceQuery( cmds.file(refFile, q=1, rfn=1), p=1, f=1 )
            cmds.file(refParentFile, rr=1)
        
        
def lock_all_skin_weights():
    bones = cmds.ls(type = 'joint')

    for bone in bones:
        if cmds.objExists('%s.liw' % bone):
            cmds.setAttr('%s.liw' % bone, 1)
        
        
def unlock_all_skin_weights():
    bones = cmds.ls(type = 'joint')

    for bone in bones:
        if cmds.objExists('%s.liw' % bone):
            cmds.setAttr('%s.liw' % bone, 0)
        
        
def round_off_xforms(decimals):
    sel = pm.selected() 

    for jnt in sel:
        jnt.rx.set( round( jnt.rx.get(), decimals))
        jnt.ry.set( round( jnt.ry.get(), decimals))
        jnt.rz.set( round( jnt.rz.get(), decimals))

        jnt.tx.set( round( jnt.tx.get(), decimals))
        jnt.ty.set( round( jnt.ty.get(), decimals))
        jnt.tz.set( round( jnt.tz.get(), decimals))


def label_joint(bonelist=None):
    try:
        bonelist = pm.ls(sl=1)
        for jnt in bonelist:
            if jnt.split('_')[-1] == "l":
                side = 1
            elif jnt.split('_')[-1] == "r":
                side = 2
            else:
                side = 0

            if side != 0:
                boneName = jnt.split('_')[:-1]
                boneName = '_'.join(str(elem) for elem in boneName)
            else:
                boneName = jnt.name()

            # set joint label side and name to other and fill in boneName
            jnt.setAttr("side", side)
            jnt.setAttr("type", 18)
            jnt.setAttr("otherType", boneName, type="string")
    except:
        print("Did not label!")


def mirror_left_side_skel():
# assumes all left side joints have 'L_' prefix
    for jnt in jnts:
        if jnt[:2] == "L_":
            pm.select( jnt)
            pm.mirrorJoint( mirrorYZ=1, mirrorBehavior=1, searchReplace=("L_","R_") )


def delete_all_namespaces():
    ns_ignore = [ 'UI', 'shared' ]
    for ns in pm.namespaceInfo( lon=1 ):
        if ns not in ns_ignore:
            pm.namespace( rm=ns, mnr=1 )


def createLocatorAtComponentAABB(sel, locname="loc"):
    try:
        sel = cmds.ls(sl=True)
    except:
        "No components (verts/edges/faces) selected!"
    bb = cmds.exactWorldBoundingBox(sel)
    pos = ((bb[0] + bb[3]) / 2, (bb[1] + bb[4]) / 2, (bb[2] + bb[5]) / 2)
    loc = pm.createNode('locator', n=locname)
    loc.setPosition(pos)
    pm.select(sel)


# Create new locators at selected objects' pivot location.
def createLocatorAtObject():
    newLocatorList = list()
    node_list = pm.ls(sl=True, long=True)
    pm.select(clear=True)
    for node in node_list:
        locShape = pm.createNode('locator', n='{0}Shape'.format(node.name()))
        locTransform = locShape.listRelatives(parent=True, fullPath=True)[0]
        locTransform.rename(node.name())
        nodeMatrix = node.getMatrix(worldSpace=True)
        locTransform.setMatrix(nodeMatrix, worldSpace=True)

        # locTransform.scaleZ.set(1)
        # locTransform.scaleX.set(1)
        # locTransform.scaleY.set(1)

        newLocatorList.append(locTransform)

    pm.select(newLocatorList)

def moveJointOrientToRotate(joint_name):
    joint_depth = getMDagPathFromName(joint_name)
    if not joint_depth.hasFn(om.MFn.kJoint):
        raise(RuntimeError, "Cannot edit joint orients on non-joint!!")

    rotation = om.MEulerRotation()
    orient = om.MEulerRotation()
    node_MFnTfm = oma.MFnIkJoint(joint_depth)
    node_MFnTfm.getOrientation(orient)
    node_MFnTfm.getRotation(rotation)
    out = om.MEulerRotation.decompose((rotation.asMatrix() * orient.asMatrix()), rotation.order)

    cmds.setAttr('%s.jointOrientX' % joint_name, 0.0)
    cmds.setAttr('%s.jointOrientY' % joint_name, 0.0)
    cmds.setAttr('%s.jointOrientZ' % joint_name, 0.0)
    cmds.setAttr('%s.rotateX' % joint_name, out.x * RAD2DEG)
    cmds.setAttr('%s.rotateY' % joint_name, out.y * RAD2DEG)
    cmds.setAttr('%s.rotateZ' % joint_name, out.z * RAD2DEG)

def moveRotateToJointOrient(joint_name):
    joint_depth = getMDagPathFromName(joint_name)
    if not joint_depth.hasFn(om.MFn.kJoint):
        raise(RuntimeError, "Cannot edit joint orients on non-joint!!")

    rotation = om.MEulerRotation()
    orient = om.MEulerRotation()
    node_MFnTfm = oma.MFnIkJoint(joint_depth)
    node_MFnTfm.getOrientation(orient)
    node_MFnTfm.getRotation(rotation)
    out = om.MEulerRotation.decompose((rotation.asMatrix() * orient.asMatrix()), orient.order)

    cmds.setAttr('%s.jointOrientX' % joint_name, out.x * RAD2DEG)
    cmds.setAttr('%s.jointOrientY' % joint_name, out.y * RAD2DEG)
    cmds.setAttr('%s.jointOrientZ' % joint_name, out.z * RAD2DEG)
    cmds.setAttr('%s.rotateX' % joint_name, 0.0)
    cmds.setAttr('%s.rotateY' % joint_name, 0.0)
    cmds.setAttr('%s.rotateZ' % joint_name, 0.0)

def moveSelectedJointOrientToRotate():
    for joint_name in cmds.ls(sl=True, type='joint', long=True):
        moveJointOrientToRotate(joint_name)

def moveSelectedRotateToJointOrient():
    for joint_name in cmds.ls(sl=True, type='joint', long=True):
        moveRotateToJointOrient(joint_name)

def createJointAtObject():
    newJointList = list()
    node_list = pm.ls(selection=True, long=True)
    pm.select(clear=True)
    for node in node_list:
        newJoint = pm.createNode('joint', n='{0}'.format(node.name()))
        newGroup = pm.group()
        nodeMatrix = cmds.xform(node.name(), worldSpace=True, matrix=True, query=True)

        # Grouping shenanigans to work around an issue with Maya 2018 xform not working well with joints
        newGroup.setMatrix(nodeMatrix, worldSpace=True)
        newGroup.scaleX.set(1)
        newGroup.scaleY.set(1)
        newGroup.scaleZ.set(1)
        newJoint.setParent(world=True)
        pm.delete(newGroup)

        newJointList.append(newJoint)

    pm.select(newJointList)

# Create joint at selected components pivot location
def createJointAtComponentAABB(sel, jntname="newJoint"):
    try:
        sel = cmds.ls(sl=True)
    except:
        "No components (verts/edges/faces) selected!"
    bb = cmds.exactWorldBoundingBox(sel)
    pos = ((bb[0] + bb[3]) / 2, (bb[1] + bb[4]) / 2, (bb[2] + bb[5]) / 2)
    jnt = pm.createNode('joint', n=jntname)
    jnt.setTranslation(pos, ws=1)
    pm.select(sel)


def createCurveAtObject():
    newLocatorList = list()
    node_list = pm.ls(sl=True, long=0)
    pm.select(clear=True)
    for node in node_list:
        # locShape = pm.createNode('nurbsCurve', n='C{0}Shape'.format(node.name()))
        # locTransform = locShape.listRelatives(parent=True, fullPath=True)[0]
        locTransform = pm.circle(name='C_{0}'.format(node.name()))[0]
        # locTransform.rename('C_{0}'.format(node.name()))
        nodeMatrix = node.getMatrix(worldSpace=True)
        locTransform.setMatrix(nodeMatrix, worldSpace=True)

        # locTransform.scaleZ.set(1)
        # locTransform.scaleX.set(1)
        # locTransform.scaleY.set(1)

        newLocatorList.append(locTransform)

    pm.select(newLocatorList)


def resave_bind_pose():
    try:
        rootjoint = pm.ls(sl=1)[0]
        pm.delete(pm.ls(type='dagPose'))
        pm.select(rootjoint)
        cmds.select(hi=1)
        jnts = cmds.ls(sl=1, type='joint')
        cmds.select(jnts)
        pm.dagPose(bp=1, s=1)
        print("Bind pose resaved!")
        pm.select(d=1)
    except:
        print("ERROR: Bind pose not resaved!")


def vectors_are_coplanar_jorients(shoulder, elbow, wrist, worldspace=1):
    should_mat = shoulder.getMatrix(ws=worldspace)
    should_x_axis = api.MVector(should_mat[0][0:3])
    # y_axis = should_mat[4:7]
    # z_axis = should_mat[8:11]
    elbow_mat = elbow.getMatrix(ws=worldspace)
    elbow_x_axis = api.MVector(elbow_mat[0][0:3])

    wrist_mat = wrist.getMatrix(ws=worldspace)
    wrist_x_axis = api.MVector(wrist_mat[0][0:3])

    should_elbow_cross_product = should_x_axis ^ elbow_x_axis
    scalar_triple_prod = wrist_x_axis * should_elbow_cross_product    # dot prod of wrist and shoulder elbow cross

    print('shoulder: {0}\nelbow: {1}\nwrist: {2}\n'.format(should_x_axis, elbow_x_axis, wrist_x_axis ))
    print(should_elbow_cross_product)
    print(scalar_triple_prod)

    if scalar_triple_prod == 0:
        print("Vectors are coplanar")
        return scalar_triple_prod
    else:
        print ("Vectors are not coplanar")
        return scalar_triple_prod


def vectors_are_coplanar(shoulder, elbow, wrist):
    j1 = api.MVector(pm.xform(shoulder, q=1, t=1, ws=1)).normalize()
    j2 = api.MVector(pm.xform(elbow, q=1, t=1, ws=1)).normalize()
    j3 = api.MVector(pm.xform(wrist, q=1, t=1, ws=1)).normalize()

    v1 = j2 - j1
    v2 = j3 - j2
    v3 = j3 - j1

    should_elbow_cross_product = v1 ^ v2
    scalar_triple_prod = v3 * should_elbow_cross_product

    print('shoulder: {0}\nelbow: {1}\nwrist: {2}\n'.format(v1, v2, v3))
    print(should_elbow_cross_product)
    print(scalar_triple_prod)

    if scalar_triple_prod == 0:
        print("Vectors are coplanar")
        return scalar_triple_prod
    else:
        print("Vectors are not coplanar")
        return scalar_triple_prod


def create_offset_parent(sel):
    # put selected node under a group and move transforms
    # to the group
    pm.createNode(n='group')


def change_curve_thickness(thickness, *curve):
    if not curve:
        curve = pm.selected()
    for c in curve:
        cshape = c.getShape()
        cshape.setAttr("lineWidth", thickness)
    pm.select(d=1)




