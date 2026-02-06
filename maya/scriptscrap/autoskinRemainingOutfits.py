import os

folderlist = [
"Q:\\Avatar\\looks\\80s\\", 
"Q:\\Avatar\\looks\\adventurer\\", 
"Q:\\Avatar\\looks\\astronaut\\", 
"Q:\\Avatar\\looks\\athletic\\", 
"Q:\\Avatar\\looks\\basketball\\", 
"Q:\\Avatar\\looks\\beach\\", 
"Q:\\Avatar\\looks\\bohemian\\", 
"Q:\\Avatar\\looks\\businesscasual\\", 
"Q:\\Avatar\\looks\\casual\\", 
"Q:\\Avatar\\looks\\casual02\\", 
"Q:\\Avatar\\looks\\casual03\\", 
"Q:\\Avatar\\looks\\club\\", 
"Q:\\Avatar\\looks\\diadelosmuertos\\", 
"Q:\\Avatar\\looks\\evening\\", 
"Q:\\Avatar\\looks\\firefighter\\", 
"Q:\\Avatar\\looks\\gangster\\", 
"Q:\\Avatar\\looks\\goth\\", 
"Q:\\Avatar\\looks\\highlands\\", 
"Q:\\Avatar\\looks\\hiphop\\", 
"Q:\\Avatar\\looks\\intel\\", 
"Q:\\Avatar\\looks\\jester\\", 
"Q:\\Avatar\\looks\\karate\\", 
"Q:\\Avatar\\looks\\lolita\\", 
"Q:\\Avatar\\looks\\luchador\\", 
"Q:\\Avatar\\looks\\mod\\", 
"Q:\\Avatar\\looks\\mori\\", 
"Q:\\Avatar\\looks\\nerd\\", 
"Q:\\Avatar\\looks\\police\\", 
"Q:\\Avatar\\looks\\punk\\", 
"Q:\\Avatar\\looks\\rockabilly\\", 
"Q:\\Avatar\\looks\\snow\\", 
"Q:\\Avatar\\looks\\student\\", 
"Q:\\Avatar\\looks\\summer\\", 
"Q:\\Avatar\\looks\\western\\", 
"Q:\\Avatar\\looks\\winter\\", 
"Q:\\Avatar\\looks\\ww1\\"
]



for folder in folderlist:
    if os.path.exists( folder + 'mesh\\' ):
        for asset in os.listdir( folder + 'mesh\\' ):
            fullassetpath =  folder + 'mesh\\' + asset
            if not os.path.exists( fullassetpath.replace('mesh', 'skin') ):
                try:
                    pm.newFile(f=1)
                    skinfile = fullassetpath.replace('mesh', 'skin')
                    gender = 'male' if asset.split('_')[0] == 'm' else 'female'
                    bindskel = "Q:/Avatar/skeleton/base_{0}_skel.ma".format( gender )
                    if not os.path.exists( folder + 'skin\\' ):
                        skindir = os.mkdir( folder + 'skin\\' )
                    # bind asset to bone set
                    pm.importFile( fullassetpath )
                    assetmesh = pm.ls( pm.listRelatives( pm.ls(type='mesh'), p=1 ) )[0]
                    skel = pm.createReference( bindskel, namespace="skel" )
                    pm.select("skel:BindBones_All", assetmesh, r=1)
                    newSkinCluster = pm.skinCluster( n='newSkinCluster', tsb=1, bm=1, sm=0, nw=1, wd=1, mi=4, omi=1, dr=4.0, fnw=1 )
                    
                    # reference combinedbody 
                    combinedbody = "Q:\\Avatar\\anatomy\\base_{0}\\skin\\base_{0}_combined_001_skin.ma".format( gender )
                    combinedbodyref = pm.createReference( combinedbody, namespace="combinedbody" )
                    for node in combinedbodyref.nodes():
                        if pm.nodeType( node ) == 'skinCluster':
                            sourceskin = node
                    # copy weights from combinedbody to asset
                    pm.copySkinWeights( ss=sourceskin, ds=newSkinCluster, noMirror=1, surfaceAssociation="closestPoint", 
                        influenceAssociation = ("label", "closestJoint", "oneToOne" ), normalize=1 )
                    combinedbodyref.remove()
                    # saveas filename_skin.ma in /skin folder
                    pm.saveAs( skinfile )
                except:
                    print("it farted")
            else:
                pass