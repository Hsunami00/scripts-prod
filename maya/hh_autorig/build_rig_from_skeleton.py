import platform
import importlib
import hh_autorig.autorig as autorig
importlib.reload(autorig)


def get_git_dir():
    if platform.system() == 'Windows':
        return r'c:/github'
    else:
        return r'/Users/hhsu/Documents/GitHub'

autorig_testground_file = f'{autorig.get_git_dir()}/dev/scripts/maya/hh_autorig/autorig_testground.ma'

# pm.openFile('/Users/hhsu/OneDrive/temp/autorig_testground.ma', f=1)
pm.openFile(autorig_testground_file, f=1)

ar = autorig.Autorig()
# spine_placers = a.build_spine_placer(3, 1, 1)
# arm_placers = a.build_arm_placer('L', 1)
# leg_placers = a.build_leg_placer('L', 1)
# index_finger = a.build_chain_placer('L', 'index', 4, 3, 'hand', (1, 0, 0), (75, -5, 140), (.75, .75, .75))
# middle_finger = a.build_chain_placer('L', 'middle', 4, 3, 'hand', (1, 0, 0), (75, -2, 140), (.75, .75, .75))
# ring_finger = a.build_chain_placer('L', 'ring', 4, 3, 'hand', (1, 0, 0), (75, 1, 140), (.75, .75, .75))
# pinky_finger = a.build_chain_placer('L', 'pinky', 4, 3, 'hand', (1, 0, 0), (75, 4, 140), (.75, .75, .75))
# thumb_finger = a.build_chain_placer('L', 'thumb', 4, 3, 'hand', (1, -1, -1), (70, -6, 135), (.75, .75, .75))

# create bigger main pelvis control and world & local control on ground; local moves root bone, world is top of hierarchy
rootbone = pm.ls('root', type='joint')[0]
spinebones = pm.ls('pelvis', 'spine_01', 'spine_02', 'spine_03', 'spine_04', type='joint')
# spinebones = pm.ls('pelvis', 'spine1', 'spine2', 'spine3', type='joint')
neckbones = pm.ls('neck_01', 'head', type='joint')
# neckbones = pm.ls('neck', 'head', type='joint')

L_clavbone = 'clavicle_L'
R_clavbone = 'clavicle_R'
L_armbones = pm.ls('upperArm_L', 'lowerArm_L', 'hand_L', type='joint')
R_armbones = pm.ls('upperArm_R', 'lowerArm_R', 'hand_R', type='joint')
# L_armbones = pm.ls('L_shoulder', 'L_elbow', 'L_wrist', type='joint')
# R_armbones = pm.ls('R_shoulder', 'R_elbow', 'R_wrist', type='joint')
L_handbone = pm.ls('hand_L', type='joint')[0]
R_handbone = pm.ls('hand_R', type='joint')[0]

L_hipbone = 'hip_L'
R_hipbone = 'hip_R'
L_legbones = pm.ls('thigh_L', 'calf_L', 'foot_L', type='joint')
R_legbones = pm.ls('thigh_R', 'calf_R', 'foot_R', type='joint')
# L_legbones = pm.ls('L_hip', 'L_knee', 'L_ankle', type='joint')
# R_legbones = pm.ls('R_hip', 'R_knee', 'R_ankle', type='joint')
L_feetbones = ''
R_feetbones = ''
# hindlegbones = pm.ls('thigh_l', 'calf_l', 'foot_l', 'toe_l')


rootctrl = ar.build_root_ctrl(rootbone)
spineRibb = ar.build_ribbon(spinebones, 0, 5, 'spine', 'x', 0)
# spineRibb = ar.build_ribbon(spinebones, 1, 5, 'spine', 'x', 0)
# # spineRibb_ctrls = ar.build_ribbon_ctrls(spinebones, 'spine', 3, spineRibb[0], spineRibb[1], spineRibb[2], spineRibb[3], (15, 15, 30), False)
spineIK = ar.build_spline_ik(spinebones, spineRibb[2], 'spine', 3, spineRibb[1], False,3)
# spineIK = ar.build_spline_ik(spinebones, spineRibb[2], 'spine', 3, spineRibb[1], True,3)

L_armRibb = ar.build_ribbon(L_armbones, 3, 3, 'arm_L', 'x')
R_armRibb = ar.build_ribbon(R_armbones, 3, 3, 'arm_R', '-x')
L_legRibb = ar.build_ribbon(L_legbones, 3, 3, 'leg_L', 'x')
R_legRibb = ar.build_ribbon(R_legbones, 3, 3, 'leg_R', '-x')
# hindlegribb = ar.nuild_ribbon(hindlegbones, 3, 6, 'hindLeg_L', '-x')

L_armRibb_ctrls = ar.build_ribbon_ctrls(L_armbones, 'arm_L', 3, L_armRibb[0], L_armRibb[1], L_armRibb[2], L_armRibb[3])
R_armRibb_ctrls = ar.build_ribbon_ctrls(R_armbones, 'arm_R', 3, R_armRibb[0], R_armRibb[1], R_armRibb[2], R_armRibb[3])
L_legRibb_ctrls = ar.build_ribbon_ctrls(L_legbones, 'leg_L', 3, L_legRibb[0], L_legRibb[1], L_legRibb[2], L_legRibb[3])
R_legRibb_ctrls = ar.build_ribbon_ctrls(R_legbones, 'leg_R', 3, R_legRibb[0], R_legRibb[1], R_legRibb[2], R_legRibb[3])


# [0] - FK, [1] - IK
L_arm_controls = ar.build_ik_fk_limb(L_armbones, 'arm_L', 3, L_armRibb[1])
R_arm_controls = ar.build_ik_fk_limb(R_armbones, 'arm_R', 3, R_armRibb[1])
L_leg_controls = ar.build_ik_fk_limb(L_legbones, 'leg_L', 3, L_legRibb[1])
R_leg_controls = ar.build_ik_fk_limb(R_legbones, 'leg_R', 3, R_legRibb[1])
# hindlegIK = pm.ls('thigh_l', 'calf_l', 'foot_l')

# build hands
ar.build_hand("L", L_handbone)
ar.build_hand('R', R_handbone)

# create clavicle, hip, and neck/head controls, parent to IK limb group
ar.build_extra_ctrls({L_clavbone:'End_spine', R_clavbone:'End_spine', neckbones[0]:'End_spine', neckbones[1]:'neck_01'})
                       # 'thigh_L_FK_Ctrl':L_hipbone, 'thigh_R_FK_Ctrl':R_hipbone})
# ar.build_extra_ctrls({'L_clavicle':'End_spine', 'R_clavicle':'End_spine',
#                     'neck':'End_spine', 'head':'neck'})

pm.parentConstraint('clavicle_L_Ctrl', L_arm_controls[0][0][1], mo=1)
pm.parentConstraint('clavicle_R_Ctrl', R_arm_controls[0][0][1], mo=1)

hip_L_Ctrl = ar.create_control_at_bone('hip_L_Ctrl', L_hipbone, 1, 'square', (1, 0, 0),
                                     (2, 2, 6), (.2, 1, 0), 2, 'world_ctrl')
hip_R_Ctrl = ar.create_control_at_bone('hip_R_Ctrl', R_hipbone, 1, 'square', (1, 0, 0),
                                     (2, 2, 6), (.2, 1, 0), 2, 'world_ctrl')
pm.parentConstraint(hip_L_Ctrl[0], L_hipbone, mo=1) #
pm.parentConstraint(hip_R_Ctrl[0], R_hipbone, mo=1) #
pm.parentConstraint('Base_spine_Ctrl', hip_L_Ctrl[1], mo=1)
pm.parentConstraint('Base_spine_Ctrl', hip_R_Ctrl[1], mo=1)
ar.create_follow_ctrl('L_Leg_Follow', hip_L_Ctrl[0], 'leg_L_rigGrp')
ar.create_follow_ctrl('R_Leg_Follow', hip_R_Ctrl[0], 'leg_R_rigGrp')
ar.create_follow_ctrl('L_Leg_Follow', hip_L_Ctrl[0], 'thigh_L_FK_Ctrl')
ar.create_follow_ctrl('R_Leg_Follow', hip_R_Ctrl[0], 'thigh_R_FK_Ctrl')


# build feet
ar.build_foot('L', feetbones=('foot', 'ball'), rfbones = ('heel', 'toeTip'), ik_controller = 'leg_L_Ctrl')
ar.build_foot('R', feetbones=('foot', 'ball'), rfbones = ('heel', 'toeTip'), ik_controller = 'leg_R_Ctrl')
# pm.delete('foot_roll_locs')

# set attachment points for rig grps except spine
spineRibb[1].attach_point.set(ar.world_control)
L_armRibb[1].attach_point.set(f'{L_armbones[0].getParent()}_ctrl')
R_armRibb[1].attach_point.set(f'{R_armbones[0].getParent()}_ctrl')
L_legRibb[1].attach_point.set(f'{L_legbones[0].getParent()}_ctrl')
R_legRibb[1].attach_point.set(f'{R_legbones[0].getParent()}_ctrl')
for rig_grp in [ spineRibb[1],L_armRibb[1],R_armRibb[1],L_legRibb[1],R_legRibb[1] ]:
    rig_grp.setParent(ar.world_control)

pm.parentConstraint(spineRibb[1].attach_point.get(), spineRibb[1], mo=1, w=1)
# pm.parentConstraint(L_armRibb[1].attach_point.get(), L_arm_controls[0][0][1], mo=1, w=1)
# pm.orientConstraint(L_armRibb[1].attach_point.get(), L_armRibb[1], mo=1, w=1)
# pm.pointConstraint(R_armRibb[1].attach_point.get(), R_armRibb[1], mo=1, w=1)
# pm.orientConstraint(R_armRibb[1].attach_point.get(), R_armRibb[1], mo=1, w=1)
# pm.pointConstraint(L_legRibb[1].attach_point.get(), L_legRibb[1], mo=1, w=1)
# pm.orientConstraint(L_legRibb[1].attach_point.get(), L_legRibb[1], mo=1, w=1)
# pm.pointConstraint(R_legRibb[1].attach_point.get(), R_legRibb[1], mo=1, w=1)
# pm.orientConstraint(R_legRibb[1].attach_point.get(), R_legRibb[1], mo=1, w=1)

# final step will be to constrain deform skeleton to rig skeleton

pm.select(d=1)

# ar.create_space_switch()