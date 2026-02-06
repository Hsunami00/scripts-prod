from maya import cmds  
anim_curves = cmds.ls(type=['animCurveTA', 'animCurveTL', 'animCurveTT', 'animCurveTU'])  
for each in anim_curves:  
    cmds.keyframe(each, edit=True, relative=True, timeChange=-39)