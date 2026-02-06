import importlib
import hh_autorig.autorig as autorig
import hh_autorig.widgets.widgets as widgets
importlib.reload(autorig)
importlib.reload(widgets)


pm.newFile(f=1)

ar = autorig.Autorig('MyTestRig')
L_arm_placer = ar.build_arm_placer('L', 1)
R_arm_placer = ar.build_arm_placer('R', 1)

L_leg_placer = ar.build_leg_placer('L', 1)
R_leg_placer = ar.build_leg_placer('R', 1)

spine_placer = ar.build_spine_placer(vertebrae=5, neck=2, stretchy=1)