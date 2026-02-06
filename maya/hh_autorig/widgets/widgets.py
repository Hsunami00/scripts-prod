import maya.cmds as cmds
import pymel.core as pm
import maya.OpenMaya as om
import maya.api.OpenMaya as api
import json
# import hh_autorig.hh_utils as utils
import os

# scrpath = 'C:\\Users\\howar\\OneDrive\\scripts\\maya\\hh_autorig\\'
scrpath = os.path.dirname(__file__)
curvesfile = os.path.join(scrpath, "widgets.json")

curveColorList = {
    "DEFAULT": (-1, (7, 4, 47)),
    "MID GREY": (0, (142, 142, 142)),
    "BLACK": (1, (0, 0, 0)),
    "DARK GREY": (2, (64, 64, 64)),
    "GREY": (3, (153, 153, 153)),
    "DARK RED": (4, (155, 0, 40)),
    "DARK BLUE": (5, (0, 4, 96)),
    "BLUE": (6, (0, 0, 255)),
    "DARK GREEN": (7, (0, 70, 25)),
    "DARK PURPLE": (8, (38, 0, 67)),
    "HOT PINK": (9, (200, 0, 200)),
    "BROWN": (10, (138, 72, 51)),
    "DARK BROWN": (11, (63, 35, 31)),
    "ORANGE": (12, (153, 38, 0)),
    "BRIGHT RED": (13, (255, 0, 0)),
    "NEON GREEN": (14, (0, 255, 0)),
    "NAVY BLUE": (15, (0, 65, 153)),
    "WHITE": (16, (255, 255, 255)),
    "YELLOW": (17, (255, 255, 0)),
    "LIGHT BLUE": (18, (100, 220, 255)),
    "TURQUOISE": (19, (67, 255, 163)),
    "PINK": (20, (255, 176, 176)),
    "BEIGE": (21, (228, 172, 121)),
    "PALE YELLOW": (22, (255, 255, 99)),
    "GREEN": (23, (0, 153, 84)),
    "LIGHT BROWN": (24, (161, 106, 48)),
    "GREENISH BROWN": (25, (158, 161, 48)),
    "DULL GREEN": (26, (104, 161, 48)),
    "TEAL": (27, (48, 161, 93)),
    "AQUA": (28, (48, 161, 161)),
    "DULL BLUE": (29, (48, 103, 161)),
    "PURPLE": (30, (111, 48, 161)),
    "FUSCIA": (31, (161, 48, 106))
}

jsoncurvesfile = open(curvesfile, 'r')
jsoncurves = jsoncurvesfile.read()
curveshapes = json.loads(jsoncurves)
jsoncurvesfile.close()


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
        quatrot = api.MQuaternion(rotangle, api.MVector(0,0,1))
    else:
        quatrot = api.MQuaternion(rotangle, rotaxis)
    object.rotateBy(quatrot, om.MSpace.kTransform)


def rgbconvert(c):
    return tuple(i / 255.0 for i in c)


def create_curve(type, ctrl_name='_ctrl', aimdir=(1, 0, 0), scale=(1, 1, 1), thickness=1):
    # TODO: Get location of selected object and place curve there with xforms frozen
    newxform = pm.createNode('transform', n=ctrl_name, ss=1)
    # shapenodes = []
    if type.lower() in curveshapes.keys():
        for shape in curveshapes[type.lower()]['shapes']:
            newcurve = pm.curve(d=curveshapes[type.lower()]['shapes'][shape]['d'],
                                p=curveshapes[type.lower()]['shapes'][shape]['p'],
                                k=curveshapes[type.lower()]['shapes'][shape]['k'],
                                name=f'{ctrl_name}')
            for s in newcurve.getShapes():
                s.lineWidth.set(thickness)
            pm.parent(newcurve.getShape(), newxform, s=1, r=1)
            pm.delete(newcurve)
    change_aim_dir(newxform, (1, 0, 0), aimdir)
    newxform.scale.set(scale)
    pm.makeIdentity(newxform, apply=True, t=1, r=1, s=1, n=0)
    pm.select(newxform)

    return newxform


def add_new_curve(curve, longname):
    shapes = {}
    for c in curve.getShapes():
        plist = []
        for p in c.getCVs():
            plist.append(tuple(p))
            shapes[c.name()] = {'d': c.degree(), 'p': plist, 'k': c.getKnots()}
    curveshapes[curve.name()] = {'longname': longname, 'shapes': shapes}


def remove_curve(curve):
    curveshapes.pop(curve)


def save_jsoncurves():
    jsoncurveshapes = json.dumps(curveshapes)
    jsonFile = open(curvesfile, "w")
    jsonFile.write(jsoncurveshapes)
    jsonFile.close()


def change_curve_color(color, *curve):
    curve = pm.selected() if not curve else curve[0]
    for c in curve:
        for s in c.getShapes():
            s.overrideEnabled.set(1)
            s.overrideRGBColors.set(1)
            s.setAttr("overrideColorRGB", color)


def change_curve_thickness(thickness, *curve):
    curve = pm.selected() if not curve else curve[0]
    for c in curve:
        for s in c.getShapes():
            s.lineWidth.set(thickness)


def get_curve():
    if len(pm.selected()) == 1 and pm.selected()[0].getShape().type() == 'nurbsCurve':
        curve = pm.selected()[0].getShape()
        if curve.overrideRGBColors.get():
            curve_color = curve.overrideColorRGB.get()
        elif curve.overrideColor.get():
            colorIndex = sorted([i for i in curveColorList.values()])
            curve_color = [i / 255.0 for i in colorIndex[curve.overrideColor.get() + 1][1]]
        else:
            # curve_color = curveColorList['DEFAULT'][1]
            curve_color = (7 / 255.0, 4 / 255.0, 47 / 255.0)

        curve_width = curve.lineWidth.get()

        return curve_color, curve_width

    else:
        print('Must have a curve selected.')


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
    if len(pm.selected()) == 1:
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
    else:
        print('Must select only one curve to mirror')


def mirror_selected_curves():
    if len(pm.selected()) > 0:  # mirror selected, flip side suffix
        newcurves = []
        for c in pm.selected():
            dupe = mirror_selected_curve(c)
            newcurves.append(dupe)
        return newcurves
    else:
        print('Must select at least one curve to mirror')


# two curves selected
def swap_curve(src_curve=None, dest_curve=None, mirror=False):
    if len(pm.selected()) == 2:
        if not src_curve or not dest_curve:
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
    else:
        print('Must select two curves to swap')

    return dest_curve
