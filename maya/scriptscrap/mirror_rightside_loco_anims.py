
filelist = [
"d:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Art\\Avatar\\anatomy\\base_female\\animations\\walk_crouching_right.ma"]

def mirror_anim():
    for animfile in filelist:
        saveFileName = animfile.replace("right", "left")
        
        pm.newFile(f=1)
        cmds.currentUnit(l='cm', time='ntsc')
        
        refanim = pm.createReference(animfile, namespace=":refanim", force=True)
        import rigging.utils as rutils;rutils.resetSkelRotate()
        pm.select('refanim:skel:root', r=1)
        cmds.playbackOptions(max=cmds.keyframe(q=1)[-1], fps=30, aet=cmds.keyframe(q=1)[-1])
        endframe = cmds.playbackOptions(q=1, max=1 )
        
        
        animgrp = pm.group( n='original' )
        # pm.parent( pm.ls('refanim:skel:root'), animgrp )
        animgrp.setScale([-1, 1, 1])
        
        skelReference = pm.createReference("Q:\\Avatar\\skeleton\\base_female_skel.ma", namespace=":skel", force=True)
        
        skelroot = pm.ls('skel:root')[0]
        pm.select(skelroot, hi=1)
        dest_joints = pm.ls(sl=1)
        # animroot = pm.ls('refanim:skel:root')[0]
                
        for jnt in dest_joints:
            if "L_" in str(jnt):
                pm.pointConstraint(("refanim:" + jnt).replace("L_", "R_"), jnt, mo=0)
                pm.orientConstraint(("refanim:" + jnt).replace("L_", "R_"), jnt, mo=1)
            elif "R_" in str(jnt):
                pm.pointConstraint(("refanim:" + jnt).replace("R_", "L_"), jnt, mo=0)
                pm.orientConstraint(("refanim:" + jnt).replace("R_", "L_"), jnt, mo=1)
            else:
                pm.pointConstraint(("refanim:" + jnt), jnt, mo=0)
                pm.orientConstraint(("refanim:" + jnt), jnt, mo=1)
        
        #bake dest_joints
        
        pm.bakeResults( dest_joints, t= (1,endframe) , simulation = 1, sparseAnimCurveBake = 0, minimizeRotation = 1 )

        # delete cnsts
        pm.delete( pm.ls(type='constraint'))
        refanim.remove()
        pm.delete(animgrp)
        pm.saveAs( saveFileName, f=1 )
        
mirror_anim()