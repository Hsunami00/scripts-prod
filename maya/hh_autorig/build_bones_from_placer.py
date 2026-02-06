import importlib
import hh_autorig.autorig as autorig
importlib.reload(autorig)


testground_file = f'{autorig.get_git_dir()}/dev/scripts/maya/hh_autorig/autorig_placers.ma'
pm.openFile(testground_file, f=1)

# pm.newFile(f=1)

UP_AXIS = pm.dt.Vector(0, 0, 1)
# ['clavicle', 'shoulder', 'elbow', 'wrist']
# ['legUpper', 'legLower', 'foot', 'ball', 'toeTip']


def build_limb_bones_from_placer(side, limb):
    placer_topgrp = pm.ls(f'{limb}_{side}_RIG_PLACER')[0]
    placers = placer_topgrp.placers.get()
    endjoint = -1 if limb == 'ARM' else -3
    topjoint = 1 if limb == 'ARM' else 0
    whole_limb_vec = pm.ls(placers[endjoint])[0].getRotatePivot(ws=1) - pm.ls(placers[topjoint])[0].getRotatePivot(ws=1)
    upper_limb_vec = pm.ls(placers[topjoint+1])[0].getRotatePivot(ws=1) - pm.ls(placers[topjoint])[0].getRotatePivot(ws=1)
    pm.select(d=1)
    newbones = []
    for p in placers:
        # first, create a joint at each placer
        p = pm.ls(p)[0]
        bone = pm.joint(n=f'{p.replace("_bone_placer","")}', p=p.getRotatePivot(ws=1))
        pm.select(d=1)
        newbones.append(bone)
        if p != placers[-1]:
            # get x-axis by getting vector to child joint
            childbone = pm.ls(placers[placers.index(p)+1])[0]
            bone_t = p.getRotatePivot(ws=1)
            xvec = childbone.getRotatePivot(ws=1) - bone_t
            xvec.normalize()
            if side == 'R':
                xvec *= -1
            zvec = pm.ls(f'{p}_upVector')[0].getRotatePivot(ws=1) - bone_t
            yvec = zvec ^ xvec
        if p == placers[endjoint] and limb == 'ARM':
            # for the hand, rotate in 90 if hand is pronated (thumb points out at z)
            yvec = -(upper_limb_vec ^ whole_limb_vec)
            zvec = -(xvec ^ yvec)
        # set new bone's orientation
        m = pm.dt.Matrix(list(xvec) + [0],
                         list(yvec) + [0],
                         list(zvec) + [0],
                         [0, 0, 0, 1])

        tm = pm.dt.TransformationMatrix(m)
        rot_euler = tm.getRotation()
        rot_euler = ([i * autorig.RAD2DEG for i in rot_euler])
        bone.jointOrient.set(rot_euler)
        bone.rotate.set(0, 0, 0)

    for b in newbones:
        if newbones.index(b) != 0:
            b.setParent(newbones[newbones.index(b)-1])
    # TODO: parent hips to pelvis and clavicles to top spine bone


def build_spine_bones_from_placer(spine_name='SPINE'):
    placer_topgrp = pm.ls(f'{spine_name}_RIG_PLACER')[0]
    placers = placer_topgrp.placers.get()
    pm.select(d=1)
    newbones = []

    #TODO: return top spine bone so clavicles know what to parent to
    for p in placers:
        # first, create a joint at each placer
        p = pm.ls(p)[0]
        bone = pm.joint(n=f'{p.replace("_bone_placer","")}', p=p.getRotatePivot(ws=1))
        pm.select(d=1)
        newbones.append(bone)
        if p == placers[0]:
            continue
        if p != placers[-1]:
            # get x-axis by getting vector to child joint
            childbone = pm.ls(placers[placers.index(p)+1])[0]
            bone_t = p.getRotatePivot(ws=1)
            xvec = childbone.getRotatePivot(ws=1) - bone_t
            xvec.normalize()
            zvec = pm.ls(f'{p}_upVector')[0].getRotatePivot(ws=1) - bone_t
            yvec = zvec ^ xvec
        # set new bone's orientation
        m = pm.dt.Matrix(list(xvec) + [0],
                         list(yvec) + [0],
                         list(zvec) + [0],
                         [0, 0, 0, 1])

        tm = pm.dt.TransformationMatrix(m)
        rot_euler = tm.getRotation()
        rot_euler = ([i * autorig.RAD2DEG for i in rot_euler])
        bone.jointOrient.set(rot_euler)

    for b in newbones:
        if newbones.index(b) != 0:
            b.setParent(newbones[newbones.index(b)-1])


build_spine_bones_from_placer('SPINE')
build_limb_bones_from_placer('L', 'ARM')
build_limb_bones_from_placer('R', 'ARM')
build_limb_bones_from_placer('L', 'LEG')
build_limb_bones_from_placer('R', 'LEG')
