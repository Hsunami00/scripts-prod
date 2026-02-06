from maya import cmds as cmds
import widgets


# Utility methods
def get_offset(self, control):
    return cmds.listRelatives(control, parent=True)[0]


def set_rotate_to_joint_orient(self, bone=None):
    if not bone:
        bone = cmds.ls(sl=True)[0]

    cmds.setAttr("%s.rotate" % bone, cmds.getAttr("%s.jointOrient" % bone))
    cmds.setAttr("%s.jointOrient" % bone, 0, 0, 0)


def set_joint_orient_to_rotate(self, bone=None):
    if not bone:
        bone = cmds.ls(sl=True)[0]
    bone_rotate = cmds.xform(bone, q=True, r=True, ro=True)

    cmds.setAttr("%s.jointOrient" % bone, bone_rotate[0], bone_rotate[1], bone_rotate[2])
    cmds.setAttr("%s.rotate" % bone, 0, 0, 0)


def add_rotate_to_joint_orient(self, bone=None):
    if not bone:
        bone = cmds.ls(sl=True)[0]
    bone_rotate = cmds.xform(bone, q=True, r=True, ro=True)
    bone_jo = cmds.getAttr("%s.jointOrient" % bone)[0]

    cmds.setAttr("%s.jointOrient" % bone, bone_jo[0] + bone_rotate[0], bone_jo[1] - bone_rotate[2],
                 bone_jo[2] + bone_rotate[1])
    cmds.setAttr("%s.rotate" % bone, 0, 0, 0)


def reset_group_node(self, placer):
    # to be used so that placer group node stays at 0 even if user moves it
    placer_children = cmds.listRelatives(placer, children=True)
    cmds.parent(placer_children, w=True)
    cmds.xform(placer, ws=True, t=(0, 0, 0))
    cmds.parent(placer_children, placer)
    cmds.select(d=True)


def orient_joint_chain(self, root_bone, side="L"):
    if side == "L":
        cmds.joint(root_bone, e=True, oj="xyz", sao="yup", ch=True, zso=True)
    else:
        cmds.joint(root_bone, e=True, oj="xyz", sao="ydown", ch=True, zso=True)


def refresh_active_placers(self):
    self.placers = {}
    self.arm_placers = 0
    self.leg_placers = 0

    for node in cmds.ls(exactType="transform"):
        if cmds.objExists("%s.placertype" % node):
            self.placers[node] = cmds.getAttr("%s.placertype" % node)
            if self.placers[node] == 'arm':
                self.arm_placers += 1
            if self.placers[node] == 'leg':
                self.leg_placers += 1


def lock_attrs(self, control, attrs, lock=1):
    for i in range(0, len(attrs)):
        if lock == 0:
            cmds.setAttr("%s.%s" % (control, attrs[i]), lock=0, keyable=0, channelBox=0)
        elif lock == 1:
            cmds.setAttr("%s.%s" % (control, attrs[i]), lock=1, keyable=0, channelBox=0)


def clear_placer_scale(self, group):
    _nodes = cmds.listRelatives(group)
    _tmp_grp = cmds.group(name="_tmp_grp", em=1, w=1)
    cmds.parent(_nodes, _tmp_grp)
    cmds.makeIdentity(group, a=1, t=0, r=0, s=1)
    cmds.parent(_nodes, group)
    cmds.delete(_tmp_grp)

    for node in _nodes:
        if node[-12:] == '_proxy_curve':
            cmds.setAttr('%s.t' % node, 0, 0, 0)
            cmds.setAttr('%s.r' % node, 0, 0, 0)


# Placer creation methods
def build_arm_placer(self, side, stretchy, num=1):
    _arm_pieces = []
    side = "%s_%s_ARM%s" % (self.rig_name, side, num)
    arm_placer_group = cmds.group(name="%s_RIG_PLACER" % side, empty=True)

    # create clavicle, shoulder, elbow, wrist, palm, pointer proxy bones
    clavicle_bone_placer = widgets.create_circle_control("%s_clavicle_bone_placer" % side, scale=[3, 3, 3])
    cmds.xform(clavicle_bone_placer, r=False, ws=True, t=(20, 100, -1))
    cmds.xform(arm_placer_group, ws=1, t=(cmds.xform(clavicle_bone_placer, ws=1, q=1, t=1)))
    _arm_pieces.append(clavicle_bone_placer)

    shoulder_bone_placer = widgets.create_circle_control("%s_shoulder_bone_placer" % side, scale=[3, 3, 3])
    cmds.xform(shoulder_bone_placer, r=False, ws=True, t=(30, 100, -2))
    _arm_pieces.append(shoulder_bone_placer)

    elbow_bone_placer = widgets.create_circle_control("%s_elbow_bone_placer" % side, scale=[3, 3, 3])
    cmds.xform(elbow_bone_placer, r=False, ws=True, t=(40, 80, -10))
    _arm_pieces.append(elbow_bone_placer)

    wrist_bone_placer = widgets.create_circle_control("%s_wrist_bone_placer" % side, scale=[3, 3, 3])
    cmds.xform(wrist_bone_placer, r=False, ws=True, t=(50, 60, -2))
    _arm_pieces.append(wrist_bone_placer)

    wrist_bone_pointer_placer = widgets.create_circle_control("%s_wristpointer_bone_placer" % side, scale=[3, 3, 3])
    cmds.xform(wrist_bone_pointer_placer, r=False, ws=True, t=(51, 55, -1))
    _arm_pieces.append(wrist_bone_pointer_placer)

    # palm_bone_placer = widgets.create_circle_control("%s_palm_bone_placer" % side, scale=[3,3,3])
    # cmds.xform(palm_bone_placer, r=False, ws=True, t=(51, 55, -1))
    # _arm_pieces.append(palm_bone_placer)

    # palm_bone_pointer_placer = widgets.create_circle_control("%s_palmpointer_bone_placer" % side, scale=[3,3,3])
    # cmds.xform(palm_bone_pointer_placer, r=False, ws=True, t=(54, 52, 0.25))
    # _arm_pieces.append(palm_bone_pointer_placer)

    _arm_proxy_curve = cmds.curve(d=1,
                                  p=[(1, 0, 1),
                                     (3, 0, 1),
                                     (5, 0, 1),
                                     (7, 0, 1),
                                     (9, 0, 1)],
                                  # (11, 0, 1)],
                                  k=[0, 1, 2, 3, 4],
                                  name="_%s_arm_proxy_curve" % side)

    # make cluster at each CV
    _number_of_cvs = cmds.getAttr("%s.degree" % _arm_proxy_curve) + cmds.getAttr("%s.spans" % _arm_proxy_curve)
    for i in range(0, _number_of_cvs):
        cmds.select("%s.cv[%s]" % (_arm_proxy_curve, i))
        _cluster = cmds.cluster(name="_%s_placer_cluster_%s" % (side, i))
        cmds.pointConstraint(_arm_pieces[i], _cluster)
        cmds.hide(_cluster)

    cmds.setAttr("%s.overrideEnabled" % _arm_proxy_curve, 1)
    cmds.setAttr("%s.overrideDisplayType" % _arm_proxy_curve, 2)
    cmds.setAttr("%s.inheritsTransform" % _arm_proxy_curve, 0)

    # create cube control at clav, shoulder, elbow, wrist
    clavicle_control_placer = widgets.create_cube_control("%s_clavicle_control_placer" % side, scale=[3, 3, 3])
    shoulder_control_placer = widgets.create_cube_control("%s_shoulder_control_placer" % side, scale=[3, 3, 3])
    elbow_control_placer = widgets.create_cube_control("%s_elbow_control_placer" % side, scale=[3, 3, 3])
    wrist_control_placer = widgets.create_cube_control("%s_wrist_control_placer" % side, scale=[3, 3, 3])
    # palm_control_placer = widgets.create_cube_control("%s_palm_control_placer" % side, scale=[3,3,3])

    # create cube control for hand IK, cone control for pole vector  IK_hand_control_placer
    IK_hand_control_placer = widgets.create_cube_control(("%s_IK_control_placer" % side), [5, 2, 5])
    # arm_pole_vector = widgets.create_cone_control("%s_arm_pole_vector" % self.side)
    arm_pole_vector_placer = widgets.create_cube_control("%s_pole_vector_placer" % side, scale=[3, 3, 3])
    cmds.xform(IK_hand_control_placer, ws=True, t=(80, 50, 0))
    cmds.xform(arm_pole_vector_placer, ws=True, t=(80, 50, 0))

    # parent constrain to respective bone
    cmds.parentConstraint(clavicle_bone_placer, clavicle_control_placer, name="_tmp_cnst")
    cmds.delete("_tmp_cnst")
    cmds.parentConstraint(clavicle_bone_placer, clavicle_control_placer)

    cmds.parentConstraint(shoulder_bone_placer, shoulder_control_placer, name="_tmp_cnst")
    cmds.delete("_tmp_cnst")
    cmds.parentConstraint(shoulder_bone_placer, shoulder_control_placer)

    cmds.parentConstraint(elbow_bone_placer, elbow_control_placer, name="_tmp_cnst")
    cmds.delete("_tmp_cnst")
    cmds.parentConstraint(elbow_bone_placer, elbow_control_placer)

    cmds.parentConstraint(wrist_bone_placer, wrist_control_placer, name="_tmp_cnst")
    cmds.delete("_tmp_cnst")
    cmds.parentConstraint(wrist_bone_placer, wrist_control_placer)

    # cmds.parentConstraint(palm_bone_placer, palm_control_placer, name="_tmp_cnst")
    # cmds.delete("_tmp_cnst")
    # cmds.parentConstraint(palm_bone_placer, palm_control_placer)

    cmds.parent(cmds.ls("_%s_placer_cluster*Handle" % side), clavicle_bone_placer, shoulder_bone_placer,
                elbow_bone_placer,
                wrist_bone_placer, wrist_bone_pointer_placer, clavicle_control_placer, shoulder_control_placer,
                elbow_control_placer, wrist_control_placer, _arm_proxy_curve, IK_hand_control_placer,
                arm_pole_vector_placer, arm_placer_group)
    cmds.select(d=True)
    cmds.setAttr("%s.t" % _arm_proxy_curve, 0, 0, 0)
    cmds.setAttr("%s.r" % _arm_proxy_curve, 0, 0, 0)
    _arm_pieces.insert(0, arm_placer_group)

    # store placer metadata in placer root node
    cmds.addAttr(arm_placer_group, ln="placers", dt="string", m=True)
    i = 0
    for _piece in _arm_pieces:
        cmds.setAttr("%s.placers[%s]" % (arm_placer_group, i), _piece, type="string")
        i += 1

    cmds.addAttr(arm_placer_group, ln="placertype", dt="string")  # type of placer (arm, leg, etc.)
    cmds.setAttr("%s.placertype" % arm_placer_group, "arm", type="string")

    cmds.addAttr(arm_placer_group, ln="connector", dt="string")  # where placer connects (spine, etc.)
    cmds.setAttr("%s.connector" % arm_placer_group, "%s_spine3" % self.rig_name, type="string")
    # cmds.setAttr("%s.connector" % arm_placer_group, "%s_spine3" % self.rig_name, type="string")

    cmds.addAttr(arm_placer_group, ln="stretchy", at="bool")  # stretchiness flag
    cmds.setAttr("%s.stretchy" % arm_placer_group, stretchy)

    self.placers[arm_placer_group] = cmds.getAttr("%s.placertype" % arm_placer_group)  # add placer to dict

    return _arm_pieces


def build_leg_placer(self, side, stretchy, rfik, num=1):
    _leg_pieces = []
    side = "%s_%s_LEG%s" % (self.rig_name, side, num)
    leg_placer_group = cmds.group(name="%s_RIG_PLACER" % side, empty=True)

    # create hip, knee, ankle, pointer placer bones
    hip_bone_placer = widgets.create_circle_control("%s_hip_bone_placer" % side, scale=[3, 3, 3])
    cmds.xform(hip_bone_placer, r=False, ws=True, t=(20, 70, 0))
    cmds.xform(leg_placer_group, ws=1, t=(cmds.xform(hip_bone_placer, ws=1, q=1, t=1)))
    _leg_pieces.append(hip_bone_placer)

    knee_bone_placer = widgets.create_circle_control("%s_knee_bone_placer" % side, scale=[3, 3, 3])
    cmds.xform(knee_bone_placer, r=False, ws=True, t=(20, 40, 20))
    _leg_pieces.append(knee_bone_placer)

    ankle_bone_placer = widgets.create_circle_control("%s_ankle_bone_placer" % side, scale=[3, 3, 3])
    cmds.xform(ankle_bone_placer, r=False, ws=True, t=(20, 10, 0))
    _leg_pieces.append(ankle_bone_placer)

    ball_bone_placer = widgets.create_circle_control("%s_ball_bone_placer" % side, scale=[3, 3, 3])
    cmds.xform(ball_bone_placer, r=False, ws=True, t=(20, 4, 6))
    _leg_pieces.append(ball_bone_placer)

    toe_bone_placer = widgets.create_circle_control("%s_toe_bone_placer" % side, scale=[3, 3, 3])
    cmds.xform(toe_bone_placer, r=False, ws=True, t=(20, 0, 15))
    _leg_pieces.append(toe_bone_placer)

    toe_pointer_placer = widgets.create_circle_control("%s_toepointer_placer" % side, scale=[3, 3, 3])
    cmds.xform(toe_pointer_placer, r=False, ws=True, t=(20, 0, 20))
    _leg_pieces.append(toe_pointer_placer)

    _leg_proxy_curve = cmds.curve(d=1,
                                  p=[(1, 0, 1),
                                     (3, 0, 1),
                                     (5, 0, 1),
                                     (7, 0, 1),
                                     (9, 0, 1),
                                     (11, 0, 1)],
                                  k=[0, 1, 2, 3, 4, 5],
                                  name="_%s_leg_proxy_curve" % side)

    # make cluster at each CV
    _number_of_cvs = cmds.getAttr("%s.degree" % _leg_proxy_curve) + cmds.getAttr("%s.spans" % _leg_proxy_curve)
    for i in range(0, _number_of_cvs):
        cmds.select("%s.cv[%s]" % (_leg_proxy_curve, i))
        _cluster = cmds.cluster(name="_%s_placer_cluster_%s" % (side, i))
        cmds.pointConstraint(_leg_pieces[i], _cluster)
        cmds.hide(_cluster)

    cmds.setAttr("%s.overrideEnabled" % _leg_proxy_curve, 1)
    cmds.setAttr("%s.overrideDisplayType" % _leg_proxy_curve, 2)
    cmds.setAttr("%s.inheritsTransform" % _leg_proxy_curve, 0)

    # create cube control at clav, hip, knee, ankle, ball, toe
    hip_control_placer = widgets.create_cube_control("%s_hip_control_placer" % side, scale=[3, 3, 3])
    knee_control_placer = widgets.create_cube_control("%s_knee_control_placer" % side, scale=[3, 3, 3])
    ankle_control_placer = widgets.create_cube_control("%s_ankle_control_placer" % side, scale=[2, 2, 2])
    ball_control_placer = widgets.create_cube_control("%s_ball_control_placer" % side, scale=[3, 1.5, 1.5])
    toe_control_placer = widgets.create_cube_control("%s_toe_control_placer" % side, scale=[3, 1.5, 1.5])

    # create cube control for RFIK, IK control, total foot control, and pole vector
    RFIK_leg_control_placer = widgets.create_cube_control("%s_RFIK_control_placer" % side, [3, .5, 6])
    IK_leg_control_placer = widgets.create_cube_control("%s_IK_control_placer" % side, [3, 3, 3])
    leg_pole_vector_placer = widgets.create_cube_control("%s_pole_vector_placer" % side, scale=[1.5, .5, 1.5])
    foot_control_placer = widgets.create_cube_control("%s_foot_control_placer" % side, [4.5, 3, 8])

    # parent constrain to respective bone
    cmds.parentConstraint(hip_bone_placer, hip_control_placer, name="_tmp_cnst")
    cmds.delete("_tmp_cnst")
    cmds.parentConstraint(hip_bone_placer, hip_control_placer)

    cmds.parentConstraint(knee_bone_placer, knee_control_placer, name="_tmp_cnst")
    cmds.delete("_tmp_cnst")
    cmds.parentConstraint(knee_bone_placer, knee_control_placer)

    cmds.parentConstraint(ankle_bone_placer, ankle_control_placer, name="_tmp_cnst")
    cmds.delete("_tmp_cnst")
    cmds.parentConstraint(ankle_bone_placer, ankle_control_placer)

    cmds.parentConstraint(ball_bone_placer, ball_control_placer, name="_tmp_cnst")
    cmds.delete("_tmp_cnst")
    cmds.parentConstraint(ball_bone_placer, ball_control_placer)

    cmds.parentConstraint(toe_bone_placer, toe_control_placer, name="_tmp_cnst")
    cmds.delete("_tmp_cnst")
    cmds.parentConstraint(toe_bone_placer, toe_control_placer)

    # move IK and RFIK controllers to default starting position
    cmds.xform(RFIK_leg_control_placer, ws=1, t=(cmds.xform(toe_control_placer, q=1, ws=1, t=1)))
    cmds.xform(IK_leg_control_placer, ws=1, t=(cmds.xform(ankle_control_placer, q=1, ws=1, t=1)))
    # cmds.setAttr("%s.v" % leg_pole_vector_placer, 0)
    cmds.xform(foot_control_placer, ws=1, t=(cmds.xform(ball_control_placer, q=1, ws=1, t=1)))

    # put everything in a placer group
    cmds.parent(cmds.ls("_%s_placer_cluster*Handle" % side), hip_bone_placer, knee_bone_placer, ankle_bone_placer,
                ball_bone_placer, toe_bone_placer, toe_pointer_placer, hip_control_placer, knee_control_placer,
                ankle_control_placer,
                ball_control_placer, toe_control_placer, _leg_proxy_curve, IK_leg_control_placer,
                RFIK_leg_control_placer,
                leg_pole_vector_placer, foot_control_placer, leg_placer_group)
    cmds.select(d=True)
    cmds.setAttr("%s.t" % _leg_proxy_curve, 0, 0, 0)
    cmds.setAttr("%s.r" % _leg_proxy_curve, 0, 0, 0)
    _leg_pieces.insert(0, leg_placer_group)

    # store placer metadata in placer root node
    cmds.addAttr(leg_placer_group, ln="placers", dt="string", m=True)
    i = 0
    for _piece in _leg_pieces:
        cmds.setAttr("%s.placers[%s]" % (leg_placer_group, i), _piece, type="string")
        i += 1

    cmds.addAttr(leg_placer_group, ln="placertype", dt="string")  # type of placer (arm, leg, etc.)
    cmds.setAttr("%s.placertype" % leg_placer_group, "leg", type="string")

    cmds.addAttr(leg_placer_group, ln="connector", dt="string")  # where placer connects (spine, etc.)
    cmds.setAttr("%s.connector" % leg_placer_group, "%s_pelvis_control" % self.rig_name, type="string")

    cmds.addAttr(leg_placer_group, ln="stretchy", at="bool")  # stretchiness flag
    cmds.setAttr("%s.stretchy" % leg_placer_group, stretchy)

    self.placers[leg_placer_group] = cmds.getAttr("%s.placertype" % leg_placer_group)  # add placer to dict

    return _leg_pieces


def build_phalange_placer(self, name, joints, pointing, connector, phalange_type, start_pos=(0, 0, 0), side="L"):
    cmds.select(d=1)
    phalange_placer_group = cmds.group(name="%s_%s_PLACER" % (self.rig_name, name), empty=True)
    cmds.addAttr(phalange_placer_group, ln="placers", dt="string", m=True)
    cmds.setAttr("%s.placers[0]" % phalange_placer_group, phalange_placer_group, type="string")
    cmds.xform(phalange_placer_group, ws=1, t=(start_pos))
    phalange_pieces = []

    _parms = []
    _knots = []

    prev_placer = phalange_placer_group
    for i in range(0, joints + 1):
        phalange_placer = widgets.create_circle_control("%s_%s_%s_bone_placer" % (self.rig_name, name, i),
                                                        scale=[1, 1, 1])
        _tmp_cnst = cmds.parentConstraint(prev_placer, phalange_placer, mo=False)
        cmds.delete(_tmp_cnst)

        if i < joints:
            control_placer = widgets.create_cube_control("%s_%s_%s_control_placer" % (self.rig_name, name, i),
                                                         scale=[1, 1, 1])
            cmds.parentConstraint(phalange_placer, control_placer, name="_tmp_cnst")
            cmds.delete("_tmp_cnst")
            cmds.parentConstraint(phalange_placer, control_placer)
            cmds.parent(control_placer, phalange_placer_group)

        if pointing == "x":
            cmds.move(2, 0, 0, phalange_placer, r=True)
            if i < joints: cmds.scale(.2, 1, 1, control_placer, r=1)
        elif pointing == "y":
            cmds.move(0, 2, 0, phalange_placer, r=True)
            if i < joints: cmds.scale(1, .2, 1, control_placer, r=1)
        elif pointing == "z":
            cmds.move(0, 0, 2, phalange_placer, r=True)
            if i < joints: cmds.scale(1, 1, .2, control_placer, r=1)

        cmds.parent(phalange_placer, phalange_placer_group)
        phalange_pieces.append(phalange_placer)
        cmds.setAttr("%s.placers[%s]" % (phalange_placer_group, i + 1), phalange_placer, type="string")

        _parms.append((0, i + 1, 0))
        _knots.append(i + 1)

        prev_placer = phalange_placer

    _phalange_proxy_curve = cmds.curve(d=1,
                                       p=_parms,
                                       k=_knots,
                                       name="_%s_%s_proxy_curve" % (self.rig_name, name))

    cmds.setAttr("%s.overrideEnabled" % _phalange_proxy_curve, 1)
    cmds.setAttr("%s.overrideDisplayType" % _phalange_proxy_curve, 2)
    cmds.setAttr("%s.inheritsTransform" % _phalange_proxy_curve, 0)

    cmds.parent(_phalange_proxy_curve, phalange_placer_group)

    # make cluster at each CV
    # _number_of_cvs = cmds.getAttr("%s.degree" % _phalange_proxy_curve) + cmds.getAttr("%s.spans" % _phalange_proxy_curve)
    for i in range(0, joints + 1):
        cmds.select("%s.cv[%s]" % (_phalange_proxy_curve, i))
        _cluster = cmds.cluster(name="%s_%s_placer_cluster_%s" % (self.rig_name, name, i))
        cmds.pointConstraint(phalange_pieces[i], _cluster)
        cmds.hide(_cluster)
        cmds.parent(_cluster[1], phalange_placer_group)
        cmds.select(d=1)

    phalange_pieces.insert(0, phalange_placer_group)

    cmds.addAttr(phalange_placer_group, ln="placertype", dt="string")  # type of placer (arm, leg, etc.)
    cmds.setAttr("%s.placertype" % phalange_placer_group, phalange_type, type="string")

    cmds.addAttr(phalange_placer_group, ln="connector", dt="string")  # where placer connects (spine, etc.)
    cmds.setAttr("%s.connector" % phalange_placer_group, "%s_%s_%s" % (self.rig_name, side, connector), type="string")

    self.placers[phalange_placer_group] = cmds.getAttr("%s.placertype" % phalange_placer_group)  # add placer to dict

    return phalange_pieces


def build_hindleg_placer(self, side="L"):
    # create 4 placers (hip, knee01, knee02, ankle)

    pass


def build_spine_placer(self, vertebrae, controls, scale, stretchy):
    _spine_pieces = []
    _control_pieces = []
    _parms = [(0, 0, 0), (0, 0, 0)]
    _knots = [-2, -1]
    spine_placer_group = cmds.group(name="%s_SPINE_RIG_PLACER" % self.rig_name, empty=True)

    # create pelvis, COG, and spine placer bones and controls
    pelvis_bone_placer = widgets.create_circle_control("%s_pelvis_bone_placer" % self.rig_name, scale=[3, 3, 3])
    cmds.xform(pelvis_bone_placer, r=False, ws=True, t=(0, 60, 0))
    _spine_pieces.append(pelvis_bone_placer)

    root_bone_placer = widgets.create_circle_control("%s_root_bone_placer" % self.rig_name, scale=[4.5, 4.5, 4.5])
    cmds.xform(root_bone_placer, r=False, ws=True, t=(0, 60, 0))
    _spine_pieces.append(root_bone_placer)
    cmds.parentConstraint(root_bone_placer, pelvis_bone_placer, mo=True)

    root_control_placer = widgets.create_cube_control("%s_root_control_placer" % self.rig_name, scale=[5, 15, 3])
    _tmp_cnst = cmds.parentConstraint(pelvis_bone_placer, root_control_placer, mo=False, name="_tmp_cnst")
    cmds.delete(_tmp_cnst)
    cmds.xform(root_control_placer, r=False, ws=True, t=(0, 75, -35))
    cmds.parentConstraint(pelvis_bone_placer, root_control_placer, mo=True)
    _control_pieces.append(root_control_placer)

    pelvis_control_placer = widgets.create_pelvis_control("%s_pelvis_control_placer" % self.rig_name, scale=.5)
    _tmp_cnst = cmds.parentConstraint(pelvis_bone_placer, pelvis_control_placer, mo=False, name="_tmp_cnst")
    cmds.delete(_tmp_cnst)
    cmds.parentConstraint(pelvis_bone_placer, pelvis_control_placer)
    _control_pieces.append(pelvis_control_placer)

    # create bone placers
    spine_y = 60
    for i in range(0, vertebrae + 1):
        if (i == vertebrae):
            neck_placer = widgets.create_circle_control("%s_neck_bone_placer" % self.rig_name, scale=[3, 3, 3])
            neck_y = (20 + spine_y)
            cmds.xform(neck_placer, r=False, ws=True, t=(0, neck_y, 0))
            _spine_pieces.append(neck_placer)
            _parms.append((0, i + 1, 0))
            _knots.append(i + 1)
            # create cube control
            neck_control_placer = widgets.create_cube_control("%s_neck_control_placer" % self.rig_name, [4, 1, 4])
            # parent constrain to neck bone
            _tmp_cnst = cmds.parentConstraint(neck_placer, neck_control_placer, mo=False, name="_tmp_cnst")
            cmds.delete(_tmp_cnst)
            cmds.parentConstraint(neck_placer, neck_control_placer)
            _control_pieces.append(neck_control_placer)
            cmds.parent(neck_placer, neck_control_placer, spine_placer_group)

            head_placer = widgets.create_circle_control("%s_head_bone_placer" % self.rig_name, scale=[3, 3, 3])
            head_y = (10 + neck_y)
            cmds.xform(head_placer, r=False, ws=True, t=(0, head_y, 0))
            _spine_pieces.append(head_placer)
            _parms.append((0, i + 2, 0))
            _knots.append(i + 2)
            # create cube control
            head_control_placer = widgets.create_cube_control("%s_head_control_placer" % self.rig_name, [2, .5, 2])
            # parent constrain to neck bone
            _tmp_cnst = cmds.parentConstraint(head_placer, head_control_placer, mo=False, name="_tmp_cnst")
            cmds.delete(_tmp_cnst)
            cmds.parentConstraint(head_placer, head_control_placer)
            _control_pieces.append(head_control_placer)
            cmds.parent(head_placer, head_control_placer, spine_placer_group)

        else:
            spine_placer = widgets.create_circle_control("%s_spine%s_bone_placer" % (self.rig_name, (i + 1)),
                                                         scale=[3, 3, 3])
            spine_y = ((40 / vertebrae) + spine_y)
            cmds.xform(spine_placer, r=False, ws=True, t=(0, spine_y, 0))

            cmds.parent(spine_placer, spine_placer_group)
            _spine_pieces.append(spine_placer)
            _parms.append((0, i + 1, 0))
            _knots.append(i + 1)

            ##create control placers for spine
    spine_y = 60
    for i in range(0, controls):
        control_placer = widgets.create_cube_control("%s_spine%s_control_placer" % (self.rig_name, (i + 1)),
                                                     scale=[9, 3, 5])
        spine_y = ((40 / 3) + spine_y)
        cmds.xform(control_placer, r=False, ws=True, t=(0, spine_y, 0))
        cmds.parent(control_placer, spine_placer_group)

    _spine_proxy_curve = cmds.curve(d=1,
                                    p=_parms,
                                    k=_knots,
                                    name="_spine_proxy_curve")

    # make cluster at each CV
    _number_of_cvs = cmds.getAttr("%s.degree" % _spine_proxy_curve) + cmds.getAttr("%s.spans" % _spine_proxy_curve)
    for i in range(0, _number_of_cvs):
        cmds.select("%s.cv[%s]" % (_spine_proxy_curve, i))
        _cluster = cmds.cluster(name="spine_placer_cluster_%s" % i)
        cmds.pointConstraint(_spine_pieces[i], _cluster)
        cmds.hide(_cluster)

    cmds.setAttr("%s.overrideEnabled" % _spine_proxy_curve, 1)
    cmds.setAttr("%s.overrideDisplayType" % _spine_proxy_curve, 2)
    cmds.setAttr("%s.inheritsTransform" % _spine_proxy_curve, 0)

    # put everything in a placer group
    _spine_pieces.insert(0, spine_placer_group)
    cmds.parent(cmds.ls("spine_placer_cluster*Handle"), _spine_proxy_curve, root_control_placer,
                pelvis_control_placer, pelvis_bone_placer, root_bone_placer, spine_placer_group)
    cmds.select(d=True)

    # create world control
    world_control_placer = widgets.create_four_way_arrow_control("%s_world_control_placer" % self.rig_name,
                                                                 scale=[1, 1, 1])
    cmds.parent(world_control_placer, spine_placer_group)
    _control_pieces.append(world_control_placer)

    # store placers in multi attr in pelvis node
    cmds.addAttr(spine_placer_group, ln="placers", dt="string", m=True)
    i = 0
    for _piece in _spine_pieces:
        cmds.setAttr("%s.placers[%s]" % (spine_placer_group, i), _piece, type="string")
        i += 1
    # store control pieces in attr
    cmds.addAttr(spine_placer_group, ln="controlPieces", dt="string", m=True)
    i = 0
    for _piece in _control_pieces:
        cmds.setAttr("%s.controlPieces[%s]" % (spine_placer_group, i), _piece, type="string")
        i += 1

    # store spine controls in attr
    cmds.addAttr(spine_placer_group, ln="controls", m=False)
    cmds.setAttr("%s.controls" % spine_placer_group, controls)

    cmds.addAttr(spine_placer_group, ln="curve", dt="string", m=False)
    cmds.setAttr("%s.curve" % spine_placer_group, _spine_proxy_curve, type="string")
    cmds.select(d=1)

    cmds.addAttr(spine_placer_group, ln="stretchy", at="bool")  # stretchiness flag
    cmds.setAttr("%s.stretchy" % spine_placer_group, stretchy)

    return [(_spine_pieces), (_control_pieces), controls, _spine_proxy_curve]


# Face Rig Placers
def build_lip_placer(self, position, numbones):
    pass
    # build curve, create numbones
    # motion path all bones
    # evenly space bones apart on U-pos


# Rig Building utility methods
def build_bones(self, side, limb, placers):
    cmds.select(d=True)
    returnbones = []

    for placer in placers:
        # build bone at placer
        if side is not "middle":
            bonename = placer.split("_")[3]
            bone = cmds.joint(name=("%s_%s_%s_%s" % (self.rig_name, side, limb, bonename)))
        elif side is "middle":
            bonename = placer.split("_")[1]
            bone = cmds.joint(name=("%s_%s" % (self.rig_name, bonename)))
        cmds.xform(bone, ws=True, t=(cmds.xform(placer, q=True, ws=True, t=True)))
        returnbones.append(bone)

        # duplicate and constraint bone control
        control_placer = placer.replace("bone", "control")
        if cmds.ls(control_placer):
            control = cmds.duplicate(control_placer, renameChildren=True, name=control_placer.rstrip("placer")[0:-1])
            if cmds.listRelatives(control, type="constraint"):
                cmds.delete(cmds.listRelatives(control, type="constraint"))

    if side is not "middle":
        rig_offset = cmds.createNode("transform", name="%s_%s_%s_RIG_OFFSET" % (self.rig_name, side, limb))
        rig_group = cmds.createNode("transform", name="%s_%s_%s_RIG" % (self.rig_name, side, limb))
        bones_group = cmds.createNode("transform", name="%s_%s_%s_BONES" % (self.rig_name, side, limb))
    elif side is "middle":
        rig_offset = cmds.createNode("transform", name="%s_%s_RIG_OFFSET" % (self.rig_name, limb))
        rig_group = cmds.createNode("transform", name="%s_%s_RIG" % (self.rig_name, limb))
        bones_group = cmds.createNode("transform", name="%s_%s_BONES" % (self.rig_name, limb))

    cmds.xform(rig_offset, pivots=cmds.xform(returnbones[0], q=True, ws=True, t=True))
    cmds.xform(rig_group, pivots=cmds.xform(returnbones[0], q=True, ws=True, t=True))
    cmds.parent(rig_group, self.RIG_ROOT_NODE)
    cmds.parent(rig_offset, rig_group)
    cmds.parent(returnbones[0], bones_group)
    cmds.parent(bones_group, rig_offset)

    # copy IK curve controls but don't parent to bone shape yet
    if cmds.ls("%s_%s_%s_IK_control_placer" % (self.rig_name, side, limb)):
        IK_control_placer = cmds.ls("%s_%s_%s_IK_control_placer" % (self.rig_name, side, limb))
        IK_control = cmds.duplicate(IK_control_placer, name=("%s_%s_%s_IK_control" % (self.rig_name, side, limb)))
        cmds.parent(IK_control[0], rig_offset)

        pole_vector_placer = cmds.ls("%s_%s_%s_pole_vector_placer" % (self.rig_name, side, limb))
        pole_vector = cmds.duplicate(pole_vector_placer, name="%s_%s_%s_pole_vector" % (self.rig_name, side, limb))
        cmds.parent(pole_vector[0], rig_offset)

    if cmds.ls("%s_%s_%s_foot_control_placer" % (self.rig_name, side, limb)):
        foot_control = cmds.duplicate(cmds.ls("%s_%s_%s_foot_control_placer" % (self.rig_name, side, limb)),
                                      name="%s_%s_%s_foot_control" % (self.rig_name, side, limb))
        cmds.parent(foot_control[0], rig_offset)

    returnbones.insert(0, rig_group)
    returnbones.insert(1, rig_offset)
    returnbones.insert(2, bones_group)

    return returnbones


def mirror_placer(self, source_placer):
    if source_placer[0].split("%s_" % self.rig_name)[1][0] == "L":
        side = "%s_L_" % self.rig_name
        opposite = "%s_R_" % self.rig_name
    else:
        side = "%s_R_" % self.rig_name
        opposite = "%s_L_" % self.rig_name

    if (cmds.getAttr('%s.scale' % source_placer[0])[0] != (1, 1, 1)) or (
            cmds.getAttr('%s.scale' % source_placer[0])[0] != (1, 1, 1)):
        self.clear_placer_scale(source_placer[0])

    new_placer = cmds.duplicate(source_placer, rr=False, renameChildren=True)
    cmds.setAttr("%s.sx" % new_placer[0], -1)
    # cmds.setAttr("%s.tx" % new_placer[0], (cmds.xform(source_placer[1], ws=1, q=1, t=1)[0] * -1))
    cmds.setAttr("%s.ry" % new_placer[0], (cmds.xform(source_placer[1], ws=1, q=1, ro=1)[1] * -1))
    cmds.setAttr("%s.rz" % new_placer[0], (cmds.xform(source_placer[1], ws=1, q=1, ro=1)[2] * -1))

    for node in new_placer:
        newName = node.replace(side, opposite)
        newName = newName[:-1]
        cmds.rename(node, newName)

    mirrored_placers = []

    for node in source_placer:
        if node.replace(side, opposite):
            mirrored_placers.append(node.replace(side, opposite))

    return mirrored_placers


def mirror_bones(self, bone_chain_root, placers=None):
    if bone_chain_root.split('_')[1] == "L":
        side = "R"
    else:
        side = "L"
    limb = bone_chain_root.split('_')[2]
    bone = bone_chain_root.split('_')[3]
    mirrored_bones = []

    # select bone_chain_root
    cmds.select(bone_chain_root, r=1)
    # mirror in YZ and copy behavior
    mirrored_joint_chain = cmds.mirrorJoint(bone_chain_root, mirrorYZ=1, mirrorBehavior=1, searchReplace=("L_", "R_"))
    # make group nodes: rigName_side_limb_RIG
    #                   rigName_side_limb_RIG_OFFSET
    #                   rigName_side_limb_BONES

    rig_group = cmds.group(name="%s_%s_%s_RIG" % (self.rig_name, side, limb), w=1, em=1)
    rig_offset = cmds.group(name="%s_%s_%s_RIG_OFFSET" % (self.rig_name, side, limb), w=1, em=1)
    bones_group = cmds.group(name="%s_%s_%s_BONES" % (self.rig_name, side, limb), w=1, em=1)

    mirrored_bones.append(rig_group)
    mirrored_bones.append(rig_offset)
    mirrored_bones.append(bones_group)
    for bone in mirrored_joint_chain:
        mirrored_bones.append(bone)

    cmds.parent(bones_group, rig_offset)
    cmds.parent(rig_offset, rig_group)
    cmds.parent(mirrored_joint_chain[0], bones_group)

    # duplicate and constraint bone controls
    for placer in placers:
        control_placer = placer.replace("bone", "control")
        print control_placer
        if cmds.ls(control_placer):
            control = cmds.duplicate(control_placer, renameChildren=True, name=control_placer.rstrip("placer")[0:-1])
            if cmds.listRelatives(control, type="constraint"):
                cmds.delete(cmds.listRelatives(control, type="constraint"))

    cmds.parent(rig_group, self.RIG_ROOT_NODE)
    # copy IK curve controls but don't parent to bone shape yet
    if cmds.ls("%s_%s_%s_IK_control_placer" % (self.rig_name, side, limb)):
        IK_control_placer = cmds.ls("%s_%s_%s_IK_control_placer" % (self.rig_name, side, limb))
        IK_control = cmds.duplicate(IK_control_placer, name=("%s_%s_%s_IK_control" % (self.rig_name, side, limb)))
        cmds.parent(IK_control[0], rig_offset)

        pole_vector_placer = cmds.ls("%s_%s_%s_pole_vector_placer" % (self.rig_name, side, limb))
        pole_vector = cmds.duplicate(pole_vector_placer, name="%s_%s_%s_pole_vector" % (self.rig_name, side, limb))
        cmds.parent(pole_vector[0], rig_offset)

    if cmds.ls("%s_%s_%s_foot_control_placer" % (self.rig_name, side, limb)):
        foot_control = cmds.duplicate(cmds.ls("%s_%s_%s_foot_control_placer" % (self.rig_name, side, limb)),
                                      name="%s_%s_%s_foot_control" % (self.rig_name, side, limb))
        cmds.parent(foot_control[0], rig_offset)

    return mirrored_bones


def mirror_controls(self, source_placer):
    if source_placer[0].split("%s_" % self.rig_name)[1][0] == "L":
        side = "%s_L_" % self.rig_name
        opposite = "%s_R_" % self.rig_name
    else:
        side = "%s_R_" % self.rig_name
        opposite = "%s_L_" % self.rig_name

    if (cmds.getAttr('%s.scale' % source_placer[0])[0] != (1, 1, 1)) or (
            cmds.getAttr('%s.scale' % source_placer[0])[0] != (1, 1, 1)):
        self.clear_placer_scale(source_placer[0])

    new_placer = cmds.duplicate(source_placer, rr=False, renameChildren=True)
    cmds.setAttr("%s.sx" % new_placer[0], -1)
    # cmds.setAttr("%s.tx" % new_placer[0], (cmds.xform(source_placer[1], ws=1, q=1, t=1)[0] * -1))
    cmds.setAttr("%s.ry" % new_placer[0], (cmds.xform(source_placer[1], ws=1, q=1, ro=1)[1] * -1))
    cmds.setAttr("%s.rz" % new_placer[0], (cmds.xform(source_placer[1], ws=1, q=1, ro=1)[2] * -1))

    for node in new_placer:
        newName = node.replace(side, opposite)
        newName = newName[:-1]
        cmds.rename(node, newName)

    mirrored_placers = []

    for node in source_placer:
        if node.replace(side, opposite):
            mirrored_placers.append(node.replace(side, opposite))

    return mirrored_placers


def make_limb_planar(self, limb, origin_bone, side="L"):
    # This will ensure the arm chain is planar by adjusting the wrist bone
    if not origin_bone:
        origin_bone = cmds.ls(sl=True)[0]
    center_bone = cmds.listRelatives(origin_bone, children=True)[0]
    end_bone = cmds.listRelatives(center_bone, children=True)[0]

    if limb == "arm":
        clavicle_bone = cmds.listRelatives(origin_bone, parent=True)[0]
        wrist_bone_pointer = cmds.listRelatives(end_bone, children=True)[0]
        # palm_pointer = cmds.listRelatives(palm_bone, children=True)[0]
        # palm_bone_translation =  cmds.xform(palm_bone, q=True, ws=True, t=True)
        wrist_bone_pointer_translation = cmds.xform(wrist_bone_pointer, q=True, ws=True, t=True)
        # palm_pointer_translation = cmds.xform(palm_pointer, q=True, ws=True, t=True)

    if limb == "leg":
        ball_bone = cmds.listRelatives(end_bone, children=True)[0]
        toe_bone = cmds.listRelatives(ball_bone, children=True)[0]
        print "ball bone: %s" % ball_bone
        print "toe_bone: %s" % toe_bone
        toe_pointer = cmds.listRelatives(toe_bone, children=True)[0]
        ball_bone_translation = cmds.xform(ball_bone, q=True, ws=True, t=True)
        toe_bone_translation = cmds.xform(toe_bone, q=True, ws=True, t=True)
        toe_pointer_translation = cmds.xform(toe_pointer, q=True, ws=True, t=True)

    # orient arm chain
    cmds.joint(origin_bone, e=True, oj="xzy", sao="zup", ch=True, zso=True)

    # get xforms of shoulder rotation and end bone translation
    origin_rotation = cmds.xform(origin_bone, q=True, ws=True, ro=True)
    endbone_translation = cmds.xform(end_bone, q=True, ws=True, t=True)

    # zero out joint orientations on bones
    cmds.setAttr("%s.jointOrient" % origin_bone, 0, 0, 0)
    cmds.setAttr("%s.jointOrient" % center_bone, 0, 0, 0)

    # rotate shoulder bone to original rotation
    # translate wrist and palm bones to original position
    cmds.xform(origin_bone, r=False, ws=True, ro=(origin_rotation[0], origin_rotation[1], origin_rotation[2]))
    cmds.xform(end_bone, r=False, ws=True, t=(endbone_translation[0], endbone_translation[1], endbone_translation[2]))

    # zero out ty on wrist
    cmds.setAttr("%s.translateY" % end_bone, 0)

    # swap origin_bone rotate values to joint orientations
    self.set_joint_orient_to_rotate(origin_bone)

    # reorient entire arm chain from clavicle if arm
    if limb == "arm":
        cmds.xform(wrist_bone_pointer, r=False, ws=True, t=(
        wrist_bone_pointer_translation[0], wrist_bone_pointer_translation[1], wrist_bone_pointer_translation[2]))
        # cmds.xform(palm_pointer, r=False, ws=True, t=(palm_pointer_translation[0], palm_pointer_translation[1], palm_pointer_translation[2]))
        if side == "L":
            cmds.joint(clavicle_bone, e=True, oj="xzy", sao="zup", ch=True, zso=True)
        elif side == "R":
            cmds.joint(clavicle_bone, e=True, oj="xzy", sao="zup", ch=True, zso=True)
    elif limb == "leg":
        cmds.xform(ball_bone, r=False, ws=True,
                   t=(ball_bone_translation[0], ball_bone_translation[1], ball_bone_translation[2]))
        cmds.xform(toe_bone, r=False, ws=True,
                   t=(toe_bone_translation[0], toe_bone_translation[1], toe_bone_translation[2]))
        cmds.xform(toe_pointer, r=False, ws=True,
                   t=(toe_pointer_translation[0], toe_pointer_translation[1], toe_pointer_translation[2]))
        cmds.joint(origin_bone, e=True, oj="xzy", sao="zup", ch=True, zso=True)


def build_stretchy_limb(self, limb_chain, ikcontrol, stretchAttr='translate', ikfkblended=False):
    _limb = "%s_%s" % (limb_chain[0].split("_")[1], limb_chain[0].split("_")[2])
    _start_bone = limb_chain[0]
    _mid_bone = limb_chain[1]
    _end_bone = limb_chain[2]

    stretchy_util_group = cmds.group(em=True, name='%s_%s_STRETCHY' % (self.rig_name, _limb))

    if stretchAttr == 'translate':
        up_limb_dist = cmds.distanceDimension(sp=(cmds.xform(_start_bone, q=True, ws=True, t=True)),
                                              ep=(cmds.xform(_mid_bone, q=True, ws=True, t=True)))
        up_limb_dist = cmds.rename(cmds.listRelatives(up_limb_dist, parent=True),
                                   "%s_%s_uplimbDistanceDimension" % (self.rig_name, _limb))
        low_limb_dist = cmds.distanceDimension(sp=(cmds.xform(_mid_bone, q=True, ws=True, t=True)),
                                               ep=(cmds.xform(_end_bone, q=True, ws=True, t=True)))
        low_limb_dist = cmds.rename(cmds.listRelatives(low_limb_dist, parent=True),
                                    "%s_%s_lowlimbDistanceDimension" % (self.rig_name, _limb))
        total_limb_dist = cmds.distanceDimension(sp=(cmds.xform(_start_bone, q=True, ws=True, t=True)),
                                                 ep=(cmds.xform(_end_bone, q=True, ws=True, t=True)))
        total_limb_dist = cmds.rename(cmds.listRelatives(total_limb_dist, parent=True),
                                      "%s_%s_distanceDimension" % (self.rig_name, _limb))

        stretchMult = cmds.createNode("multiplyDivide", name="%s_%s_stretchyIK_multDiv" % (self.rig_name, _limb))
        up_limb_stretchMult = cmds.createNode("multiplyDivide",
                                              name="%s_%s_stretchyIK_uplimbMultDiv" % (self.rig_name, _limb))
        low_limb_stretchMult = cmds.createNode("multiplyDivide",
                                               name="%s_%s_stretchyIK_lowlimbMultDiv" % (self.rig_name, _limb))
        up_limb_condition = cmds.createNode("condition",
                                            name="%s_%s_stretchyIK_uplimbCondition" % (self.rig_name, _limb))
        low_limb_condition = cmds.createNode("condition",
                                             name="%s_%s_stretchyIK_lowlimbCondition" % (self.rig_name, _limb))

        _dist_startBone = cmds.rename(cmds.listConnections("%s.startPoint" % total_limb_dist, s=1),
                                      "%s_%s_stretchyDistLOC_startPoint" % (self.rig_name, _limb))
        _dist_midbone = cmds.rename(cmds.listConnections("%s.endPoint" % up_limb_dist, s=1),
                                    "%s_%s_stretchyDistLOC_midPoint" % (self.rig_name, _limb))
        _dist_ikhandle = cmds.rename(cmds.listConnections("%s.endPoint" % total_limb_dist, s=1),
                                     "%s_%s_stretchyDistLOC_endPoint" % (self.rig_name, _limb))

        cmds.parent(_dist_startBone, _start_bone)
        _ik_end_cnst = cmds.pointConstraint(ikcontrol, _dist_ikhandle, mo=True, weight=1)[0]
        _ik_end_cnst_attr = cmds.listAttr(_ik_end_cnst)[-1]

        up_limb_length = cmds.getAttr("%s.tx" % _mid_bone.split('_control')[0])
        low_limb_length = cmds.getAttr("%s.tx" % _end_bone.split('_control')[0])
        limb_length = up_limb_length + low_limb_length

        cmds.setAttr("%s.operation" % stretchMult, 2)
        cmds.connectAttr("%s.distance" % total_limb_dist, "%s.input1X" % stretchMult, f=True)
        cmds.setAttr("%s.input2X" % stretchMult, limb_length)

        cmds.setAttr("%s.operation" % up_limb_stretchMult, 1)
        cmds.setAttr("%s.operation" % low_limb_stretchMult, 1)
        cmds.connectAttr("%s.outputX" % stretchMult, "%s.input1X" % up_limb_stretchMult, f=True)
        cmds.connectAttr("%s.outputX" % stretchMult, "%s.input1X" % low_limb_stretchMult, f=True)
        cmds.setAttr("%s.input2X" % up_limb_stretchMult, up_limb_length)
        cmds.setAttr("%s.input2X" % low_limb_stretchMult, low_limb_length)

        cmds.setAttr("%s.operation" % up_limb_condition, 2)
        cmds.setAttr("%s.operation" % low_limb_condition, 2)
        cmds.connectAttr("%s.outputX" % up_limb_stretchMult, "%s.colorIfTrueR" % up_limb_condition, f=True)
        cmds.connectAttr("%s.outputX" % low_limb_stretchMult, "%s.colorIfTrueR" % low_limb_condition, f=True)
        cmds.setAttr("%s.colorIfFalseR" % up_limb_condition, up_limb_length)
        cmds.setAttr("%s.colorIfFalseR" % low_limb_condition, low_limb_length)
        cmds.connectAttr("%s.distance" % total_limb_dist, "%s.firstTerm" % up_limb_condition, f=True)
        cmds.setAttr("%s.secondTerm" % up_limb_condition, limb_length)
        cmds.connectAttr("%s.distance" % total_limb_dist, "%s.firstTerm" % low_limb_condition, f=True)
        cmds.setAttr("%s.secondTerm" % low_limb_condition, limb_length)
        cmds.connectAttr("%s.outColorR" % up_limb_condition, "%s.translateX" % _mid_bone, f=True)
        cmds.connectAttr("%s.outColorR" % low_limb_condition, "%s.translateX" % _end_bone, f=True)

        # write stretchy attrib as bool list, and to work if not ikfkblended
        cmds.addAttr(ikcontrol, ln="stretchy", at="bool", k=1, dv=0)
        cmds.connectAttr(("%s.stretchy" % ikcontrol), ("%s.%s" % (_ik_end_cnst, _ik_end_cnst_attr)), f=True)

        # if ikfkblended:
        # _reverse_node = cmds.createNode("reverse", name  = "%s_%s_ikfk_reverseNode" % (self.rig_name, _limb))
        # cmds.connectAttr( ("%s.stretchy" % ikcontrol), ("%s.inputX" % _reverse_node), f=True )
        # _mid_bone = cmds.ls("%s_control" % _mid_bone)
        # _end_bone = cmds.ls("%s_control" % _end_bone)

        # cmds.connectAttr( ("%s.outputX" % _reverse_node), ("%s.%s" %
        # (cmds.listConnections( _mid_bone, t='pointConstraint', s=0, d=1 )[0],
        # cmds.listAttr( cmds.listConnections(_mid_bone, t='pointConstraint', s=0, d=1)[0] )[-1])), f=True )
        # cmds.connectAttr( ("%s.outputX" % _reverse_node), ("%s.%s" %
        # (cmds.listConnections( _end_bone, t='pointConstraint', s=0, d=1 )[0],
        # cmds.listAttr( cmds.listConnections(_end_bone, t='pointConstraint', s=0, d=1)[0] )[-1])), f=True )

        cmds.parent(up_limb_dist, low_limb_dist, total_limb_dist, _dist_midbone, _dist_ikhandle, _dist_startBone,
                    stretchy_util_group)
        cmds.hide(up_limb_dist, low_limb_dist, total_limb_dist, _dist_midbone, _dist_ikhandle, _dist_startBone,
                  stretchy_util_group)

    elif stretchAttr == 'scale':
        _condition = cmds.createNode("condition", name="%s_%s_stretchyIK_condition" % (self.rig_name, _limb))
        _multiplyDivide = cmds.createNode("multiplyDivide", name="%s_%s_stretchyIK_multDiv" % (self.rig_name, _limb))
        cmds.setAttr("%s.operation" % _multiplyDivide, 2)
        _plusMinusAverage = cmds.createNode("plusMinusAverage",
                                            name="%s_%s_stretchyIK_plusMinAvg1" % (self.rig_name, _limb))

        _distance = cmds.distanceDimension(sp=(cmds.xform(_start_bone, q=True, ws=True, t=True)),
                                           ep=(cmds.xform(_end_bone, q=True, ws=True, t=True)))
        _distance = cmds.rename(cmds.listRelatives(_distance, parent=True),
                                "%s_%s_distanceDimension" % (self.rig_name, _limb))
        _dist_startBone = cmds.rename(cmds.listConnections("%s.startPoint" % _distance, s=1),
                                      "%s_%s_stretchyDistLOC_startPoint" % (self.rig_name, _limb))
        _dist_ikhandle = cmds.rename(cmds.listConnections("%s.endPoint" % _distance, s=1),
                                     "%s_%s_stretchyDistLOC_endPoint" % (self.rig_name, _limb))
        _limb_length = cmds.getAttr("%s.tx" % _mid_bone.split('_control')[0]) + cmds.getAttr(
            "%s.tx" % _end_bone.split('_control')[0])
        cmds.parent(_dist_startBone, _start_bone)
        _ik_end_cnst = cmds.pointConstraint(ikcontrol, _dist_ikhandle, mo=True, weight=1)[0]
        _ik_end_cnst_attr = cmds.listAttr(_ik_end_cnst)[-1]

        cmds.connectAttr("%s.distance" % _distance, "%s.firstTerm" % _condition, f=True)
        cmds.setAttr("%s.secondTerm" % _condition, _limb_length)
        cmds.setAttr("%s.operation" % _condition, 2)

        cmds.connectAttr("%s.distance" % _distance, "%s.input1X" % _multiplyDivide, f=True)
        cmds.setAttr("%s.input2X" % _multiplyDivide, _limb_length)
        cmds.setAttr("%s.operation" % _condition, 2)
        cmds.connectAttr("%s.outputX" % _multiplyDivide, "%s.colorIfTrueR" % _condition, f=True)
        cmds.setAttr("%s.operation" % _multiplyDivide, 2)
        cmds.connectAttr("%s.outColorR" % _condition, "%s.scaleX" % _start_bone)
        cmds.connectAttr("%s.outColorR" % _condition, "%s.scaleX" % _mid_bone)
        cmds.parent(_distance, _dist_startBone, _dist_ikhandle, stretchy_util_group)
        cmds.hide(_distance, _dist_startBone, _dist_ikhandle)

        cmds.addAttr(ikcontrol, ln="stretchy", at="bool", k=1, dv=0)
        cmds.connectAttr(("%s.stretchy" % ikcontrol), ("%s.%s" % (_ik_end_cnst, _ik_end_cnst_attr)), f=True)

        if ikfkblended:
            _reverse_node = cmds.createNode("reverse", name="%s_%s_ikfk_reverseNode" % (self.rig_name, _limb))
            cmds.connectAttr(("%s.stretchy" % ikcontrol), ("%s.inputX" % _reverse_node), f=True)
            _mid_bone = cmds.ls("%s_control" % _mid_bone)
            _end_bone = cmds.ls("%s_control" % _end_bone)

            cmds.connectAttr(("%s.outputX" % _reverse_node), ("%s.%s" %
                                                              (cmds.listConnections(_mid_bone, t='pointConstraint', s=0,
                                                                                    d=1)[0],
                                                               cmds.listAttr(
                                                                   cmds.listConnections(_mid_bone, t='pointConstraint',
                                                                                        s=0, d=1)[0])[-1])), f=True)
            cmds.connectAttr(("%s.outputX" % _reverse_node), ("%s.%s" %
                                                              (cmds.listConnections(_end_bone, t='pointConstraint', s=0,
                                                                                    d=1)[0],
                                                               cmds.listAttr(
                                                                   cmds.listConnections(_end_bone, t='pointConstraint',
                                                                                        s=0, d=1)[0])[-1])), f=True)

    return stretchy_util_group


def build_stretchy_chain(self, bone_chain, ikcontrol, curve=None):
    pass


def build_reverse_foot(self, ankle, side="L"):
    # make group
    rfik_group = cmds.group(empty=True, name="%s_%s_RFIK_group" % (self.rig_name, side))
    _parent = []
    # get ball, toe, toetip
    ball = cmds.listRelatives(ankle, children=True)[0]
    toe = cmds.listRelatives(ball, children=True)[0]
    toetip = cmds.listRelatives(toe, children=True)[0]

    # iksc handles from ankle->ball, ball->toe, toe->toetip,  prefix with RFIK_
    ball_ik = cmds.ikHandle(sol="ikRPsolver", sj=ankle, ee=ball, name=("%s_%s_ball_RFIKhandle" % (self.rig_name, side)))
    ball_ik_group = cmds.group(em=True, name="%s_%s_ball_ik_group" % (self.rig_name, side), world=True)
    cmds.xform(ball_ik_group, ws=True, t=(cmds.xform(ball, q=True, ws=True, t=True)))
    cmds.makeIdentity(ball_ik_group, apply=True, t=1, r=1, s=1)
    cmds.parent(ball_ik[0], ball_ik_group)
    _parent.append(ball_ik_group)

    toe_ik = cmds.ikHandle(sol="ikRPsolver", sj=ball, ee=toe, name=("%s_%s_toe_RFIKhandle" % (self.rig_name, side)))
    toe_ik_group = cmds.group(em=True, name="%s_%s_toe_ik_group" % (self.rig_name, side), world=True)
    cmds.xform(toe_ik_group, ws=True, t=(cmds.xform(toe, q=True, ws=True, t=True)))
    cmds.makeIdentity(toe_ik_group, apply=True, t=1, r=1, s=1)
    cmds.parent(toe_ik[0], toe_ik_group)
    _parent.append(toe_ik_group)

    toetip_ik = cmds.ikHandle(sol="ikRPsolver", sj=toe, ee=toetip,
                              name=("%s_%s_toetip_RFIKhandle" % (self.rig_name, side)))
    toetip_ik_group = cmds.group(em=True, name="%s_%s_toetip_ik_group" % (self.rig_name, side), world=True)
    cmds.xform(toetip_ik_group, ws=True, t=(cmds.xform(toetip, q=True, ws=True, t=True)))
    cmds.makeIdentity(toetip_ik_group, apply=True, t=1, r=1, s=1)
    cmds.parent(toetip_ik[0], toetip_ik_group)
    _parent.append(toetip_ik_group)

    # duplicate ankle, toe, ball bones
    cmds.select(d=True)
    rfik_base = cmds.joint(name=("%s_%s_RFIK_base" % (self.rig_name, side)))
    cmds.xform(rfik_base, ws=True,
               t=(cmds.xform(ankle, q=True, ws=True, t=True)[0], 0, cmds.xform(ankle, q=True, ws=True, t=True)[2]))

    rfik_toetip = cmds.joint(name=("%s_%s_RFIK_toetip" % (self.rig_name, side)))
    cmds.xform(rfik_toetip, ws=True, t=(cmds.xform(toetip, q=True, ws=True, t=True)))

    rfik_toe = cmds.joint(name=("%s_%s_RFIK_toe" % (self.rig_name, side)))
    cmds.xform(rfik_toe, ws=True, t=(cmds.xform(toe, q=True, ws=True, t=True)))

    rfik_ball = cmds.joint(name=("%s_%s_RFIK_ball" % (self.rig_name, side)))
    cmds.xform(rfik_ball, ws=True, t=(cmds.xform(ball, q=True, ws=True, t=True)))

    rfik_ankle = cmds.joint(name=("%s_%s_RFIK_ankle" % (self.rig_name, side)))
    cmds.xform(rfik_ankle, ws=True, t=(cmds.xform(ankle, q=True, ws=True, t=True)))

    cmds.xform(rfik_group, ws=True, t=(cmds.xform(rfik_base, q=True, ws=True, t=True)))
    cmds.makeIdentity(rfik_group, apply=True, t=1, r=1, s=1)
    _parent.append(rfik_base)
    cmds.parent(_parent, rfik_group)
    RFIK_control = cmds.ls("%s_%s_RFIK_control_placer" % (self.rig_name, side))
    cmds.xform(RFIK_control, ws=True, t=(
    cmds.xform(rfik_ball, q=True, ws=True, t=True)[0], 0, cmds.xform(rfik_ball, q=True, ws=True, t=True)[2]))
    RFIK_control = cmds.rename(RFIK_control, RFIK_control[0].replace('_placer', ''))
    cmds.makeIdentity(RFIK_control, apply=True, t=1, r=1, s=1)
    cmds.parent(rfik_group, RFIK_control)

    cmds.select(d=True)

    return RFIK_control, rfik_group


def build_fk_controls(self, bone_chain, side="L", point=1, orient=1):  # offset
    rig_offset = bone_chain[0]
    parent_control = None
    bone_chain = bone_chain[1:]
    controls = []

    for bone in bone_chain:
        try:
            control = cmds.ls("%s_control" % bone)[0]
            bone_offset = cmds.createNode("transform", name="%s_offset" % bone, parent=rig_offset)
            _newpos = (cmds.xform(bone, q=True, r=False, ws=True, t=True))
            cmds.xform(bone_offset, r=False, ws=True, t=(_newpos))

            # _tmp_cnst = cmds.parentConstraint(bone, bone_offset, mo=0)
            # cmds.delete(_tmp_cnst)
            cmds.parent(control, bone_offset)

            if side != "middle":  # originally written to only apply on R_ controls
                cmds.makeIdentity(control, apply=True, t=1, r=1, s=1, n=0)

            _tmp_cnst = cmds.orientConstraint(bone, bone_offset, mo=False)
            cmds.delete(_tmp_cnst)

            cmds.xform(control, r=False, ws=True, t=(_newpos))

            if point == 1:
                cmds.pointConstraint(control, bone, mo=True, weight=1, name="%s_pointConstraint" % control)
            if orient == 1:
                cmds.orientConstraint(control, bone, mo=True, weight=1, name="%s_orientConstraint" % control)

            if parent_control:
                cmds.parent(bone_offset, parent_control)
                parent_control = control
            else:
                parent_control = control

            cmds.select(d=True)
            control_placer = ("%s_placer" % control)
            control_placer_shape = cmds.listRelatives(control_placer, type="shape")[0]
            control_shape = cmds.listRelatives(control, type="shape")[0]

            _num_of_cvs = (cmds.getAttr("%s.spans" % control_shape) + cmds.getAttr("%s.degree" % control_shape))

            for cv in range(0, _num_of_cvs):
                origpos = cmds.xform("%s.cv[%s]" % (control_placer_shape, cv), q=True, ws=True, t=True)
                cmds.xform("%s.cv[%s]" % (control_shape, cv), ws=True, t=origpos)

            self.lock_attrs(control, ['sx', 'sy', 'sz'])
            self.lock_attrs(control, ['v'], lock=0)
            controls.append(control)

        except:
            pass

    return controls


def build_ik_fk_limb(self, side, limb, origin_bone):
    if not origin_bone:
        origin_bone = cmds.ls(sl=True)[0]
    center_bone = cmds.listRelatives(origin_bone, children=True)[0]
    end_bone = cmds.listRelatives(center_bone, children=True)[0]

    limb_IK_control = cmds.ls("%s_%s_%s_IK_control" % (self.rig_name, side, limb))[0]
    limb_pole_control = cmds.ls("%s_%s_%s_pole_vector" % (self.rig_name, side, limb))[0]

    if cmds.ls("%s_%s_%s_foot_control" % (self.rig_name, side, limb)):
        foot_control = cmds.ls("%s_%s_%s_foot_control" % (self.rig_name, side, limb))[0]

    # Create the IK handle.
    limb_IK = cmds.ikHandle(sol="ikRPsolver", sj=origin_bone, ee=end_bone,
                            name=("%s_%s_%s_IKhandle" % (self.rig_name, side, limb)))

    cmds.setAttr("%s.visibility" % limb_IK[0], 0)

    # Set the limbIk control in world space (default values won't be 0, but we don't care).
    cmds.move(0, 0, 0, limb_IK_control, rpr=True)
    cmds.makeIdentity(limb_IK_control, a=1, r=1, t=1, s=1)
    end_bone_pos = cmds.xform(end_bone, q=True, a=True, ws=True, rp=True)
    cmds.move(end_bone_pos[0], end_bone_pos[1], end_bone_pos[2], limb_IK_control, ws=True, a=True)
    cmds.makeIdentity(limb_IK_control, a=1, r=1, t=1, s=1)
    cmds.pointConstraint(limb_IK_control, limb_IK[0], w=1, mo=False)

    # Create the default position locator for the limb pole vector
    # (we'll use it to position the pole-vector when switching from FK to IK).
    limb_pole_default_LOC = cmds.spaceLocator(name="%s_%s_%s_pole_default_LOC" % (self.rig_name, side, limb))[0]
    center_bone_pos = cmds.xform(center_bone, q=True, a=True, ws=True, rp=True)
    cmds.xform(limb_pole_default_LOC, ws=True, t=center_bone_pos)
    # cmds.move(center_bone_pos[0], center_bone_pos[1], center_bone_pos[2], limb_pole_default_LOC, a=True)

    # Parent the locator to the origin_bone joint and put the locator behind the center_bone.
    cmds.parent(limb_pole_default_LOC, origin_bone)

    if center_bone_pos[2] < end_bone_pos[2]:
        _pole_offset = -50
    elif center_bone_pos[2] > end_bone_pos[2]:
        _pole_offset = 50

    cmds.move(0, 0, _pole_offset, limb_pole_default_LOC, r=True, ws=True, wd=True)
    cmds.setAttr("%s.visibility" % limb_pole_default_LOC, 0)

    # Match the position between the pole vector and the locator.
    cmds.pointConstraint(limb_pole_default_LOC, limb_pole_control, w=1, o=(0, 0, 0), name="_tmp_cnst")
    cmds.delete("_tmp_cnst")
    cmds.makeIdentity(limb_pole_control, apply=True, t=1, r=1, s=1, n=0)

    # Pole-constraint the IK handle to the pole-vector control.
    cmds.poleVectorConstraint(limb_pole_control, limb_IK[0], w=1)

    # Connect the IK handle visibility to the end_bone IK enable attribute.
    cmds.addAttr(limb_IK_control, ln="enableIk", at="bool", k=1, dv=0, h=1)
    cmds.connectAttr("%s.enableIk" % limb_IK_control, "%s.ikBlend" % limb_IK[0], f=1)
    cmds.connectAttr("%s.enableIk" % limb_IK_control, "%s.visibility" % limb_IK_control, f=1)
    cmds.connectAttr("%s.enableIk" % limb_IK_control, "%s.visibility" % limb_pole_control, f=1)

    # Put the limb in IK by default.
    cmds.setAttr("%s.enableIk" % limb_IK_control, 0)

    self.lock_attrs(limb_IK_control, ['sx', 'sy', 'sz'])
    cmds.setAttr("%s.v" % limb_IK_control, keyable=0, channelBox=0)

    self.lock_attrs(limb_pole_control, ['sx', 'sy', 'sz', 'rx', 'ry', 'rz'])
    cmds.setAttr("%s.v" % limb_pole_control, keyable=0, channelBox=0)

    if cmds.ls("%s_offset" % (end_bone)):
        cmds.orientConstraint(limb_IK_control, "%s_offset" % (end_bone), mo=True)

    return_controls = [limb_IK, limb_IK_control, limb_pole_control]
    if cmds.ls("%s_%s_%s_foot_control" % (self.rig_name, side, limb)):
        cmds.xform('%s.scalePivot' % foot_control, ws=True, t=(cmds.xform(end_bone, q=True, t=True, ws=True)))
        cmds.xform('%s.rotatePivot' % foot_control, ws=True, t=(cmds.xform(end_bone, q=True, t=True, ws=True)))
        cmds.makeIdentity(foot_control, apply=True, t=1, r=1, s=1, n=0)
        return_controls.append(foot_control)

    return return_controls


# Final Rig build methods
def build_rig_ikfk_arm(self, arm_placer, stretchy):
    # build arms
    print("############## Now Building Arms... ##############")
    cmds.select(d=True)
    _limb = arm_placer[0].split("_")[2]

    L_arm_placer = arm_placer
    R_arm_placer = self.mirror_placer(L_arm_placer)  # mirror L arm placers to R arm placers
    L_arm_build_bones = self.build_bones("L", _limb, L_arm_placer[1:])  # build bones
    self.make_limb_planar("arm", L_arm_build_bones[4])

    R_arm_build_bones = self.mirror_bones(L_arm_build_bones[3], R_arm_placer[1:])
    # self.make_limb_planar("arm", R_arm_build_bones[4])

    print("############## Creating FK controls... ##############")
    _fkarm_list = L_arm_build_bones[3:-1]
    _fkarm_list.insert(0, L_arm_build_bones[1])
    L_fk_arm_controls = self.build_fk_controls(_fkarm_list, side="L", point=0)  # build fk controls
    self.lock_attrs(L_fk_arm_controls[2], ['rx', 'rz'])  # lock rx, rz, on elbow
    self.lock_attrs(L_fk_arm_controls[1], ['sx'], 0)
    self.lock_attrs(L_fk_arm_controls[2], ['sx'], 0)

    _fkarm_list = R_arm_build_bones[3:-1]
    _fkarm_list.insert(0, R_arm_build_bones[1])
    R_fk_arm_controls = self.build_fk_controls(_fkarm_list, side="R", point=0)  # build fk controls
    self.lock_attrs(R_fk_arm_controls[2], ['rx', 'rz'])  # lock rx, rz, on elbow
    self.lock_attrs(R_fk_arm_controls[1], ['sx'], 0)
    self.lock_attrs(R_fk_arm_controls[2], ['sx'], 0)

    for control in L_fk_arm_controls:
        self.lock_attrs(control, ['ty', 'tz'])
    for control in R_fk_arm_controls:
        self.lock_attrs(control, ['ty', 'tz'])

    cmds.delete(L_arm_build_bones[-1])  # delete pointer bones after they're oriented
    cmds.delete(R_arm_build_bones[-1])

    print("############## Creating IK controls... ##############")
    L_ik_arm_controls = self.build_ik_fk_limb("L", _limb, L_arm_build_bones[4])  # build IK controls
    cmds.parent(L_ik_arm_controls[0][0], L_fk_arm_controls[0])  # parent L_arm_IK handle to L_ARM_RIG_OFFSET
    cmds.parent(L_ik_arm_controls[2], L_ik_arm_controls[1])  # parent IK_hand_control to arm_pole_vector
    cmds.parent(L_ik_arm_controls[1], L_arm_build_bones[0])
    self.ikfk_switch("L", _limb)

    R_ik_arm_controls = self.build_ik_fk_limb("R", _limb, R_arm_build_bones[4])  # build IK controls
    cmds.parent(R_ik_arm_controls[0][0], R_fk_arm_controls[0])  # parent R_arm_IK handle to R_ARM_RIG_OFFSET
    cmds.parent(R_ik_arm_controls[2], R_ik_arm_controls[1])  # parent IK_hand_control to arm_pole_vector
    cmds.parent(R_ik_arm_controls[1], R_arm_build_bones[0])
    self.ikfk_switch("R", _limb)

    if stretchy:
        print("############## Making stretchy IK... ##############")

        L_stretchy_limb_grp = self.build_stretchy_limb(L_arm_build_bones[4:7], L_ik_arm_controls[1], ikfkblended=True)
        R_stretchy_limb_grp = self.build_stretchy_limb(R_arm_build_bones[4:7], R_ik_arm_controls[1], ikfkblended=True)

        cmds.parent(L_stretchy_limb_grp, L_fk_arm_controls[1])
        cmds.parent(R_stretchy_limb_grp, R_fk_arm_controls[1])

    print("############## Making final connections... ##############")
    arm_connector = cmds.getAttr("%s.connector" % L_arm_placer[0])

    cmds.delete(L_arm_placer[0])  # delete arm placers
    cmds.delete(R_arm_placer[0])

    L_arm_connection = L_arm_build_bones[1]
    R_arm_connection = R_arm_build_bones[1]

    return L_arm_connection, R_arm_connection, arm_connector


def build_rig_phalange(self, phalange_placer):
    print("############## Now Building Phalange... ##############")
    cmds.select(d=True)
    L_phalange_placer = phalange_placer
    R_phalange_placer = self.mirror_placer(L_phalange_placer)  # mirror L phalange placers to R phalange placers
    _limb = "%s" % phalange_placer[0].split("_")[2]
    L_phalange_build_bones = self.build_bones("L", _limb, L_phalange_placer[1:])  # build bones
    R_phalange_build_bones = self.build_bones("R", _limb, R_phalange_placer[1:])  # build bones

    print("############## Creating FK controls... ##############")
    # orient joints
    cmds.joint(L_phalange_build_bones[3], e=True, oj="xzy", sao="zup", ch=True, zso=True)
    _fkphalange_list = L_phalange_build_bones[3:]
    _fkphalange_list.insert(0, L_phalange_build_bones[1])
    L_fk_phalange_controls = self.build_fk_controls(_fkphalange_list, side="L", point=0)  # build fk controls
    # self.lock_attrs(L_fk_phalange_controls[2], ['sx'], 0)

    cmds.joint(R_phalange_build_bones[3], e=True, oj="xzy", sao="zup", ch=True, zso=True)
    _fkphalange_list = R_phalange_build_bones[3:]
    _fkphalange_list.insert(0, R_phalange_build_bones[1])
    R_fk_phalange_controls = self.build_fk_controls(_fkphalange_list, side="R", point=0)  # build fk controls
    # self.lock_attrs(R_fk_phalange_controls[2], ['sx'], 0)

    print("############## Making final connections... ##############")
    L_phalange_connector = cmds.getAttr("%s.connector" % L_phalange_placer[0])
    R_phalange_connector = L_phalange_connector.replace('L_', 'R_')

    for control in L_fk_phalange_controls:
        self.lock_attrs(control, ['ty', 'tz'])
    for control in R_fk_phalange_controls:
        self.lock_attrs(control, ['ty', 'tz'])

    cmds.delete(L_phalange_build_bones[-1])  # delete pointer bones after they're oriented
    cmds.delete(R_phalange_build_bones[-1])

    L_phalange_connection = L_phalange_build_bones[1]
    R_phalange_connection = R_phalange_build_bones[1]

    cmds.delete(L_phalange_placer)
    cmds.delete(R_phalange_placer)

    return L_phalange_connection, R_phalange_connection, L_phalange_connector, R_phalange_connector


def build_rig_rfik_leg(self, leg_placer, stretchy):
    # build legs
    print("############## Building Legs... ##############")
    cmds.select(d=True)
    _limb = leg_placer[0].split("_")[2]

    L_leg_placer = leg_placer
    R_leg_placer = self.mirror_placer(L_leg_placer)  # mirror L leg placers to R leg placers
    L_leg_build_bones = self.build_bones("L", _limb, L_leg_placer[1:])  # build bones
    # R_leg_build_bones = self.build_bones("R", _limb, R_leg_placer[1:])        # build bones
    self.make_limb_planar("leg", L_leg_build_bones[3])
    R_leg_build_bones = self.mirror_bones(L_leg_build_bones[3], R_leg_placer[1:])
    cmds.select(d=True)

    # print("############## Creating FK controls... ##############") #

    # _fkleg_list = L_leg_build_bones[3:8]
    # _fkleg_list.insert(0, L_leg_build_bones[1])
    # L_fk_leg_controls = self.build_fk_controls(_fkleg_list, side="L")     # build fk controls
    # cmds.setAttr("%s.rx" % L_fk_leg_controls[1], lock=1, keyable=0, channelBox=0)      # lock rx, rz, on elbow
    # cmds.setAttr("%s.rz" % L_fk_leg_controls[1], lock=1, keyable=0, channelBox=0)

    # _fkleg_list = R_leg_build_bones[3:8]
    # _fkleg_list.insert(0, R_leg_build_bones[1])
    # R_fk_leg_controls = self.build_fk_controls(_fkleg_list, side="R")     # build fk controls
    # cmds.setAttr("%s.rx" % R_fk_leg_controls[1], lock=1, keyable=0, channelBox=0)      # lock rx, rz, on elbow
    # cmds.setAttr("%s.rz" % R_fk_leg_controls[1], lock=1, keyable=0, channelBox=0)

    # cmds.delete(L_fk_leg_controls[3:], R_fk_leg_controls[3:])

    print("############## Creating leg IK controls ##############")
    L_ik_leg_controls = self.build_ik_fk_limb("L", _limb, L_leg_build_bones[3])  # build IK controls
    cmds.parent(L_ik_leg_controls[0][0], L_leg_build_bones[1])  # parent L_leg_IK handle to L_leg_RIG_OFFSET
    cmds.parent(L_ik_leg_controls[2], L_ik_leg_controls[1])  # parent IK_control to leg_pole_vector
    cmds.parent(L_ik_leg_controls[1], L_ik_leg_controls[3])
    cmds.parent(L_ik_leg_controls[3], L_leg_build_bones[0])
    self.ikfk_switch("L", _limb)
    # cmds.setAttr("%s.v" % L_ik_leg_controls[2], 1)        # 1/7/15: started getting error here, not sure why it didn't err before
    R_ik_leg_controls = self.build_ik_fk_limb("R", _limb, R_leg_build_bones[3])  # build IK controls
    cmds.parent(R_ik_leg_controls[0][0], R_leg_build_bones[1])  # parent R_leg_IK handle to R_leg_RIG_OFFSET
    cmds.parent(R_ik_leg_controls[2], R_ik_leg_controls[1])  # parent IK_control to leg_pole_vector
    cmds.parent(R_ik_leg_controls[1], R_ik_leg_controls[3])
    cmds.parent(R_ik_leg_controls[3], R_leg_build_bones[0])
    self.ikfk_switch("R", _limb)
    # cmds.setAttr("%s.v" % R_ik_leg_controls[2], 1)        # 1/7/15: started getting error here, not sure why it didn't err before

    if stretchy:
        print("############## Building stretchy leg...##############")
        L_stretchy_limb_grp = self.build_stretchy_limb(L_leg_build_bones[3:6], L_ik_leg_controls[1])
        R_stretchy_limb_grp = self.build_stretchy_limb(R_leg_build_bones[3:6], R_ik_leg_controls[1])

        cmds.parent(L_stretchy_limb_grp, L_leg_build_bones[1])
        cmds.parent(R_stretchy_limb_grp, R_leg_build_bones[1])

    print("############## Creating RFIK and controls ##############")
    L_RFIK = self.build_reverse_foot(L_leg_build_bones[5], side="L_%s" % _limb)
    R_RFIK = self.build_reverse_foot(R_leg_build_bones[5], side="R_%s" % _limb)
    cmds.setAttr("%s.visibility" % L_RFIK[1], 0)
    cmds.setAttr("%s.visibility" % R_RFIK[1], 0)
    cmds.parent(L_RFIK[1], L_leg_build_bones[0])
    cmds.parent(R_RFIK[1], R_leg_build_bones[0])
    print ("%s: " % R_RFIK[0]) + str(cmds.getAttr("%s.ry" % R_RFIK[0]))
    print ("%s: " % R_ik_leg_controls[3]) + str(cmds.getAttr("%s.ry" % R_ik_leg_controls[3]))
    cmds.parent(R_RFIK[0], R_ik_leg_controls[3])
    cmds.makeIdentity(R_RFIK[0], a=1, t=1, r=1, s=1)
    cmds.parent(L_RFIK[0], L_ik_leg_controls[3])
    print ("%s: " % R_RFIK[0]) + str(cmds.getAttr("%s.ry" % R_RFIK[0]))
    print ("%s: " % R_ik_leg_controls[3]) + str(cmds.getAttr("%s.ry" % R_ik_leg_controls[3]))
    cmds.parent(L_RFIK[1], L_RFIK[0])
    cmds.parent(R_RFIK[1], R_RFIK[0])
    leg_connector = cmds.getAttr("%s.connector" % L_leg_placer[0])

    cmds.delete(L_leg_placer[0])  # delete leg placer
    cmds.delete(R_leg_placer[0])

    R_leg_connection = R_leg_build_bones[1]  # set hook-in connections
    L_leg_connection = L_leg_build_bones[1]

    return L_leg_connection, R_leg_connection, leg_connector


def build_rig_spline_spine(self, spine_placer, stretchy):
    print("############## Building Spine... ##############")
    ##### "BUILD BONES"
    spine_bones = self.build_bones("middle", "SPINE", spine_placer[0][1:])  # build bones
    cmds.joint(spine_bones[4], e=True, oj="yzx", sao="yup", ch=True, zso=True)

    ##### "PARENT BONES    "
    cmds.parent(spine_bones[4], world=True)
    cmds.parent(spine_bones[3], spine_bones[4])
    cmds.parent(spine_bones[4], spine_bones[2])

    ##### "CREATE FK CONTROLS"
    spineBody_fk_controls = self.build_fk_controls(
        [spine_bones[1], spine_bones[4], spine_bones[3], spine_bones[-2], spine_bones[-1]], side="middle")
    _rig_control_group = cmds.group((cmds.listRelatives(spineBody_fk_controls[0], parent=True)),
                                    name="%s_SPINE_CONTROL" % self.rig_name)

    for control in spineBody_fk_controls[1:]:
        self.lock_attrs(control, ['tx', 'ty', 'tz'])

    ##### "MAKE SPLINE SPINE"
    spline_spine_ikhandle = cmds.ikHandle(name="%s_splineSpine_ikHandle" % self.rig_name, sol="ikSplineSolver",
                                          ns=int(self.spine_placer[2]) - 1, sj=spine_bones[5], ee=spine_bones[-3],
                                          scv=0)
    _curve = spline_spine_ikhandle[2]
    cmds.parent(_curve, _rig_control_group)
    cmds.setAttr("%s.inheritsTransform" % _curve, 0)
    _curve = cmds.rename(_curve, "%s_splineSpine_curve" % self.rig_name)

    # parent root and neck bone CV clusters to root and neck bone
    _curve_cvs = cmds.ls("%s_splineSpine_curve.cv[*]" % self.rig_name, fl=True)

    ##### "CLUSTER CVS"
    i = 1
    _spineSplineClusters = []
    for cv in _curve_cvs:
        cmds.select(cv, add=False)
        _new_clust = cmds.cluster(name="%s_splineSpine_cluster_%s" % (self.rig_name, i))
        _spineSplineClusters.append(_new_clust)
        cmds.parent(_new_clust[1], _rig_control_group)
        cmds.hide(_new_clust)
        i += 1

    ##### "MAKE SPLINE SPINE CONTROLS"
    cmds.parent(spline_spine_ikhandle[0], _rig_control_group)

    for i in range(1, int(spine_placer[2]) + 1):
        print ("%s and %s " % (self.rig_name, i))
        _control = cmds.ls("%s_spine%s_control" % (self.rig_name, i))[0]
        cmds.makeIdentity(_control, apply=True, t=1, r=1, s=1, n=0)
        cmds.select(_control, add=False)
        _new_grp = cmds.group(_control, name="%s_offset" % _control)
        cmds.makeIdentity(_new_grp, apply=True, t=1, r=1, s=1, n=0)
        cmds.parentConstraint(_control, _spineSplineClusters[i], mo=True, w=1)
        cmds.parent(_new_grp, spine_bones[1])
        self.lock_attrs(_control, ['sx', 'sy', 'sz', 'v'])

        if i == 1:
            cmds.parent(cmds.listRelatives(_control, parent=True), spineBody_fk_controls[0])
        else:
            cmds.parent(cmds.listRelatives(_control, parent=True),
                        cmds.ls("%s_spine%s_control" % (self.rig_name, i - 1))[0])
            if i == int(spine_placer[2]):
                cmds.parent(cmds.listRelatives(spineBody_fk_controls[2], parent=True), _control)
                _spine_locator = cmds.spaceLocator(name="%s_topSpine_locator" % self.rig_name,
                                                   p=(cmds.getAttr("%s.t" % _control)[0]))[0]
                cmds.setAttr("%s.visibility" % _spine_locator, 0)
                cmds.makeIdentity(_spine_locator, apply=True, t=1, r=1, s=1, n=0)
                cmds.parentConstraint(_spine_locator, spline_spine_ikhandle[0], mo=True)
                cmds.parentConstraint(spline_spine_ikhandle[0], _spineSplineClusters[-1], mo=True)
                cmds.parent(_spine_locator, _control)

    _bones = spine_bones[5:-2]

    if stretchy:
        _condition = cmds.createNode("condition", name="%s_splineSpine_condition" % self.rig_name)
        _multiplyDivide = cmds.createNode("multiplyDivide", name="%s_splineSpine_multDiv" % self.rig_name)
        _curvelen = cmds.arclen(_curve, ch=1)

        cmds.connectAttr("%s.arcLength" % _curvelen, "%s.firstTerm" % _condition, f=True)
        cmds.connectAttr("%s.arcLength" % _curvelen, "%s.input1X" % _multiplyDivide, f=True)
        cmds.setAttr("%s.secondTerm" % _condition, cmds.arclen(_curve))
        cmds.setAttr("%s.input2X" % _multiplyDivide, cmds.arclen(_curve))
        cmds.setAttr("%s.operation" % _condition, 2)
        cmds.connectAttr("%s.outputX" % _multiplyDivide, "%s.colorIfTrueR" % _condition, f=True)
        cmds.setAttr("%s.colorIfFalseR" % _condition, 1)
        cmds.setAttr("%s.operation" % _multiplyDivide, 2)
        cmds.hide(_curve)
        i = 1

        for bone in _bones:
            # cmds.connectAttr("%s.outColorR" % _condition, "%s.scaleY" % bone)
            #  stretch_factor = cmds.getAttr("%s.outputX" % _multiplyDivide)
            _stretchMultiplyDivide = cmds.createNode("multiplyDivide",
                                                     name="%s_splineSpineStretch_multDiv%s" % (self.rig_name, i))
            cmds.setAttr("%s.operation" % _stretchMultiplyDivide, 1)
            cmds.setAttr("%s.input1X" % _stretchMultiplyDivide, cmds.getAttr("%s.ty" % bone))
            cmds.connectAttr("%s.outColorR" % _condition, "%s.input2X" % _stretchMultiplyDivide)
            cmds.connectAttr("%s.outputX" % _stretchMultiplyDivide, "%s.ty" % bone, f=True)
            i += 1

    ##### "SPINE CONNECTIONS AND CLEANUP"
    cmds.pointConstraint(spineBody_fk_controls[0], _spineSplineClusters[0], mo=True)
    cmds.delete(cmds.listRelatives(spine_bones[-2])[-2], cmds.listRelatives(spine_bones[-1])[-2])

    cmds.pointConstraint(spine_bones[-2], cmds.listRelatives(spineBody_fk_controls[-2], parent=True)[0], mo=True)

    world_control = cmds.rename(cmds.ls("%s_world_control_placer" % self.rig_name)[0],
                                "%s_world_control" % self.rig_name)
    cmds.parent(world_control, w=1)
    cmds.makeIdentity(world_control, a=1, r=1, t=1, s=1)

    return world_control


# Rig Control methods
def ikfk_switch(self, side, limb):
    cmds.select(d=True)

    if limb[:3] == "ARM":
        _bones = ['shoulder', 'elbow', 'wrist']
    elif limb[:3] == "LEG":
        _bones = ['hip', 'knee', 'ankle']

    origin_bone = cmds.ls("%s_%s_%s_%s" % (self.rig_name, side, limb, _bones[0]))[0]
    origin_bone_control = cmds.ls("%s_%s_%s_%s_control" % (self.rig_name, side, limb, _bones[0]))[0]
    center_bone = cmds.ls("%s_%s_%s_%s" % (self.rig_name, side, limb, _bones[1]))[0]
    center_bone_control = cmds.ls("%s_%s_%s_%s_control" % (self.rig_name, side, limb, _bones[1]))[0]
    end_bone = cmds.ls("%s_%s_%s_%s" % (self.rig_name, side, limb, _bones[2]))[0]
    end_bone_control = cmds.ls("%s_%s_%s_%s_control" % (self.rig_name, side, limb, _bones[2]))[0]

    limb_IK_control = cmds.ls("%s_%s_%s_IK_control" % (self.rig_name, side, limb))[0]
    limb_pole_control = cmds.ls("%s_%s_%s_pole_vector" % (self.rig_name, side, limb))[0]
    limb_pole_default_LOC = cmds.ls("%s_%s_%s_pole_default_LOC" % (self.rig_name, side, limb))[0]

    keyed_when_switching = 0

    keys_on_origin_bone = cmds.keyframe(origin_bone_control, q=True)
    keys_on_center_bone = cmds.keyframe(center_bone_control, q=True)
    keys_on_limb_IK = cmds.keyframe(limb_IK_control, q=True)
    keys_on_limb_pole = cmds.keyframe(limb_pole_control, q=True)

    if keys_on_origin_bone or keys_on_center_bone or keys_on_limb_IK or keys_on_limb_pole:
        keyed_when_switching = 1

    if cmds.getAttr("%s.enableIk" % limb_IK_control) == 1:  # IK to FK
        origin_bone_rotation = cmds.xform(origin_bone, q=True, r=True, ro=True)
        center_bone_rotation = cmds.xform(center_bone, q=True, r=True, ro=True)

        cmds.setAttr("%s.enableIk" % limb_IK_control, 0)

        cmds.setAttr("%s.rotate" % origin_bone_control, origin_bone_rotation[0], origin_bone_rotation[1],
                     origin_bone_rotation[2])
        cmds.setAttr("%s.ry" % center_bone_control, center_bone_rotation[1])

        cmds.setAttr("%s.visibility" % origin_bone_control, 1)
        cmds.setAttr("%s.visibility" % center_bone_control, 1)

        # if stretchy attr exists, set to 0
        if cmds.objExists("%s.stretchy" % limb_IK_control):
            cmds.setAttr("%s.stretchy" % limb_IK_control, 0)

        if keyed_when_switching:
            cmds.setKeyframe(origin_bone_control, breakdown=0, hierarchy="none", controlPoints=0, shape=1)
            cmds.setKeyframe(center_bone_control, breakdown=0, hierarchy="none", controlPoints=0, shape=1)
        cmds.select(d=True)

    else:  # FK to IK
        # 1) Move the IK control to the current position of the end_bone.
        _tmp_cnst1 = cmds.pointConstraint(end_bone, limb_IK_control, w=1, o=(0, 0, 0), name="_tmp_cnst1")
        cmds.delete(_tmp_cnst1)

        # 2) If there are keys anywhere on the limb, then key the limbIk and delete the constraint.
        if keyed_when_switching:
            cmds.setKeyframe(limb_IK_control, breakdown=0, hierarchy="none", controlPoints=0, shape=1)
        # 3) Move the pole vector where it should be to match the limb angle.
        _tmp_cnst2 = cmds.pointConstraint(limb_pole_default_LOC, limb_pole_control, w=1, o=(0, 0, 0), name="_tmp_cnst2")
        cmds.delete(_tmp_cnst2)
        # 4) If there are keys anywhere on the limb, then key the limbPole and delete the constraint.
        if keyed_when_switching:
            cmds.setKeyframe(limb_pole_control, breakdown=0, hierarchy="none", controlPoints=0, shape=1)

        cmds.setAttr("%s.visibility" % origin_bone_control, 0)
        cmds.setAttr("%s.visibility" % center_bone_control, 0)
        # 5) Enable the IK solver.
        cmds.setAttr("%s.enableIk" % limb_IK_control, 1)
        # cmds.select(limb_IK_control, replace=True)
        cmds.select(d=True)


# Final build method
def build_rig(self):
    print("#########################################################################################")
    print("###### NOW BUILDING RIG %s ###########################" % self.rig_name)
    print("#########################################################################################")

    cmds.select(d=True)
    # check for placers and reset group nodes in case they were moved
    for placer in self.placers:
        print placer
        self.reset_group_node(placer)

    self.refresh_active_placers()

    print("############ BUILDING SPLINEIK SPINE #######################")
    if not cmds.ls("%s_SPINE_RIG_PLACER*" % self.rig_name):
        print "CANNOT BUILD RIG: NO SPINE PLACER DETECTED!"
        cmds.promptDialog(message='CANNOT BUILD RIG: NO SPINE PLACER DETECTED!',
                          button=['OK', 'Cancel'],
                          defaultButton='OK',
                          cancelButton='Cancel',
                          dismissString='Cancel')
    world_control = self.build_rig_spline_spine(self.spine_placer,
                                                cmds.getAttr("%s.stretchy" % self.spine_placer[0][0]))
    cmds.delete(self.spine_placer[0][0])

    print("############ BUILDING %s IKFK ARMS #######" % self.arm_placers)
    j = 0
    for placer in self.placers:
        if self.placers[placer] == "arm":
            j += 1
            # rebuild placer object
            _arm_placer = []
            for i in range(0, cmds.getAttr("%s.placers" % placer, size=True)):
                _arm_placer.append(cmds.ls(cmds.getAttr("%s.placers[%s]" % (placer, i)))[0])
            _arm_connections = self.build_rig_ikfk_arm(_arm_placer, cmds.getAttr("%s.stretchy" % _arm_placer[0]))
            cmds.parentConstraint(_arm_connections[2], _arm_connections[1], mo=True)
            cmds.parentConstraint(_arm_connections[2], _arm_connections[0], mo=True)
            # cmds.parent(_arm_connections[0], _arm_connections[2])
            # cmds.parent(_arm_connections[1], _arm_connections[2])

    cmds.addAttr(self.RIG_ROOT_NODE, at="byte", ln="ikfkarms", dv=j)

    print("############ BUILDING %s FINGERS #######" % self.arm_placers)
    j = 0
    for placer in self.placers:
        if self.placers[placer] == "finger":
            j += 1
            # rebuild placer object
            _finger_placer = []
            for i in range(0, cmds.getAttr("%s.placers" % placer, size=True)):
                _finger_placer.append(cmds.ls(cmds.getAttr("%s.placers[%s]" % (placer, i)))[0])
            _finger_connections = self.build_rig_phalange(_finger_placer)
            cmds.parentConstraint(_finger_connections[2], _finger_connections[0], mo=True)
            cmds.parentConstraint(_finger_connections[3], _finger_connections[1], mo=True)
            # cmds.parent(_finger_connections[0], _finger_connections[2])
            # cmds.parent(_finger_connections[1], _finger_connections[3])

    print("############ BUILDING %s RFIK LEGS #######" % self.leg_placers)
    for placer in self.placers:
        if self.placers[placer] == "leg":
            # rebuild placer object
            _leg_placer = []
            for i in range(0, cmds.getAttr("%s.placers" % placer, size=True)):
                _leg_placer.append(cmds.ls(cmds.getAttr("%s.placers[%s]" % (placer, i)))[0])
            _leg_connections = self.build_rig_rfik_leg(_leg_placer, cmds.getAttr("%s.stretchy" % _leg_placer[0]))
            cmds.parentConstraint(_leg_connections[2], _leg_connections[0], mo=True)
            cmds.parentConstraint(_leg_connections[2], _leg_connections[1], mo=True)
            # cmds.parent(_leg_connections[0], _leg_connections[2])
            # cmds.parent(_leg_connections[1], _leg_connections[2])

    print("############ BUILDING %s TOES #######" % self.leg_placers)
    j = 0
    for placer in self.placers:
        if self.placers[placer] == "toe":
            j += 1
            # rebuild placer object
            _toe_placer = []
            for i in range(0, cmds.getAttr("%s.placers" % placer, size=True)):
                _toe_placer.append(cmds.ls(cmds.getAttr("%s.placers[%s]" % (placer, i)))[0])
            _toe_connections = self.build_rig_phalange(_toe_placer)
            cmds.parentConstraint(_toe_connections[2], _toe_connections[0], mo=True)
            cmds.parentConstraint(_toe_connections[3], _toe_connections[1], mo=True)
            # cmds.parent(_toe_connections[0], _toe_connections[2])
            # cmds.parent(_toe_connections[1], _toe_connections[3])

    # constrain world control last:
    cmds.setAttr("%s.inheritsTransform" % world_control, 0)
    cmds.parent(world_control, self.RIG_ROOT_NODE)
    cmds.parentConstraint(world_control, self.RIG_ROOT_NODE, mo=True)

    ### POST BUILD CLEANUP ###
    self.UImode = "control"
    cmds.setAttr("%s.uimode" % self.RIG_ROOT_NODE, "control", type="string")
    if cmds.window(self.rig_name, q=1, exists=1):
        cmds.deleteUI(self.rig_name)
    self.rig_UI(self.UImode)
    cmds.select(d=True)
