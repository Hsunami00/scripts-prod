import os
import pymel.core as pm

anims = [ 
"C:\\temp\\exported\\m_l_w_walkLongM001.ma", 
"C:\\temp\\exported\\m_l_r_runJogM001.ma", 
"C:\\temp\\exported\\m_l_j_jumpHangM001.ma", 
"C:\\temp\\exported\\m_i_i_standIdleM001.ma", 
"C:\\temp\\exported\\m_i_i_sitEasyM001_stopW.ma", 
"C:\\temp\\exported\\m_i_i_sitEasyM001_stopS.ma", 
"C:\\temp\\exported\\m_i_i_sitEasyM001_stopN.ma", 
"C:\\temp\\exported\\m_i_i_sitEasyM001_stopE.ma", 
"C:\\temp\\exported\\m_i_i_sitEasyM001_startW.ma", 
"C:\\temp\\exported\\m_i_i_sitEasyM001_startS.ma", 
"C:\\temp\\exported\\m_i_i_sitEasyM001_startN.ma", 
"C:\\temp\\exported\\m_i_i_sitEasyM001_startE.ma", 
"C:\\temp\\exported\\m_i_i_sitEasyM001_loop001.ma", 
"C:\\temp\\exported\\m_i_i_dressUpIdleM001.ma", 
"C:\\temp\\exported\\m_e_l_standSleepM001.ma", 
"C:\\temp\\exported\\m_e_l_standSadM001.ma", 
"C:\\temp\\exported\\m_e_l_standMadM001.ma", 
"C:\\temp\\exported\\m_e_l_standLoveM001.ma", 
"C:\\temp\\exported\\m_e_l_standLaughM001.ma", 
"C:\\temp\\exported\\m_e_l_standHappyM001.ma", 
"C:\\temp\\exported\\m_e_l_sitEasySleepM001_loop001.ma", 
"C:\\temp\\exported\\m_e_l_sitEasySadM001_loop001.ma", 
"C:\\temp\\exported\\m_e_l_sitEasyMadM001_loop001.ma", 
"C:\\temp\\exported\\m_e_l_sitEasyLoveM001_loop001.ma", 
"C:\\temp\\exported\\m_e_l_sitEasyLaughM001_loop001.ma", 
"C:\\temp\\exported\\m_e_l_sitEasyHappyM001_loop001.ma", 
"C:\\temp\\exported\\m_i_i_dressUpIdleF001.ma", 
"C:\\temp\\exported\\m_s_c_hugPolitePF001_stop.ma", 
"C:\\temp\\exported\\m_s_c_hugPolitePF001_start.ma", 
"C:\\temp\\exported\\m_s_c_hugPolitePF001_loop001.ma", 
"C:\\temp\\exported\\m_s_c_hugPoliteCF001_stop.ma", 
"C:\\temp\\exported\\m_s_c_hugPoliteCF001_start.ma", 
"C:\\temp\\exported\\m_s_c_hugPoliteCF001_loop001.ma", 
"C:\\temp\\exported\\m_s_c_hitPF001.ma", 
"C:\\temp\\exported\\m_s_c_hitCF001.ma", 
"C:\\temp\\exported\\m_s_c_hifivePF001.ma", 
"C:\\temp\\exported\\m_s_c_hifiveCF001.ma", 
"C:\\temp\\exported\\m_l_w_walkLongF001.ma", 
"C:\\temp\\exported\\m_l_w_holdObjectHandRF001reach.ma", 
"C:\\temp\\exported\\m_l_w_holdObjectHandRF001place.ma", 
"C:\\temp\\exported\\m_l_w_holdObjectHandRF001.ma", 
"C:\\temp\\exported\\m_l_r_runJogF001.ma", 
"C:\\temp\\exported\\m_l_j_jumpHangF001.ma", 
"C:\\temp\\exported\\m_i_i_standIdleF001.ma", 
"C:\\temp\\exported\\m_i_i_sitEasyF001_stopW.ma", 
"C:\\temp\\exported\\m_i_i_sitEasyF001_stopS.ma", 
"C:\\temp\\exported\\m_i_i_sitEasyF001_stopN.ma", 
"C:\\temp\\exported\\m_i_i_sitEasyF001_stopE.ma", 
"C:\\temp\\exported\\m_i_i_sitEasyF001_startW.ma", 
"C:\\temp\\exported\\m_i_i_sitEasyF001_startS.ma", 
"C:\\temp\\exported\\m_i_i_sitEasyF001_startN.ma", 
"C:\\temp\\exported\\m_i_i_sitEasyF001_startE.ma", 
"C:\\temp\\exported\\m_i_i_sitEasyF001_loop001.ma", 
"C:\\temp\\exported\\m_e_l_standSleepF001.ma", 
"C:\\temp\\exported\\m_e_l_standSadF001.ma", 
"C:\\temp\\exported\\m_e_l_standMadF001.ma", 
"C:\\temp\\exported\\m_e_l_standLoveF001.ma", 
"C:\\temp\\exported\\m_e_l_standLaughF001.ma", 
"C:\\temp\\exported\\m_e_l_standHappyF001.ma", 
"C:\\temp\\exported\\m_e_l_sitEasySleepF001_loop001.ma", 
"C:\\temp\\exported\\m_e_l_sitEasySadF001_loop001.ma", 
"C:\\temp\\exported\\m_e_l_sitEasyMadF001_loop001.ma", 
"C:\\temp\\exported\\m_e_l_sitEasyLoveF001_loop001.ma", 
"C:\\temp\\exported\\m_e_l_sitEasyLaughF001_loop001.ma", 
"C:\\temp\\exported\\m_e_l_sitEasyHappyF001_loop001.ma"
]
        
def export_fbx():
    # gender_dir = os.path.dirname(pm.sceneName()).split('/')[-2]
    # dirname = "q:\\Avatar\\anatomy\\%s\\export\\animations" % gender_dir
    dirname = 'C:\\Temp\\exported\\'
    
    fbxfilename = "/" + os.path.basename(pm.sceneName()).replace('.ma', '.fbx')
    export = dirname + fbxfilename
    # pm.mel.FBXResetExport()
    # pm.mel.FBXExportAnimationOnly(v=False)
    # pm.mel.FBXExportCameras(v=False)
    # pm.mel.FBXExportConstraints(v=False)
    # pm.mel.FBXExportHardEdges(v=False)
    # pm.mel.FBXExportInputConnections(v=True)
    # pm.mel.FBXExportShapes(v=True)
    # pm.mel.FBXExportSkins(v=True)
    # pm.mel.FBXExportReferencedAssetsContent(v=True)
    # pm.mel.FBXExportShapes(v=True)
    # pm.mel.FBXExportSkeletonDefinitions(v=True)
    # pm.mel.FBXExportSmoothMesh(v=True)
    pm.mel.FBXExportInAscii (v=False )
    pm.select( pm.ls( 'root' )[0])
    pm.dagPose( bp=1, r=1 )
    pm.exportAll( export, force=1, options="v=0;", type="FBX export", pr=1, ea=1 )
    
for filename in anims:
    pm.openFile( filename, f=1 )
    export_fbx()
    pm.newFile(f=1)