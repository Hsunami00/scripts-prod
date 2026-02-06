import os
import maya.cmds as cmds


def affectFileSelection():
    try:
        # Choose file to open
        multipleFilters = "Maya Files (*.ma *.mb);;Maya ASCII (*.ma);;Maya Binary (*.mb);;All Files (*.*)"
        filesToOpen = cmds.fileDialog2(fileFilter=multipleFilters, dialogStyle=2, fileMode=4)
        
        for animfile in filesToOpen:
            # Open file
            cmds.file( animfile, open=True, force=True, prompt=False )

            # Do stuff
            newRefName = cmds.referenceQuery('FemaleRN', f=1).replace('F:/Perforce/Hsunami_PC/Hsunami_EDGE/Sansar/SharedBranches/ContentPipeline/Art/Characters/Female', '..')
            cmds.file( newRefName, loadReference='FemaleRN', options='v=0;')
            cmds.file(force=True, type='mayaAscii', save=True )
            
            # Save file
            cmds.file(force=True, type='mayaAscii', save=True )
    except:
        print "Not done"
