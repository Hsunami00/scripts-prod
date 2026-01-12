import hh_autorig.hh_utils as hhu2


shoulder_multMatrix = pm.ls('shoulder_multMatrix')[0]
shoulder_L = pm.ls('shoulder_L')[0]
elbow_control_L = pm.ls('elbow_control_L')[0]
elbow_multMatrix = pm.ls('elbow_multMatrix')[0]
elbow_L = pm.ls('elbow_L')[0]
wrist_control_L = pm.ls('wrist_control_L')[0]
wrist_L = pm.ls('wrist_L')[0]
wrist_multMatrix = pm.ls('wrist_multMatrix')[0]
L_pole_vector_loc = pm.ls('L_pole_vector_loc')[0]
L_pole_vector = pm.ls('L_pole_vector')[0]
arm_ikHandle_L = pm.ls('arm_ikHandle_L')[0]




### switch to FK ### 

# turn off IK blend 
arm_ikHandle_L.ikBlend.set(0)

# controls unfollow bones 


# IK control follows wrist bone 


# connect bones to FK controls 
shoulder_multMatrix.matrixSum >> shoulder_L.offsetParentMatrix
elbow_multMatrix.matrixSum >> elbow_L.offsetParentMatrix
wrist_multMatrix.matrixSum >> wrist_L.offsetParentMatrix


### switch to IK ###

# disconnect FK controllers 
pm.disconnectAttr(shoulder_multMatrix.matrixSum, shoulder_L.offsetParentMatrix)
pm.disconnectAttr(elbow_multMatrix.matrixSum, elbow_L.offsetParentMatrix)
pm.disconnectAttr(wrist_multMatrix.matrixSum, wrist_L.offsetParentMatrix)

# snap pole vector to loc 

# snap ik controller to wrist 

# FK controllers follow bones 

# turn on IK blend 
arm_ikHandle_L.ikBlend.set(1)
