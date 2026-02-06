import maya.cmds as cmds

limbs = {'arm': ('upperArm', 'lowerArm', 'hand'), 'leg': ('thigh', 'calf', 'foot')}
side_naming = 'suffix'

def switcher(sel, limb_ctrl):
    splitlength = len(limb_ctrl.split('_'))
    prefix = '' if splitlength == 3 else f'{sel.split("_")[0]}_'
    limb = limb_ctrl.replace('_Ctrl', '')
    limb_type = limb.split('_')[0]
    side = limb.split('_')[1]
    namespace = ''
    if cmds.getAttr(f'{limb_ctrl}.IKFK_Mode') == 0:
        # switch to IK
        print(f'{prefix}')
        endlimb_L_FK_Ctrl_pos = cmds.xform(f'{prefix}{limbs[limb_type][2]}_{side}_FK_Ctrl', q=True, m=True, ws=True)
        pv_pos = cmds.xform(f'{limb}_PV_loc', q=True, m=True, ws=True)

        limb_L_IK_Ctrl = cmds.ls(f'{limb}_IK_Ctrl')[0]
        limb_L_poleVec_Ctrl = cmds.ls(f'{limb}_poleVec_Ctrl')[0]

        cmds.xform(limb_L_IK_Ctrl, m=endlimb_L_FK_Ctrl_pos, ws=True)
        cmds.xform(limb_L_poleVec_Ctrl, m=pv_pos, ws=True)

        cmds.setAttr(f'{limb_ctrl}.IKFK_Mode', 1)

        # cmds.select(limb_ctrl, r=1)
    elif cmds.getAttr(f'{limb_ctrl}.IKFK_Mode') == 1:
        # switch to FK
        firstlimb_pos = cmds.xform(f'{prefix}{limbs[limb_type][0]}_{side}', q=True, m=True, ws=True)
        midlimb_pos = cmds.xform(f'{prefix}{limbs[limb_type][1]}_{side}', q=True, m=True, ws=True)
        endlimb_pos = cmds.xform(f'{prefix}{limbs[limb_type][2]}_{side}', q=True, m=True, ws=True)

        firstlimb_L_FK_Ctrl = cmds.ls(f'{prefix}{limbs[limb_type][0]}_{side}_FK_Ctrl')[0]
        midlimb_L_FK_Ctrl = cmds.ls(f'{prefix}{limbs[limb_type][1]}_{side}_FK_Ctrl')[0]
        endlimb_L_FK_Ctrl = cmds.ls(f'{prefix}{limbs[limb_type][2]}_{side}_FK_Ctrl')[0]

        cmds.xform(firstlimb_L_FK_Ctrl, m=firstlimb_pos, ws=True)
        cmds.xform(midlimb_L_FK_Ctrl, m=midlimb_pos, ws=True)
        cmds.xform(endlimb_L_FK_Ctrl, m=endlimb_pos, ws=True)

        cmds.setAttr(f'{limb_ctrl}.IKFK_Mode', 0)

        # cmds.select(limb_ctrl, r=1)


def main():
    if cmds.ls(sl=1):
        try:
            # switcher(cmds.ls(sl=1)[0])
            switched_limbs = []
            limb_ctrl = None
            for sel in cmds.ls(sl=1):
                # make sure every selection is a valid controller
                if cmds.attributeQuery('IKFK_Mode', n=sel, ex=True) or \
                   cmds.attributeQuery('controller', n=sel, ex=True):
                    limb_ctrl = cmds.getAttr(f'{sel}.controller')  # limb control selected
                    if limb_ctrl not in switched_limbs:
                        switcher(sel, limb_ctrl)
                        switched_limbs.append(limb_ctrl)
                else:
                    print(f'Selection {sel} is not a switchable controller')
            cmds.select(switched_limbs, r=1)
        except:
            print(f'Invalid IKFK switchable controller {cmds.ls(sl=1)[0]} selected!')


if __name__ == "__main__":
    main()