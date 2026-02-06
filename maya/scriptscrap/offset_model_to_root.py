import pymel.core as pm
import main.p4cmd as p4
filelist = [
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_female\\Animations\\jog_BL.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_female\\Animations\\jog_BR.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_female\\Animations\\jog_FL.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_female\\Animations\\jog_FR.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_female\\Animations\\jog_backwards.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_female\\Animations\\jog_left.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_female\\Animations\\jog_right.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_female\\Animations\\walk_BL.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_female\\Animations\\walk_BR.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_female\\Animations\\walk_FL.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_female\\Animations\\walk_FR.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_female\\Animations\\walk_backwards.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_female\\Animations\\walk_left.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_female\\Animations\\walk_right.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_female\\Animations\\walk_strafeL.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_female\\Animations\\walk_strafeR.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_male\\Animations\\jog_BL.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_male\\Animations\\jog_BR.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_male\\Animations\\jog_FL.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_male\\Animations\\jog_FR.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_male\\Animations\\jog_backwards.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_male\\Animations\\jog_forward.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_male\\Animations\\jog_left.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_male\\Animations\\jog_right.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_male\\Animations\\run_forward.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_male\\Animations\\walk.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_male\\Animations\\walk_BL.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_male\\Animations\\walk_BR.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_male\\Animations\\walk_FL.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_male\\Animations\\walk_FR.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_male\\Animations\\walk_backwards.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_male\\Animations\\walk_left.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_male\\Animations\\walk_right.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_male\\Animations\\walk_strafeL.ma", 
            "D:\\Perforce\\Hsunami_PC\\Hsunami_EDGE\\Sansar\\SharedBranches\\Engine\\Art\\Characters\\base_male\\Animations\\walk_strafeR.ma"
            ]

def offset_model_to_root():
    # delete other locators
    lst = [pm.listRelatives(loc, p=1)[0] for loc in pm.ls(type='locator') if ( pm.listRelatives(loc, p=1)[0] != 'temploc' )]
    pm.delete(lst)
    
    # put temploc and skel:root in group
    temploc = pm.ls("temploc")[0]
    skelroot = pm.ls('skel:root')[0]
    grp = pm.group( temploc, skelroot, n='offset' )
    pm.select(d=1)

    # move group pivot to locomotion_vector
    loc = temploc
    pm.move(grp, -loc.localPosition.get() )
    

for file in filelist:
    pm.openFile( file, f=1 )
    p4.p4CurrentScene(sync=True, edit=True)
    offset_model_to_root()
    pm.saveAs( file, f=1 )