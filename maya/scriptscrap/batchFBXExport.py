####################################################################################################
## BATCH FBX EXPORTER
####################################################################################################
#exportLoc = "Q:/Avatar/export/looks/"
sourceFolder = "Q:/Avatar/looks/rockabilly"
rebuildBindPose = False

cmds.file(prompt=False)
allSkinnedFiles = dict()
#Only get the skinned maya files from the top level directory
allSkinnedFiles = rutils.getFilesFromPath('skin', sourceFolder)

errorList = list()
completedList = list()

#Loops through dictionary of skinned maya files
for fileName, filePath in allSkinnedFiles.iteritems():
    #Extract necessary info from dictionary
    nameScheme = fileName.split('_')
    lookName = nameScheme[3]
    fbxName = fileName.replace('.ma', '.fbx')
    exportFilePath =  os.path.join(sourceFolder, "export", fbxName)
    exportPath = os.path.dirname(exportFilePath)
    
    #Check to see if the file exists.  If it doesn't exist, then just go through the process and create a new one.
    if os.path.isfile(exportFilePath):
        #Makes sure the FBX file is new, or is checked out in P4
        if not os.access(exportFilePath, os.W_OK): #Cheap way to determine if a file is checked out.
            message = (exportFilePath + ": This file is not checked out.  Skipped FBX export.")
            errorList.append(message)
            continue
    
    #Make the directory if it doesn't exist already
    try:
        os.makedirs(exportPath)
    except OSError:
        if not os.path.isdir(exportPath):
            raise
        
    #Open the looks skin file and export to the correct fbx file path
    try:
        pm.openFile(filePath, force=True)
        print "FILE OPENED SUCCESSFULLY"
    except:
        print "FILE FAILED TO OPEN COMPLETELY.  CONTINUING WITH EXPORT OF NEXT FILE"
        
    #Redo the bindPose in order to fix FBX Export issues
    if rebuildBindPose:
        #Should add checkout function here in the future.
        assetRoot = rutils.getAssetRootNodes()[0]
        skelRoot = assetRoot.skelRoot.get()
        rutils.rebuildBindPose(skelRoot)
        pm.saveFile()

    #Set FBX settings before export command
    try:
        pm.mel.FBXResetExport()
        pm.mel.FBXExportAnimationOnly(v=False)
        pm.mel.FBXExportCameras(v=False)
        pm.mel.FBXExportConstraints(v=False)
        pm.mel.FBXExportHardEdges(v=False)
        pm.mel.FBXExportInputConnections(v=True)
        pm.mel.FBXExportShapes(v=True)
        pm.mel.FBXExportSkins(v=True)
        pm.mel.FBXExportReferencedAssetsContent(v=True)
        pm.mel.FBXExportShapes(v=True)
        pm.mel.FBXExportSkeletonDefinitions(v=True)
        pm.mel.FBXExportSmoothMesh(v=True)
        pm.mel.FBXExportInAscii (v=True)
        pm.mel.FBXExport(f=exportFilePath) #Actual export command
        #print "FBX EXPORTED SUCCESSFULLY"
        message = (exportFilePath + ": FBX EXPORTED SUCCESSFULLY")
        completedList.append(message)
    except:
        print "FBX EXPORT FAILED.  FIX IT!!!"
    
print "================================================================================================================="
print "=  BATCH FBX EXPORT                                                                                             ="
print "================================================================================================================="
for item in completedList:
    print item
print "-----------------------------------------------------------------------------------------------------------------"
for item in errorList:
    print item
cmds.file(prompt=True)