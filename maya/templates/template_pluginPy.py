import maya.api.OpenMaya as om
import maya.cmds as cmds


def maya_useNewAPI():
    """
    Tell Maya this plugin uses Python API 2.0
    """
    pass



def initializePlugin(plugin):
    """
    """
    vendor = "Hsunami"
    version = "1.0.0"

    plugin_fn = om.MFnPlugin(plugin, vendor, version)

    # try-except registering cmd/node


def uninitializePlugin(plugin):
    """
    """
    plugin_fn = om.MFnPlugin(plugin)

    # try-except deregistering cmd/node


if __name__ == "__main__":
    plugin_name = " .py"
    cmds.evalDeferred('if cmds.pluginInfo("{0}", q=True, loaded=True): cmds.unloadPlugin("{0}")'.format(plugin_name))
    cmds.evalDeferred('if not cmds.pluginInfo("{0}", q=True, loaded=True): cmds.loadPlugin("{0}")'.format(plugin_name))



