import pymel.core as pm
from collections import OrderedDict

main_menu = [
    ('Open File', 'hhu.openFileDialogInSceneDir()'),
    ('Save As', 'hhu.saveAsDialogInSceneDir()'),
    ('Copy Filepath', 'hhu.fileinfo_to_clipboard()'),
    ('Open Folder Here', 'import os;os.startfile(pm.sceneName().dirname().truepath())'),]
util_menu = [
    # ('Copy Filepath', 'hhu.fileinfo_to_clipboard()'),
    # ('Open Folder Here', 'import os;os.startfile(pm.sceneName().dirname().truepath())'),
    ('Unlock and Delete Node(s)', 'hhu.unlockAndDeleteSelected()'),
    ('Close All Windows', 'hhu.close_all_windows()'),
    ('Delete All Layers', 'hhu.delete_all_layers()'),
    ('Rename File Nodes', 'hhu.rename_file_nodes()'),
    ('Remove ALL References', 'hhu.remove_references()'),
    ('Delete All Namespaces', 'hhu.delete_all_namespaces()')]
anim_menu = [
    ('Set Frame Range', 'hhu.set_frame_range()')]
    # ('Shift Keyframes', 'hhu.shift_keyframes()'),
    # ('Break Out Anims', 'hhu.break_out_anims()'),
rig_menu = [
    # add scSaveWeights, Skinner, FixlerWeightHammer
    ('Constraints', 'pm.menuItem(l="Constraints",subMenu=1);pm.menuItem(l="Parent with MO");pm.menuItem(l="Parent");'
                    'pm.setParent("..",menu=1)'),
    ('lock_all_skin_weights', 'hhu.lock_all_skin_weights()'),
    ('unlock_all_skin_weights', 'hhu.unlock_all_skin_weights()'),
    ('bind_multi_meshes', 'hhu.bind_multi_meshes()'),
    ('label_joint', 'hhu.label_joint()'),
    ('createLocatorAtSelection', 'hhu.createLocatorAtComponent()'),
    ('createJointAtSelection', 'hhu.createJointAtObject()'),
    ('resave_bind_pose', 'hhu.resave_bind_pose()'),
    ('vectors_are_coplanar', 'hhu.vectors_are_coplanar()'),
    ('toggle_sel_bone_controller', 'hhu.toggle_sel_bone_controller()'),
    ('mirror_joint', 'hhu.mirror_joint()'),
    ('mirror_selected_curves', 'hhu.mirror_selected_curves()')]
model_menu = [
    ('copy_paste_vert_norms', 'hhu.copy_paste_vert_norms()')]


def update_menu(top_menu):
    """Update the top level HH menu"""
    # Clears all items under the top level menu
    top_menu.deleteAllItems()

    # Populate the linden menu
    with top_menu:
        for mitem in main_menu:
            pm.menuItem(label=mitem[0],
                        command=mitem[1])

        pm.menuItem(divider=True)
        pm.menuItem(label="Utilities", subMenu=True)
        for mitem in util_menu:
            pm.menuItem(label=mitem[0],
                        command=mitem[1])
        pm.setParent('..', menu=True)

        pm.menuItem(label="Animation", subMenu=True)
        for mitem in anim_menu:
            pm.menuItem(label=mitem[0],
                        command=mitem[1])
        pm.setParent('..', menu=True)

        pm.menuItem(label="Rigging", subMenu=True)
        for mitem in rig_menu:
            pm.menuItem(label=mitem[0],
                        command=mitem[1])
        pm.setParent('..', menu=True )

        pm.menuItem(label="Modeling", subMenu=True)
        for mitem in model_menu:
            pm.menuItem(label=mitem[0],
                        command=mitem[1])
        pm.setParent('..', menu=True )
