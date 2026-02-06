from maya import cmds as cmds
import sys
import autorig


class AutorigUI():
    def __init__(self, name=""):
        cmds.select(d=True)

        # Start with pop-up dialog to get rig name
        if name:
            self.rig_name = name
        else:
            _dialog = cmds.promptDialog(
                title='Autorig Startup',
                message='Enter Rig Name:',
                button=['OK', 'Cancel'],
                defaultButton='OK',
                cancelButton='Cancel',
                dismissString='Cancel')

            if _dialog == 'OK':
                self.rig_name = cmds.promptDialog(query=True, text=True)
            else:
                sys.exit()

        # check units with cmds.currentUnit(q=1)

        # check for main top group node called RIG_NAME IN CAPS
        self.rig_name = self.rig_name.upper()
        if cmds.ls("%s" % self.rig_name):
            self.RIG_ROOT_NODE = cmds.ls("%s" % self.rig_name)[0]
            if not cmds.objExists("%s.uimode" % self.RIG_ROOT_NODE):
                cmds.addAttr(self.RIG_ROOT_NODE, ln="uimode", dt="string")
                cmds.setAttr("%s.uimode" % self.RIG_ROOT_NODE, "build")

        # if not there, create it as RIG_ROOT_NODE
        else:
            self.RIG_ROOT_NODE = cmds.group(name="%s" % self.rig_name, empty=True)
            cmds.addAttr(self.RIG_ROOT_NODE, ln="uimode", dt="string")
            cmds.setAttr("%s.uimode" % self.RIG_ROOT_NODE, "build", type="string")

        # keep list of bones
        self.rig_bones = []

        # check for placers, store in dict
        # self.placers = {}
        self.refresh_active_placers()

        # get number of placers by type (arm, leg)
        self.arm_placers = 0
        for placer in self.placers:
            if self.placers[placer] == "arm":
                self.arm_placers += 1

        self.leg_placers = 0
        for placer in self.placers:
            if self.placers[placer] == "leg":
                self.leg_placers += 1

        # rebuild spine_placer object if already built
        if cmds.ls("%s_SPINE_RIG_PLACER*" % self.rig_name):
            self.spine_placer = []

            _tmp_ary = []
            for i in range(0, cmds.getAttr("%s_SPINE_RIG_PLACER.placers" % self.rig_name, size=True)):
                _tmp_ary.append(cmds.ls(cmds.getAttr("%s_SPINE_RIG_PLACER.placers[%s]" % (self.rig_name, i)))[0])
            self.spine_placer.append(_tmp_ary)

            _tmp_ary = []
            for i in range(0, cmds.getAttr("%s_SPINE_RIG_PLACER.controlPieces" % self.rig_name, size=True)):
                _tmp_ary.append(cmds.ls(cmds.getAttr("%s_SPINE_RIG_PLACER.controlPieces[%s]" % (self.rig_name, i)))[0])
            self.spine_placer.append(_tmp_ary)

            self.spine_placer.append(cmds.getAttr("%s_SPINE_RIG_PLACER.controls" % self.rig_name))
            self.spine_placer.append(cmds.getAttr("%s_SPINE_RIG_PLACER.curve" % self.rig_name))

        if cmds.getAttr("%s.uimode" % self.RIG_ROOT_NODE) == "control":
            self.UImode = "control"
        elif cmds.getAttr("%s.uimode" % self.RIG_ROOT_NODE) == "build":
            self.UImode = "build"

        if cmds.window(self.rig_name, q=1, exists=1):
            cmds.deleteUI(self.rig_name)
        self.rig_UI(self.UImode)

        cmds.select(d=True)

    # UI methods
    def rig_UI(self, uimode):
        self.ui_window = cmds.window(self.rig_name, widthHeight=(300, 500),
                                     title=("%s Autorig v1.0 - %s" % (self.rig_name, datestamp)), vis=1)

        self.form = cmds.formLayout()

        if uimode == "build":  # BUILD MODE UI
            child1 = cmds.rowColumnLayout(numberOfColumns=2, cs=(2, 10), rs=(4, 10))

            cmds.text("RIG BUILDING MODE", align="center", rs=True)
            cmds.text(label="", align="left")

            ## SPINE PLACER ##
            cmds.text("SPINE", align="left", rs=True)
            cmds.text(label="", align="left")

            cmds.textFieldGrp('spine_verts', label='Num of Vertebrae', text='3', cw2=(100, 30), cl2=("left", "left"),
                              parent=child1)
            cmds.checkBox('spine_stretchy_checkbox', label="Stretchy", align="left")

            cmds.optionMenu('spine_controls', label="Num of Controls", w=3)
            cmds.menuItem(label='3')
            cmds.menuItem(label='4')
            cmds.menuItem(label='5')
            cmds.text(label="")

            cmds.button(label="Create Spine", command=lambda *args: self.ui_create_placer("spine", "spine", int(
                cmds.textFieldGrp('spine_verts', query=True, text=True)),
                                                                                          int(cmds.optionMenu(
                                                                                              'spine_controls',
                                                                                              query=True, value=True)),
                                                                                          cmds.checkBox(
                                                                                              'spine_stretchy_checkbox',
                                                                                              q=1, value=1)))
            cmds.text(label="", align="left")

            ## ARM PLACER ##
            cmds.text("ARMS", align="left", rs=True)
            cmds.text(label="", align="left")

            cmds.textFieldGrp('num_fingers', label='Number of Fingers', text='5', cw2=(100, 30), cl2=("left", "left"),
                              parent=child1)
            cmds.checkBox('arm_stretchy_checkbox', label="Stretchy", align="left")

            cmds.button(label="Create Arm", command=lambda *args: self.ui_create_placer("L", "arm", int(
                cmds.textFieldGrp('num_fingers', query=True, text=True)),
                                                                                        cmds.checkBox(
                                                                                            'arm_stretchy_checkbox',
                                                                                            q=1, value=1)),
                        align="left")
            cmds.text(label="", align="left")

            cmds.text(label="")
            cmds.text(label="")

            ## LEG PLACER ##
            cmds.text("LEGS", align="left", rs=True)
            cmds.text(label="", align="left")

            cmds.textFieldGrp('num_toes', label='Number of Toes', text='5', cw2=(100, 30), cl2=("left", "left"),
                              parent=child1)
            cmds.checkBox('leg_stretchy_checkbox', label="Stretchy", align="left")

            cmds.button(label="Create Leg", command=lambda *args: self.ui_create_placer("L", "leg", int(
                cmds.textFieldGrp('num_toes', query=True, text=True)),
                                                                                        cmds.checkBox(
                                                                                            'leg_stretchy_checkbox',
                                                                                            q=1, value=1),
                                                                                        cmds.checkBox(
                                                                                            'leg_rfik_checkbox', q=1,
                                                                                            value=1)))
            cmds.checkBox('leg_rfik_checkbox', label="RFIK", align="left")

            cmds.text(label="")
            cmds.text(label="")

            ## BUILD BUTTON ##
            cmds.text(label="")
            cmds.button(label="Build Rig!", height=50, command=lambda *args: self.build_rig())

            cmds.setParent('..')

        elif uimode == "control":  # CONTROL MODE UI
            cmds.text(" RIG CONTROL MODE", align="center")
            cmds.text(label=" ", align="left")
            child1 = cmds.rowColumnLayout(numberOfColumns=2, cs=(2, 10), rs=(4, 10))

            cmds.text(label=" ", align="left")
            cmds.text(label=" ", align="left")

            if cmds.objExists("%s.ikfkarms" % self.RIG_ROOT_NODE):
                for i in range(1, cmds.getAttr("%s.ikfkarms" % self.RIG_ROOT_NODE) + 1):
                    self.ui_armikfkbutton(i, "ARM%s" % i)

            cmds.setParent('..')

    def ui_armikfkbutton(self, x, _limb):
        cmds.button(label="L %s" % _limb, height=30, width=100,
                    command=lambda *args: self.ikfk_switch("L", "ARM%s" % x))
        cmds.button(label="R %s" % _limb, height=30, width=100,
                    command=lambda *args: self.ikfk_switch("R", "ARM%s" % x))

    def ui_create_placer(self, side, limb, *args, **kwargs):  # callback method to create placers from UI buttons
        if limb == "arm":
            self.refresh_active_placers()
            self.arm_placers += 1
            new_arm_placer = self.build_arm_placer(side, args[1], num=self.arm_placers)
            self.placers[new_arm_placer[0]] = "arm"
            for i in range(args[0]):
                new_finger_placer = self.build_phalange_placer("%s_ARM%sFINGER%s" % (side, self.arm_placers, i), 3, "x",
                                                               "ARM%s_wrist" % self.arm_placers, "finger",
                                                               (55, 55, 10 - i * 5), side)

        elif limb == "leg":
            self.refresh_active_placers()
            self.leg_placers += 1
            new_leg_placer = self.build_leg_placer(side, args[1], args[2], num=self.leg_placers)
            # self.L_leg_toes_placer = self.build_toes_placer(side)
            self.placers[new_leg_placer[0]] = "leg"
            for i in range(args[0]):
                self.build_phalange_placer("%s_LEG%sTOE%s" % (side, self.leg_placers, i), 2, "z",
                                           "LEG%s_toe" % self.leg_placers, "toe", (2 * i + 16, 0, 25), side)

        elif limb == "spine":
            self.refresh_active_placers()
            self.spine_placer = self.build_spine_placer(args[0], args[1], [2, 2, 2], args[2])
