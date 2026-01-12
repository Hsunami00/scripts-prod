""" Maya configuration/settings.
System environment changes should be made in sitesetup.py. """

import pymel.core as pm
import maya.cmds as cmds
import hh_tools.hh_menu as hh_menu

MAYA_VERSION = pm.about(version=True)


def setupMenu():
    # Get main window to parent menu to
    main_window = pm.getMelGlobal('string', 'gMainWindow')

    # # Deletes the top level HH menu if it exists already
    # try:
    #     if pm.menu('hh_menu', exists=True):
    #         pm.deleteUI('hh_menu')
    # except:
    #     pass

    # Updates HH menu and other menu items based off of Maya version.
    top_menu = pm.menu('hh_menu',
               parent=main_window,
               tearOff=True,
               label='-=* HH *=-',
               version=MAYA_VERSION
               )
    hh_menu.update_menu(top_menu)


def force_load_plugin(name):
    if not cmds.pluginInfo(name, query=True, loaded=True):
        cmds.loadPlugin(name)