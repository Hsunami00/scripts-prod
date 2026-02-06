# Hsunami Autorigger v1.0
# TODO LIST:
# TODO: write code to parent clavs and hips to spine
# TODO: write build_foot code for building footrolls with new placers
# TODO: add finger placers and builders
# TODO: add face bones
# TODO: make ribbon ctrls for lips
# TODO: make ribbon ctrls for eyebrows
# TODO: build eyeball controls and eyelid rotation follow code
# TODO: write script to build rest of face and parent
# TODO: research/write tail ctrl rig script
# TODO: build tail placer script (can use WIP chain placer def)
# TODO: add yellow y-vec curves for all limb and spine placers
# TODO: add pole vector to arm and leg placer
# TODO: re-organize modules (autorig, placers, widgets, etc.)
import maya.cmds as cmds
import maya.mel as mel
import pymel.core as pm
import pymel.core.datatypes as dt
import maya.OpenMaya as om
import maya.OpenMayaAnim as oma
import maya.OpenMayaUI as omu
import maya.api.OpenMaya as api
import math
import sys
import platform
import hh_autorig.hh_utils as utils
import hh_autorig.widgets.widgets as widgets

RAD2DEG = (180 / math.pi)
DEG2RAD = (math.pi / 180)
WORLD_UP = api.MVector(0, 0, 1)
FORWARD_AXIS = api.MVector(0, -1, 0)

def get_git_dir():
    if platform.system() == 'Windows':
        return r'c:/github'
    else:
        return r'/Users/hhsu/Documents/GitHub'

class Autorig:
    def __init__(self, name='hhutils_Autorig'):
        # check zup and set
        # self.root_bone = pm.ls('root', type='joint')
        # if not self.root_bone:
        #     self.root_bone = pm.joint(n='root')
        # if not pm.ls('world_ctrl'):
        #     world_control =  self.create_control_at_bone('world_ctrl', 'world', 1, 'fourway', (0,0,1),
        #                             (100,100,100), (1,0,0), 2, None)
        #     world_control[1].rename('Rig_Controls')
        #     self.world_control = world_control[0]
        #     self.rig_group = world_control[1]
        #     self.worldSpace_loc = pm.spaceLocator(n='worldSpace_loc')
        #     self.worldSpace_loc.v.set(0)
        #     pm.parent(self.worldSpace_loc, self.world_control)

        if not pm.ls(name):
            self.spaces_GRP = pm.createNode('transform', name=f'{name}', ss=1)
            # self.world_control.addAttr('spaces_GRP', k=0, dt='string')
            # self.world_control.spaces_GRP.set(self.spaces_GRP)

        self.rig_bones = list()
        # check for placers, store in dict
        self.placers = dict()
        self.refresh_active_placers()

        # get number of placers by type (arm, leg)
        self.arm_placers = 0
        for placer in self.placers:
            if self.placers[placer] == 'arm':
                self.arm_placers += 1

        # self.leg_placers = 0
        # for placer in self.placers:
        #     if self.placers[placer] == 'leg':
        #         self.leg_placers += 1
        #
        # # rebuild spine_placer object if already built
        # if pm.ls('%s_SPINE_RIG_PLACER*' % self.rig_name):
        #     self.spine_placer = []
        #
        #     _tmp_ary = []
        #     for i in range(0, pm.getAttr('%s_SPINE_RIG_PLACER.placers' % self.rig_name, size=True)):
        #         _tmp_ary.append( pm.ls(pm.getAttr('%s_SPINE_RIG_PLACER.placers[%s]' % (self.rig_name, i)))[0] )
        #     self.spine_placer.append(_tmp_ary)
        #
        #     _tmp_ary = []
        #     for i in range(0, pm.getAttr('%s_SPINE_RIG_PLACER.controlPieces' % self.rig_name, size=True)):
        #         _tmp_ary.append( pm.ls(pm.getAttr('%s_SPINE_RIG_PLACER.controlPieces[%s]' % (self.rig_name, i)))[0] )
        #     self.spine_placer.append(_tmp_ary)
        #
        #     self.spine_placer.append(pm.getAttr('%s_SPINE_RIG_PLACER.controls' % self.rig_name))
        #     self.spine_placer.append(pm.getAttr('%s_SPINE_RIG_PLACER.curve' % self.rig_name))

    # # Utility methods
    def refresh_active_placers(self):
        self.placers = {}
        self.arm_placers = 0
        self.leg_placers = 0

        for node in pm.ls(exactType='transform'):
            if pm.objExists('%s.placertype' % node):
                self.placers[node] = pm.getAttr('%s.placertype' % node)
                if self.placers[node] == 'arm':
                    self.arm_placers += 1
                if self.placers[node] == 'leg':
                    self.leg_placers += 1

    # Placer creation methods
    def build_spine_placer(self, vertebrae, neck, stretchy, spinename='SPINE'):
        bone_placers = []
        z_vec_ptrs = []
        z_vec_locators = []
        _parms = [(0, -1, 0), (0, 0, 0)]
        _knots = [-2, -1]
        spine_placer_group = pm.group(name='SPINE_RIG_PLACER', empty=True)
        z_vec_group = pm.group(name=f'{spinename}_z_vec_LOCS', empty=True)
        z_vec_group.setParent(spine_placer_group)

        # create root and pelvis placer bones first
        root_bone_placer = widgets.create_curve('sphere', 'root_bone_placer', (0, 0, 1), (3, 3, 3))
        pm.xform(root_bone_placer, r=False, ws=True, t=(0, 0, 0))
        z_vec = self.build_up_vec(root_bone_placer, distance=4, updir=(0, 0, 1), scale=(1, 1, 1))
        bone_placers.append(root_bone_placer)

        pelvis_bone_placer = widgets.create_curve('sphere', 'pelvis_bone_placer', (0, 0, 1), (5, 5, 5))
        pm.xform(pelvis_bone_placer, r=False, ws=True, t=(0, 0, 90))
        z_vec = self.build_up_vec(pelvis_bone_placer, distance=12, updir=(-1, 0, 0), scale=(0.5, 0.5, 0.5))
        z_vec_ptrs.append(z_vec)
        bone_placers.append(pelvis_bone_placer)

        # create world control
        world_control = self.create_control_at_bone('world_ctrl', root_bone_placer, 1, 'fourway', (0, 0, 1),
                                                       (100, 100, 100), (1, 0, 0), 2, None)
        world_control[1].rename('Rig_Controls')
        world_control = world_control[0]
        self.rig_group = str(world_control)[1]
        worldSpace_loc = pm.spaceLocator(n='worldSpace_loc')
        worldSpace_loc.v.set(0)
        pm.parent(worldSpace_loc, world_control)

        # create spine, neck, and head placers
        spinebones = vertebrae + 1 + neck
        for i in range(0, spinebones+1):
            # print(f'cycling spinebone {i} of {spinebones}')
            if i == vertebrae:
                for j in range(1, neck + 1):
                    part = 'head' if (i == neck+2) else 'neck'
                    neck_placer = widgets.create_curve('sphere', f'neck{j}_bone_placer', (0, 0, 1), (0.75 * j, 0.75 * j, 0.75 * j))
                    pm.xform(neck_placer, r=False, ws=True, t=(0, 0 - (2 * j), 140 + (7.5 * j)))
                    z_vec = self.build_up_vec(neck_placer, distance=(i * 0.75), updir=(-1, 0, 0), scale=(0.5, 0.5, 0.5))
                    bone_placers.append(neck_placer)
                    _parms.append((0, i + j, 0))
                    _knots.append(i + j)
                    # print(f'making neck {neck_placer}')
            elif i == spinebones:
                head_placer = widgets.create_curve('sphere', 'head_bone_placer', (0, 0, 1), (2, 2, 2))
                pm.xform(head_placer, r=False, ws=True, t=(0, -(3 * j), 8 + (140 + (7.5 * j))))
                z_vec = self.build_up_vec(head_placer, distance=(i * .5), updir=(-1, 0, 0), scale=(-.1, .1, .1))
                bone_placers.append(head_placer)
                _parms.append((0, i, 0))
                _knots.append(i)
                # print(f'made head {head_placer}')
            elif i < vertebrae:
                spine_placer = widgets.create_curve('sphere', 'spine%s_bone_placer' % (i + 1), (0, 0, 1), (2, 2, 2))
                spine_z = (60 / (vertebrae + 1)) * (i + 1) + 90
                pm.xform(spine_placer, r=False, ws=True, t=(0, 0, spine_z))
                z_vec = self.build_up_vec(spine_placer, distance= 7 + (i * 2.5), updir=(-1, 0, 0), scale=(0.5, 0.5, 0.5))
                bone_placers.append(spine_placer)
                _parms.append((0, i + 1, 0))
                _knots.append(i + 1)

            z_vec_loc = pm.spaceLocator(n=f'{bone_placers[i]}_loc')
            z_vec_loc.v.set(1)
            z_vec_loc.setParent(z_vec_group)
            z_vec_loc.inheritsTransform.set(0)
            z_vec_locators.append(z_vec_loc)
            z_vec_ptrs.append(z_vec)

        spine_proxy_curve = pm.curve(d=1, p=_parms, k=_knots, name='spine_proxy_curve')
        for attr in spine_proxy_curve.listAttr(k=1, u=0):
            pm.setAttr(attr, l=1, k=0, channelBox=0)

        # make cluster at each CV
        _number_of_cvs = pm.getAttr('%s.degree' % spine_proxy_curve) + pm.getAttr('%s.spans' % spine_proxy_curve)
        for i in range(0, _number_of_cvs):
            cluster = pm.cluster('{}.cv[{}]'.format(spine_proxy_curve, i), name='spine_placercluster_%s' % i)
            pm.pointConstraint(bone_placers[i], cluster)
            pm.parent(cluster[1], spine_placer_group)
            pm.hide(cluster)

        pm.setAttr('%s.overrideEnabled' % spine_proxy_curve, 1)
        pm.setAttr('%s.overrideDisplayType' % spine_proxy_curve, 2)
        pm.setAttr('%s.inheritsTransform' % spine_proxy_curve, 0)
        widgets.change_curve_color(widgets.rgbconvert((255, 0, 0)), [spine_proxy_curve])

        # store placers in multi attr in pelvis node
        pm.addAttr(spine_placer_group, ln='placers', dt='string', m=True)
        i = 0
        for piece in bone_placers:
            pm.setAttr('%s.placers[%s]' % (spine_placer_group, i), piece, type='string')
            i += 1

        # store attrs
        pm.addAttr(spine_placer_group, ln='placertype', dt='string')  # type of placer (arm, leg, etc.)
        pm.setAttr('%s.placertype' % spine_placer_group, 'spine', type='string')

        pm.addAttr(spine_placer_group, ln='curve', dt='string', m=False)
        pm.setAttr('%s.curve' % spine_placer_group, spine_proxy_curve, type='string')

        pm.addAttr(spine_placer_group, ln='stretchy', at='bool')  # stretchiness flag
        pm.setAttr('%s.stretchy' % spine_placer_group, stretchy)

        self.placers[spine_placer_group] = pm.getAttr('%s.placertype' % spine_placer_group)  # add placer to dict
        widgets.change_curve_color(widgets.rgbconvert((33, 100, 35)), bone_placers)
        pm.parent(bone_placers, spine_proxy_curve, spine_placer_group)



        # set y-vector direction for all spine and neck/head bones; z will always point to -x; leave root at world;
        # i = 0
        # for vec_ptr in z_vec_ptrs:
        #     clav_decompose_matrix = pm.createNode('decomposeMatrix', n=f'{bone_placers[0]}_decomposeMatrix')
        #
        #     clavrArmVec = pm.createNode('plusMinusAverage', n=f'clavVec_{side}')
        #     clavrArmVec.operation.set(2)
        #
        #     clavZupVec = pm.createNode('crossProduct', n=f'clavZupVec_{side}')
        #     clavZupVecNorm = pm.createNode('normalize', n=f'clavZupVec_norm_{side}')
        #
        #     clavUpVec = pm.createNode('plusMinusAverage', n=f'clavUpVec_{side}')
        #
        #     bone_placers[0].worldMatrix[0] >> clav_decompose_matrix.inputMatrix
        #
        #     shoulder_decomposeMatrix.outputTranslate >> clavrArmVec.input3D[0]
        #     clav_decompose_matrix.outputTranslate >> clavrArmVec.input3D[1]
        #     clav_decompose_matrix.outputTranslate >> clavUpVec.input3D[0]
        #
        #     shoulder_decomposeMatrix.outputTranslate >> wholeArmVec.input3D[1]
        #     shoulder_decomposeMatrix.outputTranslate >> upperArmVec.input3D[1]
        #     shoulder_decomposeMatrix.outputTranslate >> shoulderUpVec.input3D[0]
        #
        #
        #     clavrArmVec.output3D >> clavZupVec.input1
        #     clavZupVec.input2Y.set(1)
        #
        #     clavZupVec.output >> clavZupVecNorm.input
        #
        #     clavZupVecNorm.output >> clavUpVec.input3D[1]
        #
        #     clav_bone_placer_loc, shoulder_bone_placer_loc, elbow_bone_placer_loc, wrist_bone_placer_loc = z_vec_locators
        #     clavUpVec.output3D >> clav_bone_placer_loc.translate
        #     shoulderUpVec.output3D >> shoulder_bone_placer_loc.translate
        #
        #     pm.aimConstraint(z_vec_locators[i], vec_ptr, mo=0, aim=(0, 0, 1), u=(0, 0, 1), wu=(0, 0, 1))
        #     i+=1



        pm.select(d=1)

        return {'group': spine_placer_group, 'bones': bone_placers}     # , 'controls': control_placers}

    def build_arm_placer(self, side, num=1, stretchy=1, bone_up=dt.Vector(0, 0, 1)):
        # bones = ['clavicle', 'shoulder', 'elbow', 'wrist']
        bones = ['clavicle', 'armUpper', 'armLower', 'hand']
        bone_placers = []
        z_vec_ptrs = []
        z_vec_locators = []
        number = '' if num == 1 else num
        arm_placer_group = pm.group(name='ARM{}_{}_RIG_PLACER'.format(number, side), empty=True)
        grp_ctrl = widgets.create_curve('square', 'grp_shape', (1, 0, 0), (15, 15, 15), 2)
        pm.parent(grp_ctrl.getShape(), arm_placer_group, s=1, r=1)
        pm.delete(grp_ctrl)

        z_vec_group = pm.group(name='ARM{}_{}_z_vec_LOCS'.format(number, side), empty=True)

        # create clavicle, shoulder, elbow, wrist, proxy bones
        for bone in bones:
            bone_placer = widgets.create_curve('sphere', '{}_bone_placer_{}'.format(bone, side), (0, 0, 1), (2, 2, 2))
            bone_placers.append(bone_placer)
            z_vec_loc = pm.spaceLocator(n=f'{bone}_bone_placer_{side}_loc')
            z_vec_loc.v.set(0)
            z_vec_loc.setParent(z_vec_group)
            z_vec_loc.inheritsTransform.set(0)
            z_vec_locators.append(z_vec_loc)
            z_vec = self.build_up_vec(bone_placer, distance=7, updir=(0, 0, 1), scale=(0.5, 0.5, 0.5))
            z_vec_ptrs.append(z_vec)

        sign = -1 if side == 'R' else 1
        bone_placers[0].setTranslation((sign*10, 0, 140), ws=1)  # clavicle
        bone_placers[1].setTranslation((sign*30, 0, 140), ws=1)  # shoulder
        bone_placers[2].setTranslation((sign*50, 5, 140), ws=1)  # elbow
        bone_placers[3].setTranslation((sign*70, 0, 140), ws=1)  # wrist
        pm.matchTransform(arm_placer_group, bone_placers[1])
        z_vec_group.setParent(arm_placer_group)
        arm_placer_ptr = pm.group(name="ARM{}_{}_MAIN".format(number, side), empty=True)
        # arm_placer_ptr.s.set(1, sign, sign)
        arm_placer_ptr.s.set(sign, 1, 1)
        pm.parent(arm_placer_group, bone_placers[0], arm_placer_ptr)
        pm.makeIdentity(arm_placer_group, t=0, r=1, s=1)
        for placer in bone_placers:
            placer.r.set(0,0,0)
            placer.s.set(1,1,1)
        arm_proxy_curve = pm.curve(d=1,
                                   p=[(1, 0, 1),
                                      (3, 0, 1),
                                      (5, 0, 1),
                                      (7, 0, 1)],
                                   k=[0, 1, 2, 3],
                                   name='proxy_curve_arm_{}'.format(side))
        for attr in arm_proxy_curve.listAttr(k=1, u=0):
            pm.setAttr(attr, l=1, k=0, channelBox=0)

        # make cluster at each CV except root
        _number_of_cvs = pm.getAttr('%s.degree' % arm_proxy_curve) + pm.getAttr('%s.spans' % arm_proxy_curve)
        for i in range(0, _number_of_cvs):
            cluster = pm.cluster('{}.cv[{}]'.format(arm_proxy_curve, i),
                                  name='placercluster{}_arm_{}'.format(i, side))
            pm.matchTransform(cluster, bone_placers[i])
            pm.parentConstraint(bone_placers[i], cluster)
            pm.parent(cluster[1], arm_placer_group)
            pm.hide(cluster)

        pm.setAttr('%s.overrideEnabled' % arm_proxy_curve, 1)
        pm.setAttr('%s.overrideDisplayType' % arm_proxy_curve, 2)
        pm.setAttr('%s.inheritsTransform' % arm_proxy_curve, 0)
        widgets.change_curve_color(widgets.rgbconvert((255, 0, 0)), [arm_proxy_curve])

        # store placer metadata in placer root node
        pm.addAttr(arm_placer_group, ln='placers', dt='string', m=True)
        i = 0
        for piece in bone_placers:
            pm.setAttr('%s.placers[%s]' % (arm_placer_group, i), piece, type='string')
            i += 1

        pm.addAttr(arm_placer_group, ln='placertype', dt='string')  # type of placer (arm, leg, etc.)
        pm.setAttr('%s.placertype' % arm_placer_group, 'arm', type='string')

        pm.addAttr(arm_placer_group, ln='connector', dt='string')  # where placer connects (spine, etc.)
        pm.setAttr('%s.connector' % arm_placer_group, 'spine3', type='string')

        pm.addAttr(arm_placer_group, ln='stretchy', at='bool')  # stretchiness flag
        pm.setAttr('%s.stretchy' % arm_placer_group, stretchy)

        self.placers[arm_placer_group] = pm.getAttr('%s.placertype' % arm_placer_group)  # add placer to dict
        widgets.change_curve_color(widgets.rgbconvert((33, 100, 35)), bone_placers)
        widgets.change_curve_thickness(1, bone_placers)

        # set z-vector direction to cross product of arm vectors, have wrist match but also turned 90-deg
        # to account for pronation in bind pose
        clav_decompose_matrix = pm.createNode('decomposeMatrix', n=f'{bone_placers[0]}_decomposeMatrix')
        shoulder_decomposeMatrix = pm.createNode('decomposeMatrix', n=f'{bone_placers[1]}_decomposeMatrix')
        elbow_decomposeMatrix = pm.createNode('decomposeMatrix', n=f'{bone_placers[2]}_decomposeMatrix')
        wrist_decomposeMatrix = pm.createNode('decomposeMatrix', n=f'{bone_placers[3]}_decomposeMatrix')

        clavrArmVec = pm.createNode('plusMinusAverage', n=f'clavVec_{side}')
        wholeArmVec = pm.createNode('plusMinusAverage', n=f'wholeArmVec_{side}')
        upperArmVec = pm.createNode('plusMinusAverage', n=f'upperArmVec_{side}')
        clavrArmVec.operation.set(2)
        wholeArmVec.operation.set(2)
        upperArmVec.operation.set(2)

        armZupVec = pm.createNode('crossProduct', n=f'armZupVec_{side}')
        armZupVecNorm = pm.createNode('normalize', n=f'armZupVec_norm_{side}')
        clavZupVec = pm.createNode('crossProduct', n=f'clavZupVec_{side}')
        clavZupVecNorm = pm.createNode('normalize', n=f'clavZupVec_norm_{side}')

        clavUpVec = pm.createNode('plusMinusAverage', n=f'clavUpVec_{side}')
        shoulderUpVec = pm.createNode('plusMinusAverage', n=f'shoulderUpVec_{side}')
        elbowUpVec = pm.createNode('plusMinusAverage', n=f'elbowUpVec_{side}')
        wristUpVec = pm.createNode('plusMinusAverage', n=f'wristUpVec_{side}')

        bone_placers[0].worldMatrix[0] >> clav_decompose_matrix.inputMatrix
        bone_placers[1].worldMatrix[0] >> shoulder_decomposeMatrix.inputMatrix
        bone_placers[2].worldMatrix[0] >> elbow_decomposeMatrix.inputMatrix
        bone_placers[3].worldMatrix[0] >> wrist_decomposeMatrix.inputMatrix

        shoulder_decomposeMatrix.outputTranslate >> clavrArmVec.input3D[0]
        clav_decompose_matrix.outputTranslate >> clavrArmVec.input3D[1]
        clav_decompose_matrix.outputTranslate >> clavUpVec.input3D[0]

        shoulder_decomposeMatrix.outputTranslate >> wholeArmVec.input3D[1]
        shoulder_decomposeMatrix.outputTranslate >> upperArmVec.input3D[1]
        shoulder_decomposeMatrix.outputTranslate >> shoulderUpVec.input3D[0]

        elbow_decomposeMatrix.outputTranslate >> upperArmVec.input3D[0]
        elbow_decomposeMatrix.outputTranslate >> elbowUpVec.input3D[0]

        wrist_decomposeMatrix.outputTranslate >> wholeArmVec.input3D[0]
        wrist_decomposeMatrix.outputTranslate >> wristUpVec.input3D[0]

        clavrArmVec.output3D >> clavZupVec.input1
        clavZupVec.input2Y.set(1)
        wholeArmVec.output3D >> armZupVec.input1
        upperArmVec.output3D >> armZupVec.input2

        clavZupVec.output >> clavZupVecNorm.input
        armZupVec.output >> armZupVecNorm.input

        clavZupVecNorm.output >> clavUpVec.input3D[1]
        armZupVecNorm.output >> shoulderUpVec.input3D[1]
        armZupVecNorm.output >> elbowUpVec.input3D[1]
        armZupVecNorm.output >> wristUpVec.input3D[1]

        clav_bone_placer_loc, shoulder_bone_placer_loc, elbow_bone_placer_loc, wrist_bone_placer_loc = z_vec_locators
        clavUpVec.output3D >> clav_bone_placer_loc.translate
        shoulderUpVec.output3D >> shoulder_bone_placer_loc.translate
        elbowUpVec.output3D >> elbow_bone_placer_loc.translate
        wristUpVec.output3D >> wrist_bone_placer_loc.translate

        i=0
        for ptr in z_vec_ptrs:
            pm.aimConstraint(z_vec_locators[i], ptr, mo=0, aim=(0, 0, 1), u=(0, 0, 1), wu=(0, 0, 1))
            i+=1

        bone_placers.pop(0)
        pm.parent(arm_proxy_curve, bone_placers, #shoulder_bone_placer_loc, elbow_bone_placer_loc,
                  #wrist_bone_placer_loc, #ik_hand_control_placer_grp, arm_pole_vector_placer_grp,
                  arm_placer_group)
        pm.select(d=1)

        return {'group': arm_placer_group, 'bones': bone_placers } #, 'controls': control_placers}

    def build_leg_placer(self, side, num=1, stretchy=1, bone_up=dt.Vector(0, 0, 1)):
        bones = ['legUpper', 'legLower', 'foot', 'ball', 'toeTip']
        bone_placers = []
        z_vec_ptrs = []
        z_vec_locators = []
        number = '' if num == 1 else num
        leg_placer_group = pm.group(name="LEG{}_{}_RIG_PLACER".format(number, side), empty=True)
        pm.addAttr(leg_placer_group, ln="placers", dt="string", m=True)
        grp_ctrl = widgets.create_curve('square', 'grp_shape', (0, 0, 1), (15, 15, 15), 2)
        pm.parent(grp_ctrl.getShape(), leg_placer_group, s=1, r=1)
        pm.delete(grp_ctrl)
        z_vec_group = pm.group(name='LEG{}_{}_z_vec_LOCS'.format(number, side), empty=True)

        # create ['legUpper', 'legLower', 'foot', 'ball', 'toeTip'] placers
        for bone in bones:
            bone_placer = widgets.create_curve('sphere', '{}_bone_placer_{}'.format(bone, side), (0, 0, 1), (2, 2, 2))
            bone_placers.append(bone_placer)
            # store placer metadata in placer root node
            for piece in bone_placers:
                pm.setAttr(f"{leg_placer_group}.placers[{bones.index(bone)}]", piece, type="string")
            z_vec_loc = pm.spaceLocator(n=f'{bone}_bone_placer_{side}_loc')
            z_vec_loc.v.set(0)
            z_vec_loc.setParent(z_vec_group)
            z_vec_loc.inheritsTransform.set(0)
            z_vec_locators.append(z_vec_loc)
            z_vec = self.build_up_vec(bone_placer, distance=7, updir=(-1, 0, 0), scale=(0.5, 0.5, 0.5))
            z_vec_ptrs.append(z_vec)
        sign = -1 if side == 'R' else 1
        bone_placers[0].setTranslation((sign*13, 0, 80), ws=1)  # legUpper
        bone_placers[1].setTranslation((sign*13, -10, 45), ws=1)  # legLower
        bone_placers[2].setTranslation((sign*13, 0, 10), ws=1)  # foot
        bone_placers[3].setTranslation((sign*13, -6, 0), ws=1)  # ball
        bone_placers[4].setTranslation((sign*13, -15, 0), ws=1)  # toe

        # create leg placer group and flip it if it's on the Right side
        pm.matchTransform(leg_placer_group, bone_placers[0])
        leg_placer_ptr = pm.group(name="LEG{}_{}_MAIN".format(number, side), empty=True)
        leg_placer_ptr.s.set(sign, 1, 1)
        leg_placer_group.setParent(leg_placer_ptr)
        pm.makeIdentity(leg_placer_group, t=0, r=1, s=1)
        for placer in bone_placers:
            placer.r.set(0,0,0)
            placer.s.set(1,1,1)
        z_vec_group.setParent(leg_placer_group)
        leg_proxy_curve = pm.curve(d=1,
                                   p=[(1, 0, 1),
                                       (3, 0, 1),
                                       (5, 0, 1),
                                       (7, 0, 1),
                                       (9, 0, 1)],
                                   k=[0, 1, 2, 3, 4],
                                   name="leg_proxy_curve_leg_{}".format(side))
        for attr in leg_proxy_curve.listAttr(k=1, u=0):
            pm.setAttr(attr, l=1, k=0, channelBox=0)

        # make cluster at each CV
        _number_of_cvs = pm.getAttr("%s.degree" % leg_proxy_curve) + pm.getAttr("%s.spans" % leg_proxy_curve)
        for i in range(0, _number_of_cvs):
            cluster = pm.cluster("{}.cv[{}]".format(leg_proxy_curve, i), name="_%s_placercluster_%s" % (side, i))
            pm.pointConstraint(bone_placers[i], cluster)
            pm.parent(cluster[1], leg_placer_group)
            pm.hide(cluster)

        pm.setAttr("%s.overrideEnabled" % leg_proxy_curve, 1)
        pm.setAttr("%s.overrideDisplayType" % leg_proxy_curve, 2)
        pm.setAttr("%s.inheritsTransform" % leg_proxy_curve, 0)
        widgets.change_curve_color(widgets.rgbconvert((255, 0, 0)), [leg_proxy_curve])

        # store placer metadata in placer root node
        # pm.addAttr(leg_placer_group, ln="placers", dt="string", m=True)
        # i = 0
        # for piece in bone_placers:
        #     pm.setAttr("%s.placers[%s]" % (leg_placer_group, i), piece, type="string")
        #     i += 1

        pm.addAttr(leg_placer_group, ln="placertype", dt="string")  # type of placer (arm, leg, etc.)
        pm.setAttr("%s.placertype" % leg_placer_group, "leg", type="string")

        pm.addAttr(leg_placer_group, ln="connector", dt="string")  # where placer connects (spine, etc.)
        pm.setAttr("%s.connector" % leg_placer_group, "pelvis_control", type="string")

        pm.addAttr(leg_placer_group, ln="stretchy", at="bool")  # stretchiness flag
        pm.setAttr("%s.stretchy" % leg_placer_group, stretchy)

        self.placers[leg_placer_group] = pm.getAttr("%s.placertype" % leg_placer_group)  # add placer to dict
        widgets.change_curve_thickness(1, bone_placers)
        widgets.change_curve_color(widgets.rgbconvert((33, 100, 35)), bone_placers)

        # set up-vector direction to cross product of leg vectors and have ball and toeTip match
        # get bone world space positions
        legUpper_decomposeMatrix = pm.createNode('decomposeMatrix', n=f'{bone_placers[0]}_decomposeMatrix')
        legLower_decomposeMatrix = pm.createNode('decomposeMatrix', n=f'{bone_placers[1]}_decomposeMatrix')
        foot_decomposeMatrix = pm.createNode('decomposeMatrix', n=f'{bone_placers[2]}_decomposeMatrix')
        foot_Zpos_loc_decomposeMatrix = pm.createNode('decomposeMatrix', n=f'{bone_placers[2]}_Zpos_loc_decomposeMatrix')
        ball_decomposeMatrix = pm.createNode('decomposeMatrix', n=f'{bone_placers[3]}_decomposeMatrix')
        toeTip_decomposeMatrix = pm.createNode('decomposeMatrix', n=f'{bone_placers[4]}_decomposeMatrix')

        # get x axis vectors
        wholeLeg_Xvec = pm.createNode('plusMinusAverage', n=f'wholeLeg_Xvec_{side}')
        legUpper_Xvec = pm.createNode('plusMinusAverage', n=f'legUpper_Xvec_{side}')
        leglower_Xvec = pm.createNode('plusMinusAverage', n=f'legLower_Xvec_{side}')
        ball_Xvec = pm.createNode('plusMinusAverage', n=f'ballXvec_{side}')
        foot_Xvec = pm.createNode('plusMinusAverage', n=f'footXvec_{side}')
        wholeLeg_Xvec.operation.set(2)
        legUpper_Xvec.operation.set(2)
        leglower_Xvec.operation.set(2)
        ball_Xvec.operation.set(2)
        foot_Xvec.operation.set(2)

        # get bone's z axis vector
        leg_Zvec = pm.createNode('crossProduct', n=f'leg_Zvec_{side}')
        leg_ZvecNorm = pm.createNode('normalize', n=f'leg_Zvec_norm_{side}')
        foot_Zvec = pm.createNode('crossProduct', n=f'foot_Zvec_{side}')
        foot_ZvecNorm = pm.createNode('normalize', n=f'foot_Zvec_norm_{side}')
        ball_Zvec = pm.createNode('crossProduct', n=f'ball_Zvec_{side}')
        ball_ZvecNorm = pm.createNode('normalize', n=f'ball_Zvec_norm_{side}')

        # get final world space position of z axis locator
        legUpper_Zpos = pm.createNode('plusMinusAverage', n=f'legUpper_Zpos_{side}')
        legLower_Zpos = pm.createNode('plusMinusAverage', n=f'legLower_Zpos_{side}')
        foot_Zpos = pm.createNode('plusMinusAverage', n=f'foot_Zpos_{side}')
        ball_Zpos = pm.createNode('plusMinusAverage', n=f'ball_Zpos_{side}')
        toeTip_Zpos =  pm.createNode('plusMinusAverage', n=f'toeTip_Zpos_{side}')

        bone_placers[0].worldMatrix[0] >> legUpper_decomposeMatrix.inputMatrix
        bone_placers[1].worldMatrix[0] >> legLower_decomposeMatrix.inputMatrix
        bone_placers[2].worldMatrix[0] >> foot_decomposeMatrix.inputMatrix
        bone_placers[3].worldMatrix[0] >> ball_decomposeMatrix.inputMatrix
        bone_placers[4].worldMatrix[0] >> toeTip_decomposeMatrix.inputMatrix

        foot_Zpos_loc = pm.spaceLocator(n=f'foot_Zpos_loc_{side}')
        # foot_Zpos_loc.t.set(bone_placers[3].tx.get(),
        #                     bone_placers[3].ty.get(),
        #                     bone_placers[2].tz.get()
        #                     )
        foot_decomposeMatrix.outputTranslateZ >> foot_Zpos_loc.tz

        foot_Zpos_loc.setParent(bone_placers[3])
        foot_Zpos_loc.tx.set(0),
        foot_Zpos_loc.ty.set(0),
        foot_Zpos_loc.worldMatrix[0] >> foot_Zpos_loc_decomposeMatrix.inputMatrix
        foot_Zpos_loc.v.set(0)

        legUpper_decomposeMatrix.outputTranslate >> wholeLeg_Xvec.input3D[1]
        legUpper_decomposeMatrix.outputTranslate >> legUpper_Xvec.input3D[1]
        legUpper_decomposeMatrix.outputTranslate >> legUpper_Zpos.input3D[0]

        legLower_decomposeMatrix.outputTranslate >> legUpper_Xvec.input3D[0]
        legLower_decomposeMatrix.outputTranslate >> legLower_Zpos.input3D[0]

        legLower_decomposeMatrix.outputTranslate >> leglower_Xvec.input3D[0]
        foot_decomposeMatrix.outputTranslate >> leglower_Xvec.input3D[1]

        foot_decomposeMatrix.outputTranslate >> wholeLeg_Xvec.input3D[0]
        foot_decomposeMatrix.outputTranslate >> foot_Zpos.input3D[0]

        foot_decomposeMatrix.outputTranslate >> foot_Xvec.input3D[0]
        foot_Zpos_loc_decomposeMatrix.outputTranslate >> foot_Xvec.input3D[1]

        toeTip_decomposeMatrix.outputTranslate >> ball_Xvec.input3D[0]
        ball_decomposeMatrix.outputTranslate >> ball_Xvec.input3D[1]

        wholeLeg_Xvec.output3D >> leg_Zvec.input1
        legUpper_Xvec.output3D >> leg_Zvec.input2

        foot_Xvec.output3D >> foot_Zvec.input2
        foot_Zvec.input1.set(0,0,1)
        foot_Zvec.output >> foot_ZvecNorm.input
        foot_ZvecNorm.output >> foot_Zpos.input3D[1]

        ball_Xvec.output3D >> ball_Zvec.input1
        ball_Zvec.input2.set(0,0,1)
        ball_Zvec.output >> ball_ZvecNorm.input
        ball_decomposeMatrix.outputTranslate >> ball_Zpos.input3D[0]
        ball_ZvecNorm.output >> ball_Zpos.input3D[1]
        toeTip_decomposeMatrix.outputTranslate >> toeTip_Zpos.input3D[0]
        ball_ZvecNorm.output >> toeTip_Zpos.input3D[1]

        leg_Zvec.output >> leg_ZvecNorm.input
        leg_ZvecNorm.output >> legUpper_Zpos.input3D[1]
        leg_ZvecNorm.output >> legLower_Zpos.input3D[1]

        legUpper_bone_placer_loc, legLower_bone_placer_loc, foot_bone_placer_loc,\
            ball_bone_placer_loc, toeTip_bone_placer_loc = z_vec_locators
        legUpper_Zpos.output3D >> legUpper_bone_placer_loc.translate
        legLower_Zpos.output3D >> legLower_bone_placer_loc.translate
        foot_Zpos.output3D >> foot_bone_placer_loc.translate
        ball_Zpos.output3D >> ball_bone_placer_loc.translate
        toeTip_Zpos.output3D >> toeTip_bone_placer_loc.translate

        i=0
        for ptr in z_vec_ptrs:
            pm.aimConstraint(z_vec_locators[i], ptr, mo=0, aim=(-1, 0, 0), u=(0, 0, 1), wu=(0, 0, 1))
            i+=1

        # make placers for footroll locators
        foot_in_placer = widgets.create_curve('sphere', f'footIn_placer_{side}', (0, 0, 1), (0.5,.5, 0.5))
        foot_in_placer.setParent(bone_placers[2])
        foot_out_placer = widgets.create_curve('sphere', f'footOut_placer_{side}', (0, 0, 1), (0.5,.5, 0.5))
        foot_out_placer.setParent(bone_placers[2])
        heel_placer = widgets.create_curve('sphere', f'heel_placer_{side}', (0, 0, 1), (0.5,.5, 0.5))
        heel_placer.setParent(bone_placers[2])
        # bone_placers.pop(3)
        # bone_placers.pop(3)
        foot_in_placer.setTranslation((sign*6, -6, 0), ws=1)
        foot_out_placer.setTranslation((sign*20, -6, 0), ws=1)
        heel_placer.setTranslation((bone_placers[2].tx.get(), bone_placers[2].ty.get(), 0), ws=1)

        # final parenting and deselect
        pm.parent(leg_proxy_curve, bone_placers, leg_placer_group)
        for plc in bone_placers:
            plc.scale.set(1,1,1)
        bone_placers[2].r.set(0,0,0)
        pm.parent(bone_placers[3], bone_placers[4], bone_placers[2])
        pm.select(d=1)

        return {'group': leg_placer_group, 'bones': bone_placers} #, 'controls': control_placers}

    def build_chain_placer(self, side, name, joints, dist_between, connector, aimdir=(1, 0, 0),
                           start_pos=(0, 0, 0), scale=(1, 1, 1)):
        chain_placer_group = pm.group(name="{}_{}_PLACER".format(name.upper(), side.upper()), empty=True)
        bone_placers = []
        control_placers = []
        pm.addAttr(chain_placer_group, ln="placers", dt="string", m=True)
        pm.setAttr("%s.placers[0]" % chain_placer_group, chain_placer_group, type="string")
        chain_placer_group.setTranslation(start_pos)
        aimdir = dt.Vector(aimdir)
        scale = dt.Vector(scale)

        _parms = []
        _knots = []

        prev_placer = chain_placer_group
        prev_upvec = ''
        for i in range(1, joints + 2):
            num = i if i != joints + 1 else 'end'
            bname = '{}_{}_{}_bone_placer'.format(name, num, side)
            ctype = 'sphere' if (i < joints + 1) else 'arrow'
            chain_placer = widgets.create_curve(ctype, bname, aimdir=aimdir, scale=scale)
            chain_placer_offset = pm.group(em=1, n='{}_{}_{}_bone_placer_grp'.format(name, side, i))

            utils.change_aim_dir(chain_placer_offset, (1, 0, 0), aimdir)
            pm.parent(chain_placer, chain_placer_offset)
            pm.makeIdentity(chain_placer, a=1, t=1, r=1)
            pm.matchTransform(chain_placer_offset, prev_placer, pos=1, rot=1)

            if ctype == 'arrow':
                widgets.change_curve_color(widgets.rgbconvert((255, 0, 0)), [chain_placer])

            if prev_upvec:
                pm.aimConstraint(chain_placer, prev_upvec, mo=0, aim=(1, 0, 0), u=(0, 0, 1), wu=(0, 0, 1))

            if i < joints + 1:
                control_placer = widgets.create_curve('circle', '{}_{}_{}_control_placer'.format(name, i, side),
                                                      aimdir=aimdir, scale=2 * scale)
                pm.matchTransform(control_placer, chain_placer)
                control_placer_grp = pm.group(em=1, n='{}_{}_{}_control_placer_grp'.format(name, side, i))
                pm.matchTransform(control_placer_grp, control_placer)
                utils.change_aim_dir(control_placer_grp, (1, 0, 0), aimdir)
                z_vec = self.build_up_vec(chain_placer, distance=3, updir=(0, 0, 1), scale=(1, 1, 1))
                pm.parent(control_placer, control_placer_grp)
                pm.makeIdentity(control_placer, a=1, t=1, r=1)
                pm.pointConstraint(chain_placer, control_placer_grp, mo=1)
                pm.orientConstraint(z_vec, control_placer_grp, mo=1)
                control_placers.append(control_placer)
                pm.parent(control_placer_grp, chain_placer_group)

            # point joint in aimdir in dist_between intervals
            if i != 1:
                chain_placer_offset.setTranslation((prev_placer.getTranslation(ws=1) + (aimdir * dist_between)), ws=1)
            if num != 'end':
                pm.setAttr("%s.placers[%s]" % (chain_placer_group, i + 1), chain_placer, type="string")
            bone_placers.append(chain_placer)

            pm.parent(chain_placer_offset, chain_placer_group)

            _parms.append((0, i + 1, 0))
            _knots.append(i + 1)

            prev_placer = chain_placer_offset
            prev_upvec = z_vec

        _chain_proxy_curve = pm.curve(d=1,
                                      p=_parms,
                                      k=_knots,
                                      name="%s_%s_proxy_curve" % (name, side))

        pm.setAttr("%s.overrideEnabled" % _chain_proxy_curve, 1)
        pm.setAttr("%s.overrideDisplayType" % _chain_proxy_curve, 2)
        pm.setAttr("%s.inheritsTransform" % _chain_proxy_curve, 0)
        widgets.change_curve_color(widgets.rgbconvert((255, 0, 0)), [_chain_proxy_curve])
        widgets.change_curve_color(widgets.rgbconvert((33, 100, 35)), bone_placers[:-1])
        widgets.change_curve_color(widgets.rgbconvert((10, 10, 145)), control_placers)
        pm.parent(_chain_proxy_curve, chain_placer_group)
        pm.makeIdentity(_chain_proxy_curve, a=1, t=1, r=1, s=1)

        # make cluster at each CV
        for i in range(0, joints + 1):
            pm.select("%s.cv[%s]" % (_chain_proxy_curve, i))
            cluster = pm.cluster(name="%s_%s_placercluster_%s" % (name, side, i))
            pm.pointConstraint(bone_placers[i], cluster)
            pm.hide(cluster)
            pm.parent(cluster[1], chain_placer_group)
            pm.select(d=1)

        bone_placers.insert(0, chain_placer_group)

        pm.addAttr(chain_placer_group, ln="placertype", dt="string")  # type of placer (arm, leg, etc.)
        pm.setAttr("%s.placertype" % chain_placer_group, type, type="string")

        pm.addAttr(chain_placer_group, ln="connector", dt="string")  # where placer connects (spine, etc.)
        pm.setAttr("%s.connector" % chain_placer_group, "%s_%s_%s" % (name, side, connector), type="string")

        self.placers[chain_placer_group] = pm.getAttr("%s.placertype" % chain_placer_group)  # add placer to dict

        return {'group': chain_placer_group, 'bones': bone_placers, 'controls': control_placers}

    def build_hind_leg_placer(self, side, num, name, joints):
        self.build_chain_placer(side, name, 4, 3, 'hand', (1, 0, 0), (75, -5, 140), (.75, .75, .75))

    def build_up_vec(self, obj, distance=2, updir=(0, 0, 1), scale=(1, 1, 1), color=(30, 90, 210)):
        updir = dt.Vector(updir)
        scale = dt.Vector(scale)
        up_vec_placer = widgets.create_curve('arrowcross', '{}_upVector'.format(obj), updir, scale)
        pm.matchTransform(up_vec_placer, obj, pos=1, rot=0)
        up_vec_placer.translateBy(distance * updir)
        pm.makeIdentity(up_vec_placer, a=1, t=1, r=1, s=1)
        up_vec_placer_grp = pm.group(em=1, n='{}_grp'.format(up_vec_placer))
        pm.matchTransform(up_vec_placer_grp, obj)
        pm.makeIdentity(up_vec_placer_grp, a=1, t=1, r=1, s=1)
        for attr in up_vec_placer.listAttr(k=1, u=0):
            pm.setAttr(attr, l=1, k=0, channelBox=0)
        pm.parent(up_vec_placer, up_vec_placer_grp, a=1)
        pm.parent(up_vec_placer_grp, obj)
        # draw curve between object and up_vec_placer
        up_vec_curve = pm.curve(d=1,
                                p=[(1, 0, 1),
                                   (3, 0, 1)],
                                k=[0, 1],
                                name='{}_up_vec_curve'.format(obj))
        for attr in up_vec_curve.listAttr(k=1, u=0):
            pm.setAttr(attr, l=1, k=0, channelBox=0)
        widgets.change_curve_color(widgets.rgbconvert(color), [up_vec_curve, up_vec_placer])
        # make cluster at each CV except root
        bonecluster = pm.cluster('{}.cv[0]'.format(up_vec_curve), n='cluster1{}_upvec'.format(obj))
        veccluster = pm.cluster('{}.cv[1]'.format(up_vec_curve), n='cluster2{}_upvec'.format(obj))
        pm.parentConstraint(obj, bonecluster)
        pm.parentConstraint(up_vec_placer, veccluster)
        pm.parent(bonecluster[1], veccluster[1], up_vec_curve, up_vec_placer_grp)
        pm.hide(bonecluster, veccluster)

        pm.setAttr('%s.overrideEnabled' % up_vec_curve, 1)
        pm.setAttr('%s.overrideDisplayType' % up_vec_curve, 2)
        pm.setAttr('%s.inheritsTransform' % up_vec_curve, 0)

        return up_vec_placer_grp

    # returns ctrl, topgrp
    def create_control_at_bone(self, name, bone, buffergroups, ctrltype, aimdir, scale, color, thickness, parent, pos=1, rot=1):
        ctrl = widgets.create_curve(ctrltype, name, aimdir, scale)
        parentgroup = None
        topgrp = None
        for i in range(1, buffergroups + 2):
            bg = pm.createNode('transform', name='{}_ptr{}'.format(name, i - 1), ss=1, p=parentgroup)
            parentgroup = bg
            bg.addAttr('pretransformLevel', k=0, at='byte')
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

    # returns ptr (pre-transform node) of controller ctrl at level
    def get_ctrl_ptr(self, ctrl, level=0):
        try:
            if ctrl.getParent().pretransformLevel.get() == level:
                return ctrl.getParent()
            else:
                return self.get_ctrl_ptr(ctrl.getParent(), level)
        except:
            print('Invalid controller!')

    def mirror_curve(self):
        pass

    def build_bone(self, placer):
        # create bone at placer position in ws
        # set label
        # match orientation?
        pass

    def build_control(self, bone):
        # parent and scale constraint controller nurb to bone
        # have 3 pre-transform nodes parenting each controller, and parent accordingly
        pass

    def build_fk_chain_opm(self, joint):
        # connect control to bone using offset parent matrix
        clav_ctrl = pm.ls(sl=1)[0]
        clav_bone = pm.ls(sl=1)[1]

        clav_ctrl.offsetParentMatrix.set(clav_ctrl.matrix.get())
        clav_ctrl.setTranslation(0)
        clav_ctrl.setRotation([0, 0, 0])

        clav_bone.setTranslation(0)
        clav_bone.setRotation([0, 0, 0])

    def build_fk_chain(self, side, bonechain):
        # connect control to bone using constraints
        for bone in bonechain:
            # parent and scale constraint control to bone
            # parent controllers accordingly
            pass

    def build_hand(self, side, handbone):
        if side == 'L':
            ctrl_color = (0, 0, 1)
        elif side == 'R':
            ctrl_color = (1, 0, 0)

        # create hand/finger ctrl bone and attrs
        ctrlbone = self.create_control_at_bone(f'hand_{side}_Ctrl', handbone, 0, 'square',
                                               (0,1,0), (20,10,10), ctrl_color, 2,
                                          f'arm_{side}_rigGrp', pos=1, rot=1)
        ctrlbone_x = ctrlbone[0].getMatrix(ws=1)[0][0:3]
        ctrlbone[0].addAttr('controller', k=0, dt='string')
        ctrlbone[0].controller.set(f'arm_{side}_Ctrl')
        offset = 30 if side == 'L' else -30
        newpos = (ctrlbone[0].getTranslation(ws=1) + (ctrlbone_x * offset))
        ctrlbone[1].setTranslation(newpos, ws=1)
        pm.parentConstraint(handbone, ctrlbone[1], mo=1)
        hand_parent_loc = pm.spaceLocator(n=f'hand_{side}_loc')
        pm.matchTransform(hand_parent_loc, handbone, pos=1, rot=1)
        pm.parent(hand_parent_loc, f'arm_{side}_rigGrp')
        pm.parentConstraint(handbone, hand_parent_loc, mo=1)
        for attr in ctrlbone[0].listAttr(k=1):
            attr.lock()
            attr.setKeyable(0)

        # create finger ctrls
        handbone_children = pm.ls(handbone)[0].listRelatives(typ='joint', c=1, ad=1)
        handbone_children.remove(f'hand_{side}_bendy')
        for bn in sorted(handbone_children, reverse=0):
            parent = hand_parent_loc if ('base' in bn.name()) else f'{bn.parent(0)}_Ctrl'
            ctrltype = 'square' if ('base' in bn.name()) else 'circle'
            aimdir = (0,0,1) if ('base' in bn.name()) else (1,0,0)
            scale = (5,5,5) if ('base' in bn.name()) else (2,2,2)
            newfk = self.create_control_at_bone(f'{bn}_Ctrl', bn, 3, ctrltype, aimdir, scale,
                                                ctrl_color, 1, parent)
            pm.parentConstraint(newfk[0], bn, mo=1)
            if 'base' in newfk[0].name():
                pm.parent(newfk[1].name().replace('base', '01'), newfk[0])
                curl_parent = pm.ls(newfk[1].replace('base', '01'))[0]
                curl_ctrl = self.create_control_at_bone(bn.name().replace('base', 'curl'), bn.name().replace('base', '02'), 1, 'square', (0,0,1),
                                                        (2,2,7), ctrl_color, 1, curl_parent)
                pm.matchTransform(curl_ctrl[0], bn.name().replace('base', '01'), piv=1)
                factor = 0.75
                curl_ctrl[0].rz >> self.get_ptr(pm.ls(f'{bn.replace("base", "01")}_Ctrl')[0], 2).rz
                for fingerbone in sorted(pm.ls(bn.replace('base', '01'))[0].listRelatives(c=1, typ='joint', ad=1)):
                    fctrl = pm.ls(f'{fingerbone}_Ctrl')[0]
                    mult_div = pm.createNode('multiplyDivide', n=f'{fctrl}_multDiv')
                    curl_ctrl[0].rz >> mult_div.input1X
                    mult_div.input2X.set(factor)
                    mult_div.outputX >> self.get_ptr(fctrl, 2).rz
                    factor *= 0.5

        # def to set up finger automations
        def create_finger_automation(attr_name, r_axis, finger, factor):
            ctrlbone[0].addAttr(attr_name, k=1, at='float', min=-10, max=10)
            mult_div = pm.createNode('multiplyDivide', n=f'hand_{attr_name}_middle_{side}_multDiv')
            mult_div.input2X.set(factor[0])
            ctrlbone[0].attr(attr_name) >> mult_div.input1X
            mult_div.outputX >> self.get_ptr(pm.ls(f'middle_{finger}_{side}_Ctrl')[0], 1).attr(r_axis)
            if pm.ls(f'ring_base_{side}_Ctrl'):
                mult_div = pm.createNode('multiplyDivide', n=f'hand_{attr_name}_ring_{side}_multDiv')
                mult_div.input2X.set(factor[1])
                ctrlbone[0].attr(attr_name) >> mult_div.input1X
                mult_div.outputX >> self.get_ptr(pm.ls(f'ring_{finger}_{side}_Ctrl')[0], 1).attr(r_axis)
            if pm.ls(f'pinky_base_{side}_Ctrl'):
                mult_div = pm.createNode('multiplyDivide', n=f'hand_{attr_name}_pinky_{side}_multDiv')
                mult_div.input2X.set(factor[2])
                ctrlbone[0].attr(attr_name) >> mult_div.input1X
                mult_div.outputX >> self.get_ptr(pm.ls(f'pinky_{finger}_{side}_Ctrl')[0], 1).attr(r_axis)

        create_finger_automation('Cup', 'rz', 'base', (1.5, 3, 4.5))
        create_finger_automation('Fan', 'rz', '01', (3, 6, 8))
        create_finger_automation('FingerSpread', 'ry', '01', (-3, -5, -7))
        create_finger_automation('PalmSpread', 'ry', 'base', (-3, -6, -8))

    def build_foot(self, side, feetbones=('foot', 'ball'), rfbones = ('heel', 'toeTip'), ik_controller=None):
        if side == 'L':
            ctrl_color = (0, 0, 1)
        elif side == 'R':
            ctrl_color = (1, 0, 0)
        rig_grp = pm.group(n=f'{feetbones[0]}_{side}_rigGrp', em=1, p='world_ctrl')
        rfik_grp = pm.group(n=f'{feetbones[0]}_{side}_RFIK', em=1, p=rig_grp)
        foot = pm.ls(f'{feetbones[0]}_{side}')[0]
        ball = pm.ls(f'{feetbones[1]}_{side}')[0]
        for loc in pm.ls(f'{feetbones[0]}_roll_{side}')[0].listRelatives(c=1, ad=1, typ='transform'):
            p = self.create_control_at_bone(f'{loc}_Ctrl', f'{feetbones[1]}_{side}', 2, 'sphere', (1,0,0), (2,2,2),
                                            ctrl_color, 1, rfik_grp, pos=1, rot=0)
            pm.matchTransform(p[1], loc, rot=0, pos=1, piv=0)
            if loc.name().split('_')[0] in rfbones:
                pm.joint(n=f'RF_{loc.name().split("_")[0]}_{side}')
        rf_heel = pm.ls(f'RF_heel_{side}')[0]
        rf_toeTip = pm.ls(f'RF_{rfbones[1]}_{side}')[0]
        rf_heel.setParent(rfik_grp)
        rf_toeTip.setParent(rf_heel)
        rf_ball = pm.joint(n=f'RF_ball_{side}', p=ball.getTranslation(ws=1))
        rf_ball.setParent(rf_toeTip)
        ball_ctrl = self.create_control_at_bone(f'{feetbones[1]}_{side}_Ctrl', f'{feetbones[1]}_{side}', 2, 'sphere', (1,0,0),
                                                (1,1,1), ctrl_color, 1, rfik_grp, pos=1, rot=1)
        toeTip_ctrl = self.create_control_at_bone(f'{rfbones[1]}Bend_{side}_Ctrl', f'{feetbones[1]}_{side}', 2, 'circle', (1,0,0),
                                                (1,1,5), ctrl_color, 1, rfik_grp, pos=1, rot=1)
        rf_foot = pm.joint(n=f'RF_{feetbones[0]}_{side}', p=foot.getTranslation(ws=1))
        rf_foot.setParent(rf_ball)

        foot_ik = pm.ikHandle(sol='ikSCsolver', sj=foot, ee=ball, name=(f'{feetbones[0]}_{side}_IKhandle'))
        rf_foot_ik = pm.ikHandle(sol='ikSCsolver', sj=rf_toeTip, ee=rf_ball, name=(f'rf_{feetbones[0]}_{side}_IKhandle'))
        rf_ball_ik = pm.ikHandle(sol='ikSCsolver', sj=rf_ball, ee=rf_foot, name=(f'rf_{feetbones[1]}_{side}_IKhandle'))

        pm.ls(ik_controller)[0].IKFK_Mode >> foot_ik[0].ikBlend
        pm.ls(ik_controller)[0].IKFK_Mode >> rf_foot_ik[0].ikBlend
        pm.ls(ik_controller)[0].IKFK_Mode >> rf_ball_ik[0].ikBlend
        foot_ik[0].v.set(0)
        rf_foot_ik[0].v.set(0)
        rf_ball_ik[0].v.set(0)

        # create toeTip bone and a toeTip_ikHandle for it
        toe_tip = pm.joint(n=f'{rfbones[1]}_{side}', p=rf_toeTip.getTranslation(ws=1))
        toe_tip.setParent(ball)
        rf_toeTip_ik = pm.ikHandle(sol='ikSCsolver', sj=ball, ee=toe_tip, name=(f'{rfbones[1]}_IKhandle'))
        rf_toeTip_ik[0].v.set(0)
        pm.ls(ik_controller)[0].IKFK_Mode >> rf_toeTip_ik[0].ikBlend

        # create IK foot control, place on ground at 0
        CTRL_IK_foot = self.create_control_at_bone(f'{feetbones[0]}_{side}_IK_Ctrl', ball, 0,
                                                   'square', (0,0,1), (15,40,15), ctrl_color,
                                                   2, rig_grp, 1, 0)
        CTRL_IK_foot[0].addAttr('controller', k=0, dt='string')
        CTRL_IK_foot[0].controller.set(ik_controller)
        CTRL_IK_foot[1].setParent(rfik_grp)
        CTRL_IK_foot[1].setTranslation(rf_heel.getTranslation(ws=1), ws=1)
        CTRL_IK_foot[0].rotateOrder.set(3)
        pm.matchTransform(CTRL_IK_foot[0], foot, piv=1)  # pos=0, rot=0)

        # parent xform groups
        CTRL_leg_IK = pm.ls(f'leg_{side}_IK_Ctrl')[0]
        pm.ls(f'{feetbones[0]}In_{side}_Ctrl_parentOffsetGrp')[0].setParent(CTRL_IK_foot[0])
        pm.ls(f'{feetbones[0]}Out_{side}_Ctrl_parentOffsetGrp')[0].setParent(pm.ls(f'{feetbones[0]}In_{side}_Ctrl')[0])
        pm.ls(f'{rfbones[0]}_{side}_Ctrl_parentOffsetGrp')[0].setParent(pm.ls(f'{feetbones[0]}Out_{side}_Ctrl')[0])
        rf_heel.setParent(pm.ls(f'{rfbones[0]}_{side}_Ctrl')[0])
        rf_heel.visibility.set(0)
        pm.ls(f'{feetbones[1]}_{side}_Ctrl_parentOffsetGrp')[0].setParent(pm.ls(f'{rfbones[1]}_{side}_Ctrl')[0])
        pm.ls(f'{rfbones[1]}_{side}_Ctrl_parentOffsetGrp')[0].setParent(pm.ls(f'{rfbones[0]}_{side}_Ctrl')[0])
        foot_ik[0].setParent(pm.ls(toeTip_ctrl[0]))
        rf_foot_ik[0].setParent(toeTip_ctrl[0])
        rf_toeTip_ik[0].setParent(toeTip_ctrl[0])
        toeTip_ctrl[1].setParent(f'{rfbones[1]}_{side}_Ctrl')
        rf_ball_ik[0].setParent(CTRL_leg_IK)
        pm.ls(f'{CTRL_leg_IK}_parentOffsetGrp')[0].setParent(pm.ls(f'{feetbones[1]}_{side}_Ctrl')[0])

        pm.delete(f'{feetbones[0]}_roll_{side}')
        if not pm.ls('foot_roll_locs')[0].listRelatives(children=1):
            pm.delete('foot_roll_locs')

        # create foot roll ctrl
        sign = 1 if side == 'L' else -1
        foot_rolls_ctrl = self.create_control_at_bone(f'{feetbones[0]}Roll_{side}_Ctrl', f'{feetbones[1]}_{side}', 0,
                                                      'fourwaycurved', (0,sign*1,0), (2,2,2), ctrl_color, 2, CTRL_IK_foot[0],
                                                      pos=1, rot=1)
        foot_rolls_ctrl[0].addAttr('ToeTipAutoRollThreshold', k=1, at='float')
        foot_rolls_ctrl[0].ToeTipAutoRollThreshold.set(15.0)

        foot_roll_Xclamp = pm.createNode('clamp', n=f'footRoll_{side}_Xclamp')
        foot_roll_Zclamp = pm.createNode('clamp', n=f'footRoll_{side}_Zclamp')
        foot_roll_zrev = pm.createNode('reverse', n=f'footRoll_{side}_Zreverse')
        foot_roll_zsum = pm.createNode('sum', n=f'footRoll_{side}_Zsum')

        foot_rolls_ctrl[0].rx >> foot_roll_Xclamp.inputR
        foot_rolls_ctrl[0].rx >> foot_roll_Xclamp.inputG
        foot_roll_Xclamp.minR.set(-360.0)
        foot_roll_Xclamp.maxR.set(0)
        foot_roll_Xclamp.minG.set(0)
        foot_roll_Xclamp.maxG.set(360)
        foot_roll_Xclamp.outputR >> pm.ls(f'{feetbones[0]}Out_{side}_Ctrl_ptr1')[0].rx
        foot_roll_Xclamp.outputG >> pm.ls(f'{feetbones[0]}In_{side}_Ctrl_ptr1')[0].rx

        foot_rolls_ctrl[0].ToeTipAutoRollThreshold >> foot_roll_zrev.inputX
        foot_rolls_ctrl[0].ToeTipAutoRollThreshold >> foot_roll_zsum.input[1]
        foot_roll_Zclamp.minR.set(-360.0)
        foot_roll_Zclamp.maxR.set(0)
        foot_roll_Zclamp.minG.set(-360.0)
        foot_roll_zrev.outputX >> foot_roll_Zclamp.maxG
        foot_roll_Zclamp.minB.set(0)
        foot_roll_Zclamp.maxB.set(360.0)
        foot_roll_Zclamp.outputG >> foot_roll_zsum.input[0]
        foot_rolls_ctrl[0].rz >> foot_roll_Zclamp.inputR
        foot_rolls_ctrl[0].rz >> foot_roll_Zclamp.inputB
        foot_rolls_ctrl[0].rz >> foot_roll_Zclamp.inputG
        foot_roll_Zclamp.outputR >> pm.ls(f'{feetbones[1]}_{side}_Ctrl_ptr1')[0].rz
        foot_roll_zsum.output >> pm.ls(f'{rfbones[1]}_{side}_Ctrl_ptr1')[0].rz
        foot_roll_Zclamp.outputB >> pm.ls(f'{rfbones[0]}_{side}_Ctrl_ptr1')[0].rz

        # attach ikblend to controller vis
        pm.ls(ik_controller)[0].IKFK_Mode >> pm.ls(f'{feetbones[0]}In_{side}_Ctrl')[0].v
        pm.ls(ik_controller)[0].IKFK_Mode >> pm.ls(f'{feetbones[0]}Out_{side}_Ctrl')[0].v
        pm.ls(ik_controller)[0].IKFK_Mode >> pm.ls(f'{rfbones[0]}_{side}_Ctrl')[0].v
        pm.ls(ik_controller)[0].IKFK_Mode >> pm.ls(f'{rfbones[1]}_{side}_Ctrl')[0].v
        pm.ls(ik_controller)[0].IKFK_Mode >> pm.ls(f'{feetbones[1]}_{side}_Ctrl')[0].v
        pm.ls(ik_controller)[0].IKFK_Mode >> pm.ls(f'{rfbones[1]}Bend_{side}_Ctrl')[0].v
        pm.ls(ik_controller)[0].IKFK_Mode >> foot_rolls_ctrl[0].v
        pm.ls(ik_controller)[0].IKFK_Mode >> CTRL_IK_foot[0].v

    # returns ribbGrp, rig_grp, ribb_ctrl_jnts, ribb_bones
    def build_ribbon(self, joints, bendycount, ribbonwidth, bodypart, boneAimDir, makeCreases=True, creaseDist=0.1):
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
                    pj = j.getTranslation(ws=1)
                    bendygrp = pm.createNode('transform', name='{}_bendyParentGrp'.format(j), ss=1, p=rig_grp)

                    bendyjoint = pm.joint(n='{0}_bendy'.format(j), p=pj, o=joints[-2].getRotation(ws=1))
                    bendy_CTRL_joint = pm.joint(n='{0}_bendy_ribb'.format(j), p=pj,
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
        pm.skinCluster(bindbones, ribb[0], n='{}_skinCluster'.format(ribb[0]), tsb=1, bm=0, sm=0, nw=1, wd=1, mi=2,
                       omi=1, dr=5, fnw=1, rui=0)
        # uvpin locators to ribbon
        self.pin_to_uv(ribb[0], ribb_ctrl_locs)

        return ribbGrp, rig_grp, ribb_ctrl_jnts, ribb_bones

    # return ribb_ctrls
    def build_ribbon_ctrls(self, bones, bodypart, buffergroups, ribb_grp, rig_grp, ribb_ctrl_jnts, ribb_jnts, scale=(7, 7, 7), connected=True):
        if 'L' in bodypart:
            ribb_ctrl_color = (0.2, .25, 1)
        elif 'R' in bodypart:
            ribb_ctrl_color = (1, .25, 0.2)
        else:
            ribb_ctrl_color = (.5, .5, 0)

        ribb_ctrls = []
        for b in range(0, len(ribb_ctrl_jnts)):
            ribb_grp = ribb_ctrl_jnts[b].getParent()
            new_ribb_ctrl = self.create_control_at_bone('{}_ctrl'.format(ribb_ctrl_jnts[b]), ribb_ctrl_jnts[b], buffergroups,
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
                            pm.pointConstraint(mid_joint_ctrl, ctrl[0].getParent(), mo=1, w=weight)
                            pm.pointConstraint(anchor, ctrl[0].getParent(), mo=1, w=anchor_bone_weight)

        return ribb_ctrls

    # returns pin
    def pin_to_uv(self, surface, locs):
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
            c += 1
        pm.delete(readout)

        return pin

    def place_pole_vec(self, bonechain, poleVec, dist=20):
        topchainbone = bonechain[0].getTranslation(ws=1)
        midchainbone = bonechain[1].getTranslation(ws=1)
        endchainbone = bonechain[2].getTranslation(ws=1)
        lowerLimbLength = om.MVector(midchainbone - endchainbone).length()
        v1 = midchainbone - endchainbone
        v2 = topchainbone - endchainbone
        angle = (v1.angle(v2))
        poleVecPerpPoint = abs(math.cos(angle) * lowerLimbLength)  # point on v2 that makes right triangle
        poleVecPos = v2.normal() * poleVecPerpPoint  # mult normalized v2 by poleVecPerpPoint (magnitude)
        poleVecDir = (
                    midchainbone - (endchainbone + poleVecPos)).normal()  # get direction behind elbow to place pole vec
        poleVec.setTranslation((midchainbone + (poleVecDir * dist)), ws=1)

    def build_root_ctrl(self, root_bone):
        root_ctrl = self.create_control_at_bone('root_ctrl', root_bone, 0, 'arrow', (0,-1,0),
                                    (35,35,35), (.2,1,0), 2, self.world_control)
        root_bone.setParent(None)
        pm.pointConstraint(root_ctrl[0], root_bone, mo=1, w=1)
        pm.orientConstraint(root_ctrl[0], root_bone, mo=1, w=1)

        return root_ctrl

    # returns [(fkcontrols)], [(ikcontrols)]
    def build_ik_fk_limb(self, bones, bodypart, buffergroups, rigGrp):
        origin_bone = bones[0]
        center_bones = bones[1:-1]
        end_bone = bones[-1]
        center_bone = center_bones if (len(center_bones) > 1) else center_bones[0]  # TODO: account for 3 bone hindlegs
        if 'L' in bodypart:
            ctrl_color = (0, 0, 1)
        elif 'R' in bodypart:
            ctrl_color = (1, 0, 0)
        else:
            ctrl_color = (1, 1, 0)
        # Create limb controller first
        limb_options_ctrl = self.create_control_at_bone('{}_Ctrl'.format(bodypart), bones[-1], 0, 'sphere', (1, 0, 0),
                                                        (2.5, 2.5, 2.5), ctrl_color, 2, rigGrp)
        offset = 15
        if 'arm' in bodypart:
            pos = -1 if '_L' in bodypart else 1
            v = end_bone.getMatrix(ws=1)[2][0:3]
            v.normalize()
            pm.move(limb_options_ctrl[1], v * pos * offset, relative=1)
        elif 'leg' in bodypart:
            limb_options_ctrl[1].setMatrix(end_bone.getMatrix(ws=1), ws=1)
            pm.move(limb_options_ctrl[1], pm.dt.Array([0,offset,0]), relative=1)
        pm.parentConstraint(center_bone, limb_options_ctrl[1], mo=1)

        # extra: connect controller to endbone with a straight line curve
        # pt1 = i.getTranslation(ws=1)
        # pt2 = limb_options_ctrl[0].getTranslation(ws=1)
        # curveline = pm.curve(n='{0}_optionsCtrlCurve'.format(bodypart), d=1, p=[pt1, pt2])
        # hide default xform attrs on controller
        for attr in limb_options_ctrl[0].listAttr(k=1):
            attr.lock()
            attr.setKeyable(0)
        limb_options_ctrl[0].addAttr('IKFK_Mode', k=1, at='enum', en="FK:IK")
        ik_rev_node = pm.createNode('reverse', n='{}_FKreverse'.format(bodypart))
        limb_options_ctrl[0].IKFK_Mode >> ik_rev_node.inputX
        limb_options_ctrl[0].addAttr('controller', k=0, dt='string')
        limb_options_ctrl[0].controller.set(limb_options_ctrl[0])

        # create IK ctrl and handle
        ikcontrols = []
        ik_grp = pm.createNode('transform', name='{}_IKGrp'.format(bodypart), ss=1, p=rigGrp)
        ik_control = self.create_control_at_bone('{0}_IK_Ctrl'.format(bodypart), bones[-1], 3, 'cube', (1, 0, 0),
                                                 (5, 5, 5), ctrl_color, 2, rigGrp, rot=1)
        limb_IK = pm.ikHandle(sol='ikRPsolver', sj=origin_bone, ee=end_bone, name=('{}_IKhandle'.format(bodypart)))
        pm.ikHandle(limb_IK[0], e=1, dh=1)
        pm.pointConstraint(ik_control[0], limb_IK[0], mo=1, w=1)
        ik_orcnst = pm.orientConstraint(ik_control[0], end_bone, mo=1, w=1)
        limb_options_ctrl[0].IKFK_Mode >> ik_orcnst.listAttr()[-1]
        limb_IK[0].visibility.set(0)
        # pm.parent(limb_IK[0], ik_grp)
        # create locator to guide poleVec and parent the loc to origin_bone and put the locator behind the center_bone
        # TODO: write logic for hind legs / legs with >2 bones
        # TODO: rewrite this better with maths
        pole_control = self.create_control_at_bone('{}_poleVec_Ctrl'.format(bodypart), center_bones[0], 3, 'cone',
                                                   (1, 0, 0), (1, 1, 1), ctrl_color, 1, 0)
        self.place_pole_vec(bones, pole_control[1], dist=20)

        tmp_cnst = pm.aimConstraint(center_bone, pole_control[1], aim=(1.0, 0.0, 0.0), mo=0)
        pm.delete(tmp_cnst)
        pm.makeIdentity(pole_control[0], a=1, t=1, r=1, s=1)
        # pole_aim_cnst = pm.aimConstraint(center_bone, pole_control[0], aim=(1.0, 0.0, 0.0), mo=1)
        # create pole vector locators arm_L_PV_Loc
        pole_loc = pm.spaceLocator(name='{}_PV_loc'.format(bodypart))
        pole_loc_grp = pm.group(name='{}_grp'.format(pole_loc), p=origin_bone)
        pm.matchTransform(pole_loc_grp, origin_bone, piv=1)
        pm.matchTransform(pole_loc, pole_control[1], pos=1, rot=1)
        pole_loc.visibility.set(0)
        pm.pointConstraint(origin_bone, pole_loc_grp, mo=1, w=1)
        pm.orientConstraint(origin_bone, pole_loc_grp, mo=1, w=1)
        # TODO: find better alternative to parentConstraint with opm
        pm.poleVectorConstraint(pole_control[0], limb_IK[0], w=1)
        ikcontrols.extend([ik_control, pole_control, limb_IK, [pole_loc, pole_loc_grp]])


        # build stretchy
        stretchy_util_group = pm.group(em=True, name=f'{bodypart}_STRETCHY')
        _condition = pm.createNode("condition", name=f"{bodypart}_stretchyIK_condition")
        _multiplyDivide = pm.createNode("multiplyDivide", name=f"{bodypart}_stretchyIK_multDiv")
        pm.setAttr(f"{_multiplyDivide}.operation", 2)
        _plusMinusAverage = pm.createNode("plusMinusAverage", name=f"{bodypart}_stretchyIK_plusMinAvg1")

        _distance = pm.distanceDimension(sp=(pm.xform(origin_bone, q=True, ws=True, t=True)),
                                         ep=(pm.xform(end_bone, q=True, ws=True, t=True)))
        _distance = pm.rename(pm.listRelatives(_distance, parent=True),f"{bodypart}_distanceDimension")

        _dist_startBone = pm.rename(pm.listConnections(f"{_distance}.startPoint", s=1),
                                    f"{bodypart}_stretchyDistLOC_startPoint")
        _dist_ikhandle = pm.rename(pm.listConnections(f"{_distance}.endPoint", s=1),
                                   f"{bodypart}_stretchyDistLOC_endPoint")

        _limb_length = pm.getAttr(f"{center_bone}.tx") + pm.getAttr(f"{end_bone}.tx")
        pm.parent(_dist_startBone, origin_bone)

        _ik_end_cnst = pm.pointConstraint(ik_control[0], _dist_ikhandle, mo=True, weight=1)

        _ik_end_cnst_attr = pm.listAttr(_ik_end_cnst)[-1]

        pm.connectAttr(f"{_distance}.distance", f"{_condition}.firstTerm", f=True)
        pm.setAttr(f"{_condition}.secondTerm", _limb_length)
        pm.setAttr(f"{_condition}.operation", 2)

        pm.connectAttr(f"{_distance}.distance", f"{_multiplyDivide.input1X}", f=True)
        pm.setAttr(f"{_multiplyDivide}.input2X", _limb_length)
        pm.setAttr(f"{_condition}.operation", 2)
        pm.connectAttr(f"{_multiplyDivide}.outputX", f"{_condition}.colorIfTrueR", f=True)
        pm.setAttr(f"{_multiplyDivide}.operation", 2)
        # pm.connectAttr(f"{_condition}.outColorR", f"{origin_bone}.scaleX")
        # pm.connectAttr(f"{_condition}.outColorR", f"{center_bone}.scaleX")
        pm.parent(_distance, _dist_startBone, _dist_ikhandle, stretchy_util_group)
        pm.hide(_distance, _dist_startBone, _dist_ikhandle)

        pm.addAttr(ik_control[0], ln="stretchy", at="bool", k=1, dv=0)
        pm.connectAttr(f"{ik_control[0]}.stretchy", f"{_ik_end_cnst}.{_ik_end_cnst_attr}", f=True)

        # # if ikfkblended:
        # _reverse_node = pm.createNode("reverse", name=f"{bodypart}_ikfk_reverseNode")
        # pm.connectAttr(f"ik_control[0].stretchy", f"{_reverse_node}.inputX", f=True)
        # center_bone = pm.ls(f"{center_bone}_control")
        # end_bone = pm.ls(f"{end_bone}_control")
        #
        # pm.connectAttr((f"%s.outputX" % _reverse_node), (f"%s.%s" %
        #                                                   (pm.listConnections(center_bone, t='pointConstraint', s=0,
        #                                                                         d=1)[0],
        #                                                    pm.listAttr(
        #                                                        pm.listConnections(center_bone, t='pointConstraint',
        #                                                                             s=0, d=1)[0])[-1])), f=True)
        # pm.connectAttr((f"%s.outputX" % _reverse_node), (f"%s.%s" %
        #                                                   (pm.listConnections(end_bone, t='pointConstraint', s=0,
        #                                                                         d=1)[0],
        #                                                    pm.listAttr(
        #                                                        pm.listConnections(end_bone, t='pointConstraint',
        #                                                                             s=0, d=1)[0])[-1])), f=True)


        pm.parent(stretchy_util_group, rigGrp)



        # Connect the IK control visibility to the end_bone IK enable attribute.
        limb_options_ctrl[0].IKFK_Mode >> limb_IK[0].ikBlend
        limb_options_ctrl[0].IKFK_Mode >> ik_control[0].visibility
        limb_options_ctrl[0].IKFK_Mode >> pole_control[0].visibility
        # print('1')
        pm.parent( limb_IK[0], pole_control[1], ik_control[1], pole_loc_grp, ik_grp)
        # print('2')
        # build FK controls
        fkcontrols = []
        newctrl = None
        for i in bones:
            parent = rigGrp if (i == bones[0]) else newctrl[0]
            newctrl = self.create_control_at_bone('{}_FK_Ctrl'.format(i), i, buffergroups, 'circle', (1, 0, 0),
                                                  (7, 7, 7), ctrl_color, 2, parent)
            fk_ptcnst = pm.pointConstraint(newctrl[0], i, mo=1, w=1)
            fk_orcnst = pm.orientConstraint(newctrl[0], i, mo=1, w=1)
            ik_rev_node.outputX >> fk_ptcnst.listAttr()[-1]
            ik_rev_node.outputX >> fk_orcnst.listAttr()[-1]
            ik_rev_node.outputX >> newctrl[0].visibility
            newctrl[0].rotateOrder.set(3)
            fkcontrols.append(newctrl)
        # self.lock_attrs(ik_control[0], ['sx', 'sy', 'sz'])
        # pm.makeIdentity(pole_control[0], a=1, t=1, r=1, s=1)
        pm.setAttr('%s.v' % ik_control[0], keyable=0, channelBox=0)
        # self.lock_attrs(pole_control[0], ['sx', 'sy', 'sz', 'rx', 'ry', 'rz'])
        pm.setAttr('%s.v' % pole_control[0], keyable=0, channelBox=0)
        # if pm.ls('%s_offset' % (end_bone)):
        #     pm.orientConstraint(ik_control, '%s_offset' % (end_bone), mo=True)


        # add custom attrs to controller (mode(ik/fk)
        cj = ['Shoulder', 'Elbow', 'Wrist'] if 'arm' in bodypart else ['thigh', 'knee', 'ankle']
        ctrl_attrs = {'Squash': 'bool', 'Stretch': 'bool', 'Bend': 'float', '{}_Slide'.format(cj[1]): 'float',
                      '{}_Lock'.format(cj[1]): 'bool', '{}_Twist_On_Off'.format(cj[2]): 'bool',
                      '{}_Twist'.format(cj[2]): 'float', '{}_Twist_On_Off'.format(cj[0]): 'bool',
                      '{}_Twist'.format(cj[0]): 'float'}
        limb_options_ctrl[0].addAttr('Bendy_Vis', k=0, at='bool')
        limb_options_ctrl[0].setAttr('Bendy_Vis', e=1, channelBox=1)
        for ca in ctrl_attrs:
            limb_options_ctrl[0].addAttr(ca, k=1, at=ctrl_attrs[ca])
        limb_options_ctrl[0].addAttr('fkcontrols', k=0, dt='stringArray')
        limb_options_ctrl[0].addAttr('ikcontrols', k=0, dt='stringArray')
        limb_options_ctrl[0].addAttr('bones', k=0, dt='stringArray')
        tmp = []
        for fk in fkcontrols:
            tmp.append(fk[0])
            fk[0].addAttr('controller', k=0, dt='string')
            fk[0].controller.set(limb_options_ctrl[0])
        limb_options_ctrl[0].fkcontrols.set(tmp)
        tmp.clear()
        for ik in ikcontrols:
            tmp.append(ik[0])
            ik[0].addAttr('controller', k=0, dt='string')
            ik[0].controller.set(limb_options_ctrl[0])
        limb_options_ctrl[0].ikcontrols.set(tmp)
        limb_options_ctrl[0].bones.set(bones)
        # create scriptNode for ikfk switch; get values from controller

        pm.select(d=1)

        return fkcontrols, ikcontrols

    # returns spline_ctrls
    def build_spline_ik(self, bones, ribb_ctrl_jnts, bodypart, buffergroups, rig_grp, bendy=0, controllers=3):
        base_bone = ribb_ctrl_jnts[0]
        mid_bone = ribb_ctrl_jnts[len(ribb_ctrl_jnts) // 2]
        end_bone = bones[-1]
        spline_ctrls = []
        if 'L' in bodypart:
            ctrl_color = (0, 0, 1)
        elif 'R' in bodypart:
            ctrl_color = (1, 0, 0)
        else:
            ctrl_color = (1, 1, 0)
        # create EP curve along spine bones, degree 3
        pts = []
        for i in ribb_ctrl_jnts:
            pts.append(i.getTranslation(ws=1))
        spline_curve = pm.curve(n='{}_splineCurve'.format(bodypart), d=3, ep=pts)
        spline_curve.setParent(rig_grp)
        spline_curve.inheritsTransform.set(0)
        splinebones = pm.duplicate(ribb_ctrl_jnts, n='nubones', po=1)
        prev_bone = splinebones[0]
        for i in range(0, len(splinebones)):
            splinebones[i].rename('sik_{}'.format(ribb_ctrl_jnts[i]))
            splinebones[i].setParent(prev_bone)
            prev_bone = splinebones[i]
        # sik_endbone = pm.duplicate(end_bone, n='sik_endbone', po=1)[0]
        # sik_endbone.setParent(splinebones[-1])

        # create splineIK handle with, disable autoCreateCurve and autoParentCurve (sel first, last, curve)
        spline_ik = pm.ikHandle(n='{}_splineIKhandle'.format(bodypart),c=spline_curve, sj=splinebones[0], ee=splinebones[-1], sol='ikSplineSolver', ccv=0, pcv=0, fj=1)
        spline_ik[0].setParent(rig_grp)
        # create ctrl_bones for first, middle, and end joint
        base_ctrl_bone = base_bone.duplicate(n='spline_{}_base'.format(bodypart), po=1)[0]
        mid_ctrl_bone = mid_bone.duplicate(n='spline_{}_mid'.format(bodypart), po=1)[0]
        end_ctrl_bone = end_bone.duplicate(n='spline_{}_end'.format(bodypart), po=1)[0]
        spline_ctrl_bones = [base_ctrl_bone, mid_ctrl_bone, end_ctrl_bone]
        for s in spline_ctrl_bones:
            s.setParent(rig_grp)
            s.visibility.set(0)
        # bind three ctrl_bones to curve
        pm.skinCluster(spline_ctrl_bones, spline_curve, n='{}_skinCluster'.format(spline_curve), tsb=1, bm=0, sm=0, nw=1, wd=1, mi=2,
                       omi=1, dr=5, fnw=1, rui=0)
        # skin spine bones to ribbon and make controllers for ctrl_bones
        base_ctrl = self.create_control_at_bone('Base_{}_Ctrl'.format(bodypart), base_ctrl_bone, buffergroups, 'pelvis', (0, -1, 0),
                                                (10,10,10), ctrl_color, 3, rig_grp, rot=0)
        pm.pointConstraint(base_ctrl[0], base_ctrl_bone, mo=1, w=1)
        pm.orientConstraint(base_ctrl[0], base_ctrl_bone, mo=1, w=1)
        mid_ctrl = self.create_control_at_bone('Mid_{}_Ctrl'.format(bodypart), mid_ctrl_bone, buffergroups, 'circle', (0, 0, 1),
                                                (20,20,20), ctrl_color, 3, rig_grp, rot=0)
        pm.pointConstraint(mid_ctrl[0], mid_ctrl_bone, mo=1, w=1)
        pm.orientConstraint(mid_ctrl[0], mid_ctrl_bone, mo=1, w=1)
        end_ctrl = self.create_control_at_bone('End_{}_Ctrl'.format(bodypart), end_ctrl_bone, buffergroups, 'circle', (0, 0, 1),
                                                (20,20,20), ctrl_color, 3, rig_grp, rot=0)
        pm.pointConstraint(end_ctrl[0], end_ctrl_bone, mo=1, w=1)
        pm.orientConstraint(end_ctrl[0], end_ctrl_bone, mo=1, w=1)
        # constrain ribb bone to spline bones
        pm.pointConstraint(end_ctrl_bone, end_bone, mo=1, w=1)
        pm.orientConstraint(end_ctrl_bone, end_bone, mo=1, w=1)
        if bendy:
            for i in range(0, len(splinebones)):
                pm.pointConstraint(splinebones[i], ribb_ctrl_jnts[i], mo=1, w=1)
                pm.orientConstraint(splinebones[i], ribb_ctrl_jnts[i], mo=1, w=1)
            # pm.pointConstraint(end_ctrl_bone, end_bone, mo=1, w=1)
            # pm.orientConstraint(end_ctrl_bone, end_bone, mo=1, w=1)
        else:
            for i in range(0, len(splinebones)):
                # splinebones.append(sik_endbone)
                pm.pointConstraint(splinebones[i], ribb_ctrl_jnts[i], mo=1, w=1)
                pm.orientConstraint(splinebones[i], ribb_ctrl_jnts[i], mo=1, w=1)

        # create stretchy
        multi_div = pm.createNode('multiplyDivide', n='{}_multDiv'.format(bodypart))
        multi_div.operation.set(2)
        multi_div.input2X.set(-1)
        # bottom_bone_control.rx >> multiDivideNode.outPutX >> spline_ik_handle.twist
        base_ctrl[0].rx >> multi_div.input1X
        multi_div.outputX >> spline_ik[0].twist
        # bottom_bone_control.rx >>  >> spline_ik_handle.roll
        base_ctrl[0].rx >> spline_ik[0].roll
        # spline_ik_handle.roll spline_ik_handle.twist
        spline_ik[0].roll >> spline_ik[0].twist
        # create plusMinusAvg,
        plusMinus = pm.createNode('plusMinusAverage', n='{}_plusMinusAvg'.format(bodypart))
        # top_bone_control.rx >> plusMinusAvg.1X >> spline_ik_handle.twist
        end_ctrl[0].rx >> plusMinus.input1D[0]
        plusMinus.output1D >> spline_ik[0].twist
        # multiDivideNode.outputX >> plusMinusAvg.1DY, multiply by -1
        multi_div.outputX >> plusMinus.input1D[1]
        # create mid_twist_multiDiv
        mid_twist_multiDiv = pm.createNode('multiplyDivide', n='{}_mid_twist_multiDiv'.format(bodypart))
        # mid_ctrl[0].rx >> mid_twist_multiDiv.input1X (maybe mult by -1) >> midjoint.rx
        mid_twist_multiDiv.operation.set(1)
        mid_ctrl[0].rx >> mid_twist_multiDiv.input1X
        mid_twist_multiDiv.operation.set(1)
        mid_twist_multiDiv.input2X.set(-1)
        mid_ctrl[0].rx >> mid_twist_multiDiv.input1Y
        mid_ctrl[0].rx >> mid_twist_multiDiv.input1Z
        mid_twist_multiDiv.input2Y.set(-.5)
        mid_twist_multiDiv.input2Z.set(-.25)
        mid_twist_multiDiv.outputX >> ribb_ctrl_jnts[2].rx
        # mid_twist_multiDiv.output1Y >> ribbon ctrl joints before and after midjoint.rx
        # mid_twist_multiDiv.output1Z >> ribbon ctrl joints before and after midjoint.rx

        # make stretchy: create curveInfo node
        splineCurveInfo = pm.createNode('curveInfo', n='{}_curveInfo'.format(bodypart))
        spline_curve.getShape().worldSpace[0] >> splineCurveInfo.inputCurve
        stretch_factor = pm.createNode('multiplyDivide', n='{}_stretchFactor'.format(bodypart))
        stretch_factor.operation.set(2)
        splineCurveInfo.arcLength >> stretch_factor.input1X
        stretch_factor.input2X.set(splineCurveInfo.arcLength.get())
        for j in splinebones:
            stretch_factor.outputX >> j.scaleX

        # splineCurveInfo.arcLength.get() >>

        # add custom attrs to controller (mode(ik/fk)
        # cj = ['Shoulder', 'Elbow', 'Wrist'] if 'arm' in bodypart else ['thigh', 'knee', 'ankle']
        # ctrl_attrs = {'Squash': 'bool', 'Stretch': 'bool', 'Bend': 'float', '{}_Slide'.format(cj[1]): 'float',
        #               '{}_Lock'.format(cj[1]): 'bool', '{}_Twist_On_Off'.format(cj[2]): 'bool',
        #               '{}_Twist'.format(cj[2]): 'float', '{}_Twist_On_Off'.format(cj[0]): 'bool',
        #               '{}_Twist'.format(cj[0]): 'float'}
        # base_ctrl[0].addAttr('Bendy_Vis', k=0, at='bool')
        # base_ctrl[0].setAttr('Bendy_Vis', e=1, channelBox=1)
        # for ca in ctrl_attrs:
        #     base_ctrl[0].addAttr(ca, k=1, at=ctrl_attrs[ca])
        # base_ctrl[0].addAttr('fkcontrols', k=0, dt='stringArray')
        # base_ctrl[0].addAttr('ikcontrols', k=0, dt='stringArray')
        # base_ctrl[0].addAttr('bones', k=0, dt='stringArray')
        # tmp = []
        # for fk in fkcontrols:
        #     tmp.append(fk[0])
        #     fk[0].addAttr('controller', k=0, dt='string')
        #     fk[0].controller.set(base_ctrl[0])
        # base_ctrl[0].fkcontrols.set(tmp)
        # tmp.clear()
        # for ik in ikcontrols:
        #     tmp.append(ik[0])
        #     ik[0].addAttr('controller', k=0, dt='string')
        #     ik[0].controller.set(base_ctrl[0])
        # base_ctrl[0].ikcontrols.set(tmp)
        # base_ctrl[0].bones.set(bones[1:])
        # create scriptNode for ikfk switch; get values from controller

        pm.select(d=1)

        return spline_ctrls

    def create_follow_ctrl(self, follow_name, ctrl_source, ctrl_target):
        ctrl_source = pm.ls(ctrl_source)[0]
        ctrl_target = pm.ls(ctrl_target)[0]
        # get parentOffsetGroup of ctrl_target
        if ctrl_target.split('_')[-1] != 'rigGrp':
            par = ctrl_target.getParent()
            while par.pretransformLevel.get() != 0:
                par = par.getParent()
                if par.pretransformLevel.get() == 0:
                    break
        else:
            par = ctrl_target
        # parentConstraint ctrl_parent to ctrl[1], T only
        t_cnst= pm.parentConstraint(ctrl_source, par, sr=["x", "y", "z"], mo=1)
        # parentConstraint ctrl_parent & worldSpace_loc to ctrl[1], R only
        r_cnst = pm.parentConstraint(ctrl_source, self.worldSpace_loc, par, st=["x", "y", "z"], mo=1)
        # create follow_name attr on ctrl[0]
        if not pm.attributeQuery(follow_name, n=ctrl_source, ex=1):
            ctrl_source.addAttr(follow_name, k=1, at='float', min=0.0, max=1.0)
        # connect attr to parentConstraint2.w0 and w1
        ctrl_weight = pm.__dict__[pm.nodeType(r_cnst)](r_cnst, query=True, weightAliasList=True)[0]
        worldspace_weight  = pm.__dict__[pm.nodeType(r_cnst)](r_cnst, query=True, weightAliasList=True)[1]
        ctrl_rev_node = pm.createNode('reverse', n=f'{follow_name}Constraint_reverse')
        pm.Attribute(f'{ctrl_source}.{follow_name}') >> ctrl_rev_node.inputX
        ctrl_rev_node.outputX >> worldspace_weight
        pm.Attribute(f'{ctrl_source}.{follow_name}') >> ctrl_weight

    def build_extra_ctrls(self, jnt_dict):
        # create clavicle, hip, and neck/head controls, parent to IK limb group
        for jnt in jnt_dict:
            new_ctrl = ar.create_control_at_bone(f'{jnt}_Ctrl', jnt, 1, 'square', (1, 0, 0),
                                                 (2, 2, 6), (.2, 1, 0), 2, None)
            pm.parentConstraint(new_ctrl[0], jnt, mo=1)
            pm.parent(new_ctrl[1], self.world_control)
            self.create_follow_ctrl(f'{jnt}Follow', f'{jnt_dict[jnt]}_Ctrl', f'{jnt}_Ctrl')

    def create_space_switch(self, controller, parent_controller, parent_space_ptr=None):
        spaces_GRP = self.spaces_GRP
        # ctrl_parent_offset = controller's parentOffsetGrp - self.get_ctrl_ptr(controller, 0)
        # constraint_ptr = create _parentSpace group node above ptr1
        if not parent_space_ptr:
            parent_space_ptr = self.get_ctrl_ptr(controller, 1)
        # check if parent_controller has a _ctrl_space under spaces_GRP yet, create if not
        ctrl_space_name = '{}_space'.format(parent_controller)
        if ctrl_space_name not in self.spaces_GRP.getChildren():
            ctrl_space = pm.createNode('transform', n=ctrl_space_name, p=self.spaces_GRP)
        else:
            ctrl_space = pm.ls(ctrl_space_name)[0]
        # parentConstraint _ctrl_space to controller
        pm.parentConstraint(ctrl_space, parent_controller, mo=0, w=1)
        # create controller _offset under _ctrl_space
        controller_offset = pm.createNode('transform', n='{0}__offset'.format(controller), p=ctrl_space)
        # constraint _offset to controller
        pm.matchTransform(controller_offset, controller, pos=1, rot=1)
        # create condition node for parent_controller
        # condition colorIfTrueR = 1, colorifTrueG = 0, colorIfFalseG = 10
        cond = pm.createNode('condition', n='{}_COND'.format(parent_controller))
        cond.operation.set(0)
        cond.colorIfTrueR.set(1)
        cond.colorIfFalseR.set(0)
        cond.colorIfTrueG.set(0)
        cond.colorIfFalseG.set(10)

        # create parent_controller _inBetween grp node under ctrl_parent_offset
        # parentConstraint _inBetween to _offset
        result_cnst = pm.parentConstraint(inbetween, parent_space_ptr, mo=1, w=0)

        # check if Parent_Space enum attr of controller exists, create if not, edit if so
        # controller.ParentSpace >> condition.FirstTerm
        # controller.outColorR >> RESULT constraint

    def get_ptr(self, ctrl, ptr_level):
        par = ctrl.getParent()
        while par.pretransformLevel.get() != ptr_level:
            par = par.getParent()
            if par.pretransformLevel.get() == ptr_level:
                return par