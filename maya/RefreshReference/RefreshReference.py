"""
To Run:
1) Select mesh or meshes to refresh
2) run python command:
    > RefreshReference(cmds.ls(sl=1), Gender)  # Gender = 'Male' or 'Female'
"""
import maya.cmds as cmds
import maya.mel as mel
import os

def RefreshReference(sel=cmds.ls(sl=1), gender='Male'):
    weights_folder = 'Q://Avatar//Release_5//Characters//{0}//Meshes//Weights//'.format(gender)
    if not os.access(weights_folder, os.F_OK):
        os.mkdir(weights_folder)

    for avatar_mesh in sel:
        print "****** " + avatar_mesh + " STARTED ******"
        ref_name = cmds.ls(avatar_mesh, sns=1)[1]
        
        # clean up reference foster parents
        if cmds.ls('*' + ref_name + '*', type='fosterParent'):
            foster = cmds.ls('*' + ref_name + '*', type='fosterParent')[0]
            cmds.delete(foster)

        # if avatar_mesh is has linden nodes under it, parent Linden Nodes to temp grp
        linden_nodes = []
        tmp_grp = cmds.group(n='tmp_grp', em=1)
        for child in cmds.listRelatives(avatar_mesh, children=1):
            if cmds.objectType(child)[:8] == 'khLinden':
                cmds.parent(child, tmp_grp, r=1, s=1)
                linden_nodes.append(child)
            else:
                pass

        # make sure mesh is skinned and save out weights
        try:
            cmds.skinCluster(avatar_mesh, q=1, inf=1)
            weight_file = weights_folder + avatar_mesh.split(':')[1] + '.weights'
            cmds.select(avatar_mesh, r=1) 
            mel.eval('scSaveWeights -roundOff 4 -action "export" -file "{0}"'.format(weight_file))
        except:
            cmds.delete(tmp_grp)
            print avatar_mesh + ' NOT SKINNED! ***** '
            break

        # unload reference
        ref = cmds.referenceQuery(avatar_mesh, f=1)
        cmds.file(ref, rr=1, f=1)

        # reload reference
        cmds.file(ref, r=1, type='mayaAscii', f=1, ns= ref_name)
        
        # rebind to skel
        cmds.skinCluster('Skel:root', avatar_mesh, mi=4, omi=1, dr=4.5, bm=0, sm=0, nw=1, wd=0, rui=0 )[0]

        # reapply weights
        cmds.select(avatar_mesh, r=1) 
        mel.eval('scSaveWeights -roundOff 4 -action "import" -file "{0}"'.format(weight_file))
        
        # re-add Linden nodes if necessary
        if len(linden_nodes) > 0:
            cmds.parent(linden_nodes, avatar_mesh, r=1, s=1)
        cmds.delete(tmp_grp)
        
        print "****** " + avatar_mesh + " REFRESHED ******"