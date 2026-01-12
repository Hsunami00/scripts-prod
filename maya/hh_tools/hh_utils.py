import maya.cmds as cmds
import maya.mel as mel
import pymel.core as pm
import maya.OpenMaya as om
import maya.OpenMayaAnim as oma
import maya.OpenMayaUI as omu
import maya.api.OpenMaya as api

from hh_tools.packages.obb.api import OBB as obb
import math
import os

RAD2DEG = (180/math.pi)
DEG2RAD = (math.pi/180)

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


def close_all_windows():
    exceptions = ['MayaWindow', 'havokDummyWindow', 'nexFloatWindow']
    for window in cmds.lsUI(type='window'):
       if window not in exceptions:
           cmds.deleteUI(window)


def delete_all_layers():
    for layer in cmds.ls(type='displayLayer'):
        if layer != 'defaultLayer':
            cmds.delete(layer)


def rename_file_nodes():
    for node in cmds.ls(type="file"):
        nuname = cmds.getAttr(node + '.fileTextureName').split('/')[-1].replace('.png','')
        cmds.rename(node, nuname)


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


def bind_multi_meshes():
    jnts = []
    meshes = []
    for sel in pm.selected():
        if sel.type() == 'joint':
            jnts.append(sel)
        if sel.type() == 'transform':
            meshes.append(sel)

    for mesh in meshes:
        pm.skinCluster( jnts, mesh, n='newSkinCluster', tsb=1, bm=1, sm=0, nw=1, wd=1, mi=4, omi=1, dr=4.0, fnw=1, rui=0 )


def copy_paste_vert_norms( source=None, dest=None ):
    try:
        if (source, dest == None):
            source = cmds.ls(os=1)[0]
            dest = cmds.ls(os=1)[1]
        source_norm = cmds.polyNormalPerVertex(source, q=1, xyz=1)
        dest_norm = cmds.polyNormalPerVertex(dest, q=1, xyz=1)
        cmds.polyNormalPerVertex(dest, xyz=source_norm[:3], e=1)
    except:
        print("Source and Destination vert not selected!")


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


def fileinfo_to_clipboard( req_info="scene" ):  # copy file info: scene, drive, dir, file
    try:
        scene_name = pm.sceneName()
        from PySide2 import QtWidgets
        clipboard = QtWidgets.QApplication.clipboard()

        if req_info == "scene":
            copied = scene_name
        elif req_info == "drive":
            copied = scene_name.drive
        elif req_info == "dir":
            copied = scene_name.dirname().truepath()     # .truepath() uses backslashes "\" in paths
        elif req_info == "file":
            copied = scene_name.basename()

        clipboard.setText(copied)
        return copied
    except:
        print("failed! make sure a scene file is open in Maya.")


def open_folder_in_scene_location():
    os.startfile( pm.sceneName().dirname().truepath() )


def toggle_cm_m():
    if cmds.currentUnit(q=1) == 'm':
        # go to cm
        cmds.currentUnit(l='cm', time='ntsc')
        cmds.grid(s=100, sp=100)
        cmds.setAttr("perspShape.nearClipPlane", 0.5)
        cmds.setAttr("perspShape.farClipPlane", 150000)
    elif cmds.currentUnit(q=1) == 'cm':
        # go to m
        cmds.currentUnit(l='m', time='ntsc')
        cmds.setAttr("perspShape.nearClipPlane", 0.005)
        cmds.setAttr("perspShape.farClipPlane", 1500)
        cmds.grid(s=1, sp=1)
    cmds.setAttr("perspShape.focalLength", 100)
    objs = [ 'miDefaultFramebuffer', 'miDefaultOptions', 'vectorRenderGlobals' ]
    for object in objs:
        if cmds.objExists( object ):
            cmds.delete( object )
    pm.playbackOptions( min=1, ast=1, max=60, aet=60 )


def delete_all_namespaces():
    ns_ignore = [ 'UI', 'shared' ]
    for ns in pm.namespaceInfo( lon=1 ):
        if ns not in ns_ignore:
            pm.namespace( rm=ns, mnr=1 )


def cleanup_skeleton_hierarchy():
    remove = []
    for i in pm.ls(sl=1):
        if (i.type() != 'joint'):
            remove.append(i)

    for node in remove:
        if node.objExists():
            try:
                pm.delete(node)
            except:
                pass


def shift_keyframes( time_change=1 ):
    result = pm.promptDialog( t="Shift frames", m="Shift frames by how much:", text = "Number", b="OK", ds="cancelled" )
    if result == 'OK':
        time_change = pm.promptDialog( q=1, text = 1 )
    anim_curves = cmds.ls(type=['animCurveTA', 'animCurveTL', 'animCurveTT', 'animCurveTU'])
    for each in anim_curves:
        cmds.keyframe(each, edit=True, relative=True, timeChange=time_change)


def break_out_anims( clipname, sourcefile, framerange ):
    clipname = os.path.join( output_folder, clipname )
    sourcefile = os.path.join( working_folder, sourcefile )

    pm.newFile( f=1 )
    pm.importFile( sourcefile, f=1 )

    clip_startframe = framerange[0]
    clip_endframe = framerange[1]

    startframe = 1
    endframe = 100

    anim_curves = pm.ls(type=['animCurveTA', 'animCurveTL', 'animCurveTT', 'animCurveTU'])

    for curve in anim_curves:
        keys = pm.keyframe(curve, q=1)
        if max(keys) > endframe:
            endframe = int( max(keys) )

    for i in range ( clip_endframe, endframe+1 ):
        for c in anim_curves:
            c.remove( clip_endframe-1 )
            i += 1

    for i in range (0, clip_startframe):
        for c in anim_curves:
            c.remove( 0 )
            i += 1
    shift_keyframes( -(clip_startframe+1) )
    pm.saveAs( clipname, f=1 )


def createLocatorAtComponent():
    # doesn't quite work with multi-mesh selection
    # use createLocatorAtComponentAABB() for multi-mesh or create
    # one locator at each mesh's set of points and then get center
    # of all those locators
    selDagPath = getMDagPathFromSelected()
    selectedPoints = obb.from_points(selDagPath.fullPathName())
    locShape = pm.createNode('locator')
    locTransform = locShape.listRelatives(parent=True, fullPath=True)[0]

    locTransform.setMatrix(selectedPoints.matrix, worldSpace=True)
    locTransform.scaleX.set(1)
    locTransform.scaleY.set(1)
    locTransform.scaleZ.set(1)
    pm.select(locTransform)


def createLocatorAtComponentAABB(sel, locname="loc"):
    try:
        sel = cmds.ls(sl=True)
    except:
        "No components (verts/edges/faces) selected!"
    bb = cmds.exactWorldBoundingBox(sel)
    pos = ((bb[0] + bb[3]) / 2, (bb[1] + bb[4]) / 2, (bb[2] + bb[5]) / 2)
    loc = pm.createNode('locator', n=locname)
    dir(loc)
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


def createJointAtComponent():
    selDagPath = getMDagPathFromSelected()
    selectedPoints = obb.from_points(selDagPath.fullPathName())
    newJoint = pm.createNode('joint')
    newGroup = pm.group()

    # Grouping shenanigans to work around an issue with Maya 2018 xform not working well with joints
    newGroup.setMatrix(selectedPoints.matrix, worldSpace=True)
    newGroup.scaleX.set(1)
    newGroup.scaleY.set(1)
    newGroup.scaleZ.set(1)
    newJoint.setParent(world=True)
    pm.delete(newGroup)


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


def getSkinningInfo():
    sel = pm.ls(sl=1)[0]
    selSkin = sel.getShape().listConnections(t='skinCluster')
    bonez = pm.skinCluster(selSkin, q=1, inf=1)
    return selSkin, bonez


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


def openFileDialogInSceneDir():
    multipleFilters = "Maya Files (*.ma *.mb);;Maya ASCII (*.ma);;Maya Binary (*.mb);;All Files (*.*)"
    fileOpen = pm.fileDialog2(fileFilter=multipleFilters, dialogStyle=2, okc="Open", fileMode=1, caption="Open",
                              dir=pm.sceneName().dirname())     #.truepath()

    if fileOpen:
        try:
            pm.newFile()
            pm.openFile(fileOpen, f=0)
            filetype = 'mayaAscii' if os.path.splitext(fileOpen)[-1] == '.ma' else 'mayaBinary'
            mel.eval('addRecentFile("{0}", "{1}")'.format(fileOpen.capitalize(), filetype))
        except:
            print('*** openFileDialogInSceneDir exception ***')
            s = pm.confirmDialog(title='Save changes', message='Save changes to {0} ?'.format(pm.sceneName().truepath()),
                                 button=['Save', "Don't Save", 'Cancel'], defaultButton='Save', cancelButton='Cancel',
                                 dismissString='No')
            if s == 'Save':
                pm.saveFile(f=1)
                pm.openFile(fileOpen, f=0)
            elif s == "Don't Save":
                pm.openFile(fileOpen, f=1)
    else:
        pass


def createJointAtObject():
    newJointList = list()
    node_list = pm.ls(selection=True, long=True)
    pm.select(clear=True)
    for node in node_list:
        newJoint = pm.createNode('joint', n='{0}'.format(node.name()))
        newGroup = pm.group()
        nodeMatrix = cmds.xform(node.name(), worldSpace=True, matrix=True, query=True)
        nodePos = pm.xform( node.name(), q=1, rp=1, ws=1 )

        # Grouping shenanigans to work around an issue with Maya 2018 xform not working well with joints
        newGroup.setMatrix(nodeMatrix, worldSpace=True)
        newGroup.setTranslation(nodePos, ws=True)
        newGroup.scaleX.set(1)
        newGroup.scaleY.set(1)
        newGroup.scaleZ.set(1)
        newJoint.setParent(world=True)
        newJoint.displayLocalAxis.set(1)
        pm.delete(newGroup)

        newJointList.append(newJoint)

    pm.select(newJointList)
# Create joint at selected components pivot location


def saveAsDialogInSceneDir():
    multipleFilters = "Maya ASCII (*.ma);;Maya Binary (*.mb)"
    fileSave = pm.fileDialog2(fileFilter=multipleFilters, dialogStyle=2, okc="Save As", fileMode=0, caption="Save As",
                              dir=pm.sceneName().dirname().truepath())
    if fileSave:
        try:
            pm.saveAs(fileSave[0], f=1)
            print("Saved as {0}".format(fileSave[0]))
        except:
            print("Nothing saved")


def filedialog_dec(f):
    def use_maya_dialog():
        # Check if using Maya file dialog; switch to it if so and set var"
        f()
        # set back to OS file dialog if var is set"
    return use_maya_dialog


@filedialog_dec
def import_fbx(fbxfile):
    print("Import fbx file")


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
    j1 = api.MVector(shoulder.getRotatePivot(ws=1).normalize())
    j2 = api.MVector(elbow.getRotatePivot(ws=1).normalize())
    j3 = api.MVector(wrist.getRotatePivot(ws=1).normalize())

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


curveColorList = {
    "DEFAULT": (-1, (0, 4, 96)),
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


def change_curve_color(color, *curve):
    if not curve:
        curve = pm.selected()
    for c in curve:
        cshape = [i for i in c.listRelatives(c=1) if i.type() == 'nurbsCurve'][0]
        cshape.overrideEnabled.set(1)
        cshape.setAttr("overrideColor", curveColorList[color.upper()])
    pm.select(d=1)


def change_curve_thickness(thickness, *curve):
    if not curve:
        curve = pm.selected()
    for c in curve:
        cshape = [i for i in c.listRelatives(c=1) if i.type() == 'nurbsCurve'][0]
        cshape.setAttr("lineWidth", thickness)


def select_controllers_from_bones():
    def get_curves(selected):
        for j in selected.listRelatives():
            if j.type() == 'parentConstraint':
                for k in j.listConnections():
                    if k.type() == 'transform':
                        return k
    if pm.selected() and len(pm.selected()) == 1:
        pm.select(get_curves(pm.selected()[0]))
    elif pm.selected() and len(pm.selected()) > 1:
        sel_list = []
        for bone in pm.selected():
            sel_list.append(get_curves(bone))
        pm.select(sel_list)
    else:
        print("Error! Please select at least one bone for this operation and no other object types.")


def select_bones_from_controllers():
    def get_bones(selected):
        for j in selected.listConnections():
            if j.type() == 'parentConstraint':
                for k in j.listConnections():
                    if k.type() == 'joint':
                        return k
    if pm.selected() and len(pm.selected()) == 1:
        pm.select(get_bones(pm.selected()[0]))
    elif pm.selected() and len(pm.selected()) > 1:
        sel_list = []
        for ctrl in pm.selected():
            sel_list.append(get_bones(ctrl))
        pm.select(sel_list)
    else:
        print("Error! Please select at least one nurbs curve for this operation and no other object types.")


def toggle_sel_bone_controller():
    if pm.selected()[0].type() == 'joint':
        select_controllers_from_bones()
    elif pm.selected()[0].type() == 'transform' and pm.selected()[0].listRelatives(c=1):
        select_bones_from_controllers()


def mirror_curve(curve, curve_color=None, curve_width=None):
    dupexform = pm.duplicate(curve)[0]
    if not curve_color:
        if curve.getShape().overrideEnabled.get():
            if curve.getShape().overrideRGBColors.get():
                curve_color = curve.getShape().overrideColorRGB.get()
            elif curve.getShape().overrideColor.get():
                colorIndex = [i for i in curveColorList.values()]
                curve_color = colorIndex[curve.getShape().overrideColor.get() + 1][1]
    if not curve_width:
        curve_width = curve.getShape().lineWidth.get()

    sourceMatrix = api.MMatrix(curve.getMatrix(matrix=True, query=True, worldSpace=True))

    mirroredValues = api.MMatrix([[-1.0, 1.0, 1.0, 1.0],
                                  [-1.0, 1.0, 1.0, 1.0],
                                  [-1.0, 1.0, 1.0, 1.0],
                                  [-1.0, 1.0, 1.0, 1.0]])

    finalMatrix = api.MMatrix()
    for count in range(16):
        finalMatrix[count] = (sourceMatrix[count] * mirroredValues[count])
    pm.delete([c for c in dupexform.listRelatives(children=1) if c.type() != 'nurbsCurve'])
    dupexform.setMatrix(val=finalMatrix, worldSpace=True)
    dupexform.getShape().overrideEnabled.set(1)
    dupexform.getShape().overrideRGBColors.set(1)
    dupexform.getShape().setAttr("overrideColorRGB", curve_color)
    dupexform.getShape().lineWidth.set(curve_width)

    return dupexform


# single curve selected
def mirror_selected_curve(curve=None):
    if not curve:
        curve = pm.selected()[0]
    side = '_{}'.format(curve.name().split('_')[-1])  # L or R
    newside = '_R' if side == '_L' else '_L'

    if pm.ls(curve.name().replace(side, newside)):
        # mirrored curve found
        mirroredXform = pm.ls(curve.name().replace(side, newside))[0]
        dupexform = swap_curve(curve, mirroredXform, mirror=True)

        return dupexform
    else:
        # no mirrored curve found
        dupexform = mirror_curve(curve)
        dupexform.name.set(curve.name().replace(side, newside))
        if pm.ls(curve.getParent().name().replace(side, newside)):
            pm.parent(dupexform, pm.ls(curve.getParent().name().replace(side, newside)))
            pm.makeIdentity(dupexform, a=1, t=1, r=1, s=1)
        else:
            pm.parent(dupexform, w=1)
            pm.makeIdentity(dupexform, a=1, t=1, r=1, s=1)

        return dupexform


def mirror_selected_curves():
    if len(pm.selected()) > 0:     # mirror selected, flip side suffix
        newcurves = []
        for c in pm.selected():
            dupe = mirror_selected_curve(c)
            newcurves.append(dupe)
        return newcurves


# two curves selected
def swap_curve(src_curve=None, dest_curve=None, mirror=False):
    if not src_curve or not dest_curve:
        if len(pm.selected()) == 2:
            src_curve = pm.selected()[0]
            dest_curve = pm.selected()[1]
    curve_color = (0, 4, 96)
    if dest_curve.getShape().overrideEnabled.get():
        if dest_curve.getShape().overrideRGBColors.get():
            curve_color = dest_curve.getShape().overrideColorRGB.get()
        elif dest_curve.getShape().overrideColor.get():
            colorIndex = [i for i in curveColorList.values()]
            # curve_color = colorIndex[dest_curve.getShape().overrideColor.get() + 1][1]
            curve_color = [i / 255 for i in colorIndex[dest_curve.getShape().overrideColor.get() + 1][1]]
    curve_width = dest_curve.getShape().lineWidth.get()
    dupexform = mirror_curve(src_curve, curve_color, curve_width) if mirror else pm.duplicate(src_curve)[0]
    pm.delete(dest_curve.getShape())
    pm.parent(dupexform, dest_curve.getParent())
    pm.makeIdentity(dupexform, a=1, t=1, r=1, s=1)
    pm.parent(dupexform.getShape(), dest_curve, s=1, r=1)
    pm.delete(dupexform)
    if not mirror:
        pm.delete(src_curve)
    dest_curve.getShape().overrideEnabled.set(1)
    dest_curve.getShape().overrideRGBColors.set(1)
    dest_curve.getShape().setAttr("overrideColorRGB", curve_color)
    dest_curve.getShape().lineWidth.set(curve_width)

    return dest_curve


def mirror_joint(chain=False):
    if pm.selected():
        if chain:
            jointchain = []
            pm.select(hi=1)
            jnts = pm.ls(sl=1, type='joint')
            pm.select(jnts)
        sel_jnts = pm.selected()
        for sel in sel_jnts:
            name_split = sel.name().split('_')
            if sel.side.get() == 1 or name_split[-1].upper() == 'L':
                side, newside = 'l', 'r'
            elif sel.side.get() == 2 or name_split[-1].upper() == 'R':
                side, newside = 'r', 'l'

            if name_split[-1].isupper():
                side, newside = side.upper(), newside.upper()

            ns = ('{}:'.format(sel.namespace())) if len(sel.namespace()) > 0 else ''
            newname = '{0}{1}_{2}'.format(ns, '_'.join(name_split[0:-1]), newside)
            print(name_split, newname)
            targetJoint = pm.joint(sel, n=newname, rad=sel.radius.get())
            targetJoint.setParent(w=1)
            targetJoint.dla.set(sel.dla.get())

            if chain:
                jointchain.append((targetJoint, sel.listRelatives(p=1)[0].replace('_{}'.format(side), '_{}'.format(newside))))
            sourceMatrix = cmds.xform(sel.name(), matrix=True, query=True, worldSpace=True)
            mirroredValues = [1.0, -1.0, -1.0, 1.0,
                                         1.0, -1.0, -1.0, 1.0,
                                         1.0, -1.0, -1.0, 1.0,
                                         -1.0, 1.0, 1.0, 1.0]

            finalMatrix = list()
            for count in range(16):
                finalMatrix.append(sourceMatrix[count] * mirroredValues[count])

            cmds.xform(targetJoint.name(), matrix=finalMatrix, worldSpace=True)
            moveRotateToJointOrient(targetJoint.name())

        if chain:
            print('parenting')
            for j in jointchain:
                try:
                    pm.parent(j[0], j[1])
                except:
                    print('couldn\'t parent {0} to {1}'.format(j[0], j[1]))


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


def get_package_dir(packagename):
    import pkgutil; print(pkgutil.get_loader(packagename).get_filename())


def connect_attrs_between_similar_rigs(namespace1, namespace2):
    for i in pm.selected():
        nu = pm.ls(i.replace(namespace1, namespace2))[0]
        # pm.parentConstraint(i, nu, mo=0)
        count = 0
        for attr in i.listAttr():
            if attr.isKeyable():
                nuattr = attr.replace(namespace1, namespace2)
                print(attr, nuattr)
                attr >> nuattr
                count += 1


def create_control_at_bone( name, bone, buffergroups, ctrltype, aimdir, scale, color, thickness, parent, pos=1, rot=1):
    ctrl = widgets.create_curve(ctrltype, name, aimdir, scale)
    parentgroup = None
    topgrp = None
    for i in range(1, buffergroups + 2):
        bg = pm.createNode('transform', name='{}_ptr{}'.format(name, i - 1), ss=1, p=parentgroup)
        parentgroup = bg
        bg.addAttr('pretransformLevel', k=0)
        bg.pretransformLevel.set(int(i-1))
        if i == 1:
            topgrp = bg
            topgrp.rename(topgrp.replace('_ptr0', '_parentOffsetGrp'))
            pm.matchTransform(parentgroup, bone, pos=0, rot=1)
        if i == (buffergroups + 1):
            pm.parent(ctrl, parentgroup)
    pm.matchTransform(topgrp, bone, pos=pos, rot=rot)
    if rot:
        ctrl.setRotation((0,0,0))
    elif not rot:
        pm.makeIdentity(ctrl, a=1, t=1, r=1, s=1)
    if parent:
        pm.parent(topgrp, parent, a=0)
    widgets.change_curve_color(color, [ctrl])
    widgets.change_curve_thickness(thickness, [ctrl])

    return ctrl, topgrp


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


def build_ribbon(joints, bendycount, ribbonwidth, bodypart, boneAimDir, makeCreases=True, creaseDist=0.1):
    first_z = False
    curvelines = []
    ribb_bones = []
    ribb_ctrl_locs = []
    ribb_ctrl_jnts = []
    bindbones = []
    rig_grp = pm.group(n='{}_rigGrp'.format(bodypart), em=1, w=1)
    rig_grp.addAttr('attach_point', dt='string', k=0)
    pm.matchTransform(rig_grp, joints[0].getParent(), pos=1, rot=1)
    ribbGrp = pm.group(n='{}_ribbonGrp'.format(bodypart), em=1)
    ribbGrp.setParent(rig_grp)

    def make_crease(creaseDist, j, pt1, pt2):
        bp2 = pt2 - (xParent * creaseDist)
        bp1 = pt1 - (xParent * creaseDist)
        fp2 = pt2 + (xAxis * creaseDist)
        fp1 = pt1 + (xAxis * creaseDist)
        curvelineback = pm.curve(n='{}_creaseRibbonBackCurve'.format(j), d=1, p=[bp1, bp2])
        curveline = pm.curve(n='{}_ribbonCurve'.format(j), d=1, p=[pt1, pt2])
        curvelinefwd = pm.curve(n='{}_creaseRibbonFwdcurve'.format(j), d=1, p=[fp1, fp2])
        return (curvelineback, curveline, curvelinefwd)

    for j in joints:
        xAxis = om.MVector(*tuple(j.getMatrix(ws=1)[0][:3])).normal()
        if (boneAimDir == '-x'):
            xAxis = -xAxis
        xParent = (j.getTranslation(ws=1) - j.getParent().getTranslation(ws=1)).normal()
        zAxis = om.MVector(*tuple(j.getMatrix(ws=1)[2][:3])).normal()
        first_z = zAxis if not first_z else first_z  # use shoulder z-axis for all joints (since wrist is different)
        # make curveline at bone position if j is end bone
        origin = om.MVector(*tuple(j.getMatrix(ws=1)[3][:3]))
        pt2 = (origin - (first_z * ribbonwidth))
        pt1 = (origin + (first_z * ribbonwidth))
        if not bendycount:
            # ribb_ctrl_grp = pm.createNode('transform', name='{}_ribbonCtrlGrp'.format(j), ss=1, p=ribbGrp)
            # pm.matchTransform(ribb_ctrl_grp, j, pos=1, rot=1)
            # pm.pointConstraint(j, ribb_ctrl_grp, mo=1)
            # pm.orientConstraint(j, ribb_ctrl_grp, mo=1)
            if j != joints[0] and j != joints[-1] and makeCreases:
                crease = make_crease(creaseDist, j, pt1, pt2)
                curvelines.extend(crease)
            # else:
            curveline = pm.curve(n='{0}_ribbonCurve'.format(j), d=1, p=[pt1, pt2])
            curvelines.append(curveline)
            ribb_ctrl_jnt = j.duplicate(po=1, n='{}_bendy_ribb'.format(j))
            ribb_ctrl_jnt[0].setRadius(2)
            ribb_ctrl_jnt[0].setParent(ribbGrp)
            ribb_ctrl_jnts.append(ribb_ctrl_jnt[0])
            bindbones.append(ribb_ctrl_jnt[0])

            ribb_bone = j.duplicate(po=1, n='{}_bendy'.format(j))
            ribb_bone[0].setParent(ribbGrp)
            ribb_bones.append(ribb_bone[0])

            ribb_ctrl_loc_shape = pm.createNode('locator', n='{0}Shape'.format(j.name()))
            ribb_ctrl_loc = ribb_ctrl_loc_shape.listRelatives(parent=True, fullPath=True)[0]
            ribb_ctrl_loc.rename(j.name() + '_loc')
            node_matrix = ribb_ctrl_jnt[0].getMatrix(worldSpace=True)
            ribb_ctrl_loc.setMatrix(node_matrix, worldSpace=True)

            ribb_ctrl_loc.setParent(ribbGrp)
            ribb_ctrl_locs.append(ribb_ctrl_loc)
            ribb_ctrl_loc.inheritsTransform.set(0)
            # parent / point & orient constraint bendy bone to locator (or use offsetParentMatrix connections)
            pm.pointConstraint(ribb_ctrl_loc, ribb_bone[0], mo=1, w=1)
            pm.orientConstraint(ribb_ctrl_loc, ribb_bone[0], mo=1, w=1)
            pm.pointConstraint(ribb_ctrl_jnt, j, mo=1, w=1)
            pm.orientConstraint(ribb_ctrl_jnt, j, mo=1, w=1)
        elif bendycount:
            if j == joints[-1]:
                curveline = pm.curve(n='{}_ribbonCurve'.format(j), d=1, p=[pt1, pt2])
                curvelines.append(curveline)
                bindbones.append(j)
            elif j != joints[-1]:
                j1 = j.getTranslation(ws=1)
                j2 = j.listRelatives(c=1)[0].getTranslation(ws=1)
                dist = om.MVector(j2 - j1).length()
                bendyincrement = dist / (bendycount + 1)
                bendygrp = pm.createNode('transform', name='{}_bendyParentGrp'.format(j), ss=1, p=rig_grp)
                # TODO: try using opm connections instead of constraints
                pm.matchTransform(bendygrp, j, pos=1, rot=1)
                pm.pointConstraint(j, bendygrp, mo=1)
                pm.orientConstraint(j, bendygrp, mo=1)
                for i in range(bendycount + 1):  # make a line curve at each bendy location
                    pt = j1 + (xAxis * (i * bendyincrement))
                    pt2 = (pt - (first_z * ribbonwidth))
                    pt1 = (pt + (first_z * ribbonwidth))
                    if j != joints[0] and i == 0 and makeCreases:
                        # make extra crease creaseDist units in front and back of main line for all inside joints
                        crease = make_crease(creaseDist, j, pt1, pt2)
                        curvelines.append(crease)
                    else:
                        bendycurveline = pm.curve(n='{0}_0{1}_bendyRibbonCurve'.format(j, i), d=1, p=[pt1, pt2])
                        curvelines.append(bendycurveline)
                    bendyjoint = pm.joint(n='{0}_bendy0{1}'.format(j, i), p=pt, o=j.getRotation(ws=1))
                    bendy_CTRL_joint = pm.joint(n='{0}_bendy0{1}_ribb'.format(j, i), p=pt,
                                                o=j.getRotation(ws=0), rad=2)
                    bindbones.append(bendy_CTRL_joint)
                    ribb_ctrl_jnts.append(bendy_CTRL_joint)
                    bendyjoint.setParent(j)
                    bendy_CTRL_joint.setParent(bendygrp)
                    bendylocShape = pm.createNode('locator', n='{0}Shape'.format(bendyjoint.name()))
                    bendyloc = bendylocShape.listRelatives(parent=True, fullPath=True)[0]
                    bendyloc.rename(bendyjoint.name() + '_loc')
                    node_matrix = bendyjoint.getMatrix(worldSpace=True)
                    bendyloc.setMatrix(node_matrix, worldSpace=True)
                    bendygrp.setParent(ribbGrp)
                    bendyloc.setParent(ribbGrp)
                    ribb_ctrl_locs.append(bendyloc)
                    bendyloc.inheritsTransform.set(0)
                    # parent / point & orient constraint bendy bone to locator (or use offsetParentMatrix connections)
                    pm.pointConstraint(bendyloc, bendyjoint, mo=1, w=1)
                    pm.orientConstraint(bendyloc, bendyjoint, mo=1, w=1)
                    ribb_bones.append(bendyjoint)
    # pm.nurbsCurveRebuildPref(ch=1, rpo=1, rt=0, end=1, kr=0, kcp=1, kc=0, su=4, du=1, sv=4, dv=3, tol=0.001, fr=0, dir=2)
    curvelines.reverse() if 'leg' in bodypart else curvelines  # reverse sel dir for legs to get correct surface normal dir
    ribb = pm.loft(curvelines, n='{}_ribbon'.format(bodypart), ch=1, u=0, c=0, d=1, ss=1, rn=0, po=0,
                   rsn=True, rb=1)
    pm.rebuildSurface(ribb[0], ch=1, rpo=1, rt=0, end=1, kr=0, kcp=1, kc=0, su=4, du=1, sv=4, dv=3, tol=0.001, fr=0,
                      dir=2)
    pm.delete(ribb[0], ch=1)
    pm.parent(ribb[0], ribbGrp)
    ribb[0].inheritsTransform.set(0)
    pm.delete(curvelines)
    pm.select(d=1)
    bindbones.append(joints[-1])
    pm.skinCluster(bindbones, ribb[0], n='{}_skinCluster'.format(ribb[0]), tsb=1, bm=0, sm=0, nw=1, wd=1, mi=2,
                   omi=1, dr=5, fnw=1, rui=0)
    # uvpin locators to ribbon
    pin_to_uv(ribb[0], ribb_ctrl_locs)
    print('Ribbon built for {}'.format(bodypart))

    return ribbGrp, rig_grp, ribb_ctrl_jnts, ribb_bones

# return ribb_ctrls
def make_ribbon_ctrls(bones, bodypart, buffergroups, ribb_grp, rig_grp, ribb_ctrl_jnts, ribb_jnts, scale=(7, 7, 7), connected=True):

    if 'L' in bodypart:
        ribb_ctrl_color = (0.2, .25, 1)
    elif 'R' in bodypart:
        ribb_ctrl_color = (1, .25, 0.2)
    else:
        ribb_ctrl_color = (.5, .5, 0)

    ribb_ctrls = []
    for b in range(0, len(ribb_ctrl_jnts)):
        ribb_grp = ribb_ctrl_jnts[b].getParent()
        new_ribb_ctrl = create_control_at_bone('{}_ctrl'.format(ribb_ctrl_jnts[b]), ribb_ctrl_jnts[b], buffergroups,
                 'square', (1, 0, 0), scale, ribb_ctrl_color, 2, ribb_grp)
        pm.pointConstraint(new_ribb_ctrl[0], ribb_ctrl_jnts[b], mo=1, w=1)
        pm.orientConstraint(new_ribb_ctrl[0], ribb_ctrl_jnts[b], mo=1, w=1)
        ribb_ctrls.append(new_ribb_ctrl)

        if connected:       # parentConstrain controls to mid joint (elbow/knee)
            midpoint = len(ribb_ctrl_jnts) // 2  # TODO: check if three-bone-leg
            if b == midpoint:
                mid_joint_ctrl = new_ribb_ctrl[0]
            if b == len(ribb_ctrl_jnts) - 1:
                for ctrl in ribb_ctrls:
                    if ctrl[0] != ribb_ctrls[0][0] and ctrl[0] != mid_joint_ctrl:
                        weight = float(ribb_ctrls.index(ctrl) / midpoint)
                        if ribb_ctrls.index(ctrl) > midpoint:
                            weight = (weight - 2) * -1
                            anchor =  bones[-1]
                        else:
                            anchor = bones[0]
                        anchor_bone_weight = 1.0 - weight
                        # print('{0}, {1}, {2}, {3}'.format(ctrl[0], ribb_ctrls[0][0], mid_joint_ctrl, anchor))
                        pm.pointConstraint(mid_joint_ctrl, ctrl[0].getParent(), mo=1, w=weight)
                        pm.pointConstraint(anchor, ctrl[0].getParent(), mo=1, w=anchor_bone_weight)

    return ribb_ctrls


def create_parent_toggle(parent_objects, target):
    for obj in parent_objects:
        pass


def place_pole_vec(bonechain, poleVec, dist=20):
    # place pole vector using trig
    endbone = bonechain[0].getTranslation(ws=1)
    midbone = bonechain[1].getTranslation(ws=1)
    firstbone = bonechain[2].getTranslation(ws=1)
    lowerArmLength = om.MVector(bonechain[1] - bonechain[0]).length()
    v1 = midbone - endbone
    v2 = firstbone - endbone
    angle = (v1.angle(v2))
    poleVecPerpPoint = abs(math.cos(angle) * lowerArmLength)    # point on v2 that makes right triangle
    poleVecPos = v2.normal() * poleVecPerpPoint                 # mult normalized v2 by poleVecPerpPoint (magnitude)
    poleVecDir = (elbow - (hand + poleVecPos)).normal()         # get direction behind elbow to place pole vec
    poleVec.setTranslation((elbow + (poleVecDir * dist)), ws=1)

def place_pole_vec_vdot(bonechain, polevec, dist=20):
    # place pole vector using dot product
    v_shoulder = api.MVector(cmds.xform(bonechain[0], q=1, ws=1, t=1))
    v_elbow = api.MVector(cmds.xform(bonechain[1], q=1, ws=1, t=1))
    v_hand = api.MVector(cmds.xform(bonechain[2], q=1, ws=1, t=1))

    v1 = v_elbow - v_shoulder
    v2 = v_hand - v_shoulder
    v2.normalize()

    vdot = v1 * v2
    pv = v_shoulder + (v2 * vdot)
    cmds.xform(polevec, ws=1, t=pv)


print("loaded hh_utils!")