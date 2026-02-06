//Maya ASCII 2024 scene
//Name: autorig_placers.ma
//Last modified: Mon, Feb 02, 2026 04:35:42 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26200)";
fileInfo "UUID" "6EC3DDB0-43AE-E256-5292-F6B4DF7D5EEC";
createNode transform -s -n "persp";
	rename -uid "3D986390-4557-2CDD-CAD2-C09434336CA0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 74.447532772121079 -179.27555711674768 144.20802751258969 ;
	setAttr ".r" -type "double3" 71.061647270397856 0 22.599999999999955 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "2EECEF4B-458C-0B47-4848-3C9ABEDB24CB";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 240.47906040633018;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "002F4B44-4A87-B8E8-C9CD-259522755110";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E4A23801-4928-8DBC-578D-1FB80F5B372E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "9F337CCB-499E-98CC-06F2-E89A5168CB3D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -1000.1 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8689D06C-4470-B28B-B9C4-98B280F78F87";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "1899F6CD-4919-55D4-D7A1-348F38E1FBDD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 90 0 90 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "81B6CF3E-456E-AFEF-E32F-FAA2D0717171";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "spaces_GRP";
	rename -uid "084A72CA-4321-3621-B297-8B818A29DD6A";
createNode transform -n "ARM_L_MAIN";
	rename -uid "BF985AC0-4F24-1A94-B0D3-808623063BAD";
createNode transform -n "ARM_L_RIG_PLACER" -p "ARM_L_MAIN";
	rename -uid "788CC8FD-49B5-6E18-559E-46837FFB3525";
	addAttr -ci true -m -sn "placers" -ln "placers" -dt "string";
	addAttr -ci true -sn "placertype" -ln "placertype" -dt "string";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 30 0 140 ;
	setAttr -s 4 ".placers";
	setAttr ".placers[0]" -type "string" "clavicle_bone_placer_L";
	setAttr ".placers[1]" -type "string" "armUpper_bone_placer_L";
	setAttr ".placers[2]" -type "string" "armLower_bone_placer_L";
	setAttr ".placers[3]" -type "string" "hand_bone_placer_L";
	setAttr ".placertype" -type "string" "arm";
	setAttr ".connector" -type "string" "spine3";
	setAttr ".stretchy" yes;
createNode nurbsCurve -n "grp_shapeShape1" -p "ARM_L_RIG_PLACER";
	rename -uid "B60C232D-466D-1649-A70E-078F7C1B6FFA";
	setAttr -k off ".v";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0 -7.5 7.5
		0 7.5 7.5
		0 7.5 -7.5
		0 -7.5 -7.5
		0 -7.5 7.5
		;
createNode transform -n "ARM_L_z_vec_LOCS" -p "ARM_L_RIG_PLACER";
	rename -uid "E0B7F6F4-46F5-2440-8196-809CF25354F9";
	setAttr ".t" -type "double3" -30 0 -140 ;
createNode transform -n "clavicle_bone_placer_L_loc" -p "ARM_L_z_vec_LOCS";
	rename -uid "6A9CA37B-42BB-8A03-1264-14BBB7B8740C";
	setAttr ".v" no;
	setAttr ".it" no;
createNode locator -n "clavicle_bone_placer_L_locShape" -p "clavicle_bone_placer_L_loc";
	rename -uid "51D454EE-491F-1BA1-6B69-C5AF451E137F";
	setAttr -k off ".v";
createNode transform -n "armUpper_bone_placer_L_loc" -p "ARM_L_z_vec_LOCS";
	rename -uid "1A964CA7-4B3A-1B5A-31DC-96A4E0C83CA3";
	setAttr ".v" no;
	setAttr ".it" no;
createNode locator -n "armUpper_bone_placer_L_locShape" -p "armUpper_bone_placer_L_loc";
	rename -uid "A11D7AB4-457A-0BFF-BC86-6799AEDF3334";
	setAttr -k off ".v";
createNode transform -n "armLower_bone_placer_L_loc" -p "ARM_L_z_vec_LOCS";
	rename -uid "7A402318-4F7D-8CC0-B0BD-02AEAE2EF8C8";
	setAttr ".v" no;
	setAttr ".it" no;
createNode locator -n "armLower_bone_placer_L_locShape" -p "armLower_bone_placer_L_loc";
	rename -uid "245E894C-458D-57C7-490E-408CFD4345B0";
	setAttr -k off ".v";
createNode transform -n "hand_bone_placer_L_loc" -p "ARM_L_z_vec_LOCS";
	rename -uid "6937AD2F-49B0-448C-AE5E-ECB37685D186";
	setAttr ".v" no;
	setAttr ".it" no;
createNode locator -n "hand_bone_placer_L_locShape" -p "hand_bone_placer_L_loc";
	rename -uid "C554B346-477C-72A6-62AD-15999E3126E8";
	setAttr -k off ".v";
createNode transform -n "placercluster0_arm_LHandle" -p "ARM_L_RIG_PLACER";
	rename -uid "B2A9E4A3-4341-85B6-643D-8ABBCD96A437";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -21 0 -1 ;
	setAttr -av ".tx";
	setAttr -av ".tz";
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "placercluster0_arm_LHandleShape" -p "placercluster0_arm_LHandle";
	rename -uid "ABBBF02F-4073-5854-9B80-00A2AB5C345B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "placercluster0_arm_LHandle_parentConstraint1" -p "placercluster0_arm_LHandle";
	rename -uid "E64A42A9-4F63-1C35-FCFB-D28BC505B309";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "clavicle_bone_placer_LW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 9 0 139 ;
	setAttr -k on ".w0";
createNode transform -n "placercluster1_arm_LHandle" -p "ARM_L_RIG_PLACER";
	rename -uid "351F4F0B-4BB1-1309-2D51-F094B37903EC";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "placercluster1_arm_LHandleShape" -p "placercluster1_arm_LHandle";
	rename -uid "D0333A78-4F8D-F815-5338-1A8A494827E0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "placercluster1_arm_LHandle_parentConstraint1" -p "placercluster1_arm_LHandle";
	rename -uid "F5631E60-452A-DAFF-BE7D-91939FE3041D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armUpper_bone_placer_LW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 27 0 139 ;
	setAttr -k on ".w0";
createNode transform -n "placercluster2_arm_LHandle" -p "ARM_L_RIG_PLACER";
	rename -uid "CB79045D-4319-5D80-9CD2-5BA34EF4DD03";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 5 0 1 ;
	setAttr ".sp" -type "double3" 5 0 1 ;
createNode clusterHandle -n "placercluster2_arm_LHandleShape" -p "placercluster2_arm_LHandle";
	rename -uid "49A8C0BE-4FB4-785F-5E7B-4DA1CF1D9A0A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 5 0 1 ;
createNode parentConstraint -n "placercluster2_arm_LHandle_parentConstraint1" -p "placercluster2_arm_LHandle";
	rename -uid "66FA4706-4C46-E351-3D4F-EDAA81C9B98D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armLower_bone_placer_LW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 45 5 139 ;
	setAttr -k on ".w0";
createNode transform -n "placercluster3_arm_LHandle" -p "ARM_L_RIG_PLACER";
	rename -uid "7A5E64F7-487A-3BE1-1402-A08A0E201140";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 7 0 1 ;
	setAttr ".sp" -type "double3" 7 0 1 ;
createNode clusterHandle -n "placercluster3_arm_LHandleShape" -p "placercluster3_arm_LHandle";
	rename -uid "2C07361E-4B69-B8F7-F8FE-F581543CD2D5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 7 0 1 ;
createNode parentConstraint -n "placercluster3_arm_LHandle_parentConstraint1" -p "placercluster3_arm_LHandle";
	rename -uid "E6E9384C-4B4C-CB3A-B34B-7091756C5F4C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hand_bone_placer_LW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 63 0 139 ;
	setAttr -k on ".w0";
createNode transform -n "proxy_curve_arm_L" -p "ARM_L_RIG_PLACER";
	rename -uid "F3E49E0D-42E1-6A39-9005-84A700913FA0";
	setAttr -l on -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "proxy_curve_arm_LShape" -p "proxy_curve_arm_L";
	rename -uid "F861EF32-42CA-1E6D-364C-9384A6B88919";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "proxy_curve_arm_LShapeOrig" -p "proxy_curve_arm_L";
	rename -uid "6DD2B612-474F-D9E5-BF80-7CA904CE3373";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr -s 4 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "placercluster0_arm_L";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "placercluster1_arm_L";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".gtag[2].gtagnm" -type "string" "placercluster2_arm_L";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "cv[2]";
	setAttr ".gtag[3].gtagnm" -type "string" "placercluster3_arm_L";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "cv[3]";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		1 0 1
		3 0 1
		5 0 1
		7 0 1
		

		"gtag" 4
		"placercluster0_arm_L" 1 "cv[0]"
		"placercluster1_arm_L" 1 "cv[1]"
		"placercluster2_arm_L" 1 "cv[2]"
		"placercluster3_arm_L" 1 "cv[3]";
createNode transform -n "armUpper_bone_placer_L" -p "ARM_L_RIG_PLACER";
	rename -uid "A298B1A9-47F7-91A8-A778-2AA170B93350";
createNode nurbsCurve -n "armUpper_bone_placer_LShape1" -p "armUpper_bone_placer_L";
	rename -uid "240F3195-4E65-30CE-425C-C981C76532C1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 2
		0 -0.99999988079071045 1.7320507764816284
		0 -1.7320506572723389 0.99999994039535522
		0 -1.9999997615814209 0
		0 -1.7320506572723389 -0.99999994039535522
		0 -0.99999988079071045 -1.7320507764816284
		0 0 -2
		0 1 -1.7320507764816284
		0 1.732050895690918 -0.99999994039535522
		0 2 0
		0 1.732050895690918 0.99999994039535522
		0 1 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.99999988079071045 0 1.7320507764816284
		1.7320506572723389 0 0.99999994039535522
		1.9999997615814209 0 0
		1.7320506572723389 0 -0.99999994039535522
		0.99999988079071045 0 -1.7320507764816284
		0 0 -2
		-0.99999994039535522 0 -1.7320507764816284
		-1.7320507764816284 0 -0.99999994039535522
		-1.9999998807907104 0 0
		-1.7320507764816284 0 0.99999994039535522
		-0.99999994039535522 0 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 -0.70710670948028564 1.7320507764816284
		1.2247447967529297 -1.2247447967529297 0.99999994039535522
		1.4142134189605713 -1.4142134189605713 0
		1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710676908493042 0.70710676908493042 -1.7320507764816284
		-1.2247449159622192 1.2247449159622192 -0.99999994039535522
		-1.4142135381698608 1.4142135381698608 0
		-1.2247449159622192 1.2247449159622192 0.99999994039535522
		-0.70710676908493042 0.70710676908493042 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 0.70710670948028564 1.7320507764816284
		1.2247447967529297 1.2247447967529297 0.99999994039535522
		1.4142134189605713 1.4142134189605713 0
		1.2247447967529297 1.2247447967529297 -0.99999994039535522
		0.70710670948028564 0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		-1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		-1.4142134189605713 -1.4142134189605713 0
		-1.2247447967529297 -1.2247447967529297 0.99999994039535522
		-0.70710670948028564 -0.70710670948028564 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		;
createNode transform -n "armUpper_bone_placer_L_upVector_grp" -p "armUpper_bone_placer_L";
	rename -uid "4AC4978F-4124-C2B4-AA16-42B1BB9B8894";
createNode transform -n "armUpper_bone_placer_L_upVector" -p "armUpper_bone_placer_L_upVector_grp";
	rename -uid "964CC9D9-40DB-4E69-A5B6-108A757B7F0D";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0 7 ;
	setAttr ".sp" -type "double3" 0 0 7 ;
createNode nurbsCurve -n "armUpper_bone_placer_L_upVectorShape1" -p "armUpper_bone_placer_L_upVector";
	rename -uid "EB3D574E-46A6-934E-07E9-40883D9041E1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		1.0430812835693359e-08 0 7
		0.34999999999999998 0 7
		0.34999999999999998 0 8.4010731220245365
		0.7388755559921264 0 8.4010741233825676
		5.2154064178466794e-09 0 9.0380209445953366
		-0.7388755559921264 0 8.4010741233825676
		-0.34999999999999998 0 8.4010731220245365
		-0.34999999999999998 0 7
		1.0430812835693359e-08 0 7
		0 -0.34999999999999998 7
		0 -0.34999999999999998 8.4010731220245365
		0 -0.7388755559921264 8.4010741233825676
		5.2154064178466794e-09 0 9.0380209445953366
		0 0.7388755559921264 8.4010741233825676
		0 0.34999999999999998 8.4010731220245365
		0 0.34999999999999998 7
		1.0430812835693359e-08 0 7
		5.2154064178466794e-09 0 9.0380209445953366
		;
createNode transform -n "cluster1armUpper_bone_placer_L_upvecHandle" -p "armUpper_bone_placer_L_upVector_grp";
	rename -uid "67D99BFF-46A9-5497-D50A-C29A94F08997";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1armUpper_bone_placer_L_upvecHandleShape" -p "cluster1armUpper_bone_placer_L_upvecHandle";
	rename -uid "ED25E4E1-4025-9A51-A5C1-4A80698776B0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1armUpper_bone_placer_L_upvecHandle_parentConstraint1" 
		-p "cluster1armUpper_bone_placer_L_upvecHandle";
	rename -uid "73549B39-4C0D-2917-4788-36AE6C47DAAD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armUpper_bone_placer_LW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2armUpper_bone_placer_L_upvecHandle" -p "armUpper_bone_placer_L_upVector_grp";
	rename -uid "CF484650-490E-FED7-0068-108F2CF9B114";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2armUpper_bone_placer_L_upvecHandleShape" -p "cluster2armUpper_bone_placer_L_upvecHandle";
	rename -uid "0425E7D7-4367-AC1C-05E8-228538916B86";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2armUpper_bone_placer_L_upvecHandle_parentConstraint1" 
		-p "cluster2armUpper_bone_placer_L_upvecHandle";
	rename -uid "1F695929-42C0-DD0E-7E34-AB9B0AAD0E0A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armUpper_bone_placer_L_upVectorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -3 0 6 ;
	setAttr -k on ".w0";
createNode transform -n "armUpper_bone_placer_L_up_vec_curve" -p "armUpper_bone_placer_L_upVector_grp";
	rename -uid "CD77AACC-4588-B7A4-656F-468A5AB90CEF";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "armUpper_bone_placer_L_up_vec_curveShape" -p "armUpper_bone_placer_L_up_vec_curve";
	rename -uid "7C1F2E9E-46B1-5773-3D76-9D94823CD455";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "armUpper_bone_placer_L_up_vec_curveShapeOrig" -p "armUpper_bone_placer_L_up_vec_curve";
	rename -uid "98F28504-44D2-4C18-0608-FEAC93D89A71";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1armUpper_bone_placer_L_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2armUpper_bone_placer_L_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1armUpper_bone_placer_L_upvec" 1 "cv[0]"
		"cluster2armUpper_bone_placer_L_upvec" 1 "cv[1]";
createNode aimConstraint -n "armUpper_bone_placer_L_upVector_grp_aimConstraint1" 
		-p "armUpper_bone_placer_L_upVector_grp";
	rename -uid "DD7C83F6-46EB-DABE-3C12-5B87DBD0C814";
	addAttr -dcb 0 -ci true -sn "w0" -ln "armUpper_bone_placer_L_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr -k on ".w0";
createNode transform -n "armLower_bone_placer_L" -p "ARM_L_RIG_PLACER";
	rename -uid "B89AED4A-4D64-E8DA-6333-6B9D50FED0C5";
	setAttr ".t" -type "double3" 20 5 0 ;
createNode nurbsCurve -n "armLower_bone_placer_LShape1" -p "armLower_bone_placer_L";
	rename -uid "E6A1FD76-4D68-5E4B-A114-869189B8BA0B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 2
		0 -0.99999988079071045 1.7320507764816284
		0 -1.7320506572723389 0.99999994039535522
		0 -1.9999997615814209 0
		0 -1.7320506572723389 -0.99999994039535522
		0 -0.99999988079071045 -1.7320507764816284
		0 0 -2
		0 1 -1.7320507764816284
		0 1.732050895690918 -0.99999994039535522
		0 2 0
		0 1.732050895690918 0.99999994039535522
		0 1 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.99999988079071045 0 1.7320507764816284
		1.7320506572723389 0 0.99999994039535522
		1.9999997615814209 0 0
		1.7320506572723389 0 -0.99999994039535522
		0.99999988079071045 0 -1.7320507764816284
		0 0 -2
		-0.99999994039535522 0 -1.7320507764816284
		-1.7320507764816284 0 -0.99999994039535522
		-1.9999998807907104 0 0
		-1.7320507764816284 0 0.99999994039535522
		-0.99999994039535522 0 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 -0.70710670948028564 1.7320507764816284
		1.2247447967529297 -1.2247447967529297 0.99999994039535522
		1.4142134189605713 -1.4142134189605713 0
		1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710676908493042 0.70710676908493042 -1.7320507764816284
		-1.2247449159622192 1.2247449159622192 -0.99999994039535522
		-1.4142135381698608 1.4142135381698608 0
		-1.2247449159622192 1.2247449159622192 0.99999994039535522
		-0.70710676908493042 0.70710676908493042 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 0.70710670948028564 1.7320507764816284
		1.2247447967529297 1.2247447967529297 0.99999994039535522
		1.4142134189605713 1.4142134189605713 0
		1.2247447967529297 1.2247447967529297 -0.99999994039535522
		0.70710670948028564 0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		-1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		-1.4142134189605713 -1.4142134189605713 0
		-1.2247447967529297 -1.2247447967529297 0.99999994039535522
		-0.70710670948028564 -0.70710670948028564 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		;
createNode transform -n "armLower_bone_placer_L_upVector_grp" -p "armLower_bone_placer_L";
	rename -uid "18CA8BAF-4585-2EDB-490A-A2A3CE9E5AEE";
createNode transform -n "armLower_bone_placer_L_upVector" -p "armLower_bone_placer_L_upVector_grp";
	rename -uid "CD7E1B6F-4E9A-7927-E46D-08826314A62A";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0 7 ;
	setAttr ".sp" -type "double3" 0 0 7 ;
createNode nurbsCurve -n "armLower_bone_placer_L_upVectorShape1" -p "armLower_bone_placer_L_upVector";
	rename -uid "5870237B-4BD5-7A6C-1FCA-A597747A2305";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		1.0430812835693359e-08 0 7
		0.34999999999999998 0 7
		0.34999999999999998 0 8.4010731220245365
		0.7388755559921264 0 8.4010741233825676
		5.2154064178466794e-09 0 9.0380209445953366
		-0.7388755559921264 0 8.4010741233825676
		-0.34999999999999998 0 8.4010731220245365
		-0.34999999999999998 0 7
		1.0430812835693359e-08 0 7
		0 -0.34999999999999998 7
		0 -0.34999999999999998 8.4010731220245365
		0 -0.7388755559921264 8.4010741233825676
		5.2154064178466794e-09 0 9.0380209445953366
		0 0.7388755559921264 8.4010741233825676
		0 0.34999999999999998 8.4010731220245365
		0 0.34999999999999998 7
		1.0430812835693359e-08 0 7
		5.2154064178466794e-09 0 9.0380209445953366
		;
createNode transform -n "cluster1armLower_bone_placer_L_upvecHandle" -p "armLower_bone_placer_L_upVector_grp";
	rename -uid "DEB66574-424A-9A10-89E5-1FB91DAC3E32";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1armLower_bone_placer_L_upvecHandleShape" -p "cluster1armLower_bone_placer_L_upvecHandle";
	rename -uid "DF0F6386-4F09-5783-09C0-E0AAF3249D43";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1armLower_bone_placer_L_upvecHandle_parentConstraint1" 
		-p "cluster1armLower_bone_placer_L_upvecHandle";
	rename -uid "6D747D1B-415B-1ECF-0FD7-9F88E0879048";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armLower_bone_placer_LW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2armLower_bone_placer_L_upvecHandle" -p "armLower_bone_placer_L_upVector_grp";
	rename -uid "E9F80D40-42FC-6324-2662-41B356B82BC2";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2armLower_bone_placer_L_upvecHandleShape" -p "cluster2armLower_bone_placer_L_upvecHandle";
	rename -uid "57EC4A85-48F3-405A-B34C-B99CE5A197F6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2armLower_bone_placer_L_upvecHandle_parentConstraint1" 
		-p "cluster2armLower_bone_placer_L_upvecHandle";
	rename -uid "0667BA4A-4683-9B65-5ACA-07AB739D04AB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armLower_bone_placer_L_upVectorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -3 0 6 ;
	setAttr -k on ".w0";
createNode transform -n "armLower_bone_placer_L_up_vec_curve" -p "armLower_bone_placer_L_upVector_grp";
	rename -uid "DAA1940E-4F69-23C8-7AE5-E4B4DC1D2869";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "armLower_bone_placer_L_up_vec_curveShape" -p "armLower_bone_placer_L_up_vec_curve";
	rename -uid "B8049A75-4D2F-2C25-1B15-9A8E03318941";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "armLower_bone_placer_L_up_vec_curveShapeOrig" -p "armLower_bone_placer_L_up_vec_curve";
	rename -uid "21E5ABA1-42C7-52DC-DC6E-3AA928447FC1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1armLower_bone_placer_L_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2armLower_bone_placer_L_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1armLower_bone_placer_L_upvec" 1 "cv[0]"
		"cluster2armLower_bone_placer_L_upvec" 1 "cv[1]";
createNode aimConstraint -n "armLower_bone_placer_L_upVector_grp_aimConstraint1" 
		-p "armLower_bone_placer_L_upVector_grp";
	rename -uid "7C74EEEC-4ABE-751C-252E-A1873F97CB7E";
	addAttr -dcb 0 -ci true -sn "w0" -ln "armLower_bone_placer_L_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr -k on ".w0";
createNode transform -n "hand_bone_placer_L" -p "ARM_L_RIG_PLACER";
	rename -uid "2459C65F-4483-BDBA-A219-04A0D9F5CC62";
	setAttr ".t" -type "double3" 40 0 0 ;
createNode nurbsCurve -n "hand_bone_placer_LShape1" -p "hand_bone_placer_L";
	rename -uid "67BDE166-49D0-2DEB-C183-D4BAC0ADDC57";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 2
		0 -0.99999988079071045 1.7320507764816284
		0 -1.7320506572723389 0.99999994039535522
		0 -1.9999997615814209 0
		0 -1.7320506572723389 -0.99999994039535522
		0 -0.99999988079071045 -1.7320507764816284
		0 0 -2
		0 1 -1.7320507764816284
		0 1.732050895690918 -0.99999994039535522
		0 2 0
		0 1.732050895690918 0.99999994039535522
		0 1 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.99999988079071045 0 1.7320507764816284
		1.7320506572723389 0 0.99999994039535522
		1.9999997615814209 0 0
		1.7320506572723389 0 -0.99999994039535522
		0.99999988079071045 0 -1.7320507764816284
		0 0 -2
		-0.99999994039535522 0 -1.7320507764816284
		-1.7320507764816284 0 -0.99999994039535522
		-1.9999998807907104 0 0
		-1.7320507764816284 0 0.99999994039535522
		-0.99999994039535522 0 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 -0.70710670948028564 1.7320507764816284
		1.2247447967529297 -1.2247447967529297 0.99999994039535522
		1.4142134189605713 -1.4142134189605713 0
		1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710676908493042 0.70710676908493042 -1.7320507764816284
		-1.2247449159622192 1.2247449159622192 -0.99999994039535522
		-1.4142135381698608 1.4142135381698608 0
		-1.2247449159622192 1.2247449159622192 0.99999994039535522
		-0.70710676908493042 0.70710676908493042 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 0.70710670948028564 1.7320507764816284
		1.2247447967529297 1.2247447967529297 0.99999994039535522
		1.4142134189605713 1.4142134189605713 0
		1.2247447967529297 1.2247447967529297 -0.99999994039535522
		0.70710670948028564 0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		-1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		-1.4142134189605713 -1.4142134189605713 0
		-1.2247447967529297 -1.2247447967529297 0.99999994039535522
		-0.70710670948028564 -0.70710670948028564 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		;
createNode transform -n "hand_bone_placer_L_upVector_grp" -p "hand_bone_placer_L";
	rename -uid "AD123FBD-42D1-E317-AAF8-DE9A5A1D170C";
createNode transform -n "hand_bone_placer_L_upVector" -p "hand_bone_placer_L_upVector_grp";
	rename -uid "3DB5D1A0-4D7A-B4C6-A919-83AAA76854EB";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0 7 ;
	setAttr ".sp" -type "double3" 0 0 7 ;
createNode nurbsCurve -n "hand_bone_placer_L_upVectorShape1" -p "hand_bone_placer_L_upVector";
	rename -uid "84CC7E2E-49B4-410D-45C2-BA88086914C4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		1.0430812835693359e-08 0 7
		0.34999999999999998 0 7
		0.34999999999999998 0 8.4010731220245365
		0.7388755559921264 0 8.4010741233825676
		5.2154064178466794e-09 0 9.0380209445953366
		-0.7388755559921264 0 8.4010741233825676
		-0.34999999999999998 0 8.4010731220245365
		-0.34999999999999998 0 7
		1.0430812835693359e-08 0 7
		0 -0.34999999999999998 7
		0 -0.34999999999999998 8.4010731220245365
		0 -0.7388755559921264 8.4010741233825676
		5.2154064178466794e-09 0 9.0380209445953366
		0 0.7388755559921264 8.4010741233825676
		0 0.34999999999999998 8.4010731220245365
		0 0.34999999999999998 7
		1.0430812835693359e-08 0 7
		5.2154064178466794e-09 0 9.0380209445953366
		;
createNode transform -n "cluster1hand_bone_placer_L_upvecHandle" -p "hand_bone_placer_L_upVector_grp";
	rename -uid "48FD0FD2-4D8C-9F35-A8C8-CCBA5BED3579";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1hand_bone_placer_L_upvecHandleShape" -p "cluster1hand_bone_placer_L_upvecHandle";
	rename -uid "8066C10A-4170-E38D-C708-06A1177BAC97";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1hand_bone_placer_L_upvecHandle_parentConstraint1" 
		-p "cluster1hand_bone_placer_L_upvecHandle";
	rename -uid "3C95558B-454D-4F92-17D8-F0A94496C6EC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hand_bone_placer_LW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2hand_bone_placer_L_upvecHandle" -p "hand_bone_placer_L_upVector_grp";
	rename -uid "39AB2944-422A-03F1-B54D-DC9CEB82A7CA";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2hand_bone_placer_L_upvecHandleShape" -p "cluster2hand_bone_placer_L_upvecHandle";
	rename -uid "0E35D24B-4A19-5397-589D-EF8278BD348A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2hand_bone_placer_L_upvecHandle_parentConstraint1" 
		-p "cluster2hand_bone_placer_L_upvecHandle";
	rename -uid "2C30C92E-472D-2816-610E-3C9F52251D79";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hand_bone_placer_L_upVectorW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -3 0 6 ;
	setAttr -k on ".w0";
createNode transform -n "hand_bone_placer_L_up_vec_curve" -p "hand_bone_placer_L_upVector_grp";
	rename -uid "ED64E1F2-4143-53E6-BF50-9E91436DAAF5";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "hand_bone_placer_L_up_vec_curveShape" -p "hand_bone_placer_L_up_vec_curve";
	rename -uid "72033B60-40A4-1E5C-9D2E-C2A5CFEEA1DC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "hand_bone_placer_L_up_vec_curveShapeOrig" -p "hand_bone_placer_L_up_vec_curve";
	rename -uid "35951B87-44E4-6CFF-6D75-57AB0DFBC7DC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1hand_bone_placer_L_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2hand_bone_placer_L_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1hand_bone_placer_L_upvec" 1 "cv[0]"
		"cluster2hand_bone_placer_L_upvec" 1 "cv[1]";
createNode aimConstraint -n "hand_bone_placer_L_upVector_grp_aimConstraint1" -p "hand_bone_placer_L_upVector_grp";
	rename -uid "0FA06416-459F-3541-379D-D6A3B24D8D14";
	addAttr -dcb 0 -ci true -sn "w0" -ln "hand_bone_placer_L_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr -k on ".w0";
createNode transform -n "clavicle_bone_placer_L" -p "ARM_L_MAIN";
	rename -uid "403CA2AE-4B8C-531E-CEDA-80A9391CCCB8";
	setAttr ".t" -type "double3" 10 0 140 ;
createNode nurbsCurve -n "clavicle_bone_placer_LShape1" -p "clavicle_bone_placer_L";
	rename -uid "DBFF9E92-48A3-D787-7977-E29F30AFA990";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 2
		0 -0.99999988079071045 1.7320507764816284
		0 -1.7320506572723389 0.99999994039535522
		0 -1.9999997615814209 0
		0 -1.7320506572723389 -0.99999994039535522
		0 -0.99999988079071045 -1.7320507764816284
		0 0 -2
		0 1 -1.7320507764816284
		0 1.732050895690918 -0.99999994039535522
		0 2 0
		0 1.732050895690918 0.99999994039535522
		0 1 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.99999988079071045 0 1.7320507764816284
		1.7320506572723389 0 0.99999994039535522
		1.9999997615814209 0 0
		1.7320506572723389 0 -0.99999994039535522
		0.99999988079071045 0 -1.7320507764816284
		0 0 -2
		-0.99999994039535522 0 -1.7320507764816284
		-1.7320507764816284 0 -0.99999994039535522
		-1.9999998807907104 0 0
		-1.7320507764816284 0 0.99999994039535522
		-0.99999994039535522 0 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 -0.70710670948028564 1.7320507764816284
		1.2247447967529297 -1.2247447967529297 0.99999994039535522
		1.4142134189605713 -1.4142134189605713 0
		1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710676908493042 0.70710676908493042 -1.7320507764816284
		-1.2247449159622192 1.2247449159622192 -0.99999994039535522
		-1.4142135381698608 1.4142135381698608 0
		-1.2247449159622192 1.2247449159622192 0.99999994039535522
		-0.70710676908493042 0.70710676908493042 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 0.70710670948028564 1.7320507764816284
		1.2247447967529297 1.2247447967529297 0.99999994039535522
		1.4142134189605713 1.4142134189605713 0
		1.2247447967529297 1.2247447967529297 -0.99999994039535522
		0.70710670948028564 0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		-1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		-1.4142134189605713 -1.4142134189605713 0
		-1.2247447967529297 -1.2247447967529297 0.99999994039535522
		-0.70710670948028564 -0.70710670948028564 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		;
createNode transform -n "clavicle_bone_placer_L_upVector_grp" -p "clavicle_bone_placer_L";
	rename -uid "B59D7510-49B7-DABE-AFD4-18A1B6702D3F";
createNode transform -n "clavicle_bone_placer_L_upVector" -p "clavicle_bone_placer_L_upVector_grp";
	rename -uid "FD00603D-47E4-427B-F712-D5BD02BBC6AC";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0 7 ;
	setAttr ".sp" -type "double3" 0 0 7 ;
createNode nurbsCurve -n "clavicle_bone_placer_L_upVectorShape1" -p "clavicle_bone_placer_L_upVector";
	rename -uid "30F87978-4C93-E12F-492E-51B6BA4E7CF2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		1.0430812835693359e-08 0 7
		0.34999999999999998 0 7
		0.34999999999999998 0 8.4010731220245365
		0.7388755559921264 0 8.4010741233825676
		5.2154064178466794e-09 0 9.0380209445953366
		-0.7388755559921264 0 8.4010741233825676
		-0.34999999999999998 0 8.4010731220245365
		-0.34999999999999998 0 7
		1.0430812835693359e-08 0 7
		0 -0.34999999999999998 7
		0 -0.34999999999999998 8.4010731220245365
		0 -0.7388755559921264 8.4010741233825676
		5.2154064178466794e-09 0 9.0380209445953366
		0 0.7388755559921264 8.4010741233825676
		0 0.34999999999999998 8.4010731220245365
		0 0.34999999999999998 7
		1.0430812835693359e-08 0 7
		5.2154064178466794e-09 0 9.0380209445953366
		;
createNode transform -n "cluster1clavicle_bone_placer_L_upvecHandle" -p "clavicle_bone_placer_L_upVector_grp";
	rename -uid "DAD10DD3-4A3B-C83A-866F-66815FF25335";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1clavicle_bone_placer_L_upvecHandleShape" -p "cluster1clavicle_bone_placer_L_upvecHandle";
	rename -uid "B3A336C1-4D46-CD8E-0EE2-B89ADBAEDFE4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1clavicle_bone_placer_L_upvecHandle_parentConstraint1" 
		-p "cluster1clavicle_bone_placer_L_upvecHandle";
	rename -uid "EAC9B1EF-415A-0ED6-2DA3-798885492645";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "clavicle_bone_placer_LW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2clavicle_bone_placer_L_upvecHandle" -p "clavicle_bone_placer_L_upVector_grp";
	rename -uid "CF93F78C-43B4-4F63-1301-5BABCBCFB649";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2clavicle_bone_placer_L_upvecHandleShape" -p "cluster2clavicle_bone_placer_L_upvecHandle";
	rename -uid "8C685BF0-44FD-437A-0B3F-1187AEDA381B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2clavicle_bone_placer_L_upvecHandle_parentConstraint1" 
		-p "cluster2clavicle_bone_placer_L_upvecHandle";
	rename -uid "AC51E922-4FBC-343E-3901-DABA04A782AE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "clavicle_bone_placer_L_upVectorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -3 0 6 ;
	setAttr -k on ".w0";
createNode transform -n "clavicle_bone_placer_L_up_vec_curve" -p "clavicle_bone_placer_L_upVector_grp";
	rename -uid "5FB260AB-4C29-D675-5DB7-EA9F6912D2E2";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "clavicle_bone_placer_L_up_vec_curveShape" -p "clavicle_bone_placer_L_up_vec_curve";
	rename -uid "4AE284E8-49DE-6001-51D8-6894A2B1B0C4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "clavicle_bone_placer_L_up_vec_curveShapeOrig" -p "clavicle_bone_placer_L_up_vec_curve";
	rename -uid "546AC4B3-403C-8AAD-F99D-EC9AA40205EF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1clavicle_bone_placer_L_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2clavicle_bone_placer_L_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1clavicle_bone_placer_L_upvec" 1 "cv[0]"
		"cluster2clavicle_bone_placer_L_upvec" 1 "cv[1]";
createNode aimConstraint -n "clavicle_bone_placer_L_upVector_grp_aimConstraint1" 
		-p "clavicle_bone_placer_L_upVector_grp";
	rename -uid "BFC0216B-4EA0-1EB8-6AD7-16A802E64035";
	addAttr -dcb 0 -ci true -sn "w0" -ln "clavicle_bone_placer_L_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr -k on ".w0";
createNode transform -n "ARM_R_MAIN";
	rename -uid "B9A5FD5F-4AA2-D86B-250B-AAA5255FC7E5";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode transform -n "ARM_R_RIG_PLACER" -p "ARM_R_MAIN";
	rename -uid "51DB4A04-418A-2033-27B1-548ECBCB0F7F";
	addAttr -ci true -m -sn "placers" -ln "placers" -dt "string";
	addAttr -ci true -sn "placertype" -ln "placertype" -dt "string";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 30 0 140 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr -s 4 ".placers";
	setAttr ".placers[0]" -type "string" "clavicle_bone_placer_R";
	setAttr ".placers[1]" -type "string" "armUpper_bone_placer_R";
	setAttr ".placers[2]" -type "string" "armLower_bone_placer_R";
	setAttr ".placers[3]" -type "string" "hand_bone_placer_R";
	setAttr ".placertype" -type "string" "arm";
	setAttr ".connector" -type "string" "spine3";
	setAttr ".stretchy" yes;
createNode nurbsCurve -n "grp_shapeShape1" -p "ARM_R_RIG_PLACER";
	rename -uid "D6EEFC15-4BB4-312F-2B92-E38476694422";
	setAttr -k off ".v";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0 -7.5 7.5
		0 7.5 7.5
		0 7.5 -7.5
		0 -7.5 -7.5
		0 -7.5 7.5
		;
createNode transform -n "ARM_R_z_vec_LOCS" -p "ARM_R_RIG_PLACER";
	rename -uid "C16F35B5-41BC-B8B4-A1A1-C294170DD6A7";
	setAttr ".t" -type "double3" 30 0 -140 ;
createNode transform -n "clavicle_bone_placer_R_loc" -p "ARM_R_z_vec_LOCS";
	rename -uid "B9AE3558-4CBB-42AD-CDF4-DD8FDC8E4BDE";
	setAttr ".v" no;
	setAttr ".it" no;
createNode locator -n "clavicle_bone_placer_R_locShape" -p "clavicle_bone_placer_R_loc";
	rename -uid "3E15CBB4-42AE-4B2C-FB62-F49E43880D87";
	setAttr -k off ".v";
createNode transform -n "armUpper_bone_placer_R_loc" -p "ARM_R_z_vec_LOCS";
	rename -uid "A2C42AB2-456A-B6E2-CDE6-E1B63A538817";
	setAttr ".v" no;
	setAttr ".it" no;
createNode locator -n "armUpper_bone_placer_R_locShape" -p "armUpper_bone_placer_R_loc";
	rename -uid "5167F2EA-4C56-0FA8-F14E-F7AD8244A792";
	setAttr -k off ".v";
createNode transform -n "armLower_bone_placer_R_loc" -p "ARM_R_z_vec_LOCS";
	rename -uid "5C2B7971-4913-CE45-EEF8-DE9DFC959455";
	setAttr ".v" no;
	setAttr ".it" no;
createNode locator -n "armLower_bone_placer_R_locShape" -p "armLower_bone_placer_R_loc";
	rename -uid "0F9100EE-44DB-3D0A-AC1A-FD9FD2D0C24B";
	setAttr -k off ".v";
createNode transform -n "hand_bone_placer_R_loc" -p "ARM_R_z_vec_LOCS";
	rename -uid "1C22742A-471A-455A-E021-BEBB8E137FDF";
	setAttr ".v" no;
	setAttr ".it" no;
createNode locator -n "hand_bone_placer_R_locShape" -p "hand_bone_placer_R_loc";
	rename -uid "2CAA9325-40A1-0153-77B2-6C95FBD916C5";
	setAttr -k off ".v";
createNode transform -n "placercluster0_arm_RHandle" -p "ARM_R_RIG_PLACER";
	rename -uid "ABA51275-48A1-570B-1AAB-4F918C4A0219";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".rpt" -type "double3" 0 -1.2246467991473532e-16 -2 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "placercluster0_arm_RHandleShape" -p "placercluster0_arm_RHandle";
	rename -uid "AAC5ADD9-4EA0-A2AF-1EA3-AFA9D6B7449F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "placercluster0_arm_RHandle_parentConstraint1" -p "placercluster0_arm_RHandle";
	rename -uid "C06D3B19-4C03-357A-7F26-2C94159F5C59";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "clavicle_bone_placer_RW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 180 180 ;
	setAttr ".rst" -type "double3" -11 0 139 ;
	setAttr ".rsrr" -type "double3" 180 180 0 ;
	setAttr -k on ".w0";
createNode transform -n "placercluster1_arm_RHandle" -p "ARM_R_RIG_PLACER";
	rename -uid "F06139F2-4F0F-6B02-FD0C-BFAC12E1C7A1";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".rpt" -type "double3" -6 0 -2.0000000000000004 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "placercluster1_arm_RHandleShape" -p "placercluster1_arm_RHandle";
	rename -uid "9FEE7C42-48E6-4005-D7A9-AE8F3FC48161";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "placercluster1_arm_RHandle_parentConstraint1" -p "placercluster1_arm_RHandle";
	rename -uid "BADC8FF5-4467-B1B6-C3E1-908D06DC6295";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armUpper_bone_placer_RW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 180 0 ;
	setAttr ".rst" -type "double3" -33 0 139 ;
	setAttr -k on ".w0";
createNode transform -n "placercluster2_arm_RHandle" -p "ARM_R_RIG_PLACER";
	rename -uid "64BDB863-4FE2-3090-3D38-82B9B31F43E3";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 5 0 1 ;
	setAttr ".rpt" -type "double3" -10 0 -2 ;
	setAttr ".sp" -type "double3" 5 0 1 ;
createNode clusterHandle -n "placercluster2_arm_RHandleShape" -p "placercluster2_arm_RHandle";
	rename -uid "A852E47F-46D7-0BA8-BB04-C29D889DEFE1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 5 0 1 ;
createNode parentConstraint -n "placercluster2_arm_RHandle_parentConstraint1" -p "placercluster2_arm_RHandle";
	rename -uid "21A64247-485C-A563-54EA-07932998AB59";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armLower_bone_placer_RW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 180 0 ;
	setAttr ".rst" -type "double3" -55 5 139 ;
	setAttr -k on ".w0";
createNode transform -n "placercluster3_arm_RHandle" -p "ARM_R_RIG_PLACER";
	rename -uid "9BADE9C3-4BC4-79C1-D55D-D39F321A2F70";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 7 0 1 ;
	setAttr ".rpt" -type "double3" -14 0 -2.0000000000000009 ;
	setAttr ".sp" -type "double3" 7 0 1 ;
createNode clusterHandle -n "placercluster3_arm_RHandleShape" -p "placercluster3_arm_RHandle";
	rename -uid "4960118F-4AB6-EEFD-1041-879BFC7D9DB2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 7 0 1 ;
createNode parentConstraint -n "placercluster3_arm_RHandle_parentConstraint1" -p "placercluster3_arm_RHandle";
	rename -uid "70CA6E03-47EC-F5EE-C553-319573D45BFB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hand_bone_placer_RW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 180 0 ;
	setAttr ".rst" -type "double3" -77 0 139 ;
	setAttr -k on ".w0";
createNode transform -n "proxy_curve_arm_R" -p "ARM_R_RIG_PLACER";
	rename -uid "84FE8417-4F75-8FA6-BD09-6AAB5434F873";
	setAttr -l on -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "proxy_curve_arm_RShape" -p "proxy_curve_arm_R";
	rename -uid "8DB931AF-4D89-A142-C427-E8858BC11376";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "proxy_curve_arm_RShapeOrig" -p "proxy_curve_arm_R";
	rename -uid "CCA3822E-4E14-FEAC-A017-199F74439E79";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr -s 4 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "placercluster0_arm_R";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "placercluster1_arm_R";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".gtag[2].gtagnm" -type "string" "placercluster2_arm_R";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "cv[2]";
	setAttr ".gtag[3].gtagnm" -type "string" "placercluster3_arm_R";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "cv[3]";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		1 0 1
		3 0 1
		5 0 1
		7 0 1
		

		"gtag" 4
		"placercluster0_arm_R" 1 "cv[0]"
		"placercluster1_arm_R" 1 "cv[1]"
		"placercluster2_arm_R" 1 "cv[2]"
		"placercluster3_arm_R" 1 "cv[3]";
createNode transform -n "armUpper_bone_placer_R" -p "ARM_R_RIG_PLACER";
	rename -uid "9FDCB1B3-482A-72AF-DCFE-BB940EAFCC77";
	setAttr ".r" -type "double3" 0 180 0 ;
createNode nurbsCurve -n "armUpper_bone_placer_RShape1" -p "armUpper_bone_placer_R";
	rename -uid "D397CB62-4802-E2CF-B273-5E8700506FD0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 2
		0 -0.99999988079071045 1.7320507764816284
		0 -1.7320506572723389 0.99999994039535522
		0 -1.9999997615814209 0
		0 -1.7320506572723389 -0.99999994039535522
		0 -0.99999988079071045 -1.7320507764816284
		0 0 -2
		0 1 -1.7320507764816284
		0 1.732050895690918 -0.99999994039535522
		0 2 0
		0 1.732050895690918 0.99999994039535522
		0 1 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.99999988079071045 0 1.7320507764816284
		1.7320506572723389 0 0.99999994039535522
		1.9999997615814209 0 0
		1.7320506572723389 0 -0.99999994039535522
		0.99999988079071045 0 -1.7320507764816284
		0 0 -2
		-0.99999994039535522 0 -1.7320507764816284
		-1.7320507764816284 0 -0.99999994039535522
		-1.9999998807907104 0 0
		-1.7320507764816284 0 0.99999994039535522
		-0.99999994039535522 0 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 -0.70710670948028564 1.7320507764816284
		1.2247447967529297 -1.2247447967529297 0.99999994039535522
		1.4142134189605713 -1.4142134189605713 0
		1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710676908493042 0.70710676908493042 -1.7320507764816284
		-1.2247449159622192 1.2247449159622192 -0.99999994039535522
		-1.4142135381698608 1.4142135381698608 0
		-1.2247449159622192 1.2247449159622192 0.99999994039535522
		-0.70710676908493042 0.70710676908493042 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 0.70710670948028564 1.7320507764816284
		1.2247447967529297 1.2247447967529297 0.99999994039535522
		1.4142134189605713 1.4142134189605713 0
		1.2247447967529297 1.2247447967529297 -0.99999994039535522
		0.70710670948028564 0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		-1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		-1.4142134189605713 -1.4142134189605713 0
		-1.2247447967529297 -1.2247447967529297 0.99999994039535522
		-0.70710670948028564 -0.70710670948028564 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		;
createNode transform -n "armUpper_bone_placer_R_upVector_grp" -p "armUpper_bone_placer_R";
	rename -uid "FD8304B3-44A9-372C-78DD-D69389A929AE";
createNode transform -n "armUpper_bone_placer_R_upVector" -p "armUpper_bone_placer_R_upVector_grp";
	rename -uid "AD201DCF-4A3D-15E2-C7BB-D491E1118A72";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0 7 ;
	setAttr ".sp" -type "double3" 0 0 7 ;
createNode nurbsCurve -n "armUpper_bone_placer_R_upVectorShape1" -p "armUpper_bone_placer_R_upVector";
	rename -uid "57710A89-4FAC-24E7-9E8A-8688986CDAA3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		1.0430812835693359e-08 0 7
		0.34999999999999998 0 7
		0.34999999999999998 0 8.4010731220245365
		0.7388755559921264 0 8.4010741233825676
		5.2154064178466794e-09 0 9.0380209445953366
		-0.7388755559921264 0 8.4010741233825676
		-0.34999999999999998 0 8.4010731220245365
		-0.34999999999999998 0 7
		1.0430812835693359e-08 0 7
		0 -0.34999999999999998 7
		0 -0.34999999999999998 8.4010731220245365
		0 -0.7388755559921264 8.4010741233825676
		5.2154064178466794e-09 0 9.0380209445953366
		0 0.7388755559921264 8.4010741233825676
		0 0.34999999999999998 8.4010731220245365
		0 0.34999999999999998 7
		1.0430812835693359e-08 0 7
		5.2154064178466794e-09 0 9.0380209445953366
		;
createNode transform -n "cluster1armUpper_bone_placer_R_upvecHandle" -p "armUpper_bone_placer_R_upVector_grp";
	rename -uid "2444C095-4CE3-AFF6-7EDA-1BBA35266499";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1armUpper_bone_placer_R_upvecHandleShape" -p "cluster1armUpper_bone_placer_R_upvecHandle";
	rename -uid "93F009C2-45B1-2D4F-600B-53852D2225D4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1armUpper_bone_placer_R_upvecHandle_parentConstraint1" 
		-p "cluster1armUpper_bone_placer_R_upvecHandle";
	rename -uid "294D5C46-48DC-FF97-CCF1-88A7B448CCF6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armUpper_bone_placer_RW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 180 180 ;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2armUpper_bone_placer_R_upvecHandle" -p "armUpper_bone_placer_R_upVector_grp";
	rename -uid "2D86964F-4E9A-BBD9-164A-CA80CC103297";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2armUpper_bone_placer_R_upvecHandleShape" -p "cluster2armUpper_bone_placer_R_upvecHandle";
	rename -uid "51FF88A5-4A02-C5E0-C39A-36973269FD9F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2armUpper_bone_placer_R_upvecHandle_parentConstraint1" 
		-p "cluster2armUpper_bone_placer_R_upvecHandle";
	rename -uid "507BE82C-40A0-43B8-F27F-9F97024D178E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armUpper_bone_placer_R_upVectorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -3 0 6 ;
	setAttr -k on ".w0";
createNode transform -n "armUpper_bone_placer_R_up_vec_curve" -p "armUpper_bone_placer_R_upVector_grp";
	rename -uid "7320560D-43B1-EE14-6D48-FCA4DCCD798F";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "armUpper_bone_placer_R_up_vec_curveShape" -p "armUpper_bone_placer_R_up_vec_curve";
	rename -uid "6B95BEC8-4662-5090-5240-709710F72EA5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "armUpper_bone_placer_R_up_vec_curveShapeOrig" -p "armUpper_bone_placer_R_up_vec_curve";
	rename -uid "CB69EDA2-4093-713D-9ABA-F395D20AE360";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1armUpper_bone_placer_R_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2armUpper_bone_placer_R_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1armUpper_bone_placer_R_upvec" 1 "cv[0]"
		"cluster2armUpper_bone_placer_R_upvec" 1 "cv[1]";
createNode aimConstraint -n "armUpper_bone_placer_R_upVector_grp_aimConstraint1" 
		-p "armUpper_bone_placer_R_upVector_grp";
	rename -uid "A01D6379-448B-3445-CC38-B897E0D6A44E";
	addAttr -dcb 0 -ci true -sn "w0" -ln "armUpper_bone_placer_R_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".rsrr" -type "double3" 180 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "armLower_bone_placer_R" -p "ARM_R_RIG_PLACER";
	rename -uid "E293D35C-46C0-681D-F4B0-74AFC1822887";
	setAttr ".t" -type "double3" 20 5 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode nurbsCurve -n "armLower_bone_placer_RShape1" -p "armLower_bone_placer_R";
	rename -uid "4BA82B96-4CA5-291A-7B91-FD98B8C75FDC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 2
		0 -0.99999988079071045 1.7320507764816284
		0 -1.7320506572723389 0.99999994039535522
		0 -1.9999997615814209 0
		0 -1.7320506572723389 -0.99999994039535522
		0 -0.99999988079071045 -1.7320507764816284
		0 0 -2
		0 1 -1.7320507764816284
		0 1.732050895690918 -0.99999994039535522
		0 2 0
		0 1.732050895690918 0.99999994039535522
		0 1 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.99999988079071045 0 1.7320507764816284
		1.7320506572723389 0 0.99999994039535522
		1.9999997615814209 0 0
		1.7320506572723389 0 -0.99999994039535522
		0.99999988079071045 0 -1.7320507764816284
		0 0 -2
		-0.99999994039535522 0 -1.7320507764816284
		-1.7320507764816284 0 -0.99999994039535522
		-1.9999998807907104 0 0
		-1.7320507764816284 0 0.99999994039535522
		-0.99999994039535522 0 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 -0.70710670948028564 1.7320507764816284
		1.2247447967529297 -1.2247447967529297 0.99999994039535522
		1.4142134189605713 -1.4142134189605713 0
		1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710676908493042 0.70710676908493042 -1.7320507764816284
		-1.2247449159622192 1.2247449159622192 -0.99999994039535522
		-1.4142135381698608 1.4142135381698608 0
		-1.2247449159622192 1.2247449159622192 0.99999994039535522
		-0.70710676908493042 0.70710676908493042 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 0.70710670948028564 1.7320507764816284
		1.2247447967529297 1.2247447967529297 0.99999994039535522
		1.4142134189605713 1.4142134189605713 0
		1.2247447967529297 1.2247447967529297 -0.99999994039535522
		0.70710670948028564 0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		-1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		-1.4142134189605713 -1.4142134189605713 0
		-1.2247447967529297 -1.2247447967529297 0.99999994039535522
		-0.70710670948028564 -0.70710670948028564 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		;
createNode transform -n "armLower_bone_placer_R_upVector_grp" -p "armLower_bone_placer_R";
	rename -uid "5DB1E24D-49D5-775D-5DA7-E796B58D4692";
createNode transform -n "armLower_bone_placer_R_upVector" -p "armLower_bone_placer_R_upVector_grp";
	rename -uid "E854AFE8-49A9-90FD-FCAB-508A8BFAC6F2";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0 7 ;
	setAttr ".sp" -type "double3" 0 0 7 ;
createNode nurbsCurve -n "armLower_bone_placer_R_upVectorShape1" -p "armLower_bone_placer_R_upVector";
	rename -uid "3497A94D-4566-7D0F-9C7D-4E895029C122";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		1.0430812835693359e-08 0 7
		0.34999999999999998 0 7
		0.34999999999999998 0 8.4010731220245365
		0.7388755559921264 0 8.4010741233825676
		5.2154064178466794e-09 0 9.0380209445953366
		-0.7388755559921264 0 8.4010741233825676
		-0.34999999999999998 0 8.4010731220245365
		-0.34999999999999998 0 7
		1.0430812835693359e-08 0 7
		0 -0.34999999999999998 7
		0 -0.34999999999999998 8.4010731220245365
		0 -0.7388755559921264 8.4010741233825676
		5.2154064178466794e-09 0 9.0380209445953366
		0 0.7388755559921264 8.4010741233825676
		0 0.34999999999999998 8.4010731220245365
		0 0.34999999999999998 7
		1.0430812835693359e-08 0 7
		5.2154064178466794e-09 0 9.0380209445953366
		;
createNode transform -n "cluster1armLower_bone_placer_R_upvecHandle" -p "armLower_bone_placer_R_upVector_grp";
	rename -uid "6082F73B-45F5-C30C-547C-FBB73B3AD8F7";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1armLower_bone_placer_R_upvecHandleShape" -p "cluster1armLower_bone_placer_R_upvecHandle";
	rename -uid "5B833D97-46FB-5A4E-F072-139D6808C02F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1armLower_bone_placer_R_upvecHandle_parentConstraint1" 
		-p "cluster1armLower_bone_placer_R_upvecHandle";
	rename -uid "B246BE64-400D-3793-1DDD-AA91D046AD69";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armLower_bone_placer_RW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 180 180 ;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2armLower_bone_placer_R_upvecHandle" -p "armLower_bone_placer_R_upVector_grp";
	rename -uid "26643BE6-4D1F-1A86-118F-3894A4B380BE";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2armLower_bone_placer_R_upvecHandleShape" -p "cluster2armLower_bone_placer_R_upvecHandle";
	rename -uid "4EAA634C-44E0-B0F7-F4C3-B7B24D7E1B83";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2armLower_bone_placer_R_upvecHandle_parentConstraint1" 
		-p "cluster2armLower_bone_placer_R_upvecHandle";
	rename -uid "83CFD5B9-4ED6-7441-89CC-2881FC733762";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armLower_bone_placer_R_upVectorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -3 0 6 ;
	setAttr -k on ".w0";
createNode transform -n "armLower_bone_placer_R_up_vec_curve" -p "armLower_bone_placer_R_upVector_grp";
	rename -uid "1BEEC880-4B62-1B14-1949-8FA9134C3E53";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "armLower_bone_placer_R_up_vec_curveShape" -p "armLower_bone_placer_R_up_vec_curve";
	rename -uid "B451B10D-4D3E-46A0-452C-E0BC2A1648CA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "armLower_bone_placer_R_up_vec_curveShapeOrig" -p "armLower_bone_placer_R_up_vec_curve";
	rename -uid "2C7B2818-41E4-875A-0073-52A0C61ADF60";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1armLower_bone_placer_R_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2armLower_bone_placer_R_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1armLower_bone_placer_R_upvec" 1 "cv[0]"
		"cluster2armLower_bone_placer_R_upvec" 1 "cv[1]";
createNode aimConstraint -n "armLower_bone_placer_R_upVector_grp_aimConstraint1" 
		-p "armLower_bone_placer_R_upVector_grp";
	rename -uid "05513258-4C3C-9F10-A1B4-DAA385120394";
	addAttr -dcb 0 -ci true -sn "w0" -ln "armLower_bone_placer_R_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".rsrr" -type "double3" 180 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "hand_bone_placer_R" -p "ARM_R_RIG_PLACER";
	rename -uid "6A467BDA-479A-688C-798F-148ED47871F7";
	setAttr ".t" -type "double3" 40 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode nurbsCurve -n "hand_bone_placer_RShape1" -p "hand_bone_placer_R";
	rename -uid "16CF7BF1-42C0-2A80-0A25-5BBA75700971";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 2
		0 -0.99999988079071045 1.7320507764816284
		0 -1.7320506572723389 0.99999994039535522
		0 -1.9999997615814209 0
		0 -1.7320506572723389 -0.99999994039535522
		0 -0.99999988079071045 -1.7320507764816284
		0 0 -2
		0 1 -1.7320507764816284
		0 1.732050895690918 -0.99999994039535522
		0 2 0
		0 1.732050895690918 0.99999994039535522
		0 1 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.99999988079071045 0 1.7320507764816284
		1.7320506572723389 0 0.99999994039535522
		1.9999997615814209 0 0
		1.7320506572723389 0 -0.99999994039535522
		0.99999988079071045 0 -1.7320507764816284
		0 0 -2
		-0.99999994039535522 0 -1.7320507764816284
		-1.7320507764816284 0 -0.99999994039535522
		-1.9999998807907104 0 0
		-1.7320507764816284 0 0.99999994039535522
		-0.99999994039535522 0 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 -0.70710670948028564 1.7320507764816284
		1.2247447967529297 -1.2247447967529297 0.99999994039535522
		1.4142134189605713 -1.4142134189605713 0
		1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710676908493042 0.70710676908493042 -1.7320507764816284
		-1.2247449159622192 1.2247449159622192 -0.99999994039535522
		-1.4142135381698608 1.4142135381698608 0
		-1.2247449159622192 1.2247449159622192 0.99999994039535522
		-0.70710676908493042 0.70710676908493042 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 0.70710670948028564 1.7320507764816284
		1.2247447967529297 1.2247447967529297 0.99999994039535522
		1.4142134189605713 1.4142134189605713 0
		1.2247447967529297 1.2247447967529297 -0.99999994039535522
		0.70710670948028564 0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		-1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		-1.4142134189605713 -1.4142134189605713 0
		-1.2247447967529297 -1.2247447967529297 0.99999994039535522
		-0.70710670948028564 -0.70710670948028564 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		;
createNode transform -n "hand_bone_placer_R_upVector_grp" -p "hand_bone_placer_R";
	rename -uid "4F8DEB6B-45C4-BD9E-9595-33B196DE1BA6";
createNode transform -n "hand_bone_placer_R_upVector" -p "hand_bone_placer_R_upVector_grp";
	rename -uid "175AEDCF-43C6-2A49-A57D-18B12C857986";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0 7 ;
	setAttr ".sp" -type "double3" 0 0 7 ;
createNode nurbsCurve -n "hand_bone_placer_R_upVectorShape1" -p "hand_bone_placer_R_upVector";
	rename -uid "A0A6993D-4976-3E90-1D04-38A150612C3C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		1.0430812835693359e-08 0 7
		0.34999999999999998 0 7
		0.34999999999999998 0 8.4010731220245365
		0.7388755559921264 0 8.4010741233825676
		5.2154064178466794e-09 0 9.0380209445953366
		-0.7388755559921264 0 8.4010741233825676
		-0.34999999999999998 0 8.4010731220245365
		-0.34999999999999998 0 7
		1.0430812835693359e-08 0 7
		0 -0.34999999999999998 7
		0 -0.34999999999999998 8.4010731220245365
		0 -0.7388755559921264 8.4010741233825676
		5.2154064178466794e-09 0 9.0380209445953366
		0 0.7388755559921264 8.4010741233825676
		0 0.34999999999999998 8.4010731220245365
		0 0.34999999999999998 7
		1.0430812835693359e-08 0 7
		5.2154064178466794e-09 0 9.0380209445953366
		;
createNode transform -n "cluster1hand_bone_placer_R_upvecHandle" -p "hand_bone_placer_R_upVector_grp";
	rename -uid "69B75D7A-4939-796A-F43D-E3B21461A3D8";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1hand_bone_placer_R_upvecHandleShape" -p "cluster1hand_bone_placer_R_upvecHandle";
	rename -uid "564055A8-4CC0-D667-5BD8-9481004675D5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1hand_bone_placer_R_upvecHandle_parentConstraint1" 
		-p "cluster1hand_bone_placer_R_upvecHandle";
	rename -uid "3D8E3A05-4673-4C8D-407E-E5BB6C463408";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hand_bone_placer_RW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 180 180 ;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2hand_bone_placer_R_upvecHandle" -p "hand_bone_placer_R_upVector_grp";
	rename -uid "C34387AD-4686-F5A5-4870-F4BCC19F0EAB";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2hand_bone_placer_R_upvecHandleShape" -p "cluster2hand_bone_placer_R_upvecHandle";
	rename -uid "2F96E632-4582-54AD-AE8B-D889A8047A8F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2hand_bone_placer_R_upvecHandle_parentConstraint1" 
		-p "cluster2hand_bone_placer_R_upvecHandle";
	rename -uid "11D69E15-450D-9D41-9CB5-6F88C3F3E40A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hand_bone_placer_R_upVectorW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -3 0 6 ;
	setAttr -k on ".w0";
createNode transform -n "hand_bone_placer_R_up_vec_curve" -p "hand_bone_placer_R_upVector_grp";
	rename -uid "847ACBAE-4AA1-2BE3-5BE1-938EF0F92557";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "hand_bone_placer_R_up_vec_curveShape" -p "hand_bone_placer_R_up_vec_curve";
	rename -uid "41229B9E-4D5F-6F96-3031-26A74CF5A987";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "hand_bone_placer_R_up_vec_curveShapeOrig" -p "hand_bone_placer_R_up_vec_curve";
	rename -uid "B08F7C18-4BEA-3011-778E-8DA3C02CC54A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1hand_bone_placer_R_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2hand_bone_placer_R_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1hand_bone_placer_R_upvec" 1 "cv[0]"
		"cluster2hand_bone_placer_R_upvec" 1 "cv[1]";
createNode aimConstraint -n "hand_bone_placer_R_upVector_grp_aimConstraint1" -p "hand_bone_placer_R_upVector_grp";
	rename -uid "3D7913B9-4294-D96B-9F2F-E98FC0F04422";
	addAttr -dcb 0 -ci true -sn "w0" -ln "hand_bone_placer_R_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".rsrr" -type "double3" 180 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "clavicle_bone_placer_R" -p "ARM_R_MAIN";
	rename -uid "59D6411A-46ED-34E1-1470-97B34A72C6BE";
	setAttr ".t" -type "double3" 10 0 140 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode nurbsCurve -n "clavicle_bone_placer_RShape1" -p "clavicle_bone_placer_R";
	rename -uid "44B8FCC4-4317-1F4C-D834-3384C90F14B1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 2
		0 -0.99999988079071045 1.7320507764816284
		0 -1.7320506572723389 0.99999994039535522
		0 -1.9999997615814209 0
		0 -1.7320506572723389 -0.99999994039535522
		0 -0.99999988079071045 -1.7320507764816284
		0 0 -2
		0 1 -1.7320507764816284
		0 1.732050895690918 -0.99999994039535522
		0 2 0
		0 1.732050895690918 0.99999994039535522
		0 1 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.99999988079071045 0 1.7320507764816284
		1.7320506572723389 0 0.99999994039535522
		1.9999997615814209 0 0
		1.7320506572723389 0 -0.99999994039535522
		0.99999988079071045 0 -1.7320507764816284
		0 0 -2
		-0.99999994039535522 0 -1.7320507764816284
		-1.7320507764816284 0 -0.99999994039535522
		-1.9999998807907104 0 0
		-1.7320507764816284 0 0.99999994039535522
		-0.99999994039535522 0 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 -0.70710670948028564 1.7320507764816284
		1.2247447967529297 -1.2247447967529297 0.99999994039535522
		1.4142134189605713 -1.4142134189605713 0
		1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710676908493042 0.70710676908493042 -1.7320507764816284
		-1.2247449159622192 1.2247449159622192 -0.99999994039535522
		-1.4142135381698608 1.4142135381698608 0
		-1.2247449159622192 1.2247449159622192 0.99999994039535522
		-0.70710676908493042 0.70710676908493042 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 0.70710670948028564 1.7320507764816284
		1.2247447967529297 1.2247447967529297 0.99999994039535522
		1.4142134189605713 1.4142134189605713 0
		1.2247447967529297 1.2247447967529297 -0.99999994039535522
		0.70710670948028564 0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		-1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		-1.4142134189605713 -1.4142134189605713 0
		-1.2247447967529297 -1.2247447967529297 0.99999994039535522
		-0.70710670948028564 -0.70710670948028564 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		;
createNode transform -n "clavicle_bone_placer_R_upVector_grp" -p "clavicle_bone_placer_R";
	rename -uid "A7FA812B-4AF3-1361-3885-EE9D6EDBB824";
createNode transform -n "clavicle_bone_placer_R_upVector" -p "clavicle_bone_placer_R_upVector_grp";
	rename -uid "130B91C7-4EE2-8914-07C8-C58ECC88E434";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0 7 ;
	setAttr ".sp" -type "double3" 0 0 7 ;
createNode nurbsCurve -n "clavicle_bone_placer_R_upVectorShape1" -p "clavicle_bone_placer_R_upVector";
	rename -uid "CB0CAA96-46AC-5107-EDF9-398CDF64F2F5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		1.0430812835693359e-08 0 7
		0.34999999999999998 0 7
		0.34999999999999998 0 8.4010731220245365
		0.7388755559921264 0 8.4010741233825676
		5.2154064178466794e-09 0 9.0380209445953366
		-0.7388755559921264 0 8.4010741233825676
		-0.34999999999999998 0 8.4010731220245365
		-0.34999999999999998 0 7
		1.0430812835693359e-08 0 7
		0 -0.34999999999999998 7
		0 -0.34999999999999998 8.4010731220245365
		0 -0.7388755559921264 8.4010741233825676
		5.2154064178466794e-09 0 9.0380209445953366
		0 0.7388755559921264 8.4010741233825676
		0 0.34999999999999998 8.4010731220245365
		0 0.34999999999999998 7
		1.0430812835693359e-08 0 7
		5.2154064178466794e-09 0 9.0380209445953366
		;
createNode transform -n "cluster1clavicle_bone_placer_R_upvecHandle" -p "clavicle_bone_placer_R_upVector_grp";
	rename -uid "D8FBB431-4155-D44B-7083-05AEA13DBA65";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1clavicle_bone_placer_R_upvecHandleShape" -p "cluster1clavicle_bone_placer_R_upvecHandle";
	rename -uid "E0BB854F-4891-D37C-6D62-C0BE18A6EBD6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1clavicle_bone_placer_R_upvecHandle_parentConstraint1" 
		-p "cluster1clavicle_bone_placer_R_upvecHandle";
	rename -uid "8CAF134E-485C-B097-C437-5B84F1B5BA22";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "clavicle_bone_placer_RW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 180 0 ;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2clavicle_bone_placer_R_upvecHandle" -p "clavicle_bone_placer_R_upVector_grp";
	rename -uid "B1F2234D-4E6A-DEBD-BD47-CA99DD43F998";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2clavicle_bone_placer_R_upvecHandleShape" -p "cluster2clavicle_bone_placer_R_upvecHandle";
	rename -uid "FE88F0B5-4B14-9298-D6CC-B1A3DF17EE2A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2clavicle_bone_placer_R_upvecHandle_parentConstraint1" 
		-p "cluster2clavicle_bone_placer_R_upvecHandle";
	rename -uid "6A754AC7-43DA-F647-9550-4EA0F9C16781";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "clavicle_bone_placer_R_upVectorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -3 0 6 ;
	setAttr -k on ".w0";
createNode transform -n "clavicle_bone_placer_R_up_vec_curve" -p "clavicle_bone_placer_R_upVector_grp";
	rename -uid "0381E116-4489-06F5-540B-9AB26CD47458";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "clavicle_bone_placer_R_up_vec_curveShape" -p "clavicle_bone_placer_R_up_vec_curve";
	rename -uid "AD7D2771-435D-2B59-7CAE-68800A4EB730";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "clavicle_bone_placer_R_up_vec_curveShapeOrig" -p "clavicle_bone_placer_R_up_vec_curve";
	rename -uid "8EC82D65-4F7A-2A51-E909-5299A9FDEF98";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1clavicle_bone_placer_R_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2clavicle_bone_placer_R_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1clavicle_bone_placer_R_upvec" 1 "cv[0]"
		"cluster2clavicle_bone_placer_R_upvec" 1 "cv[1]";
createNode aimConstraint -n "clavicle_bone_placer_R_upVector_grp_aimConstraint1" 
		-p "clavicle_bone_placer_R_upVector_grp";
	rename -uid "3DDC777A-4EC8-EBAE-F7C2-69B6C75F39AD";
	addAttr -dcb 0 -ci true -sn "w0" -ln "clavicle_bone_placer_R_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".rsrr" -type "double3" 180 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "LEG_L_MAIN";
	rename -uid "B81E6DD3-41C8-4BDD-FD59-47A01882D847";
createNode transform -n "LEG_L_RIG_PLACER" -p "LEG_L_MAIN";
	rename -uid "88214701-43F7-A9BC-0B3A-93AD48CBBFE4";
	addAttr -ci true -m -sn "placers" -ln "placers" -dt "string";
	addAttr -ci true -sn "placertype" -ln "placertype" -dt "string";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 13 0 80 ;
	setAttr -s 5 ".placers";
	setAttr ".placers[0]" -type "string" "legUpper_bone_placer_L";
	setAttr ".placers[1]" -type "string" "legLower_bone_placer_L";
	setAttr ".placers[2]" -type "string" "foot_bone_placer_L";
	setAttr ".placers[3]" -type "string" "ball_bone_placer_L";
	setAttr ".placers[4]" -type "string" "toeTip_bone_placer_L";
	setAttr ".placertype" -type "string" "leg";
	setAttr ".connector" -type "string" "pelvis_control";
	setAttr ".stretchy" yes;
createNode nurbsCurve -n "grp_shapeShape1" -p "LEG_L_RIG_PLACER";
	rename -uid "4AB3A1F9-43E3-5959-712C-E790482BCEC5";
	setAttr -k off ".v";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-7.5 -7.5 0
		-7.5 7.5 0
		7.5 7.5 0
		7.5 -7.5 0
		-7.5 -7.5 0
		;
createNode transform -n "LEG_L_z_vec_LOCS" -p "LEG_L_RIG_PLACER";
	rename -uid "AD08F129-4771-FDCA-5D06-78B06D0B2A5F";
	setAttr ".t" -type "double3" -13 0 -80 ;
createNode transform -n "legUpper_bone_placer_L_loc" -p "LEG_L_z_vec_LOCS";
	rename -uid "B37C858D-43CB-8C58-822D-7BA5E6FF43B7";
	setAttr ".v" no;
	setAttr ".it" no;
createNode locator -n "legUpper_bone_placer_L_locShape" -p "legUpper_bone_placer_L_loc";
	rename -uid "FC298961-4678-FCA6-AE00-C58D50B61183";
	setAttr -k off ".v";
createNode transform -n "legLower_bone_placer_L_loc" -p "LEG_L_z_vec_LOCS";
	rename -uid "C86D4AEE-427D-0C70-E16B-95903619FC86";
	setAttr ".v" no;
	setAttr ".it" no;
createNode locator -n "legLower_bone_placer_L_locShape" -p "legLower_bone_placer_L_loc";
	rename -uid "F433B942-4D36-72D2-C322-4F96EE285192";
	setAttr -k off ".v";
createNode transform -n "foot_bone_placer_L_loc" -p "LEG_L_z_vec_LOCS";
	rename -uid "5384F7F1-4217-1BCE-CF43-64B40098EEF9";
	setAttr ".v" no;
	setAttr ".it" no;
createNode locator -n "foot_bone_placer_L_locShape" -p "foot_bone_placer_L_loc";
	rename -uid "E6EC061B-4D0C-E84F-5725-579E5F9703AD";
	setAttr -k off ".v";
createNode transform -n "ball_bone_placer_L_loc" -p "LEG_L_z_vec_LOCS";
	rename -uid "2924F2E8-4813-3CB7-CD2D-3FA57BE236DA";
	setAttr ".v" no;
	setAttr ".it" no;
createNode locator -n "ball_bone_placer_L_locShape" -p "ball_bone_placer_L_loc";
	rename -uid "CA973B16-4AC7-A0A1-2DFA-9F96C55A3233";
	setAttr -k off ".v";
createNode transform -n "toeTip_bone_placer_L_loc" -p "LEG_L_z_vec_LOCS";
	rename -uid "D15CA16C-4488-4313-8278-29A949F92CEB";
	setAttr ".v" no;
	setAttr ".it" no;
createNode locator -n "toeTip_bone_placer_L_locShape" -p "toeTip_bone_placer_L_loc";
	rename -uid "D704E360-40CE-06AD-2366-58A338C75920";
	setAttr -k off ".v";
createNode transform -n "_L_placercluster_0Handle" -p "LEG_L_RIG_PLACER";
	rename -uid "08261C27-4E01-8004-4780-4DB727070ABF";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "_L_placercluster_0HandleShape" -p "_L_placercluster_0Handle";
	rename -uid "ED923E58-46E3-F467-B5FE-628763D76672";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode pointConstraint -n "_L_placercluster_0Handle_pointConstraint1" -p "_L_placercluster_0Handle";
	rename -uid "4BF248D9-4E77-5124-1836-FC87AD80937E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "legUpper_bone_placer_LW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 12 0 79 ;
	setAttr -k on ".w0";
createNode transform -n "_L_placercluster_1Handle" -p "LEG_L_RIG_PLACER";
	rename -uid "43B04969-4F3D-E1AD-A3EF-A5A8EEA42504";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "_L_placercluster_1HandleShape" -p "_L_placercluster_1Handle";
	rename -uid "48639738-4822-9D42-357E-0A86C1EA5C96";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode pointConstraint -n "_L_placercluster_1Handle_pointConstraint1" -p "_L_placercluster_1Handle";
	rename -uid "E812FD51-4691-65DE-C917-BDAA19D2FE64";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "legLower_bone_placer_LW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 10 -10 44 ;
	setAttr -k on ".w0";
createNode transform -n "_L_placercluster_2Handle" -p "LEG_L_RIG_PLACER";
	rename -uid "6BFA8ED0-4B23-2ED4-CD55-D693D57BC3E8";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 5 0 1 ;
	setAttr ".sp" -type "double3" 5 0 1 ;
createNode clusterHandle -n "_L_placercluster_2HandleShape" -p "_L_placercluster_2Handle";
	rename -uid "BD7D01A9-49CB-1845-9A97-548A8B56D75D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 5 0 1 ;
createNode pointConstraint -n "_L_placercluster_2Handle_pointConstraint1" -p "_L_placercluster_2Handle";
	rename -uid "BE07A01C-42F7-C43B-14B9-E298B22EF96C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "foot_bone_placer_LW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 8 0 9 ;
	setAttr -k on ".w0";
createNode transform -n "_L_placercluster_3Handle" -p "LEG_L_RIG_PLACER";
	rename -uid "4F3770AD-476F-5AA0-0A38-0EA610107F16";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 7 0 1 ;
	setAttr ".sp" -type "double3" 7 0 1 ;
createNode clusterHandle -n "_L_placercluster_3HandleShape" -p "_L_placercluster_3Handle";
	rename -uid "E97F5EB8-4FEF-237F-2D44-FD8BA0C5E17C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 7 0 1 ;
createNode pointConstraint -n "_L_placercluster_3Handle_pointConstraint1" -p "_L_placercluster_3Handle";
	rename -uid "26C92C10-4C51-0E01-8D8B-80AA0F809FCB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ball_bone_placer_LW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 6 -6 -1 ;
	setAttr -k on ".w0";
createNode transform -n "_L_placercluster_4Handle" -p "LEG_L_RIG_PLACER";
	rename -uid "D81DBCEB-44D7-FE0A-E7AC-CB8A08C20954";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 9 0 1 ;
	setAttr ".sp" -type "double3" 9 0 1 ;
createNode clusterHandle -n "_L_placercluster_4HandleShape" -p "_L_placercluster_4Handle";
	rename -uid "66A820F5-4506-F7A1-2A36-0D89267DB469";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 9 0 1 ;
createNode pointConstraint -n "_L_placercluster_4Handle_pointConstraint1" -p "_L_placercluster_4Handle";
	rename -uid "3000032C-4A57-9829-3B6B-ED8FA9164050";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toeTip_bone_placer_LW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 4 -15 -1 ;
	setAttr -k on ".w0";
createNode transform -n "leg_proxy_curve_leg_L" -p "LEG_L_RIG_PLACER";
	rename -uid "DFBF804C-477E-583F-C246-CEA7F42EF035";
	setAttr -l on -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "leg_proxy_curve_leg_LShape" -p "leg_proxy_curve_leg_L";
	rename -uid "4C7C1A17-4CAD-0FF9-7B93-1BAEEE7A1B54";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "leg_proxy_curve_leg_LShapeOrig" -p "leg_proxy_curve_leg_L";
	rename -uid "5206DEE2-466C-D879-89A3-B7B1C3EB61E7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "_L_placercluster_0";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "_L_placercluster_1";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".gtag[2].gtagnm" -type "string" "_L_placercluster_2";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "cv[2]";
	setAttr ".gtag[3].gtagnm" -type "string" "_L_placercluster_3";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "cv[3]";
	setAttr ".gtag[4].gtagnm" -type "string" "_L_placercluster_4";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "cv[4]";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		1 0 1
		3 0 1
		5 0 1
		7 0 1
		9 0 1
		

		"gtag" 5
		"_L_placercluster_0" 1 "cv[0]"
		"_L_placercluster_1" 1 "cv[1]"
		"_L_placercluster_2" 1 "cv[2]"
		"_L_placercluster_3" 1 "cv[3]"
		"_L_placercluster_4" 1 "cv[4]";
createNode transform -n "legUpper_bone_placer_L" -p "LEG_L_RIG_PLACER";
	rename -uid "C33F54B0-49AB-0F7B-107F-E2B7E8858584";
createNode nurbsCurve -n "legUpper_bone_placer_LShape1" -p "legUpper_bone_placer_L";
	rename -uid "34F97F9E-4E3B-DD50-1708-A3AC32DCC95C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 2
		0 -0.99999988079071045 1.7320507764816284
		0 -1.7320506572723389 0.99999994039535522
		0 -1.9999997615814209 0
		0 -1.7320506572723389 -0.99999994039535522
		0 -0.99999988079071045 -1.7320507764816284
		0 0 -2
		0 1 -1.7320507764816284
		0 1.732050895690918 -0.99999994039535522
		0 2 0
		0 1.732050895690918 0.99999994039535522
		0 1 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.99999988079071045 0 1.7320507764816284
		1.7320506572723389 0 0.99999994039535522
		1.9999997615814209 0 0
		1.7320506572723389 0 -0.99999994039535522
		0.99999988079071045 0 -1.7320507764816284
		0 0 -2
		-0.99999994039535522 0 -1.7320507764816284
		-1.7320507764816284 0 -0.99999994039535522
		-1.9999998807907104 0 0
		-1.7320507764816284 0 0.99999994039535522
		-0.99999994039535522 0 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 -0.70710670948028564 1.7320507764816284
		1.2247447967529297 -1.2247447967529297 0.99999994039535522
		1.4142134189605713 -1.4142134189605713 0
		1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710676908493042 0.70710676908493042 -1.7320507764816284
		-1.2247449159622192 1.2247449159622192 -0.99999994039535522
		-1.4142135381698608 1.4142135381698608 0
		-1.2247449159622192 1.2247449159622192 0.99999994039535522
		-0.70710676908493042 0.70710676908493042 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 0.70710670948028564 1.7320507764816284
		1.2247447967529297 1.2247447967529297 0.99999994039535522
		1.4142134189605713 1.4142134189605713 0
		1.2247447967529297 1.2247447967529297 -0.99999994039535522
		0.70710670948028564 0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		-1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		-1.4142134189605713 -1.4142134189605713 0
		-1.2247447967529297 -1.2247447967529297 0.99999994039535522
		-0.70710670948028564 -0.70710670948028564 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		;
createNode transform -n "legUpper_bone_placer_L_upVector_grp" -p "legUpper_bone_placer_L";
	rename -uid "545F8077-4D03-3286-ADAB-D28C7DC7B654";
createNode transform -n "legUpper_bone_placer_L_upVector" -p "legUpper_bone_placer_L_upVector_grp";
	rename -uid "AA329891-42F5-D6F6-7AA6-1BBABC94FE99";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7 0 0 ;
	setAttr ".sp" -type "double3" -7 0 0 ;
createNode nurbsCurve -n "legUpper_bone_placer_L_upVectorShape1" -p "legUpper_bone_placer_L_upVector";
	rename -uid "C4593DAC-4400-4C57-1EE4-63928B4F939F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-7 0 -1.0430812835693359e-08
		-7 0 -0.34999999999999998
		-8.4010731220245365 1.7158197142587371e-16 -0.34999999999999998
		-8.4010741233825676 1.7158209405686461e-16 -0.7388755559921264
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		-8.4010741233825676 1.7158209405686461e-16 0.7388755559921264
		-8.4010731220245365 1.7158197142587371e-16 0.34999999999999998
		-7 0 0.34999999999999998
		-7 0 -1.0430812835693359e-08
		-7 0.34999999999999998 0
		-8.4010731220245365 0.35000000000000014 0
		-8.4010741233825676 0.73887555599212662 0
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		-8.4010741233825676 -0.73887555599212618 0
		-8.4010731220245365 -0.34999999999999981 0
		-7 -0.34999999999999998 0
		-7 0 -1.0430812835693359e-08
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		;
createNode transform -n "cluster1legUpper_bone_placer_L_upvecHandle" -p "legUpper_bone_placer_L_upVector_grp";
	rename -uid "2E5553B1-48C8-3F43-D6A4-1BAC316E4DE0";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1legUpper_bone_placer_L_upvecHandleShape" -p "cluster1legUpper_bone_placer_L_upvecHandle";
	rename -uid "94D28837-40CC-1C68-35F6-08A04DAECC10";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1legUpper_bone_placer_L_upvecHandle_parentConstraint1" 
		-p "cluster1legUpper_bone_placer_L_upvecHandle";
	rename -uid "6088D63E-4D48-792A-C80A-AC966B67F54C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "legUpper_bone_placer_LW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2legUpper_bone_placer_L_upvecHandle" -p "legUpper_bone_placer_L_upVector_grp";
	rename -uid "304AFF50-46C0-3B51-2C2D-BCB34E88042A";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2legUpper_bone_placer_L_upvecHandleShape" -p "cluster2legUpper_bone_placer_L_upvecHandle";
	rename -uid "335D0671-4F9F-5A3D-04BF-E28DC8A05EBD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2legUpper_bone_placer_L_upvecHandle_parentConstraint1" 
		-p "cluster2legUpper_bone_placer_L_upvecHandle";
	rename -uid "4A044646-4FC2-4A57-0944-28B8E4D62224";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "legUpper_bone_placer_L_upVectorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -10 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "legUpper_bone_placer_L_up_vec_curve" -p "legUpper_bone_placer_L_upVector_grp";
	rename -uid "438AC580-44D0-0C5E-01A6-7E9D9133B565";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "legUpper_bone_placer_L_up_vec_curveShape" -p "legUpper_bone_placer_L_up_vec_curve";
	rename -uid "8F0F1176-4099-9361-847A-C690509A6EE7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "legUpper_bone_placer_L_up_vec_curveShapeOrig" -p "legUpper_bone_placer_L_up_vec_curve";
	rename -uid "98769B1B-47A6-1C1B-1FE1-EC8D4A4C430C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1legUpper_bone_placer_L_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2legUpper_bone_placer_L_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1legUpper_bone_placer_L_upvec" 1 "cv[0]"
		"cluster2legUpper_bone_placer_L_upvec" 1 "cv[1]";
createNode aimConstraint -n "legUpper_bone_placer_L_upVector_grp_aimConstraint1" 
		-p "legUpper_bone_placer_L_upVector_grp";
	rename -uid "A094ED79-4B4F-CF1D-18D1-14A5E5ABF5D6";
	addAttr -dcb 0 -ci true -sn "w0" -ln "legUpper_bone_placer_L_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr -k on ".w0";
createNode transform -n "legLower_bone_placer_L" -p "LEG_L_RIG_PLACER";
	rename -uid "92A03DF7-4789-6D7B-AF2A-FD94A3BC99FA";
	setAttr ".t" -type "double3" 0 -10 -35 ;
createNode nurbsCurve -n "legLower_bone_placer_LShape1" -p "legLower_bone_placer_L";
	rename -uid "62E0E742-4C52-92DA-391E-BD90DDBA4D78";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 2
		0 -0.99999988079071045 1.7320507764816284
		0 -1.7320506572723389 0.99999994039535522
		0 -1.9999997615814209 0
		0 -1.7320506572723389 -0.99999994039535522
		0 -0.99999988079071045 -1.7320507764816284
		0 0 -2
		0 1 -1.7320507764816284
		0 1.732050895690918 -0.99999994039535522
		0 2 0
		0 1.732050895690918 0.99999994039535522
		0 1 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.99999988079071045 0 1.7320507764816284
		1.7320506572723389 0 0.99999994039535522
		1.9999997615814209 0 0
		1.7320506572723389 0 -0.99999994039535522
		0.99999988079071045 0 -1.7320507764816284
		0 0 -2
		-0.99999994039535522 0 -1.7320507764816284
		-1.7320507764816284 0 -0.99999994039535522
		-1.9999998807907104 0 0
		-1.7320507764816284 0 0.99999994039535522
		-0.99999994039535522 0 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 -0.70710670948028564 1.7320507764816284
		1.2247447967529297 -1.2247447967529297 0.99999994039535522
		1.4142134189605713 -1.4142134189605713 0
		1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710676908493042 0.70710676908493042 -1.7320507764816284
		-1.2247449159622192 1.2247449159622192 -0.99999994039535522
		-1.4142135381698608 1.4142135381698608 0
		-1.2247449159622192 1.2247449159622192 0.99999994039535522
		-0.70710676908493042 0.70710676908493042 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 0.70710670948028564 1.7320507764816284
		1.2247447967529297 1.2247447967529297 0.99999994039535522
		1.4142134189605713 1.4142134189605713 0
		1.2247447967529297 1.2247447967529297 -0.99999994039535522
		0.70710670948028564 0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		-1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		-1.4142134189605713 -1.4142134189605713 0
		-1.2247447967529297 -1.2247447967529297 0.99999994039535522
		-0.70710670948028564 -0.70710670948028564 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		;
createNode transform -n "legLower_bone_placer_L_upVector_grp" -p "legLower_bone_placer_L";
	rename -uid "E55B1950-4411-4B4F-6951-C1B1FFF04EB9";
createNode transform -n "legLower_bone_placer_L_upVector" -p "legLower_bone_placer_L_upVector_grp";
	rename -uid "7BC81446-4FAD-AE2B-595A-5D82BC5A29DA";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7 0 0 ;
	setAttr ".sp" -type "double3" -7 0 0 ;
createNode nurbsCurve -n "legLower_bone_placer_L_upVectorShape1" -p "legLower_bone_placer_L_upVector";
	rename -uid "40F58BA9-4043-2081-F723-0DBDA90A2B7E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-7 0 -1.0430812835693359e-08
		-7 0 -0.34999999999999998
		-8.4010731220245365 1.7158197142587371e-16 -0.34999999999999998
		-8.4010741233825676 1.7158209405686461e-16 -0.7388755559921264
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		-8.4010741233825676 1.7158209405686461e-16 0.7388755559921264
		-8.4010731220245365 1.7158197142587371e-16 0.34999999999999998
		-7 0 0.34999999999999998
		-7 0 -1.0430812835693359e-08
		-7 0.34999999999999998 0
		-8.4010731220245365 0.35000000000000014 0
		-8.4010741233825676 0.73887555599212662 0
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		-8.4010741233825676 -0.73887555599212618 0
		-8.4010731220245365 -0.34999999999999981 0
		-7 -0.34999999999999998 0
		-7 0 -1.0430812835693359e-08
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		;
createNode transform -n "cluster1legLower_bone_placer_L_upvecHandle" -p "legLower_bone_placer_L_upVector_grp";
	rename -uid "2D11BF2A-4BEB-DF41-C71A-22876148D612";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1legLower_bone_placer_L_upvecHandleShape" -p "cluster1legLower_bone_placer_L_upvecHandle";
	rename -uid "69809888-4A95-57E9-5FDD-858B65C67457";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1legLower_bone_placer_L_upvecHandle_parentConstraint1" 
		-p "cluster1legLower_bone_placer_L_upvecHandle";
	rename -uid "634F28D5-4B99-9AB3-FBD8-EA8363263554";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "legLower_bone_placer_LW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2legLower_bone_placer_L_upvecHandle" -p "legLower_bone_placer_L_upVector_grp";
	rename -uid "52CCEAA3-4E59-B97F-2A90-5F8A99B640AC";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2legLower_bone_placer_L_upvecHandleShape" -p "cluster2legLower_bone_placer_L_upvecHandle";
	rename -uid "8DC65349-428F-9F3C-3A9E-6CB5D1C93567";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2legLower_bone_placer_L_upvecHandle_parentConstraint1" 
		-p "cluster2legLower_bone_placer_L_upvecHandle";
	rename -uid "B6587446-4BE2-F772-F6ED-998609DEA137";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "legLower_bone_placer_L_upVectorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -10 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "legLower_bone_placer_L_up_vec_curve" -p "legLower_bone_placer_L_upVector_grp";
	rename -uid "1609B384-45A8-0CBA-0C2F-E4900B766EAE";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "legLower_bone_placer_L_up_vec_curveShape" -p "legLower_bone_placer_L_up_vec_curve";
	rename -uid "0D8D23DE-4C99-78DA-9271-3DA719AB0D74";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "legLower_bone_placer_L_up_vec_curveShapeOrig" -p "legLower_bone_placer_L_up_vec_curve";
	rename -uid "399C9B3C-4DA3-3904-1165-E7994FC5D5F3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1legLower_bone_placer_L_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2legLower_bone_placer_L_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1legLower_bone_placer_L_upvec" 1 "cv[0]"
		"cluster2legLower_bone_placer_L_upvec" 1 "cv[1]";
createNode aimConstraint -n "legLower_bone_placer_L_upVector_grp_aimConstraint1" 
		-p "legLower_bone_placer_L_upVector_grp";
	rename -uid "1852B1F6-4412-94C6-9FCA-E0B27D236261";
	addAttr -dcb 0 -ci true -sn "w0" -ln "legLower_bone_placer_L_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr -k on ".w0";
createNode transform -n "foot_bone_placer_L" -p "LEG_L_RIG_PLACER";
	rename -uid "4458C992-40D0-AA41-CE55-EEBAF708E05A";
	setAttr ".t" -type "double3" 0 0 -70 ;
createNode nurbsCurve -n "foot_bone_placer_LShape1" -p "foot_bone_placer_L";
	rename -uid "C1E375AB-4971-F1DF-0B1F-AEA62B8B4F4F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 2
		0 -0.99999988079071045 1.7320507764816284
		0 -1.7320506572723389 0.99999994039535522
		0 -1.9999997615814209 0
		0 -1.7320506572723389 -0.99999994039535522
		0 -0.99999988079071045 -1.7320507764816284
		0 0 -2
		0 1 -1.7320507764816284
		0 1.732050895690918 -0.99999994039535522
		0 2 0
		0 1.732050895690918 0.99999994039535522
		0 1 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.99999988079071045 0 1.7320507764816284
		1.7320506572723389 0 0.99999994039535522
		1.9999997615814209 0 0
		1.7320506572723389 0 -0.99999994039535522
		0.99999988079071045 0 -1.7320507764816284
		0 0 -2
		-0.99999994039535522 0 -1.7320507764816284
		-1.7320507764816284 0 -0.99999994039535522
		-1.9999998807907104 0 0
		-1.7320507764816284 0 0.99999994039535522
		-0.99999994039535522 0 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 -0.70710670948028564 1.7320507764816284
		1.2247447967529297 -1.2247447967529297 0.99999994039535522
		1.4142134189605713 -1.4142134189605713 0
		1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710676908493042 0.70710676908493042 -1.7320507764816284
		-1.2247449159622192 1.2247449159622192 -0.99999994039535522
		-1.4142135381698608 1.4142135381698608 0
		-1.2247449159622192 1.2247449159622192 0.99999994039535522
		-0.70710676908493042 0.70710676908493042 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 0.70710670948028564 1.7320507764816284
		1.2247447967529297 1.2247447967529297 0.99999994039535522
		1.4142134189605713 1.4142134189605713 0
		1.2247447967529297 1.2247447967529297 -0.99999994039535522
		0.70710670948028564 0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		-1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		-1.4142134189605713 -1.4142134189605713 0
		-1.2247447967529297 -1.2247447967529297 0.99999994039535522
		-0.70710670948028564 -0.70710670948028564 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		;
createNode transform -n "foot_bone_placer_L_upVector_grp" -p "foot_bone_placer_L";
	rename -uid "A25B6FBF-4996-0C2A-0783-4698DCDB6810";
createNode transform -n "foot_bone_placer_L_upVector" -p "foot_bone_placer_L_upVector_grp";
	rename -uid "8A8FA467-433D-1C14-52E7-AFBCD40C34A3";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7 0 0 ;
	setAttr ".sp" -type "double3" -7 0 0 ;
createNode nurbsCurve -n "foot_bone_placer_L_upVectorShape1" -p "foot_bone_placer_L_upVector";
	rename -uid "F816D67F-4472-D77E-71E4-6896ADF62D24";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-7 0 -1.0430812835693359e-08
		-7 0 -0.34999999999999998
		-8.4010731220245365 1.7158197142587371e-16 -0.34999999999999998
		-8.4010741233825676 1.7158209405686461e-16 -0.7388755559921264
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		-8.4010741233825676 1.7158209405686461e-16 0.7388755559921264
		-8.4010731220245365 1.7158197142587371e-16 0.34999999999999998
		-7 0 0.34999999999999998
		-7 0 -1.0430812835693359e-08
		-7 0.34999999999999998 0
		-8.4010731220245365 0.35000000000000014 0
		-8.4010741233825676 0.73887555599212662 0
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		-8.4010741233825676 -0.73887555599212618 0
		-8.4010731220245365 -0.34999999999999981 0
		-7 -0.34999999999999998 0
		-7 0 -1.0430812835693359e-08
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		;
createNode transform -n "cluster1foot_bone_placer_L_upvecHandle" -p "foot_bone_placer_L_upVector_grp";
	rename -uid "4EF2AF58-409C-2A82-2AA9-3F97573F3DAA";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1foot_bone_placer_L_upvecHandleShape" -p "cluster1foot_bone_placer_L_upvecHandle";
	rename -uid "0B31297F-4768-CE2F-E3E0-9FB8CA3A9EC9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1foot_bone_placer_L_upvecHandle_parentConstraint1" 
		-p "cluster1foot_bone_placer_L_upvecHandle";
	rename -uid "927569F1-4772-83EF-E22C-C69DC1CDE973";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "foot_bone_placer_LW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2foot_bone_placer_L_upvecHandle" -p "foot_bone_placer_L_upVector_grp";
	rename -uid "6F5A2128-4B10-07BE-E5DE-F7A9F8FE6276";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2foot_bone_placer_L_upvecHandleShape" -p "cluster2foot_bone_placer_L_upvecHandle";
	rename -uid "3F0FBDE0-4626-3209-CD3E-D1A80480DE06";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2foot_bone_placer_L_upvecHandle_parentConstraint1" 
		-p "cluster2foot_bone_placer_L_upvecHandle";
	rename -uid "47AF912B-486A-5C94-AFE3-45B540D8B826";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "foot_bone_placer_L_upVectorW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -10 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "foot_bone_placer_L_up_vec_curve" -p "foot_bone_placer_L_upVector_grp";
	rename -uid "E340C95C-4568-42FD-D499-DAB5D3F6F566";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "foot_bone_placer_L_up_vec_curveShape" -p "foot_bone_placer_L_up_vec_curve";
	rename -uid "1456340B-473C-DE57-20BE-698BDFF80631";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_bone_placer_L_up_vec_curveShapeOrig" -p "foot_bone_placer_L_up_vec_curve";
	rename -uid "9E96B39A-40F9-C2A9-49DA-32BBAA526078";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1foot_bone_placer_L_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2foot_bone_placer_L_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1foot_bone_placer_L_upvec" 1 "cv[0]"
		"cluster2foot_bone_placer_L_upvec" 1 "cv[1]";
createNode aimConstraint -n "foot_bone_placer_L_upVector_grp_aimConstraint1" -p "foot_bone_placer_L_upVector_grp";
	rename -uid "7856077D-4D5E-CCD0-1E51-67B79492EF7B";
	addAttr -dcb 0 -ci true -sn "w0" -ln "foot_bone_placer_L_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr -k on ".w0";
createNode transform -n "footIn_placer_L" -p "foot_bone_placer_L";
	rename -uid "F264BBB2-439D-1112-8D83-5388C0A6F34A";
	setAttr ".t" -type "double3" -7 -6 -10 ;
createNode nurbsCurve -n "footIn_placer_LShape1" -p "footIn_placer_L";
	rename -uid "E27560FD-4E39-89E1-9AC9-EC862C177CFC";
	setAttr -k off ".v";
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 0.5
		0 -0.24999997019767761 0.4330126941204071
		0 -0.43301266431808472 0.24999998509883881
		0 -0.49999994039535522 0
		0 -0.43301266431808472 -0.24999998509883881
		0 -0.24999997019767761 -0.4330126941204071
		0 0 -0.5
		0 0.25 -0.4330126941204071
		0 0.43301272392272949 -0.24999998509883881
		0 0.5 0
		0 0.43301272392272949 0.24999998509883881
		0 0.25 0.4330126941204071
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0.24999997019767761 0 0.4330126941204071
		0.43301266431808472 0 0.24999998509883881
		0.49999994039535522 0 0
		0.43301266431808472 0 -0.24999998509883881
		0.24999997019767761 0 -0.4330126941204071
		0 0 -0.5
		-0.24999998509883881 0 -0.4330126941204071
		-0.4330126941204071 0 -0.24999998509883881
		-0.49999997019767761 0 0
		-0.4330126941204071 0 0.24999998509883881
		-0.24999998509883881 0 0.4330126941204071
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0.17677667737007141 -0.17677667737007141 0.4330126941204071
		0.30618619918823242 -0.30618619918823242 0.24999998509883881
		0.35355335474014282 -0.35355335474014282 0
		0.30618619918823242 -0.30618619918823242 -0.24999998509883881
		0.17677667737007141 -0.17677667737007141 -0.4330126941204071
		0 0 -0.5
		-0.1767766922712326 0.1767766922712326 -0.4330126941204071
		-0.30618622899055481 0.30618622899055481 -0.24999998509883881
		-0.35355338454246521 0.35355338454246521 0
		-0.30618622899055481 0.30618622899055481 0.24999998509883881
		-0.1767766922712326 0.1767766922712326 0.4330126941204071
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0.17677667737007141 0.17677667737007141 0.4330126941204071
		0.30618619918823242 0.30618619918823242 0.24999998509883881
		0.35355335474014282 0.35355335474014282 0
		0.30618619918823242 0.30618619918823242 -0.24999998509883881
		0.17677667737007141 0.17677667737007141 -0.4330126941204071
		0 0 -0.5
		-0.17677667737007141 -0.17677667737007141 -0.4330126941204071
		-0.30618619918823242 -0.30618619918823242 -0.24999998509883881
		-0.35355335474014282 -0.35355335474014282 0
		-0.30618619918823242 -0.30618619918823242 0.24999998509883881
		-0.17677667737007141 -0.17677667737007141 0.4330126941204071
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		;
createNode transform -n "footOut_placer_L" -p "foot_bone_placer_L";
	rename -uid "10866716-4177-67C8-60BD-2F94C6C33F4A";
	setAttr ".t" -type "double3" 7 -6 -10 ;
createNode nurbsCurve -n "footOut_placer_LShape1" -p "footOut_placer_L";
	rename -uid "439138F0-46F6-858D-A330-CBA1653BB6CB";
	setAttr -k off ".v";
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 0.5
		0 -0.24999997019767761 0.4330126941204071
		0 -0.43301266431808472 0.24999998509883881
		0 -0.49999994039535522 0
		0 -0.43301266431808472 -0.24999998509883881
		0 -0.24999997019767761 -0.4330126941204071
		0 0 -0.5
		0 0.25 -0.4330126941204071
		0 0.43301272392272949 -0.24999998509883881
		0 0.5 0
		0 0.43301272392272949 0.24999998509883881
		0 0.25 0.4330126941204071
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0.24999997019767761 0 0.4330126941204071
		0.43301266431808472 0 0.24999998509883881
		0.49999994039535522 0 0
		0.43301266431808472 0 -0.24999998509883881
		0.24999997019767761 0 -0.4330126941204071
		0 0 -0.5
		-0.24999998509883881 0 -0.4330126941204071
		-0.4330126941204071 0 -0.24999998509883881
		-0.49999997019767761 0 0
		-0.4330126941204071 0 0.24999998509883881
		-0.24999998509883881 0 0.4330126941204071
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0.17677667737007141 -0.17677667737007141 0.4330126941204071
		0.30618619918823242 -0.30618619918823242 0.24999998509883881
		0.35355335474014282 -0.35355335474014282 0
		0.30618619918823242 -0.30618619918823242 -0.24999998509883881
		0.17677667737007141 -0.17677667737007141 -0.4330126941204071
		0 0 -0.5
		-0.1767766922712326 0.1767766922712326 -0.4330126941204071
		-0.30618622899055481 0.30618622899055481 -0.24999998509883881
		-0.35355338454246521 0.35355338454246521 0
		-0.30618622899055481 0.30618622899055481 0.24999998509883881
		-0.1767766922712326 0.1767766922712326 0.4330126941204071
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0.17677667737007141 0.17677667737007141 0.4330126941204071
		0.30618619918823242 0.30618619918823242 0.24999998509883881
		0.35355335474014282 0.35355335474014282 0
		0.30618619918823242 0.30618619918823242 -0.24999998509883881
		0.17677667737007141 0.17677667737007141 -0.4330126941204071
		0 0 -0.5
		-0.17677667737007141 -0.17677667737007141 -0.4330126941204071
		-0.30618619918823242 -0.30618619918823242 -0.24999998509883881
		-0.35355335474014282 -0.35355335474014282 0
		-0.30618619918823242 -0.30618619918823242 0.24999998509883881
		-0.17677667737007141 -0.17677667737007141 0.4330126941204071
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		;
createNode transform -n "heel_placer_L" -p "foot_bone_placer_L";
	rename -uid "01D1F4C0-4895-24F0-F096-9D8BA93E0213";
	setAttr ".t" -type "double3" 0 0 -10 ;
createNode nurbsCurve -n "heel_placer_LShape1" -p "heel_placer_L";
	rename -uid "8E401DDD-4D94-800D-3B8C-A284C0101A51";
	setAttr -k off ".v";
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 0.5
		0 -0.24999997019767761 0.4330126941204071
		0 -0.43301266431808472 0.24999998509883881
		0 -0.49999994039535522 0
		0 -0.43301266431808472 -0.24999998509883881
		0 -0.24999997019767761 -0.4330126941204071
		0 0 -0.5
		0 0.25 -0.4330126941204071
		0 0.43301272392272949 -0.24999998509883881
		0 0.5 0
		0 0.43301272392272949 0.24999998509883881
		0 0.25 0.4330126941204071
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0.24999997019767761 0 0.4330126941204071
		0.43301266431808472 0 0.24999998509883881
		0.49999994039535522 0 0
		0.43301266431808472 0 -0.24999998509883881
		0.24999997019767761 0 -0.4330126941204071
		0 0 -0.5
		-0.24999998509883881 0 -0.4330126941204071
		-0.4330126941204071 0 -0.24999998509883881
		-0.49999997019767761 0 0
		-0.4330126941204071 0 0.24999998509883881
		-0.24999998509883881 0 0.4330126941204071
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0.17677667737007141 -0.17677667737007141 0.4330126941204071
		0.30618619918823242 -0.30618619918823242 0.24999998509883881
		0.35355335474014282 -0.35355335474014282 0
		0.30618619918823242 -0.30618619918823242 -0.24999998509883881
		0.17677667737007141 -0.17677667737007141 -0.4330126941204071
		0 0 -0.5
		-0.1767766922712326 0.1767766922712326 -0.4330126941204071
		-0.30618622899055481 0.30618622899055481 -0.24999998509883881
		-0.35355338454246521 0.35355338454246521 0
		-0.30618622899055481 0.30618622899055481 0.24999998509883881
		-0.1767766922712326 0.1767766922712326 0.4330126941204071
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0.17677667737007141 0.17677667737007141 0.4330126941204071
		0.30618619918823242 0.30618619918823242 0.24999998509883881
		0.35355335474014282 0.35355335474014282 0
		0.30618619918823242 0.30618619918823242 -0.24999998509883881
		0.17677667737007141 0.17677667737007141 -0.4330126941204071
		0 0 -0.5
		-0.17677667737007141 -0.17677667737007141 -0.4330126941204071
		-0.30618619918823242 -0.30618619918823242 -0.24999998509883881
		-0.35355335474014282 -0.35355335474014282 0
		-0.30618619918823242 -0.30618619918823242 0.24999998509883881
		-0.17677667737007141 -0.17677667737007141 0.4330126941204071
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		;
createNode transform -n "ball_bone_placer_L" -p "foot_bone_placer_L";
	rename -uid "ACF6D276-4CF6-35D7-023F-3C86315FDA81";
	setAttr ".t" -type "double3" 0 -6 -10 ;
createNode nurbsCurve -n "ball_bone_placer_LShape1" -p "ball_bone_placer_L";
	rename -uid "3403A690-4280-DF90-6F4B-1190FD3E42C3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 2
		0 -0.99999988079071045 1.7320507764816284
		0 -1.7320506572723389 0.99999994039535522
		0 -1.9999997615814209 0
		0 -1.7320506572723389 -0.99999994039535522
		0 -0.99999988079071045 -1.7320507764816284
		0 0 -2
		0 1 -1.7320507764816284
		0 1.732050895690918 -0.99999994039535522
		0 2 0
		0 1.732050895690918 0.99999994039535522
		0 1 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.99999988079071045 0 1.7320507764816284
		1.7320506572723389 0 0.99999994039535522
		1.9999997615814209 0 0
		1.7320506572723389 0 -0.99999994039535522
		0.99999988079071045 0 -1.7320507764816284
		0 0 -2
		-0.99999994039535522 0 -1.7320507764816284
		-1.7320507764816284 0 -0.99999994039535522
		-1.9999998807907104 0 0
		-1.7320507764816284 0 0.99999994039535522
		-0.99999994039535522 0 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 -0.70710670948028564 1.7320507764816284
		1.2247447967529297 -1.2247447967529297 0.99999994039535522
		1.4142134189605713 -1.4142134189605713 0
		1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710676908493042 0.70710676908493042 -1.7320507764816284
		-1.2247449159622192 1.2247449159622192 -0.99999994039535522
		-1.4142135381698608 1.4142135381698608 0
		-1.2247449159622192 1.2247449159622192 0.99999994039535522
		-0.70710676908493042 0.70710676908493042 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 0.70710670948028564 1.7320507764816284
		1.2247447967529297 1.2247447967529297 0.99999994039535522
		1.4142134189605713 1.4142134189605713 0
		1.2247447967529297 1.2247447967529297 -0.99999994039535522
		0.70710670948028564 0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		-1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		-1.4142134189605713 -1.4142134189605713 0
		-1.2247447967529297 -1.2247447967529297 0.99999994039535522
		-0.70710670948028564 -0.70710670948028564 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		;
createNode transform -n "ball_bone_placer_L_upVector_grp" -p "ball_bone_placer_L";
	rename -uid "46A1F538-4B53-6E3B-AEF6-5996A3DAD4E6";
createNode transform -n "ball_bone_placer_L_upVector" -p "ball_bone_placer_L_upVector_grp";
	rename -uid "EE338189-454D-741A-CF6D-31B549849FD2";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7 0 0 ;
	setAttr ".sp" -type "double3" -7 0 0 ;
createNode nurbsCurve -n "ball_bone_placer_L_upVectorShape1" -p "ball_bone_placer_L_upVector";
	rename -uid "372E85DD-4384-095D-33DC-CBA09EDD7F16";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-7 0 -1.0430812835693359e-08
		-7 0 -0.34999999999999998
		-8.4010731220245365 1.7158197142587371e-16 -0.34999999999999998
		-8.4010741233825676 1.7158209405686461e-16 -0.7388755559921264
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		-8.4010741233825676 1.7158209405686461e-16 0.7388755559921264
		-8.4010731220245365 1.7158197142587371e-16 0.34999999999999998
		-7 0 0.34999999999999998
		-7 0 -1.0430812835693359e-08
		-7 0.34999999999999998 0
		-8.4010731220245365 0.35000000000000014 0
		-8.4010741233825676 0.73887555599212662 0
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		-8.4010741233825676 -0.73887555599212618 0
		-8.4010731220245365 -0.34999999999999981 0
		-7 -0.34999999999999998 0
		-7 0 -1.0430812835693359e-08
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		;
createNode transform -n "cluster1ball_bone_placer_L_upvecHandle" -p "ball_bone_placer_L_upVector_grp";
	rename -uid "0C3D525E-40E6-D3AD-B53B-28A7E59CB067";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1ball_bone_placer_L_upvecHandleShape" -p "cluster1ball_bone_placer_L_upvecHandle";
	rename -uid "8FB9AD92-42D6-E5A3-80F1-54B0E1C68C9C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1ball_bone_placer_L_upvecHandle_parentConstraint1" 
		-p "cluster1ball_bone_placer_L_upvecHandle";
	rename -uid "5E9DAA95-4ECA-807B-7A22-7FBCB3FE7436";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ball_bone_placer_LW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2ball_bone_placer_L_upvecHandle" -p "ball_bone_placer_L_upVector_grp";
	rename -uid "A055FBBC-4148-3D45-4DC5-BC9044E39447";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2ball_bone_placer_L_upvecHandleShape" -p "cluster2ball_bone_placer_L_upvecHandle";
	rename -uid "A1C0BCFB-44A9-8D85-A4D1-9C9B6F93B40E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2ball_bone_placer_L_upvecHandle_parentConstraint1" 
		-p "cluster2ball_bone_placer_L_upvecHandle";
	rename -uid "32E3627D-4DFB-148F-5F24-56BB71450874";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ball_bone_placer_L_upVectorW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -10 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "ball_bone_placer_L_up_vec_curve" -p "ball_bone_placer_L_upVector_grp";
	rename -uid "E88F4433-47A3-40C6-B018-46A9011B40A2";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "ball_bone_placer_L_up_vec_curveShape" -p "ball_bone_placer_L_up_vec_curve";
	rename -uid "5B11B8FF-40F5-9C45-5491-75A0A033D552";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "ball_bone_placer_L_up_vec_curveShapeOrig" -p "ball_bone_placer_L_up_vec_curve";
	rename -uid "0432A6AA-47F0-AAA2-386D-32AB03DB0440";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1ball_bone_placer_L_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2ball_bone_placer_L_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1ball_bone_placer_L_upvec" 1 "cv[0]"
		"cluster2ball_bone_placer_L_upvec" 1 "cv[1]";
createNode aimConstraint -n "ball_bone_placer_L_upVector_grp_aimConstraint1" -p "ball_bone_placer_L_upVector_grp";
	rename -uid "C67482EF-43C6-D16E-E3AE-F0AC2FA63614";
	addAttr -dcb 0 -ci true -sn "w0" -ln "ball_bone_placer_L_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr -k on ".w0";
createNode transform -n "foot_Zpos_loc_L" -p "ball_bone_placer_L";
	rename -uid "EFF687BB-40B1-FA03-1051-89BA2C452957";
	setAttr ".v" no;
createNode locator -n "foot_Zpos_loc_LShape" -p "foot_Zpos_loc_L";
	rename -uid "DAFBC0B0-4ECB-150E-FFDA-DD88ED2990A3";
	setAttr -k off ".v";
createNode transform -n "toeTip_bone_placer_L" -p "foot_bone_placer_L";
	rename -uid "89EC2AE9-4247-82DA-E169-B78944A0C82D";
	setAttr ".t" -type "double3" 0 -15 -10 ;
createNode nurbsCurve -n "toeTip_bone_placer_LShape1" -p "toeTip_bone_placer_L";
	rename -uid "B70672A4-46B2-AC26-28AB-54A77CB37159";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 2
		0 -0.99999988079071045 1.7320507764816284
		0 -1.7320506572723389 0.99999994039535522
		0 -1.9999997615814209 0
		0 -1.7320506572723389 -0.99999994039535522
		0 -0.99999988079071045 -1.7320507764816284
		0 0 -2
		0 1 -1.7320507764816284
		0 1.732050895690918 -0.99999994039535522
		0 2 0
		0 1.732050895690918 0.99999994039535522
		0 1 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.99999988079071045 0 1.7320507764816284
		1.7320506572723389 0 0.99999994039535522
		1.9999997615814209 0 0
		1.7320506572723389 0 -0.99999994039535522
		0.99999988079071045 0 -1.7320507764816284
		0 0 -2
		-0.99999994039535522 0 -1.7320507764816284
		-1.7320507764816284 0 -0.99999994039535522
		-1.9999998807907104 0 0
		-1.7320507764816284 0 0.99999994039535522
		-0.99999994039535522 0 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 -0.70710670948028564 1.7320507764816284
		1.2247447967529297 -1.2247447967529297 0.99999994039535522
		1.4142134189605713 -1.4142134189605713 0
		1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710676908493042 0.70710676908493042 -1.7320507764816284
		-1.2247449159622192 1.2247449159622192 -0.99999994039535522
		-1.4142135381698608 1.4142135381698608 0
		-1.2247449159622192 1.2247449159622192 0.99999994039535522
		-0.70710676908493042 0.70710676908493042 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 0.70710670948028564 1.7320507764816284
		1.2247447967529297 1.2247447967529297 0.99999994039535522
		1.4142134189605713 1.4142134189605713 0
		1.2247447967529297 1.2247447967529297 -0.99999994039535522
		0.70710670948028564 0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		-1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		-1.4142134189605713 -1.4142134189605713 0
		-1.2247447967529297 -1.2247447967529297 0.99999994039535522
		-0.70710670948028564 -0.70710670948028564 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		;
createNode transform -n "toeTip_bone_placer_L_upVector_grp" -p "toeTip_bone_placer_L";
	rename -uid "3D38A06C-4F41-3F49-B869-67B64192C836";
createNode transform -n "toeTip_bone_placer_L_upVector" -p "toeTip_bone_placer_L_upVector_grp";
	rename -uid "1DFB83FD-45FC-C167-7DA2-53AFBE093319";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7 0 0 ;
	setAttr ".sp" -type "double3" -7 0 0 ;
createNode nurbsCurve -n "toeTip_bone_placer_L_upVectorShape1" -p "toeTip_bone_placer_L_upVector";
	rename -uid "82BD97CE-4837-0560-79FE-57BF3F9B23FE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-7 0 -1.0430812835693359e-08
		-7 0 -0.34999999999999998
		-8.4010731220245365 1.7158197142587371e-16 -0.34999999999999998
		-8.4010741233825676 1.7158209405686461e-16 -0.7388755559921264
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		-8.4010741233825676 1.7158209405686461e-16 0.7388755559921264
		-8.4010731220245365 1.7158197142587371e-16 0.34999999999999998
		-7 0 0.34999999999999998
		-7 0 -1.0430812835693359e-08
		-7 0.34999999999999998 0
		-8.4010731220245365 0.35000000000000014 0
		-8.4010741233825676 0.73887555599212662 0
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		-8.4010741233825676 -0.73887555599212618 0
		-8.4010731220245365 -0.34999999999999981 0
		-7 -0.34999999999999998 0
		-7 0 -1.0430812835693359e-08
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		;
createNode transform -n "cluster1toeTip_bone_placer_L_upvecHandle" -p "toeTip_bone_placer_L_upVector_grp";
	rename -uid "6EAEC1F0-4504-44CD-7131-D191A793D694";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1toeTip_bone_placer_L_upvecHandleShape" -p "cluster1toeTip_bone_placer_L_upvecHandle";
	rename -uid "4C9EF820-40B1-CD6E-2355-E99E58E48199";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1toeTip_bone_placer_L_upvecHandle_parentConstraint1" 
		-p "cluster1toeTip_bone_placer_L_upvecHandle";
	rename -uid "49056375-44FE-3245-9ECD-ACBA0342456A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toeTip_bone_placer_LW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2toeTip_bone_placer_L_upvecHandle" -p "toeTip_bone_placer_L_upVector_grp";
	rename -uid "5AC03D91-461C-5A61-03D7-9F8C49999DC1";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2toeTip_bone_placer_L_upvecHandleShape" -p "cluster2toeTip_bone_placer_L_upvecHandle";
	rename -uid "B541E017-4E67-C8BD-6F8D-8FB3C9020263";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2toeTip_bone_placer_L_upvecHandle_parentConstraint1" 
		-p "cluster2toeTip_bone_placer_L_upvecHandle";
	rename -uid "69A60EE6-4C4A-3CC2-CE7D-D2919E30DD92";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toeTip_bone_placer_L_upVectorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -10 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "toeTip_bone_placer_L_up_vec_curve" -p "toeTip_bone_placer_L_upVector_grp";
	rename -uid "BBBA8A5E-42DE-2DF2-9578-828F3E125950";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "toeTip_bone_placer_L_up_vec_curveShape" -p "toeTip_bone_placer_L_up_vec_curve";
	rename -uid "BB14BCB2-49D7-FDC2-4265-9E95F40301C0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "toeTip_bone_placer_L_up_vec_curveShapeOrig" -p "toeTip_bone_placer_L_up_vec_curve";
	rename -uid "39A7D3D7-4E43-94F7-BA9C-238CBEC0341D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1toeTip_bone_placer_L_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2toeTip_bone_placer_L_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1toeTip_bone_placer_L_upvec" 1 "cv[0]"
		"cluster2toeTip_bone_placer_L_upvec" 1 "cv[1]";
createNode aimConstraint -n "toeTip_bone_placer_L_upVector_grp_aimConstraint1" -p
		 "toeTip_bone_placer_L_upVector_grp";
	rename -uid "3EE5B973-4BD6-FF3A-D721-D58AE11D77A9";
	addAttr -dcb 0 -ci true -sn "w0" -ln "toeTip_bone_placer_L_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr -k on ".w0";
createNode transform -n "LEG_R_MAIN";
	rename -uid "60510D60-4953-F112-D66C-3D9CEC445929";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode transform -n "LEG_R_RIG_PLACER" -p "LEG_R_MAIN";
	rename -uid "348D07FD-413E-4869-9E0C-30BEE4B217BE";
	addAttr -ci true -m -sn "placers" -ln "placers" -dt "string";
	addAttr -ci true -sn "placertype" -ln "placertype" -dt "string";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 13 0 80 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr -s 5 ".placers";
	setAttr ".placers[0]" -type "string" "legUpper_bone_placer_R";
	setAttr ".placers[1]" -type "string" "legLower_bone_placer_R";
	setAttr ".placers[2]" -type "string" "foot_bone_placer_R";
	setAttr ".placers[3]" -type "string" "ball_bone_placer_R";
	setAttr ".placers[4]" -type "string" "toeTip_bone_placer_R";
	setAttr ".placertype" -type "string" "leg";
	setAttr ".connector" -type "string" "pelvis_control";
	setAttr ".stretchy" yes;
createNode nurbsCurve -n "grp_shapeShape1" -p "LEG_R_RIG_PLACER";
	rename -uid "DED3FB83-4A39-6BA1-366B-2A9A0A4AF67F";
	setAttr -k off ".v";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-7.5 -7.5 0
		-7.5 7.5 0
		7.5 7.5 0
		7.5 -7.5 0
		-7.5 -7.5 0
		;
createNode transform -n "LEG_R_z_vec_LOCS" -p "LEG_R_RIG_PLACER";
	rename -uid "97A7939D-43D4-FAF5-3453-4AB8129D8B62";
	setAttr ".t" -type "double3" -13 0 80 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode transform -n "legUpper_bone_placer_R_loc" -p "LEG_R_z_vec_LOCS";
	rename -uid "3C383852-4111-A3EC-3CA6-5FB78B79F6E2";
	setAttr ".v" no;
	setAttr ".it" no;
createNode locator -n "legUpper_bone_placer_R_locShape" -p "legUpper_bone_placer_R_loc";
	rename -uid "D5F7CEA9-4E15-8797-601C-AA8846F386F9";
	setAttr -k off ".v";
createNode transform -n "legLower_bone_placer_R_loc" -p "LEG_R_z_vec_LOCS";
	rename -uid "4CC32703-4E68-5C95-5E89-0EAF62D29A3B";
	setAttr ".v" no;
	setAttr ".it" no;
createNode locator -n "legLower_bone_placer_R_locShape" -p "legLower_bone_placer_R_loc";
	rename -uid "C3EA0D06-4195-C9CD-0172-9995F2909CE6";
	setAttr -k off ".v";
createNode transform -n "foot_bone_placer_R_loc" -p "LEG_R_z_vec_LOCS";
	rename -uid "85292DF0-434B-5875-4F39-33BBE0DC9141";
	setAttr ".v" no;
	setAttr ".it" no;
createNode locator -n "foot_bone_placer_R_locShape" -p "foot_bone_placer_R_loc";
	rename -uid "1581F506-4243-0D9B-BC35-528DB4F0AB5D";
	setAttr -k off ".v";
createNode transform -n "ball_bone_placer_R_loc" -p "LEG_R_z_vec_LOCS";
	rename -uid "8F621D4C-44BB-2627-2AD7-8BB509870DFF";
	setAttr ".v" no;
	setAttr ".it" no;
createNode locator -n "ball_bone_placer_R_locShape" -p "ball_bone_placer_R_loc";
	rename -uid "B4DB649C-4588-57FE-8865-8286EFC6B1B9";
	setAttr -k off ".v";
createNode transform -n "toeTip_bone_placer_R_loc" -p "LEG_R_z_vec_LOCS";
	rename -uid "DE8975AB-4A0A-8B20-5320-6EB44721DF62";
	setAttr ".v" no;
	setAttr ".it" no;
createNode locator -n "toeTip_bone_placer_R_locShape" -p "toeTip_bone_placer_R_loc";
	rename -uid "C824F6AD-415B-5998-D74F-45A2F870A81A";
	setAttr -k off ".v";
createNode transform -n "_R_placercluster_0Handle" -p "LEG_R_RIG_PLACER";
	rename -uid "0AC5BA9E-44FF-F82E-2B72-F2AA44AABA00";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".rpt" -type "double3" -1.9999999999999998 0 -2.0000000000000009 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "_R_placercluster_0HandleShape" -p "_R_placercluster_0Handle";
	rename -uid "B2D50E69-4FB5-4170-67B1-7ABE95DFCCF2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode pointConstraint -n "_R_placercluster_0Handle_pointConstraint1" -p "_R_placercluster_0Handle";
	rename -uid "56D4879D-42A7-CCCE-398F-F89C71B4FFDB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "legUpper_bone_placer_RW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -14 0 79 ;
	setAttr -k on ".w0";
createNode transform -n "_R_placercluster_1Handle" -p "LEG_R_RIG_PLACER";
	rename -uid "6BE4BBE9-4418-924F-57FF-9CB9EE1186CD";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".rpt" -type "double3" -6 0 -2.0000000000000004 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "_R_placercluster_1HandleShape" -p "_R_placercluster_1Handle";
	rename -uid "6E42BA4D-4EFC-9FE4-68C5-98B94976090A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode pointConstraint -n "_R_placercluster_1Handle_pointConstraint1" -p "_R_placercluster_1Handle";
	rename -uid "3426334A-44F6-0993-5AD6-4BBC5237CFD2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "legLower_bone_placer_RW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -16 -10 44 ;
	setAttr -k on ".w0";
createNode transform -n "_R_placercluster_2Handle" -p "LEG_R_RIG_PLACER";
	rename -uid "C5B6C894-4922-69EF-3850-E79618B37512";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 5 0 1 ;
	setAttr ".rpt" -type "double3" -10 0 -2 ;
	setAttr ".sp" -type "double3" 5 0 1 ;
createNode clusterHandle -n "_R_placercluster_2HandleShape" -p "_R_placercluster_2Handle";
	rename -uid "BC3C97A4-477B-C1B8-749F-A1A9521AA39A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 5 0 1 ;
createNode pointConstraint -n "_R_placercluster_2Handle_pointConstraint1" -p "_R_placercluster_2Handle";
	rename -uid "406D1F80-4D51-86E9-FBA5-16B3D272AF86";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "foot_bone_placer_RW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -18 0 9 ;
	setAttr -k on ".w0";
createNode transform -n "_R_placercluster_3Handle" -p "LEG_R_RIG_PLACER";
	rename -uid "563F0C7B-4713-7C61-3FCF-048563FD4031";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 7 0 1 ;
	setAttr ".rpt" -type "double3" -14 0 -2.0000000000000009 ;
	setAttr ".sp" -type "double3" 7 0 1 ;
createNode clusterHandle -n "_R_placercluster_3HandleShape" -p "_R_placercluster_3Handle";
	rename -uid "13DBD246-4D9F-C88D-050B-BD9CA6DE0DAE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 7 0 1 ;
createNode pointConstraint -n "_R_placercluster_3Handle_pointConstraint1" -p "_R_placercluster_3Handle";
	rename -uid "ED868EF0-4F7C-83D0-260D-C592E378E925";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ball_bone_placer_RW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -20 -6 -1 ;
	setAttr -k on ".w0";
createNode transform -n "_R_placercluster_4Handle" -p "LEG_R_RIG_PLACER";
	rename -uid "A5C82781-45AE-D013-D055-1585C7F65511";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 9 0 1 ;
	setAttr ".rpt" -type "double3" -18 0 -2.0000000000000009 ;
	setAttr ".sp" -type "double3" 9 0 1 ;
createNode clusterHandle -n "_R_placercluster_4HandleShape" -p "_R_placercluster_4Handle";
	rename -uid "C1F2C097-4A11-CB7D-A14E-D182BE95EA95";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 9 0 1 ;
createNode pointConstraint -n "_R_placercluster_4Handle_pointConstraint1" -p "_R_placercluster_4Handle";
	rename -uid "76714132-40C9-7EC3-9B11-0BB72BC240B3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toeTip_bone_placer_RW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -22 -15 -1 ;
	setAttr -k on ".w0";
createNode transform -n "leg_proxy_curve_leg_R" -p "LEG_R_RIG_PLACER";
	rename -uid "872A0768-4055-461A-ED8D-27857233A229";
	setAttr -l on -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "leg_proxy_curve_leg_RShape" -p "leg_proxy_curve_leg_R";
	rename -uid "A87297D1-4818-4366-CDCF-1395607D7B1B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "leg_proxy_curve_leg_RShapeOrig" -p "leg_proxy_curve_leg_R";
	rename -uid "B24E4291-4D0A-9A60-2599-1E8960A1B37A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "_R_placercluster_0";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "_R_placercluster_1";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".gtag[2].gtagnm" -type "string" "_R_placercluster_2";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "cv[2]";
	setAttr ".gtag[3].gtagnm" -type "string" "_R_placercluster_3";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "cv[3]";
	setAttr ".gtag[4].gtagnm" -type "string" "_R_placercluster_4";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "cv[4]";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		1 0 1
		3 0 1
		5 0 1
		7 0 1
		9 0 1
		

		"gtag" 5
		"_R_placercluster_0" 1 "cv[0]"
		"_R_placercluster_1" 1 "cv[1]"
		"_R_placercluster_2" 1 "cv[2]"
		"_R_placercluster_3" 1 "cv[3]"
		"_R_placercluster_4" 1 "cv[4]";
createNode transform -n "legUpper_bone_placer_R" -p "LEG_R_RIG_PLACER";
	rename -uid "F1B89B03-4F9F-81C2-32E5-F28DDFAD1709";
	setAttr ".r" -type "double3" 0 180 0 ;
createNode nurbsCurve -n "legUpper_bone_placer_RShape1" -p "legUpper_bone_placer_R";
	rename -uid "FF2F5AED-467B-C3C1-B44D-EC858ED674F8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 2
		0 -0.99999988079071045 1.7320507764816284
		0 -1.7320506572723389 0.99999994039535522
		0 -1.9999997615814209 0
		0 -1.7320506572723389 -0.99999994039535522
		0 -0.99999988079071045 -1.7320507764816284
		0 0 -2
		0 1 -1.7320507764816284
		0 1.732050895690918 -0.99999994039535522
		0 2 0
		0 1.732050895690918 0.99999994039535522
		0 1 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.99999988079071045 0 1.7320507764816284
		1.7320506572723389 0 0.99999994039535522
		1.9999997615814209 0 0
		1.7320506572723389 0 -0.99999994039535522
		0.99999988079071045 0 -1.7320507764816284
		0 0 -2
		-0.99999994039535522 0 -1.7320507764816284
		-1.7320507764816284 0 -0.99999994039535522
		-1.9999998807907104 0 0
		-1.7320507764816284 0 0.99999994039535522
		-0.99999994039535522 0 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 -0.70710670948028564 1.7320507764816284
		1.2247447967529297 -1.2247447967529297 0.99999994039535522
		1.4142134189605713 -1.4142134189605713 0
		1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710676908493042 0.70710676908493042 -1.7320507764816284
		-1.2247449159622192 1.2247449159622192 -0.99999994039535522
		-1.4142135381698608 1.4142135381698608 0
		-1.2247449159622192 1.2247449159622192 0.99999994039535522
		-0.70710676908493042 0.70710676908493042 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 0.70710670948028564 1.7320507764816284
		1.2247447967529297 1.2247447967529297 0.99999994039535522
		1.4142134189605713 1.4142134189605713 0
		1.2247447967529297 1.2247447967529297 -0.99999994039535522
		0.70710670948028564 0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		-1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		-1.4142134189605713 -1.4142134189605713 0
		-1.2247447967529297 -1.2247447967529297 0.99999994039535522
		-0.70710670948028564 -0.70710670948028564 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		;
createNode transform -n "legUpper_bone_placer_R_upVector_grp" -p "legUpper_bone_placer_R";
	rename -uid "158DF9CD-414B-8572-69E3-B8B95D5D3FE1";
createNode transform -n "legUpper_bone_placer_R_upVector" -p "legUpper_bone_placer_R_upVector_grp";
	rename -uid "FD8BC868-4F4B-BC70-E488-6B93C60F0FCE";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7 0 0 ;
	setAttr ".sp" -type "double3" -7 0 0 ;
createNode nurbsCurve -n "legUpper_bone_placer_R_upVectorShape1" -p "legUpper_bone_placer_R_upVector";
	rename -uid "9C551E96-41FB-0030-F347-AB9F589AA3D4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-7 0 -1.0430812835693359e-08
		-7 0 -0.34999999999999998
		-8.4010731220245365 1.7158197142587371e-16 -0.34999999999999998
		-8.4010741233825676 1.7158209405686461e-16 -0.7388755559921264
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		-8.4010741233825676 1.7158209405686461e-16 0.7388755559921264
		-8.4010731220245365 1.7158197142587371e-16 0.34999999999999998
		-7 0 0.34999999999999998
		-7 0 -1.0430812835693359e-08
		-7 0.34999999999999998 0
		-8.4010731220245365 0.35000000000000014 0
		-8.4010741233825676 0.73887555599212662 0
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		-8.4010741233825676 -0.73887555599212618 0
		-8.4010731220245365 -0.34999999999999981 0
		-7 -0.34999999999999998 0
		-7 0 -1.0430812835693359e-08
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		;
createNode transform -n "cluster1legUpper_bone_placer_R_upvecHandle" -p "legUpper_bone_placer_R_upVector_grp";
	rename -uid "A38254A9-4E77-16F7-3C35-038DAB33159C";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1legUpper_bone_placer_R_upvecHandleShape" -p "cluster1legUpper_bone_placer_R_upvecHandle";
	rename -uid "7C729013-4FAD-D514-CF47-B19A271C5B0C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1legUpper_bone_placer_R_upvecHandle_parentConstraint1" 
		-p "cluster1legUpper_bone_placer_R_upvecHandle";
	rename -uid "14086698-47CA-97F7-8EA9-1E87483182E0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "legUpper_bone_placer_RW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 360 0 ;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2legUpper_bone_placer_R_upvecHandle" -p "legUpper_bone_placer_R_upVector_grp";
	rename -uid "BA67D9AF-4F95-3FAB-8164-038028174F33";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2legUpper_bone_placer_R_upvecHandleShape" -p "cluster2legUpper_bone_placer_R_upvecHandle";
	rename -uid "AC02F426-4F36-0D3C-AF08-1B807D4C0CEC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2legUpper_bone_placer_R_upvecHandle_parentConstraint1" 
		-p "cluster2legUpper_bone_placer_R_upvecHandle";
	rename -uid "47E9DB71-4B4D-4FB2-2895-CF9FCFB67C11";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "legUpper_bone_placer_R_upVectorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -10 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "legUpper_bone_placer_R_up_vec_curve" -p "legUpper_bone_placer_R_upVector_grp";
	rename -uid "8BAFC0AB-4EBE-6464-68C8-48B0593DCC25";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "legUpper_bone_placer_R_up_vec_curveShape" -p "legUpper_bone_placer_R_up_vec_curve";
	rename -uid "26BD0C04-452A-2A39-B88F-C5A429D75E10";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "legUpper_bone_placer_R_up_vec_curveShapeOrig" -p "legUpper_bone_placer_R_up_vec_curve";
	rename -uid "34E9D083-417C-46EC-614F-C79EDF7EA194";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1legUpper_bone_placer_R_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2legUpper_bone_placer_R_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1legUpper_bone_placer_R_upvec" 1 "cv[0]"
		"cluster2legUpper_bone_placer_R_upvec" 1 "cv[1]";
createNode aimConstraint -n "legUpper_bone_placer_R_upVector_grp_aimConstraint1" 
		-p "legUpper_bone_placer_R_upVector_grp";
	rename -uid "A289D43C-4F97-2192-A7C7-8F9640544589";
	addAttr -dcb 0 -ci true -sn "w0" -ln "legUpper_bone_placer_R_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr -k on ".w0";
createNode transform -n "legLower_bone_placer_R" -p "LEG_R_RIG_PLACER";
	rename -uid "44A42375-47E3-22A0-8A8A-19B00728909E";
	setAttr ".t" -type "double3" 0 -10 35 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode nurbsCurve -n "legLower_bone_placer_RShape1" -p "legLower_bone_placer_R";
	rename -uid "A5A39944-41BF-7A4B-1DC1-8D8856088818";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 2
		0 -0.99999988079071045 1.7320507764816284
		0 -1.7320506572723389 0.99999994039535522
		0 -1.9999997615814209 0
		0 -1.7320506572723389 -0.99999994039535522
		0 -0.99999988079071045 -1.7320507764816284
		0 0 -2
		0 1 -1.7320507764816284
		0 1.732050895690918 -0.99999994039535522
		0 2 0
		0 1.732050895690918 0.99999994039535522
		0 1 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.99999988079071045 0 1.7320507764816284
		1.7320506572723389 0 0.99999994039535522
		1.9999997615814209 0 0
		1.7320506572723389 0 -0.99999994039535522
		0.99999988079071045 0 -1.7320507764816284
		0 0 -2
		-0.99999994039535522 0 -1.7320507764816284
		-1.7320507764816284 0 -0.99999994039535522
		-1.9999998807907104 0 0
		-1.7320507764816284 0 0.99999994039535522
		-0.99999994039535522 0 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 -0.70710670948028564 1.7320507764816284
		1.2247447967529297 -1.2247447967529297 0.99999994039535522
		1.4142134189605713 -1.4142134189605713 0
		1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710676908493042 0.70710676908493042 -1.7320507764816284
		-1.2247449159622192 1.2247449159622192 -0.99999994039535522
		-1.4142135381698608 1.4142135381698608 0
		-1.2247449159622192 1.2247449159622192 0.99999994039535522
		-0.70710676908493042 0.70710676908493042 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 0.70710670948028564 1.7320507764816284
		1.2247447967529297 1.2247447967529297 0.99999994039535522
		1.4142134189605713 1.4142134189605713 0
		1.2247447967529297 1.2247447967529297 -0.99999994039535522
		0.70710670948028564 0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		-1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		-1.4142134189605713 -1.4142134189605713 0
		-1.2247447967529297 -1.2247447967529297 0.99999994039535522
		-0.70710670948028564 -0.70710670948028564 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		;
createNode transform -n "legLower_bone_placer_R_upVector_grp" -p "legLower_bone_placer_R";
	rename -uid "D3B23E24-4753-BCF2-772B-8ABF5DABFC15";
createNode transform -n "legLower_bone_placer_R_upVector" -p "legLower_bone_placer_R_upVector_grp";
	rename -uid "5C35D87E-4946-27FA-F046-E292D4611A97";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7 0 0 ;
	setAttr ".sp" -type "double3" -7 0 0 ;
createNode nurbsCurve -n "legLower_bone_placer_R_upVectorShape1" -p "legLower_bone_placer_R_upVector";
	rename -uid "011E7D8B-4D7D-C461-B881-D0919D5C5452";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-7 0 -1.0430812835693359e-08
		-7 0 -0.34999999999999998
		-8.4010731220245365 1.7158197142587371e-16 -0.34999999999999998
		-8.4010741233825676 1.7158209405686461e-16 -0.7388755559921264
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		-8.4010741233825676 1.7158209405686461e-16 0.7388755559921264
		-8.4010731220245365 1.7158197142587371e-16 0.34999999999999998
		-7 0 0.34999999999999998
		-7 0 -1.0430812835693359e-08
		-7 0.34999999999999998 0
		-8.4010731220245365 0.35000000000000014 0
		-8.4010741233825676 0.73887555599212662 0
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		-8.4010741233825676 -0.73887555599212618 0
		-8.4010731220245365 -0.34999999999999981 0
		-7 -0.34999999999999998 0
		-7 0 -1.0430812835693359e-08
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		;
createNode transform -n "cluster1legLower_bone_placer_R_upvecHandle" -p "legLower_bone_placer_R_upVector_grp";
	rename -uid "C9547C7E-4B4B-5B08-2BE8-6AA909CC5378";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1legLower_bone_placer_R_upvecHandleShape" -p "cluster1legLower_bone_placer_R_upvecHandle";
	rename -uid "B815D77B-47F9-2B12-50C8-37B6ADE1514D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1legLower_bone_placer_R_upvecHandle_parentConstraint1" 
		-p "cluster1legLower_bone_placer_R_upvecHandle";
	rename -uid "5186EE07-4E9E-0276-8038-F699D7AB2C82";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "legLower_bone_placer_RW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 360 0 ;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2legLower_bone_placer_R_upvecHandle" -p "legLower_bone_placer_R_upVector_grp";
	rename -uid "DC49228B-4A18-C25F-178B-66945FD2FBA8";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2legLower_bone_placer_R_upvecHandleShape" -p "cluster2legLower_bone_placer_R_upvecHandle";
	rename -uid "EA7DA902-406F-8281-F7B1-AEBE16864BF7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2legLower_bone_placer_R_upvecHandle_parentConstraint1" 
		-p "cluster2legLower_bone_placer_R_upvecHandle";
	rename -uid "43565931-4D87-7315-8836-84862B2CF5C7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "legLower_bone_placer_R_upVectorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -10 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "legLower_bone_placer_R_up_vec_curve" -p "legLower_bone_placer_R_upVector_grp";
	rename -uid "42AC71B4-4644-A9E6-1995-74861DA30071";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "legLower_bone_placer_R_up_vec_curveShape" -p "legLower_bone_placer_R_up_vec_curve";
	rename -uid "F9A216FE-43F2-7738-88AB-3297E5B1B5BF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "legLower_bone_placer_R_up_vec_curveShapeOrig" -p "legLower_bone_placer_R_up_vec_curve";
	rename -uid "70DB6531-4901-AAC5-C40E-1E8A3790A994";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1legLower_bone_placer_R_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2legLower_bone_placer_R_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1legLower_bone_placer_R_upvec" 1 "cv[0]"
		"cluster2legLower_bone_placer_R_upvec" 1 "cv[1]";
createNode aimConstraint -n "legLower_bone_placer_R_upVector_grp_aimConstraint1" 
		-p "legLower_bone_placer_R_upVector_grp";
	rename -uid "15033BE5-4B40-025F-8AB6-A8AB04D3D4EF";
	addAttr -dcb 0 -ci true -sn "w0" -ln "legLower_bone_placer_R_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr -k on ".w0";
createNode transform -n "foot_bone_placer_R" -p "LEG_R_RIG_PLACER";
	rename -uid "4A65CAC8-4F26-37A6-AEBA-CC8A0EAA144C";
	setAttr ".t" -type "double3" 0 0 70 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode nurbsCurve -n "foot_bone_placer_RShape1" -p "foot_bone_placer_R";
	rename -uid "D817ECE9-4801-16A7-DF0B-19A8C122D268";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 2
		0 -0.99999988079071045 1.7320507764816284
		0 -1.7320506572723389 0.99999994039535522
		0 -1.9999997615814209 0
		0 -1.7320506572723389 -0.99999994039535522
		0 -0.99999988079071045 -1.7320507764816284
		0 0 -2
		0 1 -1.7320507764816284
		0 1.732050895690918 -0.99999994039535522
		0 2 0
		0 1.732050895690918 0.99999994039535522
		0 1 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.99999988079071045 0 1.7320507764816284
		1.7320506572723389 0 0.99999994039535522
		1.9999997615814209 0 0
		1.7320506572723389 0 -0.99999994039535522
		0.99999988079071045 0 -1.7320507764816284
		0 0 -2
		-0.99999994039535522 0 -1.7320507764816284
		-1.7320507764816284 0 -0.99999994039535522
		-1.9999998807907104 0 0
		-1.7320507764816284 0 0.99999994039535522
		-0.99999994039535522 0 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 -0.70710670948028564 1.7320507764816284
		1.2247447967529297 -1.2247447967529297 0.99999994039535522
		1.4142134189605713 -1.4142134189605713 0
		1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710676908493042 0.70710676908493042 -1.7320507764816284
		-1.2247449159622192 1.2247449159622192 -0.99999994039535522
		-1.4142135381698608 1.4142135381698608 0
		-1.2247449159622192 1.2247449159622192 0.99999994039535522
		-0.70710676908493042 0.70710676908493042 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 0.70710670948028564 1.7320507764816284
		1.2247447967529297 1.2247447967529297 0.99999994039535522
		1.4142134189605713 1.4142134189605713 0
		1.2247447967529297 1.2247447967529297 -0.99999994039535522
		0.70710670948028564 0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		-1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		-1.4142134189605713 -1.4142134189605713 0
		-1.2247447967529297 -1.2247447967529297 0.99999994039535522
		-0.70710670948028564 -0.70710670948028564 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		;
createNode transform -n "foot_bone_placer_R_upVector_grp" -p "foot_bone_placer_R";
	rename -uid "53036CD8-4DB0-58A5-53A8-7CA0F88CBB7C";
createNode transform -n "foot_bone_placer_R_upVector" -p "foot_bone_placer_R_upVector_grp";
	rename -uid "B7B3CCCC-45B6-05AF-1BC1-C0AD36FEE668";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7 0 0 ;
	setAttr ".sp" -type "double3" -7 0 0 ;
createNode nurbsCurve -n "foot_bone_placer_R_upVectorShape1" -p "foot_bone_placer_R_upVector";
	rename -uid "73474C70-4955-5937-44B1-A79ADB6076F9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-7 0 -1.0430812835693359e-08
		-7 0 -0.34999999999999998
		-8.4010731220245365 1.7158197142587371e-16 -0.34999999999999998
		-8.4010741233825676 1.7158209405686461e-16 -0.7388755559921264
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		-8.4010741233825676 1.7158209405686461e-16 0.7388755559921264
		-8.4010731220245365 1.7158197142587371e-16 0.34999999999999998
		-7 0 0.34999999999999998
		-7 0 -1.0430812835693359e-08
		-7 0.34999999999999998 0
		-8.4010731220245365 0.35000000000000014 0
		-8.4010741233825676 0.73887555599212662 0
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		-8.4010741233825676 -0.73887555599212618 0
		-8.4010731220245365 -0.34999999999999981 0
		-7 -0.34999999999999998 0
		-7 0 -1.0430812835693359e-08
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		;
createNode transform -n "cluster1foot_bone_placer_R_upvecHandle" -p "foot_bone_placer_R_upVector_grp";
	rename -uid "FF97AE4E-468D-4957-E69E-6FB9B1BB24D2";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1foot_bone_placer_R_upvecHandleShape" -p "cluster1foot_bone_placer_R_upvecHandle";
	rename -uid "1568BB7C-4969-9E8E-2B2C-8EB7949BBD83";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1foot_bone_placer_R_upvecHandle_parentConstraint1" 
		-p "cluster1foot_bone_placer_R_upvecHandle";
	rename -uid "745B81D1-467A-8049-4AE5-1E9F76DB85BF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "foot_bone_placer_RW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 360 0 ;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2foot_bone_placer_R_upvecHandle" -p "foot_bone_placer_R_upVector_grp";
	rename -uid "3D0FFEEE-44D3-5A16-1261-BA9E62ED26D7";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2foot_bone_placer_R_upvecHandleShape" -p "cluster2foot_bone_placer_R_upvecHandle";
	rename -uid "8AF7B619-41BF-56A3-4609-D4A4F3D9D4CC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2foot_bone_placer_R_upvecHandle_parentConstraint1" 
		-p "cluster2foot_bone_placer_R_upvecHandle";
	rename -uid "9408D7C3-49DF-C535-682C-CFAD0916DAD6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "foot_bone_placer_R_upVectorW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -10 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "foot_bone_placer_R_up_vec_curve" -p "foot_bone_placer_R_upVector_grp";
	rename -uid "7E2CD155-4BCE-9EAD-171F-2A9EA2E95CD7";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "foot_bone_placer_R_up_vec_curveShape" -p "foot_bone_placer_R_up_vec_curve";
	rename -uid "261CDF7C-429A-A13B-F654-D0B40BBAEC6D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_bone_placer_R_up_vec_curveShapeOrig" -p "foot_bone_placer_R_up_vec_curve";
	rename -uid "4834E15A-46AE-7355-D080-3391392BDD6C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1foot_bone_placer_R_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2foot_bone_placer_R_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1foot_bone_placer_R_upvec" 1 "cv[0]"
		"cluster2foot_bone_placer_R_upvec" 1 "cv[1]";
createNode aimConstraint -n "foot_bone_placer_R_upVector_grp_aimConstraint1" -p "foot_bone_placer_R_upVector_grp";
	rename -uid "13FE280A-40B5-C811-3068-99B4DECCF13A";
	addAttr -dcb 0 -ci true -sn "w0" -ln "foot_bone_placer_R_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr -k on ".w0";
createNode transform -n "footIn_placer_R" -p "foot_bone_placer_R";
	rename -uid "EE681143-4F3C-8DAE-02F7-958493ECA876";
	setAttr ".t" -type "double3" 7 -6 -10 ;
createNode nurbsCurve -n "footIn_placer_RShape1" -p "footIn_placer_R";
	rename -uid "0D0D220F-4E2C-8C98-7ED5-9BBEEB18C864";
	setAttr -k off ".v";
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 0.5
		0 -0.24999997019767761 0.4330126941204071
		0 -0.43301266431808472 0.24999998509883881
		0 -0.49999994039535522 0
		0 -0.43301266431808472 -0.24999998509883881
		0 -0.24999997019767761 -0.4330126941204071
		0 0 -0.5
		0 0.25 -0.4330126941204071
		0 0.43301272392272949 -0.24999998509883881
		0 0.5 0
		0 0.43301272392272949 0.24999998509883881
		0 0.25 0.4330126941204071
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0.24999997019767761 0 0.4330126941204071
		0.43301266431808472 0 0.24999998509883881
		0.49999994039535522 0 0
		0.43301266431808472 0 -0.24999998509883881
		0.24999997019767761 0 -0.4330126941204071
		0 0 -0.5
		-0.24999998509883881 0 -0.4330126941204071
		-0.4330126941204071 0 -0.24999998509883881
		-0.49999997019767761 0 0
		-0.4330126941204071 0 0.24999998509883881
		-0.24999998509883881 0 0.4330126941204071
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0.17677667737007141 -0.17677667737007141 0.4330126941204071
		0.30618619918823242 -0.30618619918823242 0.24999998509883881
		0.35355335474014282 -0.35355335474014282 0
		0.30618619918823242 -0.30618619918823242 -0.24999998509883881
		0.17677667737007141 -0.17677667737007141 -0.4330126941204071
		0 0 -0.5
		-0.1767766922712326 0.1767766922712326 -0.4330126941204071
		-0.30618622899055481 0.30618622899055481 -0.24999998509883881
		-0.35355338454246521 0.35355338454246521 0
		-0.30618622899055481 0.30618622899055481 0.24999998509883881
		-0.1767766922712326 0.1767766922712326 0.4330126941204071
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0.17677667737007141 0.17677667737007141 0.4330126941204071
		0.30618619918823242 0.30618619918823242 0.24999998509883881
		0.35355335474014282 0.35355335474014282 0
		0.30618619918823242 0.30618619918823242 -0.24999998509883881
		0.17677667737007141 0.17677667737007141 -0.4330126941204071
		0 0 -0.5
		-0.17677667737007141 -0.17677667737007141 -0.4330126941204071
		-0.30618619918823242 -0.30618619918823242 -0.24999998509883881
		-0.35355335474014282 -0.35355335474014282 0
		-0.30618619918823242 -0.30618619918823242 0.24999998509883881
		-0.17677667737007141 -0.17677667737007141 0.4330126941204071
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		;
createNode transform -n "footOut_placer_R" -p "foot_bone_placer_R";
	rename -uid "5C98D707-442D-FFA5-EC30-D1BC1E2CA947";
	setAttr ".t" -type "double3" -7 -6 -10 ;
createNode nurbsCurve -n "footOut_placer_RShape1" -p "footOut_placer_R";
	rename -uid "27BF4C86-416C-8900-EE65-3E887C333560";
	setAttr -k off ".v";
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 0.5
		0 -0.24999997019767761 0.4330126941204071
		0 -0.43301266431808472 0.24999998509883881
		0 -0.49999994039535522 0
		0 -0.43301266431808472 -0.24999998509883881
		0 -0.24999997019767761 -0.4330126941204071
		0 0 -0.5
		0 0.25 -0.4330126941204071
		0 0.43301272392272949 -0.24999998509883881
		0 0.5 0
		0 0.43301272392272949 0.24999998509883881
		0 0.25 0.4330126941204071
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0.24999997019767761 0 0.4330126941204071
		0.43301266431808472 0 0.24999998509883881
		0.49999994039535522 0 0
		0.43301266431808472 0 -0.24999998509883881
		0.24999997019767761 0 -0.4330126941204071
		0 0 -0.5
		-0.24999998509883881 0 -0.4330126941204071
		-0.4330126941204071 0 -0.24999998509883881
		-0.49999997019767761 0 0
		-0.4330126941204071 0 0.24999998509883881
		-0.24999998509883881 0 0.4330126941204071
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0.17677667737007141 -0.17677667737007141 0.4330126941204071
		0.30618619918823242 -0.30618619918823242 0.24999998509883881
		0.35355335474014282 -0.35355335474014282 0
		0.30618619918823242 -0.30618619918823242 -0.24999998509883881
		0.17677667737007141 -0.17677667737007141 -0.4330126941204071
		0 0 -0.5
		-0.1767766922712326 0.1767766922712326 -0.4330126941204071
		-0.30618622899055481 0.30618622899055481 -0.24999998509883881
		-0.35355338454246521 0.35355338454246521 0
		-0.30618622899055481 0.30618622899055481 0.24999998509883881
		-0.1767766922712326 0.1767766922712326 0.4330126941204071
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0.17677667737007141 0.17677667737007141 0.4330126941204071
		0.30618619918823242 0.30618619918823242 0.24999998509883881
		0.35355335474014282 0.35355335474014282 0
		0.30618619918823242 0.30618619918823242 -0.24999998509883881
		0.17677667737007141 0.17677667737007141 -0.4330126941204071
		0 0 -0.5
		-0.17677667737007141 -0.17677667737007141 -0.4330126941204071
		-0.30618619918823242 -0.30618619918823242 -0.24999998509883881
		-0.35355335474014282 -0.35355335474014282 0
		-0.30618619918823242 -0.30618619918823242 0.24999998509883881
		-0.17677667737007141 -0.17677667737007141 0.4330126941204071
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		;
createNode transform -n "heel_placer_R" -p "foot_bone_placer_R";
	rename -uid "20BF84AA-4EBE-BCA4-7A50-A7A40C3F1E2B";
	setAttr ".t" -type "double3" 0 0 -10 ;
createNode nurbsCurve -n "heel_placer_RShape1" -p "heel_placer_R";
	rename -uid "CE4D77F8-4DF7-C851-3000-E795D119860D";
	setAttr -k off ".v";
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 0.5
		0 -0.24999997019767761 0.4330126941204071
		0 -0.43301266431808472 0.24999998509883881
		0 -0.49999994039535522 0
		0 -0.43301266431808472 -0.24999998509883881
		0 -0.24999997019767761 -0.4330126941204071
		0 0 -0.5
		0 0.25 -0.4330126941204071
		0 0.43301272392272949 -0.24999998509883881
		0 0.5 0
		0 0.43301272392272949 0.24999998509883881
		0 0.25 0.4330126941204071
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0.24999997019767761 0 0.4330126941204071
		0.43301266431808472 0 0.24999998509883881
		0.49999994039535522 0 0
		0.43301266431808472 0 -0.24999998509883881
		0.24999997019767761 0 -0.4330126941204071
		0 0 -0.5
		-0.24999998509883881 0 -0.4330126941204071
		-0.4330126941204071 0 -0.24999998509883881
		-0.49999997019767761 0 0
		-0.4330126941204071 0 0.24999998509883881
		-0.24999998509883881 0 0.4330126941204071
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0.17677667737007141 -0.17677667737007141 0.4330126941204071
		0.30618619918823242 -0.30618619918823242 0.24999998509883881
		0.35355335474014282 -0.35355335474014282 0
		0.30618619918823242 -0.30618619918823242 -0.24999998509883881
		0.17677667737007141 -0.17677667737007141 -0.4330126941204071
		0 0 -0.5
		-0.1767766922712326 0.1767766922712326 -0.4330126941204071
		-0.30618622899055481 0.30618622899055481 -0.24999998509883881
		-0.35355338454246521 0.35355338454246521 0
		-0.30618622899055481 0.30618622899055481 0.24999998509883881
		-0.1767766922712326 0.1767766922712326 0.4330126941204071
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0.17677667737007141 0.17677667737007141 0.4330126941204071
		0.30618619918823242 0.30618619918823242 0.24999998509883881
		0.35355335474014282 0.35355335474014282 0
		0.30618619918823242 0.30618619918823242 -0.24999998509883881
		0.17677667737007141 0.17677667737007141 -0.4330126941204071
		0 0 -0.5
		-0.17677667737007141 -0.17677667737007141 -0.4330126941204071
		-0.30618619918823242 -0.30618619918823242 -0.24999998509883881
		-0.35355335474014282 -0.35355335474014282 0
		-0.30618619918823242 -0.30618619918823242 0.24999998509883881
		-0.17677667737007141 -0.17677667737007141 0.4330126941204071
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		0 0 0.5
		;
createNode transform -n "ball_bone_placer_R" -p "foot_bone_placer_R";
	rename -uid "AC0B00DA-458A-A044-C6D2-3B916660976F";
	setAttr ".t" -type "double3" 0 -6 -10 ;
createNode nurbsCurve -n "ball_bone_placer_RShape1" -p "ball_bone_placer_R";
	rename -uid "90F6224D-46BE-89AE-EA89-1AB424935D71";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 2
		0 -0.99999988079071045 1.7320507764816284
		0 -1.7320506572723389 0.99999994039535522
		0 -1.9999997615814209 0
		0 -1.7320506572723389 -0.99999994039535522
		0 -0.99999988079071045 -1.7320507764816284
		0 0 -2
		0 1 -1.7320507764816284
		0 1.732050895690918 -0.99999994039535522
		0 2 0
		0 1.732050895690918 0.99999994039535522
		0 1 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.99999988079071045 0 1.7320507764816284
		1.7320506572723389 0 0.99999994039535522
		1.9999997615814209 0 0
		1.7320506572723389 0 -0.99999994039535522
		0.99999988079071045 0 -1.7320507764816284
		0 0 -2
		-0.99999994039535522 0 -1.7320507764816284
		-1.7320507764816284 0 -0.99999994039535522
		-1.9999998807907104 0 0
		-1.7320507764816284 0 0.99999994039535522
		-0.99999994039535522 0 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 -0.70710670948028564 1.7320507764816284
		1.2247447967529297 -1.2247447967529297 0.99999994039535522
		1.4142134189605713 -1.4142134189605713 0
		1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710676908493042 0.70710676908493042 -1.7320507764816284
		-1.2247449159622192 1.2247449159622192 -0.99999994039535522
		-1.4142135381698608 1.4142135381698608 0
		-1.2247449159622192 1.2247449159622192 0.99999994039535522
		-0.70710676908493042 0.70710676908493042 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 0.70710670948028564 1.7320507764816284
		1.2247447967529297 1.2247447967529297 0.99999994039535522
		1.4142134189605713 1.4142134189605713 0
		1.2247447967529297 1.2247447967529297 -0.99999994039535522
		0.70710670948028564 0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		-1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		-1.4142134189605713 -1.4142134189605713 0
		-1.2247447967529297 -1.2247447967529297 0.99999994039535522
		-0.70710670948028564 -0.70710670948028564 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		;
createNode transform -n "ball_bone_placer_R_upVector_grp" -p "ball_bone_placer_R";
	rename -uid "A46D62DE-4E25-0D9C-C520-F6B63D828874";
createNode transform -n "ball_bone_placer_R_upVector" -p "ball_bone_placer_R_upVector_grp";
	rename -uid "02AAC069-4FE2-A513-F2C8-D392264FB0D9";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7 0 0 ;
	setAttr ".sp" -type "double3" -7 0 0 ;
createNode nurbsCurve -n "ball_bone_placer_R_upVectorShape1" -p "ball_bone_placer_R_upVector";
	rename -uid "5279B9C7-4C1B-AE90-5145-EAA2EE74C3C7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-7 0 -1.0430812835693359e-08
		-7 0 -0.34999999999999998
		-8.4010731220245365 1.7158197142587371e-16 -0.34999999999999998
		-8.4010741233825676 1.7158209405686461e-16 -0.7388755559921264
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		-8.4010741233825676 1.7158209405686461e-16 0.7388755559921264
		-8.4010731220245365 1.7158197142587371e-16 0.34999999999999998
		-7 0 0.34999999999999998
		-7 0 -1.0430812835693359e-08
		-7 0.34999999999999998 0
		-8.4010731220245365 0.35000000000000014 0
		-8.4010741233825676 0.73887555599212662 0
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		-8.4010741233825676 -0.73887555599212618 0
		-8.4010731220245365 -0.34999999999999981 0
		-7 -0.34999999999999998 0
		-7 0 -1.0430812835693359e-08
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		;
createNode transform -n "cluster1ball_bone_placer_R_upvecHandle" -p "ball_bone_placer_R_upVector_grp";
	rename -uid "AB34549F-43AB-5A65-CC6E-C58C5D74E162";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1ball_bone_placer_R_upvecHandleShape" -p "cluster1ball_bone_placer_R_upvecHandle";
	rename -uid "D05EF9E7-43D2-D521-7208-0589F0A0F522";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1ball_bone_placer_R_upvecHandle_parentConstraint1" 
		-p "cluster1ball_bone_placer_R_upvecHandle";
	rename -uid "D10FC2F8-45DC-342A-8A76-6B994E5C86D9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ball_bone_placer_RW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2ball_bone_placer_R_upvecHandle" -p "ball_bone_placer_R_upVector_grp";
	rename -uid "E02F7CED-4B2D-AD65-CDCF-D98E40B61530";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2ball_bone_placer_R_upvecHandleShape" -p "cluster2ball_bone_placer_R_upvecHandle";
	rename -uid "1995EF26-4C42-EA76-FFE4-0499970A8933";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2ball_bone_placer_R_upvecHandle_parentConstraint1" 
		-p "cluster2ball_bone_placer_R_upvecHandle";
	rename -uid "973BAFFA-4022-7DB7-31FF-3FAF13691536";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ball_bone_placer_R_upVectorW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -10 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "ball_bone_placer_R_up_vec_curve" -p "ball_bone_placer_R_upVector_grp";
	rename -uid "AAEA1619-4D5C-938A-5559-05B6087DDAB7";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "ball_bone_placer_R_up_vec_curveShape" -p "ball_bone_placer_R_up_vec_curve";
	rename -uid "FE24B135-4ADD-90DB-E5BC-C68728A3B231";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "ball_bone_placer_R_up_vec_curveShapeOrig" -p "ball_bone_placer_R_up_vec_curve";
	rename -uid "46CE1D6C-4B8B-60A1-5764-18BAF916237C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1ball_bone_placer_R_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2ball_bone_placer_R_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1ball_bone_placer_R_upvec" 1 "cv[0]"
		"cluster2ball_bone_placer_R_upvec" 1 "cv[1]";
createNode aimConstraint -n "ball_bone_placer_R_upVector_grp_aimConstraint1" -p "ball_bone_placer_R_upVector_grp";
	rename -uid "86086132-4FEE-6518-FAAE-60871990D38C";
	addAttr -dcb 0 -ci true -sn "w0" -ln "ball_bone_placer_R_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr -k on ".w0";
createNode transform -n "foot_Zpos_loc_R" -p "ball_bone_placer_R";
	rename -uid "438DEF38-4CE2-3CAB-6276-969AD7A09496";
	setAttr ".v" no;
createNode locator -n "foot_Zpos_loc_RShape" -p "foot_Zpos_loc_R";
	rename -uid "766DF64D-41AD-B1C7-602C-71A89579D910";
	setAttr -k off ".v";
createNode transform -n "toeTip_bone_placer_R" -p "foot_bone_placer_R";
	rename -uid "EC059427-4F77-99FD-50EB-D5984B3DE88D";
	setAttr ".t" -type "double3" 0 -15 -10 ;
createNode nurbsCurve -n "toeTip_bone_placer_RShape1" -p "toeTip_bone_placer_R";
	rename -uid "53F03CB0-4942-D847-2365-799EAFB43BCE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 2
		0 -0.99999988079071045 1.7320507764816284
		0 -1.7320506572723389 0.99999994039535522
		0 -1.9999997615814209 0
		0 -1.7320506572723389 -0.99999994039535522
		0 -0.99999988079071045 -1.7320507764816284
		0 0 -2
		0 1 -1.7320507764816284
		0 1.732050895690918 -0.99999994039535522
		0 2 0
		0 1.732050895690918 0.99999994039535522
		0 1 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.99999988079071045 0 1.7320507764816284
		1.7320506572723389 0 0.99999994039535522
		1.9999997615814209 0 0
		1.7320506572723389 0 -0.99999994039535522
		0.99999988079071045 0 -1.7320507764816284
		0 0 -2
		-0.99999994039535522 0 -1.7320507764816284
		-1.7320507764816284 0 -0.99999994039535522
		-1.9999998807907104 0 0
		-1.7320507764816284 0 0.99999994039535522
		-0.99999994039535522 0 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 -0.70710670948028564 1.7320507764816284
		1.2247447967529297 -1.2247447967529297 0.99999994039535522
		1.4142134189605713 -1.4142134189605713 0
		1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710676908493042 0.70710676908493042 -1.7320507764816284
		-1.2247449159622192 1.2247449159622192 -0.99999994039535522
		-1.4142135381698608 1.4142135381698608 0
		-1.2247449159622192 1.2247449159622192 0.99999994039535522
		-0.70710676908493042 0.70710676908493042 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 0.70710670948028564 1.7320507764816284
		1.2247447967529297 1.2247447967529297 0.99999994039535522
		1.4142134189605713 1.4142134189605713 0
		1.2247447967529297 1.2247447967529297 -0.99999994039535522
		0.70710670948028564 0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		-1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		-1.4142134189605713 -1.4142134189605713 0
		-1.2247447967529297 -1.2247447967529297 0.99999994039535522
		-0.70710670948028564 -0.70710670948028564 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		;
createNode transform -n "toeTip_bone_placer_R_upVector_grp" -p "toeTip_bone_placer_R";
	rename -uid "3B447EDC-43F5-0BB4-3032-57AD861E8EE5";
createNode transform -n "toeTip_bone_placer_R_upVector" -p "toeTip_bone_placer_R_upVector_grp";
	rename -uid "46BC7133-4966-52D1-F7D0-90AD82EB3614";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7 0 0 ;
	setAttr ".sp" -type "double3" -7 0 0 ;
createNode nurbsCurve -n "toeTip_bone_placer_R_upVectorShape1" -p "toeTip_bone_placer_R_upVector";
	rename -uid "CCAD0CBA-41F0-71DB-3D2A-D0845555F33C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-7 0 -1.0430812835693359e-08
		-7 0 -0.34999999999999998
		-8.4010731220245365 1.7158197142587371e-16 -0.34999999999999998
		-8.4010741233825676 1.7158209405686461e-16 -0.7388755559921264
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		-8.4010741233825676 1.7158209405686461e-16 0.7388755559921264
		-8.4010731220245365 1.7158197142587371e-16 0.34999999999999998
		-7 0 0.34999999999999998
		-7 0 -1.0430812835693359e-08
		-7 0.34999999999999998 0
		-8.4010731220245365 0.35000000000000014 0
		-8.4010741233825676 0.73887555599212662 0
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		-8.4010741233825676 -0.73887555599212618 0
		-8.4010731220245365 -0.34999999999999981 0
		-7 -0.34999999999999998 0
		-7 0 -1.0430812835693359e-08
		-9.0380209445953366 2.4958558263939447e-16 -5.2154064178466794e-09
		;
createNode transform -n "cluster1toeTip_bone_placer_R_upvecHandle" -p "toeTip_bone_placer_R_upVector_grp";
	rename -uid "0D2E4C7C-440A-16E8-9244-15839B1ED1D2";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1toeTip_bone_placer_R_upvecHandleShape" -p "cluster1toeTip_bone_placer_R_upvecHandle";
	rename -uid "68F3D704-4CAB-5EBB-23D8-5E981484A665";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1toeTip_bone_placer_R_upvecHandle_parentConstraint1" 
		-p "cluster1toeTip_bone_placer_R_upvecHandle";
	rename -uid "C6270A69-4D05-88A7-1DF1-3C9E59CB52DC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toeTip_bone_placer_RW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2toeTip_bone_placer_R_upvecHandle" -p "toeTip_bone_placer_R_upVector_grp";
	rename -uid "1CC7A52F-4AB4-5DF2-4A0D-5CB9C70DBC4E";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2toeTip_bone_placer_R_upvecHandleShape" -p "cluster2toeTip_bone_placer_R_upvecHandle";
	rename -uid "C4ABF39F-4C32-2FD1-E357-15AE36338FF8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2toeTip_bone_placer_R_upvecHandle_parentConstraint1" 
		-p "cluster2toeTip_bone_placer_R_upvecHandle";
	rename -uid "1757C2DE-48CD-2E59-B000-61B9D70007A3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toeTip_bone_placer_R_upVectorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -10 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "toeTip_bone_placer_R_up_vec_curve" -p "toeTip_bone_placer_R_upVector_grp";
	rename -uid "E7F1BC7B-49F1-8DD6-175B-4AB1EC3F7DBD";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "toeTip_bone_placer_R_up_vec_curveShape" -p "toeTip_bone_placer_R_up_vec_curve";
	rename -uid "39A51CB1-4507-CB80-CC6E-5DBCA5D53662";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "toeTip_bone_placer_R_up_vec_curveShapeOrig" -p "toeTip_bone_placer_R_up_vec_curve";
	rename -uid "95B2D7D0-48FC-2895-F9D8-3594365E4FDA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1toeTip_bone_placer_R_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2toeTip_bone_placer_R_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1toeTip_bone_placer_R_upvec" 1 "cv[0]"
		"cluster2toeTip_bone_placer_R_upvec" 1 "cv[1]";
createNode aimConstraint -n "toeTip_bone_placer_R_upVector_grp_aimConstraint1" -p
		 "toeTip_bone_placer_R_upVector_grp";
	rename -uid "EAE73817-4874-D803-546A-05A1160D3F7B";
	addAttr -dcb 0 -ci true -sn "w0" -ln "toeTip_bone_placer_R_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr -k on ".w0";
createNode transform -n "SPINE_RIG_PLACER";
	rename -uid "CB5EA3DA-42C0-A32D-360E-0C917F19BFB6";
	addAttr -ci true -m -sn "placers" -ln "placers" -dt "string";
	addAttr -ci true -sn "placertype" -ln "placertype" -dt "string";
	addAttr -ci true -sn "curve" -ln "curve" -dt "string";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -min 0 -max 1 -at "bool";
	setAttr -s 10 ".placers";
	setAttr ".placers[0]" -type "string" "root_bone_placer";
	setAttr ".placers[1]" -type "string" "pelvis_bone_placer";
	setAttr ".placers[2]" -type "string" "spine1_bone_placer";
	setAttr ".placers[3]" -type "string" "spine2_bone_placer";
	setAttr ".placers[4]" -type "string" "spine3_bone_placer";
	setAttr ".placers[5]" -type "string" "spine4_bone_placer";
	setAttr ".placers[6]" -type "string" "spine5_bone_placer";
	setAttr ".placers[7]" -type "string" "neck1_bone_placer";
	setAttr ".placers[8]" -type "string" "neck2_bone_placer";
	setAttr ".placers[9]" -type "string" "head_bone_placer";
	setAttr ".placertype" -type "string" "spine";
	setAttr ".curve" -type "string" "spine_proxy_curve";
	setAttr ".stretchy" yes;
createNode transform -n "SPINE_z_vec_LOCS" -p "SPINE_RIG_PLACER";
	rename -uid "E022B425-4C67-3892-1D91-5082F25086DA";
createNode transform -n "root_bone_placer_loc" -p "SPINE_z_vec_LOCS";
	rename -uid "977CA3C0-4C41-E98E-6432-AD81FFDD5EEB";
	setAttr ".it" no;
createNode locator -n "root_bone_placer_locShape" -p "root_bone_placer_loc";
	rename -uid "3915084C-412B-3D21-79C3-E497755031CA";
	setAttr -k off ".v";
createNode transform -n "pelvis_bone_placer_loc" -p "SPINE_z_vec_LOCS";
	rename -uid "061D562D-48DC-A422-7EC6-10A5C983CC41";
	setAttr ".it" no;
createNode locator -n "pelvis_bone_placer_locShape" -p "pelvis_bone_placer_loc";
	rename -uid "FF86AB07-4EDC-8153-8B82-82977EEE4FF3";
	setAttr -k off ".v";
createNode transform -n "spine1_bone_placer_loc" -p "SPINE_z_vec_LOCS";
	rename -uid "9B0864C8-4D32-9FC0-B0DC-DA856CB7FEC5";
	setAttr ".it" no;
createNode locator -n "spine1_bone_placer_locShape" -p "spine1_bone_placer_loc";
	rename -uid "69CC269E-4276-8F1B-F859-F3AD5AF0D0D3";
	setAttr -k off ".v";
createNode transform -n "spine2_bone_placer_loc" -p "SPINE_z_vec_LOCS";
	rename -uid "A3D36572-4D4A-7C0B-C5A0-CDAC111753A1";
	setAttr ".it" no;
createNode locator -n "spine2_bone_placer_locShape" -p "spine2_bone_placer_loc";
	rename -uid "0FA388E9-4C3D-2820-EB15-8BB59F96C6B6";
	setAttr -k off ".v";
createNode transform -n "spine3_bone_placer_loc" -p "SPINE_z_vec_LOCS";
	rename -uid "D6A4BE97-43E0-32A8-8345-B7BCDFE7BCBC";
	setAttr ".it" no;
createNode locator -n "spine3_bone_placer_locShape" -p "spine3_bone_placer_loc";
	rename -uid "386F4493-4372-ED4B-D048-38B610198839";
	setAttr -k off ".v";
createNode transform -n "spine4_bone_placer_loc" -p "SPINE_z_vec_LOCS";
	rename -uid "5C5B9D88-4E33-723B-C7DA-4FB006C49200";
	setAttr ".it" no;
createNode locator -n "spine4_bone_placer_locShape" -p "spine4_bone_placer_loc";
	rename -uid "CD5F4359-4BCF-333B-D9DD-8E96818F89E8";
	setAttr -k off ".v";
createNode transform -n "spine5_bone_placer_loc" -p "SPINE_z_vec_LOCS";
	rename -uid "31E6C468-4661-31A1-479D-8E920510C966";
	setAttr ".it" no;
createNode locator -n "spine5_bone_placer_locShape" -p "spine5_bone_placer_loc";
	rename -uid "926E212C-4A2C-E05A-299F-7CB23FA44432";
	setAttr -k off ".v";
createNode transform -n "neck1_bone_placer_loc" -p "SPINE_z_vec_LOCS";
	rename -uid "F96A7927-42D7-EEBB-04E7-B2875B90A40A";
	setAttr ".it" no;
createNode locator -n "neck1_bone_placer_locShape" -p "neck1_bone_placer_loc";
	rename -uid "21BAFCC4-4D24-42E4-B016-15AEC6C6A0C0";
	setAttr -k off ".v";
createNode transform -n "neck2_bone_placer_loc" -p "SPINE_z_vec_LOCS";
	rename -uid "C343D070-4D35-0562-6E22-9A9CDCE240DD";
	setAttr ".it" no;
createNode locator -n "neck2_bone_placer_locShape" -p "neck2_bone_placer_loc";
	rename -uid "11C6089D-416F-15C6-838D-0BA69866257B";
	setAttr -k off ".v";
createNode transform -n "spine_placercluster_0Handle" -p "SPINE_RIG_PLACER";
	rename -uid "15AECE8B-45E0-34A8-114A-CE98EF95E73D";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 -1 0 ;
	setAttr ".sp" -type "double3" 0 -1 0 ;
createNode clusterHandle -n "spine_placercluster_0HandleShape" -p "spine_placercluster_0Handle";
	rename -uid "B28E69C7-4FB4-E1B5-7FC3-FDAA8F505E4E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 -1 0 ;
createNode pointConstraint -n "spine_placercluster_0Handle_pointConstraint1" -p "spine_placercluster_0Handle";
	rename -uid "4AADE9DD-41CE-C1B1-3728-119CEB35BB00";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_bone_placerW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 1 0 ;
	setAttr -k on ".w0";
createNode transform -n "spine_placercluster_1Handle" -p "SPINE_RIG_PLACER";
	rename -uid "DC12C943-48C5-3124-CAE3-BAA23BF1E873";
	setAttr ".v" no;
createNode clusterHandle -n "spine_placercluster_1HandleShape" -p "spine_placercluster_1Handle";
	rename -uid "A7D3390C-40B5-8D72-5566-B0A41734ACFE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode pointConstraint -n "spine_placercluster_1Handle_pointConstraint1" -p "spine_placercluster_1Handle";
	rename -uid "BE5D38B3-46B9-F35F-B2F9-748F541D7C61";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pelvis_bone_placerW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 0 90 ;
	setAttr -k on ".w0";
createNode transform -n "spine_placercluster_2Handle" -p "SPINE_RIG_PLACER";
	rename -uid "509970B0-4820-F7E3-EFF9-F2BB7F9847B9";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 1 0 ;
	setAttr ".sp" -type "double3" 0 1 0 ;
createNode clusterHandle -n "spine_placercluster_2HandleShape" -p "spine_placercluster_2Handle";
	rename -uid "7B854DA2-4282-2229-1D04-96A0E5BF1C00";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 1 0 ;
createNode pointConstraint -n "spine_placercluster_2Handle_pointConstraint1" -p "spine_placercluster_2Handle";
	rename -uid "A5C8705B-426E-5D61-77C2-CB9FD4E06825";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine1_bone_placerW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 -1 100 ;
	setAttr -k on ".w0";
createNode transform -n "spine_placercluster_3Handle" -p "SPINE_RIG_PLACER";
	rename -uid "9965C112-40F0-552E-83DB-9386FA84DE59";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 2 0 ;
	setAttr ".sp" -type "double3" 0 2 0 ;
createNode clusterHandle -n "spine_placercluster_3HandleShape" -p "spine_placercluster_3Handle";
	rename -uid "16C95E0A-4E4A-75C7-DA10-50AEA70183FF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 2 0 ;
createNode pointConstraint -n "spine_placercluster_3Handle_pointConstraint1" -p "spine_placercluster_3Handle";
	rename -uid "6384F3D0-4CED-28A6-4F82-29AE0B7E04D3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine2_bone_placerW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 -2 110 ;
	setAttr -k on ".w0";
createNode transform -n "spine_placercluster_4Handle" -p "SPINE_RIG_PLACER";
	rename -uid "EEDC981F-4E22-8874-27EE-6188405E85BD";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 3 0 ;
	setAttr ".sp" -type "double3" 0 3 0 ;
createNode clusterHandle -n "spine_placercluster_4HandleShape" -p "spine_placercluster_4Handle";
	rename -uid "14D69B28-4F0A-AA26-C23B-C6B6DF0679E4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 3 0 ;
createNode pointConstraint -n "spine_placercluster_4Handle_pointConstraint1" -p "spine_placercluster_4Handle";
	rename -uid "9332CB85-406D-E605-EA2D-BD8FF5A108C0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine3_bone_placerW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 -3 120 ;
	setAttr -k on ".w0";
createNode transform -n "spine_placercluster_5Handle" -p "SPINE_RIG_PLACER";
	rename -uid "6F318A67-4C21-BB32-5ECA-FDB3296CECDC";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 4 0 ;
	setAttr ".sp" -type "double3" 0 4 0 ;
createNode clusterHandle -n "spine_placercluster_5HandleShape" -p "spine_placercluster_5Handle";
	rename -uid "1AD192F3-4D60-D4B9-BCDE-7AAFA1148D8B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 4 0 ;
createNode pointConstraint -n "spine_placercluster_5Handle_pointConstraint1" -p "spine_placercluster_5Handle";
	rename -uid "FFEB77E5-4008-588B-F186-6398227657B1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine4_bone_placerW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 -4 130 ;
	setAttr -k on ".w0";
createNode transform -n "spine_placercluster_6Handle" -p "SPINE_RIG_PLACER";
	rename -uid "1CBD57F0-4C2B-BD96-76E6-489BB739A178";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 5 0 ;
	setAttr ".sp" -type "double3" 0 5 0 ;
createNode clusterHandle -n "spine_placercluster_6HandleShape" -p "spine_placercluster_6Handle";
	rename -uid "762BC5E2-49E5-E8C6-708B-548063FEF53B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 5 0 ;
createNode pointConstraint -n "spine_placercluster_6Handle_pointConstraint1" -p "spine_placercluster_6Handle";
	rename -uid "5CC4A49F-46F6-63CB-F457-7A9A107588D7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine5_bone_placerW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 -5 140 ;
	setAttr -k on ".w0";
createNode transform -n "spine_placercluster_7Handle" -p "SPINE_RIG_PLACER";
	rename -uid "D7E9A1E9-4A8A-72EB-18AD-E0821BE62C13";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 6 0 ;
	setAttr ".sp" -type "double3" 0 6 0 ;
createNode clusterHandle -n "spine_placercluster_7HandleShape" -p "spine_placercluster_7Handle";
	rename -uid "B46AB63A-4B1F-F2ED-50CC-64809E934E67";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 6 0 ;
createNode pointConstraint -n "spine_placercluster_7Handle_pointConstraint1" -p "spine_placercluster_7Handle";
	rename -uid "D25FAEB4-4800-5A82-D769-59A9B933BA04";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "neck1_bone_placerW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 -8 147.5 ;
	setAttr -k on ".w0";
createNode transform -n "spine_placercluster_8Handle" -p "SPINE_RIG_PLACER";
	rename -uid "FD2D616D-4EDA-DC68-21AB-A995AAD09AA3";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 7 0 ;
	setAttr ".sp" -type "double3" 0 7 0 ;
createNode clusterHandle -n "spine_placercluster_8HandleShape" -p "spine_placercluster_8Handle";
	rename -uid "E51080E9-4B17-C593-0769-ECA297F99EC1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 7 0 ;
createNode pointConstraint -n "spine_placercluster_8Handle_pointConstraint1" -p "spine_placercluster_8Handle";
	rename -uid "51DC6DA8-47FB-424B-BE99-978C69A7F3C3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "neck2_bone_placerW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 -11 155 ;
	setAttr -k on ".w0";
createNode transform -n "spine_placercluster_9Handle" -p "SPINE_RIG_PLACER";
	rename -uid "9C8F9DBF-40DB-7CA1-08B8-00A0509D23ED";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 8 0 ;
	setAttr ".sp" -type "double3" 0 8 0 ;
createNode clusterHandle -n "spine_placercluster_9HandleShape" -p "spine_placercluster_9Handle";
	rename -uid "6FDEE973-4530-5EB2-7A12-BCB9B2EAF9F2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 8 0 ;
createNode pointConstraint -n "spine_placercluster_9Handle_pointConstraint1" -p "spine_placercluster_9Handle";
	rename -uid "71A8F66F-407D-34F6-A815-ACA0E0390991";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "head_bone_placerW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 -14 163 ;
	setAttr -k on ".w0";
createNode transform -n "root_bone_placer" -p "SPINE_RIG_PLACER";
	rename -uid "4AE4533C-4CEE-00D6-C870-85B530211CAF";
createNode nurbsCurve -n "root_bone_placerShape1" -p "root_bone_placer";
	rename -uid "81345A89-4E12-C6B4-3401-109CE63B7FD1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 3
		0 -1.4999998211860657 2.5980761647224426
		0 -2.5980759859085083 1.4999999105930328
		0 -2.9999996423721313 0
		0 -2.5980759859085083 -1.4999999105930328
		0 -1.4999998211860657 -2.5980761647224426
		0 0 -3
		0 1.5 -2.5980761647224426
		0 2.598076343536377 -1.4999999105930328
		0 3 0
		0 2.598076343536377 1.4999999105930328
		0 1.5 2.5980761647224426
		0 0 3
		0 0 3
		0 0 3
		0 0 3
		0 0 3
		1.4999998211860657 0 2.5980761647224426
		2.5980759859085083 0 1.4999999105930328
		2.9999996423721313 0 0
		2.5980759859085083 0 -1.4999999105930328
		1.4999998211860657 0 -2.5980761647224426
		0 0 -3
		-1.4999999105930328 0 -2.5980761647224426
		-2.5980761647224426 0 -1.4999999105930328
		-2.9999998211860657 0 0
		-2.5980761647224426 0 1.4999999105930328
		-1.4999999105930328 0 2.5980761647224426
		0 0 3
		0 0 3
		0 0 3
		0 0 3
		0 0 3
		0 0 3
		1.0606600642204285 -1.0606600642204285 2.5980761647224426
		1.8371171951293945 -1.8371171951293945 1.4999999105930328
		2.1213201284408569 -2.1213201284408569 0
		1.8371171951293945 -1.8371171951293945 -1.4999999105930328
		1.0606600642204285 -1.0606600642204285 -2.5980761647224426
		0 0 -3
		-1.0606601536273956 1.0606601536273956 -2.5980761647224426
		-1.8371173739433289 1.8371173739433289 -1.4999999105930328
		-2.1213203072547913 2.1213203072547913 0
		-1.8371173739433289 1.8371173739433289 1.4999999105930328
		-1.0606601536273956 1.0606601536273956 2.5980761647224426
		0 0 3
		0 0 3
		0 0 3
		0 0 3
		0 0 3
		0 0 3
		1.0606600642204285 1.0606600642204285 2.5980761647224426
		1.8371171951293945 1.8371171951293945 1.4999999105930328
		2.1213201284408569 2.1213201284408569 0
		1.8371171951293945 1.8371171951293945 -1.4999999105930328
		1.0606600642204285 1.0606600642204285 -2.5980761647224426
		0 0 -3
		-1.0606600642204285 -1.0606600642204285 -2.5980761647224426
		-1.8371171951293945 -1.8371171951293945 -1.4999999105930328
		-2.1213201284408569 -2.1213201284408569 0
		-1.8371171951293945 -1.8371171951293945 1.4999999105930328
		-1.0606600642204285 -1.0606600642204285 2.5980761647224426
		0 0 3
		0 0 3
		0 0 3
		0 0 3
		0 0 3
		;
createNode transform -n "root_bone_placer_upVector_grp" -p "root_bone_placer";
	rename -uid "6052AA18-45A7-C522-9C7A-9D9F93A9716B";
createNode transform -n "root_bone_placer_upVector" -p "root_bone_placer_upVector_grp";
	rename -uid "CCD0D29A-4D3A-DE19-2BE3-C9B89E3D3F44";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0 4 ;
	setAttr ".sp" -type "double3" 0 0 4 ;
createNode nurbsCurve -n "root_bone_placer_upVectorShape1" -p "root_bone_placer_upVector";
	rename -uid "07DAD765-42D0-3A4B-6A8F-3B81A1F9DC71";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		2.0861625671386717e-08 0 4
		0.69999999999999996 0 4
		0.69999999999999996 0 6.8021462440490721
		1.4777511119842528 0 6.8021482467651371
		1.0430812835693359e-08 0 8.0760418891906731
		-1.4777511119842528 0 6.8021482467651371
		-0.69999999999999996 0 6.8021462440490721
		-0.69999999999999996 0 4
		2.0861625671386717e-08 0 4
		0 -0.69999999999999996 4
		0 -0.69999999999999996 6.8021462440490721
		0 -1.4777511119842528 6.8021482467651371
		1.0430812835693359e-08 0 8.0760418891906731
		0 1.4777511119842528 6.8021482467651371
		0 0.69999999999999996 6.8021462440490721
		0 0.69999999999999996 4
		2.0861625671386717e-08 0 4
		1.0430812835693359e-08 0 8.0760418891906731
		;
createNode transform -n "cluster1root_bone_placer_upvecHandle" -p "root_bone_placer_upVector_grp";
	rename -uid "EB56E5E8-4E87-14DF-0BBB-44A30BAB9921";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1root_bone_placer_upvecHandleShape" -p "cluster1root_bone_placer_upvecHandle";
	rename -uid "FDD82B7F-46D8-C3E5-B850-08A647B8A79B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1root_bone_placer_upvecHandle_parentConstraint1" 
		-p "cluster1root_bone_placer_upvecHandle";
	rename -uid "B29806B2-4892-228D-8933-F4AB3D11AE16";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_bone_placerW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2root_bone_placer_upvecHandle" -p "root_bone_placer_upVector_grp";
	rename -uid "BC565E59-4A16-8461-71F5-D3933A19BA72";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2root_bone_placer_upvecHandleShape" -p "cluster2root_bone_placer_upvecHandle";
	rename -uid "B9A406AE-4CAC-8AA1-F8B1-26B6E63A3F90";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2root_bone_placer_upvecHandle_parentConstraint1" 
		-p "cluster2root_bone_placer_upvecHandle";
	rename -uid "0E763112-4061-B211-34F3-C197BCE6668A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_bone_placer_upVectorW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -3 0 3 ;
	setAttr -k on ".w0";
createNode transform -n "root_bone_placer_up_vec_curve" -p "root_bone_placer_upVector_grp";
	rename -uid "DE41E3DC-4C75-401C-BBEB-7E9730A189BA";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "root_bone_placer_up_vec_curveShape" -p "root_bone_placer_up_vec_curve";
	rename -uid "6CFA186A-4249-7CBA-B25B-16835A31EB8C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "root_bone_placer_up_vec_curveShapeOrig" -p "root_bone_placer_up_vec_curve";
	rename -uid "54E2B3FB-4156-878B-96F7-E3805499FD3B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1root_bone_placer_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2root_bone_placer_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1root_bone_placer_upvec" 1 "cv[0]"
		"cluster2root_bone_placer_upvec" 1 "cv[1]";
createNode transform -n "pelvis_bone_placer" -p "SPINE_RIG_PLACER";
	rename -uid "E53C3711-4BCE-4452-E91B-8E8BAF070D30";
	setAttr ".t" -type "double3" 0 0 90 ;
createNode nurbsCurve -n "pelvis_bone_placerShape1" -p "pelvis_bone_placer";
	rename -uid "68F0F2BC-4212-0139-2831-9F92AE11CB37";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 5
		0 -2.4999997019767761 4.330126941204071
		0 -4.3301266431808472 2.4999998509883881
		0 -4.9999994039535522 0
		0 -4.3301266431808472 -2.4999998509883881
		0 -2.4999997019767761 -4.330126941204071
		0 0 -5
		0 2.5 -4.330126941204071
		0 4.3301272392272949 -2.4999998509883881
		0 5 0
		0 4.3301272392272949 2.4999998509883881
		0 2.5 4.330126941204071
		0 0 5
		0 0 5
		0 0 5
		0 0 5
		0 0 5
		2.4999997019767761 0 4.330126941204071
		4.3301266431808472 0 2.4999998509883881
		4.9999994039535522 0 0
		4.3301266431808472 0 -2.4999998509883881
		2.4999997019767761 0 -4.330126941204071
		0 0 -5
		-2.4999998509883881 0 -4.330126941204071
		-4.330126941204071 0 -2.4999998509883881
		-4.9999997019767761 0 0
		-4.330126941204071 0 2.4999998509883881
		-2.4999998509883881 0 4.330126941204071
		0 0 5
		0 0 5
		0 0 5
		0 0 5
		0 0 5
		0 0 5
		1.7677667737007141 -1.7677667737007141 4.330126941204071
		3.0618619918823242 -3.0618619918823242 2.4999998509883881
		3.5355335474014282 -3.5355335474014282 0
		3.0618619918823242 -3.0618619918823242 -2.4999998509883881
		1.7677667737007141 -1.7677667737007141 -4.330126941204071
		0 0 -5
		-1.767766922712326 1.767766922712326 -4.330126941204071
		-3.0618622899055481 3.0618622899055481 -2.4999998509883881
		-3.5355338454246521 3.5355338454246521 0
		-3.0618622899055481 3.0618622899055481 2.4999998509883881
		-1.767766922712326 1.767766922712326 4.330126941204071
		0 0 5
		0 0 5
		0 0 5
		0 0 5
		0 0 5
		0 0 5
		1.7677667737007141 1.7677667737007141 4.330126941204071
		3.0618619918823242 3.0618619918823242 2.4999998509883881
		3.5355335474014282 3.5355335474014282 0
		3.0618619918823242 3.0618619918823242 -2.4999998509883881
		1.7677667737007141 1.7677667737007141 -4.330126941204071
		0 0 -5
		-1.7677667737007141 -1.7677667737007141 -4.330126941204071
		-3.0618619918823242 -3.0618619918823242 -2.4999998509883881
		-3.5355335474014282 -3.5355335474014282 0
		-3.0618619918823242 -3.0618619918823242 2.4999998509883881
		-1.7677667737007141 -1.7677667737007141 4.330126941204071
		0 0 5
		0 0 5
		0 0 5
		0 0 5
		0 0 5
		;
createNode transform -n "pelvis_bone_placer_upVector_grp" -p "pelvis_bone_placer";
	rename -uid "B9DA4DC3-427F-FFB4-C5D0-70BA684FB2E6";
	setAttr ".t" -type "double3" 0 0 -90 ;
	setAttr ".rp" -type "double3" 0 0 90 ;
	setAttr ".sp" -type "double3" 0 0 90 ;
createNode transform -n "pelvis_bone_placer_upVector" -p "pelvis_bone_placer_upVector_grp";
	rename -uid "65284DA8-42B1-5A67-B756-DDADF467BCF1";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -12 0 90 ;
	setAttr ".sp" -type "double3" -12 0 90 ;
createNode nurbsCurve -n "pelvis_bone_placer_upVectorShape1" -p "pelvis_bone_placer_upVector";
	rename -uid "127B453C-4E8D-FB3D-5F6A-6E8E19169AB5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-12 0 89.99999998956919
		-12 0 89.650000000000006
		-13.401073122024536 1.7158197142587371e-16 89.650000000000006
		-13.401074123382568 1.7158209405686461e-16 89.261124444007876
		-14.038020944595337 2.4958558263939447e-16 89.999999994784588
		-13.401074123382568 1.7158209405686461e-16 90.738875555992124
		-13.401073122024536 1.7158197142587371e-16 90.349999999999994
		-12 0 90.349999999999994
		-12 0 89.99999998956919
		-12 0.34999999999999998 90
		-13.401073122024536 0.35000000000000014 90
		-13.401074123382568 0.73887555599212662 90
		-14.038020944595337 2.4958558263939447e-16 89.999999994784588
		-13.401074123382568 -0.73887555599212618 90
		-13.401073122024536 -0.34999999999999981 90
		-12 -0.34999999999999998 90
		-12 0 89.99999998956919
		-14.038020944595337 2.4958558263939447e-16 89.999999994784588
		;
createNode transform -n "cluster1pelvis_bone_placer_upvecHandle" -p "pelvis_bone_placer_upVector_grp";
	rename -uid "8C301852-46F8-CC56-EC07-4B87933419EC";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1pelvis_bone_placer_upvecHandleShape" -p "cluster1pelvis_bone_placer_upvecHandle";
	rename -uid "C2443FD4-484F-4E41-AB79-33BEC5966A48";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1pelvis_bone_placer_upvecHandle_parentConstraint1" 
		-p "cluster1pelvis_bone_placer_upvecHandle";
	rename -uid "D9631B3D-4F0D-8175-441C-028AC0679A85";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pelvis_bone_placerW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1 0 89 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2pelvis_bone_placer_upvecHandle" -p "pelvis_bone_placer_upVector_grp";
	rename -uid "B1475B88-4F26-8E2D-20EA-B2A94C613E41";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2pelvis_bone_placer_upvecHandleShape" -p "cluster2pelvis_bone_placer_upvecHandle";
	rename -uid "7996943B-4811-0F99-2AC5-B3AEB762AAE9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2pelvis_bone_placer_upvecHandle_parentConstraint1" 
		-p "cluster2pelvis_bone_placer_upvecHandle";
	rename -uid "395A0ADC-4A38-E849-DA79-9792AF8BAE67";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pelvis_bone_placer_upVectorW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -15 0 89 ;
	setAttr -k on ".w0";
createNode transform -n "pelvis_bone_placer_up_vec_curve" -p "pelvis_bone_placer_upVector_grp";
	rename -uid "041228D2-44A5-AA27-709D-599A9D4FCF0C";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "pelvis_bone_placer_up_vec_curveShape" -p "pelvis_bone_placer_up_vec_curve";
	rename -uid "182943B8-4185-C299-3B1A-DCB6E9D010BA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "pelvis_bone_placer_up_vec_curveShapeOrig" -p "pelvis_bone_placer_up_vec_curve";
	rename -uid "7F85370E-433C-A2AA-E534-EA9F1A84EDB5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1pelvis_bone_placer_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2pelvis_bone_placer_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1pelvis_bone_placer_upvec" 1 "cv[0]"
		"cluster2pelvis_bone_placer_upvec" 1 "cv[1]";
createNode transform -n "spine1_bone_placer" -p "SPINE_RIG_PLACER";
	rename -uid "0FD549A7-44DD-8B6F-B782-E1854EDEAB36";
	setAttr ".t" -type "double3" 0 0 100 ;
createNode nurbsCurve -n "spine1_bone_placerShape1" -p "spine1_bone_placer";
	rename -uid "94DC1CD3-4A6A-665E-C0AD-BA81DB8B4A57";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 2
		0 -0.99999988079071045 1.7320507764816284
		0 -1.7320506572723389 0.99999994039535522
		0 -1.9999997615814209 0
		0 -1.7320506572723389 -0.99999994039535522
		0 -0.99999988079071045 -1.7320507764816284
		0 0 -2
		0 1 -1.7320507764816284
		0 1.732050895690918 -0.99999994039535522
		0 2 0
		0 1.732050895690918 0.99999994039535522
		0 1 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		1.4999998211860657 0 1.7320507764816284
		2.5980759859085083 0 0.99999994039535522
		2.9999996423721313 0 0
		2.5980759859085083 0 -0.99999994039535522
		1.4999998211860657 0 -1.7320507764816284
		0 0 -2
		-1.4999999105930328 0 -1.7320507764816284
		-2.5980761647224426 0 -0.99999994039535522
		-2.9999998211860657 0 0
		-2.5980761647224426 0 0.99999994039535522
		-1.4999999105930328 0 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		1.0606600642204285 -0.70710670948028564 1.7320507764816284
		1.8371171951293945 -1.2247447967529297 0.99999994039535522
		2.1213201284408569 -1.4142134189605713 0
		1.8371171951293945 -1.2247447967529297 -0.99999994039535522
		1.0606600642204285 -0.70710670948028564 -1.7320507764816284
		0 0 -2
		-1.0606601536273956 0.70710676908493042 -1.7320507764816284
		-1.8371173739433289 1.2247449159622192 -0.99999994039535522
		-2.1213203072547913 1.4142135381698608 0
		-1.8371173739433289 1.2247449159622192 0.99999994039535522
		-1.0606601536273956 0.70710676908493042 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		1.0606600642204285 0.70710670948028564 1.7320507764816284
		1.8371171951293945 1.2247447967529297 0.99999994039535522
		2.1213201284408569 1.4142134189605713 0
		1.8371171951293945 1.2247447967529297 -0.99999994039535522
		1.0606600642204285 0.70710670948028564 -1.7320507764816284
		0 0 -2
		-1.0606600642204285 -0.70710670948028564 -1.7320507764816284
		-1.8371171951293945 -1.2247447967529297 -0.99999994039535522
		-2.1213201284408569 -1.4142134189605713 0
		-1.8371171951293945 -1.2247447967529297 0.99999994039535522
		-1.0606600642204285 -0.70710670948028564 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		;
createNode transform -n "spine1_bone_placer_upVector_grp" -p "spine1_bone_placer";
	rename -uid "D54E73DC-4CCA-A2D8-8408-26AF56C9F6D3";
	setAttr ".t" -type "double3" 0 0 -100 ;
	setAttr ".rp" -type "double3" 0 0 100 ;
	setAttr ".sp" -type "double3" 0 0 100 ;
createNode transform -n "spine1_bone_placer_upVector" -p "spine1_bone_placer_upVector_grp";
	rename -uid "F9F8B3D8-45B1-5696-521D-74B4EA5B596A";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7 0 100 ;
	setAttr ".sp" -type "double3" -7 0 100 ;
createNode nurbsCurve -n "spine1_bone_placer_upVectorShape1" -p "spine1_bone_placer_upVector";
	rename -uid "81C4F346-42B0-7DB7-6D5B-CC8239A7BB5F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-7 0 99.99999998956919
		-7 0 99.650000000000006
		-8.4010731220245365 1.7158197142587371e-16 99.650000000000006
		-8.4010741233825676 1.7158209405686461e-16 99.261124444007876
		-9.0380209445953366 2.4958558263939447e-16 99.999999994784588
		-8.4010741233825676 1.7158209405686461e-16 100.73887555599212
		-8.4010731220245365 1.7158197142587371e-16 100.34999999999999
		-7 0 100.34999999999999
		-7 0 99.99999998956919
		-7 0.34999999999999998 100
		-8.4010731220245365 0.35000000000000014 100
		-8.4010741233825676 0.73887555599212662 100
		-9.0380209445953366 2.4958558263939447e-16 99.999999994784588
		-8.4010741233825676 -0.73887555599212618 100
		-8.4010731220245365 -0.34999999999999981 100
		-7 -0.34999999999999998 100
		-7 0 99.99999998956919
		-9.0380209445953366 2.4958558263939447e-16 99.999999994784588
		;
createNode transform -n "cluster1spine1_bone_placer_upvecHandle" -p "spine1_bone_placer_upVector_grp";
	rename -uid "39D65E94-43F0-967C-A9B1-1FB3BD205A55";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1spine1_bone_placer_upvecHandleShape" -p "cluster1spine1_bone_placer_upvecHandle";
	rename -uid "21E9F2BD-4CF2-7A82-8810-C4A31964558F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1spine1_bone_placer_upvecHandle_parentConstraint1" 
		-p "cluster1spine1_bone_placer_upvecHandle";
	rename -uid "628038F6-4704-24A0-545B-E0829BC1F5FF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine1_bone_placerW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1 0 99 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2spine1_bone_placer_upvecHandle" -p "spine1_bone_placer_upVector_grp";
	rename -uid "534A0639-419B-526D-0443-7FB6DF2D1710";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2spine1_bone_placer_upvecHandleShape" -p "cluster2spine1_bone_placer_upvecHandle";
	rename -uid "6CA01A5F-4E19-7BE8-E6CF-49BA3F656947";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2spine1_bone_placer_upvecHandle_parentConstraint1" 
		-p "cluster2spine1_bone_placer_upvecHandle";
	rename -uid "A471A2C1-4AB6-9981-2C64-A5923E7FBB4B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine1_bone_placer_upVectorW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -10 0 99 ;
	setAttr -k on ".w0";
createNode transform -n "spine1_bone_placer_up_vec_curve" -p "spine1_bone_placer_upVector_grp";
	rename -uid "104D1F5C-48AD-6A5D-42A1-E68CA352BDEA";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "spine1_bone_placer_up_vec_curveShape" -p "spine1_bone_placer_up_vec_curve";
	rename -uid "ACE64DC4-4073-FC06-C761-AFBD50C6EB67";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "spine1_bone_placer_up_vec_curveShapeOrig" -p "spine1_bone_placer_up_vec_curve";
	rename -uid "3A58038E-45F3-0B21-9CCC-4DB87612EFCF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1spine1_bone_placer_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2spine1_bone_placer_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1spine1_bone_placer_upvec" 1 "cv[0]"
		"cluster2spine1_bone_placer_upvec" 1 "cv[1]";
createNode transform -n "spine2_bone_placer" -p "SPINE_RIG_PLACER";
	rename -uid "7AF26968-4F2E-077E-9A23-36948B0EF920";
	setAttr ".t" -type "double3" 0 0 110 ;
createNode nurbsCurve -n "spine2_bone_placerShape1" -p "spine2_bone_placer";
	rename -uid "21B6AD7F-4770-E72A-2BEB-218DB3DD7EE8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 2
		0 -0.99999988079071045 1.7320507764816284
		0 -1.7320506572723389 0.99999994039535522
		0 -1.9999997615814209 0
		0 -1.7320506572723389 -0.99999994039535522
		0 -0.99999988079071045 -1.7320507764816284
		0 0 -2
		0 1 -1.7320507764816284
		0 1.732050895690918 -0.99999994039535522
		0 2 0
		0 1.732050895690918 0.99999994039535522
		0 1 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		2.9999996423721313 0 1.7320507764816284
		5.1961519718170166 0 0.99999994039535522
		5.9999992847442627 0 0
		5.1961519718170166 0 -0.99999994039535522
		2.9999996423721313 0 -1.7320507764816284
		0 0 -2
		-2.9999998211860657 0 -1.7320507764816284
		-5.1961523294448853 0 -0.99999994039535522
		-5.9999996423721313 0 0
		-5.1961523294448853 0 0.99999994039535522
		-2.9999998211860657 0 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		2.1213201284408569 -0.70710670948028564 1.7320507764816284
		3.6742343902587891 -1.2247447967529297 0.99999994039535522
		4.2426402568817139 -1.4142134189605713 0
		3.6742343902587891 -1.2247447967529297 -0.99999994039535522
		2.1213201284408569 -0.70710670948028564 -1.7320507764816284
		0 0 -2
		-2.1213203072547913 0.70710676908493042 -1.7320507764816284
		-3.6742347478866577 1.2247449159622192 -0.99999994039535522
		-4.2426406145095825 1.4142135381698608 0
		-3.6742347478866577 1.2247449159622192 0.99999994039535522
		-2.1213203072547913 0.70710676908493042 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		2.1213201284408569 0.70710670948028564 1.7320507764816284
		3.6742343902587891 1.2247447967529297 0.99999994039535522
		4.2426402568817139 1.4142134189605713 0
		3.6742343902587891 1.2247447967529297 -0.99999994039535522
		2.1213201284408569 0.70710670948028564 -1.7320507764816284
		0 0 -2
		-2.1213201284408569 -0.70710670948028564 -1.7320507764816284
		-3.6742343902587891 -1.2247447967529297 -0.99999994039535522
		-4.2426402568817139 -1.4142134189605713 0
		-3.6742343902587891 -1.2247447967529297 0.99999994039535522
		-2.1213201284408569 -0.70710670948028564 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		;
createNode transform -n "spine2_bone_placer_upVector_grp" -p "spine2_bone_placer";
	rename -uid "40F9301E-4F28-76D3-4CDD-439D9931AF20";
	setAttr ".t" -type "double3" 0 0 -110 ;
	setAttr ".rp" -type "double3" 0 0 110 ;
	setAttr ".sp" -type "double3" 0 0 110 ;
createNode transform -n "spine2_bone_placer_upVector" -p "spine2_bone_placer_upVector_grp";
	rename -uid "FA58E250-46F4-AC25-6DC3-AB9941ABDCDB";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -9.5 0 110 ;
	setAttr ".sp" -type "double3" -9.5 0 110 ;
createNode nurbsCurve -n "spine2_bone_placer_upVectorShape1" -p "spine2_bone_placer_upVector";
	rename -uid "6C00D590-4365-CE05-BE74-B7AF1070C44F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-9.5 0 109.99999998956919
		-9.5 0 109.65000000000001
		-10.901073122024536 1.7158197142587371e-16 109.65000000000001
		-10.901074123382568 1.7158209405686461e-16 109.26112444400788
		-11.538020944595337 2.4958558263939447e-16 109.99999999478459
		-10.901074123382568 1.7158209405686461e-16 110.73887555599212
		-10.901073122024536 1.7158197142587371e-16 110.34999999999999
		-9.5 0 110.34999999999999
		-9.5 0 109.99999998956919
		-9.5 0.34999999999999998 110
		-10.901073122024536 0.35000000000000014 110
		-10.901074123382568 0.73887555599212662 110
		-11.538020944595337 2.4958558263939447e-16 109.99999999478459
		-10.901074123382568 -0.73887555599212618 110
		-10.901073122024536 -0.34999999999999981 110
		-9.5 -0.34999999999999998 110
		-9.5 0 109.99999998956919
		-11.538020944595337 2.4958558263939447e-16 109.99999999478459
		;
createNode transform -n "cluster1spine2_bone_placer_upvecHandle" -p "spine2_bone_placer_upVector_grp";
	rename -uid "3591DFBC-4494-CAEA-F715-D5BE3CC54F3B";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1spine2_bone_placer_upvecHandleShape" -p "cluster1spine2_bone_placer_upvecHandle";
	rename -uid "C0A0B39C-4153-8C33-F23B-69AF5113FE0B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1spine2_bone_placer_upvecHandle_parentConstraint1" 
		-p "cluster1spine2_bone_placer_upvecHandle";
	rename -uid "42F1056A-428A-60B9-361B-9DA0D0C5B563";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine2_bone_placerW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1 0 109 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2spine2_bone_placer_upvecHandle" -p "spine2_bone_placer_upVector_grp";
	rename -uid "27BDE1B0-4E74-0AB4-E64C-658501C48E39";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2spine2_bone_placer_upvecHandleShape" -p "cluster2spine2_bone_placer_upvecHandle";
	rename -uid "AABEE3F2-4F4B-EF67-27F2-B8997871CD1E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2spine2_bone_placer_upvecHandle_parentConstraint1" 
		-p "cluster2spine2_bone_placer_upvecHandle";
	rename -uid "175F555A-468B-AA2E-D66A-0C8D8F8ECC91";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine2_bone_placer_upVectorW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -12.5 0 109 ;
	setAttr -k on ".w0";
createNode transform -n "spine2_bone_placer_up_vec_curve" -p "spine2_bone_placer_upVector_grp";
	rename -uid "29E93688-4AFD-8C3A-57E4-41AB1351A7D2";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "spine2_bone_placer_up_vec_curveShape" -p "spine2_bone_placer_up_vec_curve";
	rename -uid "2FB165C6-465D-4920-3FC5-42A3120B305D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "spine2_bone_placer_up_vec_curveShapeOrig" -p "spine2_bone_placer_up_vec_curve";
	rename -uid "38AF5DA8-4E06-FE6F-9FFB-3384919EB1B6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1spine2_bone_placer_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2spine2_bone_placer_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1spine2_bone_placer_upvec" 1 "cv[0]"
		"cluster2spine2_bone_placer_upvec" 1 "cv[1]";
createNode transform -n "spine3_bone_placer" -p "SPINE_RIG_PLACER";
	rename -uid "0CFFA380-4856-423A-DA06-61BE393C2EE7";
	setAttr ".t" -type "double3" 0 0 120 ;
createNode nurbsCurve -n "spine3_bone_placerShape1" -p "spine3_bone_placer";
	rename -uid "1F0DB0C3-402B-91A1-4591-938400CEB9C7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 2
		0 -0.99999988079071045 1.7320507764816284
		0 -1.7320506572723389 0.99999994039535522
		0 -1.9999997615814209 0
		0 -1.7320506572723389 -0.99999994039535522
		0 -0.99999988079071045 -1.7320507764816284
		0 0 -2
		0 1 -1.7320507764816284
		0 1.732050895690918 -0.99999994039535522
		0 2 0
		0 1.732050895690918 0.99999994039535522
		0 1 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		4.499999463558197 0 1.7320507764816284
		7.7942279577255249 0 0.99999994039535522
		8.999998927116394 0 0
		7.7942279577255249 0 -0.99999994039535522
		4.499999463558197 0 -1.7320507764816284
		0 0 -2
		-4.4999997317790985 0 -1.7320507764816284
		-7.7942284941673279 0 -0.99999994039535522
		-8.999999463558197 0 0
		-7.7942284941673279 0 0.99999994039535522
		-4.4999997317790985 0 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		3.1819801926612854 -0.70710670948028564 1.7320507764816284
		5.5113515853881836 -1.2247447967529297 0.99999994039535522
		6.3639603853225708 -1.4142134189605713 0
		5.5113515853881836 -1.2247447967529297 -0.99999994039535522
		3.1819801926612854 -0.70710670948028564 -1.7320507764816284
		0 0 -2
		-3.1819804608821869 0.70710676908493042 -1.7320507764816284
		-5.5113521218299866 1.2247449159622192 -0.99999994039535522
		-6.3639609217643738 1.4142135381698608 0
		-5.5113521218299866 1.2247449159622192 0.99999994039535522
		-3.1819804608821869 0.70710676908493042 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		3.1819801926612854 0.70710670948028564 1.7320507764816284
		5.5113515853881836 1.2247447967529297 0.99999994039535522
		6.3639603853225708 1.4142134189605713 0
		5.5113515853881836 1.2247447967529297 -0.99999994039535522
		3.1819801926612854 0.70710670948028564 -1.7320507764816284
		0 0 -2
		-3.1819801926612854 -0.70710670948028564 -1.7320507764816284
		-5.5113515853881836 -1.2247447967529297 -0.99999994039535522
		-6.3639603853225708 -1.4142134189605713 0
		-5.5113515853881836 -1.2247447967529297 0.99999994039535522
		-3.1819801926612854 -0.70710670948028564 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		;
createNode transform -n "spine3_bone_placer_upVector_grp" -p "spine3_bone_placer";
	rename -uid "106DAAEC-48BC-D294-BF26-D4810CEB9985";
	setAttr ".t" -type "double3" 0 0 -120 ;
	setAttr ".rp" -type "double3" 0 0 120 ;
	setAttr ".sp" -type "double3" 0 0 120 ;
createNode transform -n "spine3_bone_placer_upVector" -p "spine3_bone_placer_upVector_grp";
	rename -uid "C414FAC8-4346-2651-ABB9-3A87A6FFE76B";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -12 0 120 ;
	setAttr ".sp" -type "double3" -12 0 120 ;
createNode nurbsCurve -n "spine3_bone_placer_upVectorShape1" -p "spine3_bone_placer_upVector";
	rename -uid "3A69A2D6-41BB-BBEC-1BC7-EBB77DE92908";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-12 0 119.99999998956919
		-12 0 119.65000000000001
		-13.401073122024536 1.7158197142587371e-16 119.65000000000001
		-13.401074123382568 1.7158209405686461e-16 119.26112444400788
		-14.038020944595337 2.4958558263939447e-16 119.99999999478459
		-13.401074123382568 1.7158209405686461e-16 120.73887555599212
		-13.401073122024536 1.7158197142587371e-16 120.34999999999999
		-12 0 120.34999999999999
		-12 0 119.99999998956919
		-12 0.34999999999999998 120
		-13.401073122024536 0.35000000000000014 120
		-13.401074123382568 0.73887555599212662 120
		-14.038020944595337 2.4958558263939447e-16 119.99999999478459
		-13.401074123382568 -0.73887555599212618 120
		-13.401073122024536 -0.34999999999999981 120
		-12 -0.34999999999999998 120
		-12 0 119.99999998956919
		-14.038020944595337 2.4958558263939447e-16 119.99999999478459
		;
createNode transform -n "cluster1spine3_bone_placer_upvecHandle" -p "spine3_bone_placer_upVector_grp";
	rename -uid "43048425-4DEF-3DB6-18A2-F2A19FC3C684";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1spine3_bone_placer_upvecHandleShape" -p "cluster1spine3_bone_placer_upvecHandle";
	rename -uid "15281645-4AA2-9E87-1B0C-8BA15B1D4B5C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1spine3_bone_placer_upvecHandle_parentConstraint1" 
		-p "cluster1spine3_bone_placer_upvecHandle";
	rename -uid "EB58BB92-40D2-9590-71CE-4A9CE1D1C1D3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine3_bone_placerW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1 0 119 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2spine3_bone_placer_upvecHandle" -p "spine3_bone_placer_upVector_grp";
	rename -uid "CFB1AD5F-4567-1159-B8F8-A59861DEA0DE";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2spine3_bone_placer_upvecHandleShape" -p "cluster2spine3_bone_placer_upvecHandle";
	rename -uid "7034DA7E-41CE-21E5-D7A0-0CA85388FA9F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2spine3_bone_placer_upvecHandle_parentConstraint1" 
		-p "cluster2spine3_bone_placer_upvecHandle";
	rename -uid "9A2FE20F-483D-41E2-9042-7898AB72B6F4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine3_bone_placer_upVectorW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -15 0 119 ;
	setAttr -k on ".w0";
createNode transform -n "spine3_bone_placer_up_vec_curve" -p "spine3_bone_placer_upVector_grp";
	rename -uid "0EC8CEE7-44A1-126E-CF69-3CB8870430D2";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "spine3_bone_placer_up_vec_curveShape" -p "spine3_bone_placer_up_vec_curve";
	rename -uid "FA728EC1-4CA6-37ED-333B-44AB3066C67F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "spine3_bone_placer_up_vec_curveShapeOrig" -p "spine3_bone_placer_up_vec_curve";
	rename -uid "82F1BACE-4CF8-F915-4753-0B90F32D710E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1spine3_bone_placer_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2spine3_bone_placer_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1spine3_bone_placer_upvec" 1 "cv[0]"
		"cluster2spine3_bone_placer_upvec" 1 "cv[1]";
createNode transform -n "spine4_bone_placer" -p "SPINE_RIG_PLACER";
	rename -uid "9DE4A2A0-423F-D613-6538-83BF68DD1530";
	setAttr ".t" -type "double3" 0 0 130 ;
createNode nurbsCurve -n "spine4_bone_placerShape1" -p "spine4_bone_placer";
	rename -uid "B9C7C5E4-4B6E-5D8B-5AA1-24AE19B71BDE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 2
		0 -0.99999988079071045 1.7320507764816284
		0 -1.7320506572723389 0.99999994039535522
		0 -1.9999997615814209 0
		0 -1.7320506572723389 -0.99999994039535522
		0 -0.99999988079071045 -1.7320507764816284
		0 0 -2
		0 1 -1.7320507764816284
		0 1.732050895690918 -0.99999994039535522
		0 2 0
		0 1.732050895690918 0.99999994039535522
		0 1 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		5.9999992847442627 0 1.7320507764816284
		10.392303943634033 0 0.99999994039535522
		11.999998569488525 0 0
		10.392303943634033 0 -0.99999994039535522
		5.9999992847442627 0 -1.7320507764816284
		0 0 -2
		-5.9999996423721313 0 -1.7320507764816284
		-10.392304658889771 0 -0.99999994039535522
		-11.999999284744263 0 0
		-10.392304658889771 0 0.99999994039535522
		-5.9999996423721313 0 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		4.2426402568817139 -0.70710670948028564 1.7320507764816284
		7.3484687805175781 -1.2247447967529297 0.99999994039535522
		8.4852805137634277 -1.4142134189605713 0
		7.3484687805175781 -1.2247447967529297 -0.99999994039535522
		4.2426402568817139 -0.70710670948028564 -1.7320507764816284
		0 0 -2
		-4.2426406145095825 0.70710676908493042 -1.7320507764816284
		-7.3484694957733154 1.2247449159622192 -0.99999994039535522
		-8.485281229019165 1.4142135381698608 0
		-7.3484694957733154 1.2247449159622192 0.99999994039535522
		-4.2426406145095825 0.70710676908493042 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		4.2426402568817139 0.70710670948028564 1.7320507764816284
		7.3484687805175781 1.2247447967529297 0.99999994039535522
		8.4852805137634277 1.4142134189605713 0
		7.3484687805175781 1.2247447967529297 -0.99999994039535522
		4.2426402568817139 0.70710670948028564 -1.7320507764816284
		0 0 -2
		-4.2426402568817139 -0.70710670948028564 -1.7320507764816284
		-7.3484687805175781 -1.2247447967529297 -0.99999994039535522
		-8.4852805137634277 -1.4142134189605713 0
		-7.3484687805175781 -1.2247447967529297 0.99999994039535522
		-4.2426402568817139 -0.70710670948028564 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		;
createNode transform -n "spine4_bone_placer_upVector_grp" -p "spine4_bone_placer";
	rename -uid "5290FAEC-4305-777A-ECA8-938E31034751";
	setAttr ".t" -type "double3" 0 0 -130 ;
	setAttr ".rp" -type "double3" 0 0 130 ;
	setAttr ".sp" -type "double3" 0 0 130 ;
createNode transform -n "spine4_bone_placer_upVector" -p "spine4_bone_placer_upVector_grp";
	rename -uid "A872ABC0-434C-37E1-F9D9-06A7CC29B81C";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -14.5 0 130 ;
	setAttr ".sp" -type "double3" -14.5 0 130 ;
createNode nurbsCurve -n "spine4_bone_placer_upVectorShape1" -p "spine4_bone_placer_upVector";
	rename -uid "9C750392-4D90-44C4-B3D2-EF91DFDB4A2F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-14.5 0 129.99999998956918
		-14.5 0 129.65000000000001
		-15.901073122024536 1.7158197142587371e-16 129.65000000000001
		-15.901074123382568 1.7158209405686461e-16 129.26112444400786
		-16.538020944595338 2.4958558263939447e-16 129.99999999478459
		-15.901074123382568 1.7158209405686461e-16 130.73887555599214
		-15.901073122024536 1.7158197142587371e-16 130.34999999999999
		-14.5 0 130.34999999999999
		-14.5 0 129.99999998956918
		-14.5 0.34999999999999998 130
		-15.901073122024536 0.35000000000000014 130
		-15.901074123382568 0.73887555599212662 130
		-16.538020944595338 2.4958558263939447e-16 129.99999999478459
		-15.901074123382568 -0.73887555599212618 130
		-15.901073122024536 -0.34999999999999981 130
		-14.5 -0.34999999999999998 130
		-14.5 0 129.99999998956918
		-16.538020944595338 2.4958558263939447e-16 129.99999999478459
		;
createNode transform -n "cluster1spine4_bone_placer_upvecHandle" -p "spine4_bone_placer_upVector_grp";
	rename -uid "C7967D8E-46F7-DA55-06F5-6C931F608B8F";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1spine4_bone_placer_upvecHandleShape" -p "cluster1spine4_bone_placer_upvecHandle";
	rename -uid "FCF6254C-4CD0-A36E-E143-6A94E223C135";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1spine4_bone_placer_upvecHandle_parentConstraint1" 
		-p "cluster1spine4_bone_placer_upvecHandle";
	rename -uid "24C283B0-4810-DF52-047E-FA82D1709E6C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine4_bone_placerW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1 0 129 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2spine4_bone_placer_upvecHandle" -p "spine4_bone_placer_upVector_grp";
	rename -uid "C7C7F48A-4D1B-53CA-A887-47971797C8CB";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2spine4_bone_placer_upvecHandleShape" -p "cluster2spine4_bone_placer_upvecHandle";
	rename -uid "21F39A1B-4145-5D43-72DF-31A7C38BBEFF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2spine4_bone_placer_upvecHandle_parentConstraint1" 
		-p "cluster2spine4_bone_placer_upvecHandle";
	rename -uid "2B0155AF-4D4E-2281-8FAB-328CA0215152";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine4_bone_placer_upVectorW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -17.5 0 129 ;
	setAttr -k on ".w0";
createNode transform -n "spine4_bone_placer_up_vec_curve" -p "spine4_bone_placer_upVector_grp";
	rename -uid "FC0C0F69-4ABA-ADD0-926B-96B7B7EEAAA6";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "spine4_bone_placer_up_vec_curveShape" -p "spine4_bone_placer_up_vec_curve";
	rename -uid "3FCB0C37-4AA4-7D3D-C5F0-C49FF3BBFADD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "spine4_bone_placer_up_vec_curveShapeOrig" -p "spine4_bone_placer_up_vec_curve";
	rename -uid "AC23C9BA-4FBE-AB68-C61E-769483BBA798";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1spine4_bone_placer_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2spine4_bone_placer_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1spine4_bone_placer_upvec" 1 "cv[0]"
		"cluster2spine4_bone_placer_upvec" 1 "cv[1]";
createNode transform -n "spine5_bone_placer" -p "SPINE_RIG_PLACER";
	rename -uid "2F6D5BC1-445B-518D-674F-9CB3DB25209B";
	setAttr ".t" -type "double3" 0 0 140 ;
createNode nurbsCurve -n "spine5_bone_placerShape1" -p "spine5_bone_placer";
	rename -uid "582FFC4C-4CCE-8D3D-1112-EE9D1D13CE44";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 2
		0 -0.99999988079071045 1.7320507764816284
		0 -1.7320506572723389 0.99999994039535522
		0 -1.9999997615814209 0
		0 -1.7320506572723389 -0.99999994039535522
		0 -0.99999988079071045 -1.7320507764816284
		0 0 -2
		0 1 -1.7320507764816284
		0 1.732050895690918 -0.99999994039535522
		0 2 0
		0 1.732050895690918 0.99999994039535522
		0 1 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		7.4999991059303284 0 1.7320507764816284
		12.990379929542542 0 0.99999994039535522
		14.999998211860657 0 0
		12.990379929542542 0 -0.99999994039535522
		7.4999991059303284 0 -1.7320507764816284
		0 0 -2
		-7.4999995529651642 0 -1.7320507764816284
		-12.990380823612213 0 -0.99999994039535522
		-14.999999105930328 0 0
		-12.990380823612213 0 0.99999994039535522
		-7.4999995529651642 0 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		5.3033003211021423 -0.70710670948028564 1.7320507764816284
		9.1855859756469727 -1.2247447967529297 0.99999994039535522
		10.606600642204285 -1.4142134189605713 0
		9.1855859756469727 -1.2247447967529297 -0.99999994039535522
		5.3033003211021423 -0.70710670948028564 -1.7320507764816284
		0 0 -2
		-5.3033007681369781 0.70710676908493042 -1.7320507764816284
		-9.1855868697166443 1.2247449159622192 -0.99999994039535522
		-10.606601536273956 1.4142135381698608 0
		-9.1855868697166443 1.2247449159622192 0.99999994039535522
		-5.3033007681369781 0.70710676908493042 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		5.3033003211021423 0.70710670948028564 1.7320507764816284
		9.1855859756469727 1.2247447967529297 0.99999994039535522
		10.606600642204285 1.4142134189605713 0
		9.1855859756469727 1.2247447967529297 -0.99999994039535522
		5.3033003211021423 0.70710670948028564 -1.7320507764816284
		0 0 -2
		-5.3033003211021423 -0.70710670948028564 -1.7320507764816284
		-9.1855859756469727 -1.2247447967529297 -0.99999994039535522
		-10.606600642204285 -1.4142134189605713 0
		-9.1855859756469727 -1.2247447967529297 0.99999994039535522
		-5.3033003211021423 -0.70710670948028564 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		;
createNode transform -n "spine5_bone_placer_upVector_grp" -p "spine5_bone_placer";
	rename -uid "7713AF2F-4933-874C-3F1D-4F845A30C633";
	setAttr ".t" -type "double3" 0 0 -140 ;
	setAttr ".rp" -type "double3" 0 0 140 ;
	setAttr ".sp" -type "double3" 0 0 140 ;
createNode transform -n "spine5_bone_placer_upVector" -p "spine5_bone_placer_upVector_grp";
	rename -uid "264FA14A-4A0D-B794-A47A-3481E1AA4246";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -17 0 140 ;
	setAttr ".sp" -type "double3" -17 0 140 ;
createNode nurbsCurve -n "spine5_bone_placer_upVectorShape1" -p "spine5_bone_placer_upVector";
	rename -uid "989C439A-427E-2C7C-C8BA-8E8D922BFA1E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-17 0 139.99999998956918
		-17 0 139.65000000000001
		-18.401073122024535 1.7158197142587371e-16 139.65000000000001
		-18.401074123382568 1.7158209405686461e-16 139.26112444400786
		-19.038020944595338 2.4958558263939447e-16 139.99999999478459
		-18.401074123382568 1.7158209405686461e-16 140.73887555599214
		-18.401073122024535 1.7158197142587371e-16 140.34999999999999
		-17 0 140.34999999999999
		-17 0 139.99999998956918
		-17 0.34999999999999998 140
		-18.401073122024535 0.35000000000000014 140
		-18.401074123382568 0.73887555599212662 140
		-19.038020944595338 2.4958558263939447e-16 139.99999999478459
		-18.401074123382568 -0.73887555599212618 140
		-18.401073122024535 -0.34999999999999981 140
		-17 -0.34999999999999998 140
		-17 0 139.99999998956918
		-19.038020944595338 2.4958558263939447e-16 139.99999999478459
		;
createNode transform -n "cluster1spine5_bone_placer_upvecHandle" -p "spine5_bone_placer_upVector_grp";
	rename -uid "347BAC32-4916-D2ED-5D2B-85AB21A23370";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1spine5_bone_placer_upvecHandleShape" -p "cluster1spine5_bone_placer_upvecHandle";
	rename -uid "BAE1B874-4DF1-0845-80BF-3E99E0716A34";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1spine5_bone_placer_upvecHandle_parentConstraint1" 
		-p "cluster1spine5_bone_placer_upvecHandle";
	rename -uid "784EA112-4669-C570-7E77-FABA687927DC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine5_bone_placerW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1 0 139 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2spine5_bone_placer_upvecHandle" -p "spine5_bone_placer_upVector_grp";
	rename -uid "BCCBFB0D-4D23-4481-62D7-A1AA3EB7F5AC";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2spine5_bone_placer_upvecHandleShape" -p "cluster2spine5_bone_placer_upvecHandle";
	rename -uid "09BDBBD4-4B1A-68E9-24F6-24A61E1318B3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2spine5_bone_placer_upvecHandle_parentConstraint1" 
		-p "cluster2spine5_bone_placer_upvecHandle";
	rename -uid "9ABDDD0D-479E-236C-6C55-EB869D7F0DC2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine5_bone_placer_upVectorW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -20 0 139 ;
	setAttr -k on ".w0";
createNode transform -n "spine5_bone_placer_up_vec_curve" -p "spine5_bone_placer_upVector_grp";
	rename -uid "FB70C9AB-4B31-134C-70C4-DE8661EA4398";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "spine5_bone_placer_up_vec_curveShape" -p "spine5_bone_placer_up_vec_curve";
	rename -uid "F20D33C2-4CB7-F7C1-8F17-50A20B3E64FC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "spine5_bone_placer_up_vec_curveShapeOrig" -p "spine5_bone_placer_up_vec_curve";
	rename -uid "EC2268E3-492F-3042-2507-17B2AD597714";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1spine5_bone_placer_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2spine5_bone_placer_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1spine5_bone_placer_upvec" 1 "cv[0]"
		"cluster2spine5_bone_placer_upvec" 1 "cv[1]";
createNode transform -n "neck1_bone_placer" -p "SPINE_RIG_PLACER";
	rename -uid "0A9148F2-462C-1B4A-6A9F-5D91847D0EFA";
	setAttr ".t" -type "double3" 0 -2 147.5 ;
createNode nurbsCurve -n "neck1_bone_placerShape1" -p "neck1_bone_placer";
	rename -uid "D12B72EC-494A-95E2-C103-2093BF04FB34";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 0.75
		0 -0.37499995529651642 0.64951904118061066
		0 -0.64951899647712708 0.37499997764825821
		0 -0.74999991059303284 0
		0 -0.64951899647712708 -0.37499997764825821
		0 -0.37499995529651642 -0.64951904118061066
		0 0 -0.75
		0 0.375 -0.64951904118061066
		0 0.64951908588409424 -0.37499997764825821
		0 0.75 0
		0 0.64951908588409424 0.37499997764825821
		0 0.375 0.64951904118061066
		0 0 0.75
		0 0 0.75
		0 0 0.75
		0 0 0.75
		0 0 0.75
		0.37499995529651642 0 0.64951904118061066
		0.64951899647712708 0 0.37499997764825821
		0.74999991059303284 0 0
		0.64951899647712708 0 -0.37499997764825821
		0.37499995529651642 0 -0.64951904118061066
		0 0 -0.75
		-0.37499997764825821 0 -0.64951904118061066
		-0.64951904118061066 0 -0.37499997764825821
		-0.74999995529651642 0 0
		-0.64951904118061066 0 0.37499997764825821
		-0.37499997764825821 0 0.64951904118061066
		0 0 0.75
		0 0 0.75
		0 0 0.75
		0 0 0.75
		0 0 0.75
		0 0 0.75
		0.26516501605510712 -0.26516501605510712 0.64951904118061066
		0.45927929878234863 -0.45927929878234863 0.37499997764825821
		0.53033003211021423 -0.53033003211021423 0
		0.45927929878234863 -0.45927929878234863 -0.37499997764825821
		0.26516501605510712 -0.26516501605510712 -0.64951904118061066
		0 0 -0.75
		-0.26516503840684891 0.26516503840684891 -0.64951904118061066
		-0.45927934348583221 0.45927934348583221 -0.37499997764825821
		-0.53033007681369781 0.53033007681369781 0
		-0.45927934348583221 0.45927934348583221 0.37499997764825821
		-0.26516503840684891 0.26516503840684891 0.64951904118061066
		0 0 0.75
		0 0 0.75
		0 0 0.75
		0 0 0.75
		0 0 0.75
		0 0 0.75
		0.26516501605510712 0.26516501605510712 0.64951904118061066
		0.45927929878234863 0.45927929878234863 0.37499997764825821
		0.53033003211021423 0.53033003211021423 0
		0.45927929878234863 0.45927929878234863 -0.37499997764825821
		0.26516501605510712 0.26516501605510712 -0.64951904118061066
		0 0 -0.75
		-0.26516501605510712 -0.26516501605510712 -0.64951904118061066
		-0.45927929878234863 -0.45927929878234863 -0.37499997764825821
		-0.53033003211021423 -0.53033003211021423 0
		-0.45927929878234863 -0.45927929878234863 0.37499997764825821
		-0.26516501605510712 -0.26516501605510712 0.64951904118061066
		0 0 0.75
		0 0 0.75
		0 0 0.75
		0 0 0.75
		0 0 0.75
		;
createNode transform -n "neck1_bone_placer_upVector_grp" -p "neck1_bone_placer";
	rename -uid "51AFABD7-44F7-5080-C94D-8EBA04FC0FED";
	setAttr ".t" -type "double3" 0 2 -147.5 ;
	setAttr ".rp" -type "double3" 0 -2 147.5 ;
	setAttr ".sp" -type "double3" 0 -2 147.5 ;
createNode transform -n "neck1_bone_placer_upVector" -p "neck1_bone_placer_upVector_grp";
	rename -uid "3936ECA3-4CE2-EBF9-B17F-BAA533B2596A";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -3.75 -2 147.5 ;
	setAttr ".sp" -type "double3" -3.75 -2 147.5 ;
createNode nurbsCurve -n "neck1_bone_placer_upVectorShape1" -p "neck1_bone_placer_upVector";
	rename -uid "59B725C2-4ABC-61E2-A927-CFA6370DE7EC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-3.75 -2 147.49999998956918
		-3.75 -2 147.15000000000001
		-5.1510731220245365 -1.9999999999999998 147.15000000000001
		-5.1510741233825685 -1.9999999999999998 146.76112444400786
		-5.7880209445953366 -1.9999999999999998 147.49999999478459
		-5.1510741233825685 -1.9999999999999998 148.23887555599214
		-5.1510731220245365 -1.9999999999999998 147.84999999999999
		-3.75 -2 147.84999999999999
		-3.75 -2 147.49999998956918
		-3.75 -1.6499999999999999 147.5
		-5.1510731220245365 -1.6499999999999999 147.5
		-5.1510741233825685 -1.2611244440078733 147.5
		-5.7880209445953366 -1.9999999999999998 147.49999999478459
		-5.1510741233825685 -2.7388755559921263 147.5
		-5.1510731220245365 -2.3499999999999996 147.5
		-3.75 -2.3500000000000001 147.5
		-3.75 -2 147.49999998956918
		-5.7880209445953366 -1.9999999999999998 147.49999999478459
		;
createNode transform -n "cluster1neck1_bone_placer_upvecHandle" -p "neck1_bone_placer_upVector_grp";
	rename -uid "A1FBD4AB-41B3-7C77-1E87-F0A2A5579B47";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1neck1_bone_placer_upvecHandleShape" -p "cluster1neck1_bone_placer_upvecHandle";
	rename -uid "7869969A-44F8-801B-3092-EBB7152F51C8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1neck1_bone_placer_upvecHandle_parentConstraint1" 
		-p "cluster1neck1_bone_placer_upvecHandle";
	rename -uid "5F656271-4267-6946-0830-9D9815FBB349";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "neck1_bone_placerW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1 -2 146.5 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2neck1_bone_placer_upvecHandle" -p "neck1_bone_placer_upVector_grp";
	rename -uid "FD979CA1-445D-77B3-D6B6-E5B69EEF610F";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2neck1_bone_placer_upvecHandleShape" -p "cluster2neck1_bone_placer_upvecHandle";
	rename -uid "B5164920-4E6C-67FE-210A-E9A06C5FB8BA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2neck1_bone_placer_upvecHandle_parentConstraint1" 
		-p "cluster2neck1_bone_placer_upvecHandle";
	rename -uid "397EF9B6-49B8-D202-54CE-548CEB558FA5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "neck1_bone_placer_upVectorW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -6.75 -2 146.5 ;
	setAttr -k on ".w0";
createNode transform -n "neck1_bone_placer_up_vec_curve" -p "neck1_bone_placer_upVector_grp";
	rename -uid "E3C14FC6-4912-0D7C-66EE-9498E4718B26";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "neck1_bone_placer_up_vec_curveShape" -p "neck1_bone_placer_up_vec_curve";
	rename -uid "03E4AD94-4761-4BF7-AE91-ABB6DAD08AD3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck1_bone_placer_up_vec_curveShapeOrig" -p "neck1_bone_placer_up_vec_curve";
	rename -uid "900FBB50-4241-6B9B-A448-AFAA02B375F0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1neck1_bone_placer_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2neck1_bone_placer_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1neck1_bone_placer_upvec" 1 "cv[0]"
		"cluster2neck1_bone_placer_upvec" 1 "cv[1]";
createNode transform -n "neck2_bone_placer" -p "SPINE_RIG_PLACER";
	rename -uid "CFA7C00A-44A3-7D06-BDDF-22AC2813A787";
	setAttr ".t" -type "double3" 0 -4 155 ;
createNode nurbsCurve -n "neck2_bone_placerShape1" -p "neck2_bone_placer";
	rename -uid "49D43A4D-45F3-F4B9-E51B-DE923737B1EC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 1.5
		0 -0.74999991059303284 1.2990380823612213
		0 -1.2990379929542542 0.74999995529651642
		0 -1.4999998211860657 0
		0 -1.2990379929542542 -0.74999995529651642
		0 -0.74999991059303284 -1.2990380823612213
		0 0 -1.5
		0 0.75 -1.2990380823612213
		0 1.2990381717681885 -0.74999995529651642
		0 1.5 0
		0 1.2990381717681885 0.74999995529651642
		0 0.75 1.2990380823612213
		0 0 1.5
		0 0 1.5
		0 0 1.5
		0 0 1.5
		0 0 1.5
		0.74999991059303284 0 1.2990380823612213
		1.2990379929542542 0 0.74999995529651642
		1.4999998211860657 0 0
		1.2990379929542542 0 -0.74999995529651642
		0.74999991059303284 0 -1.2990380823612213
		0 0 -1.5
		-0.74999995529651642 0 -1.2990380823612213
		-1.2990380823612213 0 -0.74999995529651642
		-1.4999999105930328 0 0
		-1.2990380823612213 0 0.74999995529651642
		-0.74999995529651642 0 1.2990380823612213
		0 0 1.5
		0 0 1.5
		0 0 1.5
		0 0 1.5
		0 0 1.5
		0 0 1.5
		0.53033003211021423 -0.53033003211021423 1.2990380823612213
		0.91855859756469727 -0.91855859756469727 0.74999995529651642
		1.0606600642204285 -1.0606600642204285 0
		0.91855859756469727 -0.91855859756469727 -0.74999995529651642
		0.53033003211021423 -0.53033003211021423 -1.2990380823612213
		0 0 -1.5
		-0.53033007681369781 0.53033007681369781 -1.2990380823612213
		-0.91855868697166443 0.91855868697166443 -0.74999995529651642
		-1.0606601536273956 1.0606601536273956 0
		-0.91855868697166443 0.91855868697166443 0.74999995529651642
		-0.53033007681369781 0.53033007681369781 1.2990380823612213
		0 0 1.5
		0 0 1.5
		0 0 1.5
		0 0 1.5
		0 0 1.5
		0 0 1.5
		0.53033003211021423 0.53033003211021423 1.2990380823612213
		0.91855859756469727 0.91855859756469727 0.74999995529651642
		1.0606600642204285 1.0606600642204285 0
		0.91855859756469727 0.91855859756469727 -0.74999995529651642
		0.53033003211021423 0.53033003211021423 -1.2990380823612213
		0 0 -1.5
		-0.53033003211021423 -0.53033003211021423 -1.2990380823612213
		-0.91855859756469727 -0.91855859756469727 -0.74999995529651642
		-1.0606600642204285 -1.0606600642204285 0
		-0.91855859756469727 -0.91855859756469727 0.74999995529651642
		-0.53033003211021423 -0.53033003211021423 1.2990380823612213
		0 0 1.5
		0 0 1.5
		0 0 1.5
		0 0 1.5
		0 0 1.5
		;
createNode transform -n "neck2_bone_placer_upVector_grp" -p "neck2_bone_placer";
	rename -uid "F8D7C25D-49B8-1310-4394-429466BE86E2";
	setAttr ".t" -type "double3" 0 4 -155 ;
	setAttr ".rp" -type "double3" 0 -4 155 ;
	setAttr ".sp" -type "double3" 0 -4 155 ;
createNode transform -n "neck2_bone_placer_upVector" -p "neck2_bone_placer_upVector_grp";
	rename -uid "405223D7-419F-B736-0DF0-8BADD7F0BDF1";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -3.75 -4 155 ;
	setAttr ".sp" -type "double3" -3.75 -4 155 ;
createNode nurbsCurve -n "neck2_bone_placer_upVectorShape1" -p "neck2_bone_placer_upVector";
	rename -uid "7244292D-488D-EB9C-35A3-E89812CCB211";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-3.75 -4 154.99999998956918
		-3.75 -4 154.65000000000001
		-5.1510731220245365 -4 154.65000000000001
		-5.1510741233825685 -4 154.26112444400786
		-5.7880209445953366 -3.9999999999999996 154.99999999478459
		-5.1510741233825685 -4 155.73887555599214
		-5.1510731220245365 -4 155.34999999999999
		-3.75 -4 155.34999999999999
		-3.75 -4 154.99999998956918
		-3.75 -3.6499999999999999 155
		-5.1510731220245365 -3.6499999999999999 155
		-5.1510741233825685 -3.2611244440078733 155
		-5.7880209445953366 -3.9999999999999996 154.99999999478459
		-5.1510741233825685 -4.7388755559921263 155
		-5.1510731220245365 -4.3499999999999996 155
		-3.75 -4.3499999999999996 155
		-3.75 -4 154.99999998956918
		-5.7880209445953366 -3.9999999999999996 154.99999999478459
		;
createNode transform -n "cluster1neck2_bone_placer_upvecHandle" -p "neck2_bone_placer_upVector_grp";
	rename -uid "9C1346CB-4969-3608-5938-4FA47EBBD548";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1neck2_bone_placer_upvecHandleShape" -p "cluster1neck2_bone_placer_upvecHandle";
	rename -uid "B1FA5481-4196-02D6-CFCD-17950A37D303";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1neck2_bone_placer_upvecHandle_parentConstraint1" 
		-p "cluster1neck2_bone_placer_upvecHandle";
	rename -uid "613F08AE-4749-7E73-944D-B08D2E2D7E78";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "neck2_bone_placerW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1 -4 154 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2neck2_bone_placer_upvecHandle" -p "neck2_bone_placer_upVector_grp";
	rename -uid "978BF946-4FEF-C05A-1F7D-10B94B2B43BB";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2neck2_bone_placer_upvecHandleShape" -p "cluster2neck2_bone_placer_upvecHandle";
	rename -uid "72BD678F-4EB0-D0DC-73E2-3994575794B1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2neck2_bone_placer_upvecHandle_parentConstraint1" 
		-p "cluster2neck2_bone_placer_upvecHandle";
	rename -uid "2820BED3-4CFF-FDB9-44E4-4D827128BA3E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "neck2_bone_placer_upVectorW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -6.75 -4 154 ;
	setAttr -k on ".w0";
createNode transform -n "neck2_bone_placer_up_vec_curve" -p "neck2_bone_placer_upVector_grp";
	rename -uid "4301BE78-4D00-E78A-4993-D7B1C663252F";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "neck2_bone_placer_up_vec_curveShape" -p "neck2_bone_placer_up_vec_curve";
	rename -uid "FB5E3A92-40B3-CA5B-CD63-F2A1952E0B08";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck2_bone_placer_up_vec_curveShapeOrig" -p "neck2_bone_placer_up_vec_curve";
	rename -uid "4FE428BD-4464-0B41-84FB-588EA43E0848";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1neck2_bone_placer_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2neck2_bone_placer_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1neck2_bone_placer_upvec" 1 "cv[0]"
		"cluster2neck2_bone_placer_upvec" 1 "cv[1]";
createNode transform -n "head_bone_placer" -p "SPINE_RIG_PLACER";
	rename -uid "B3CF211A-4BE6-A080-CB5D-D2BD258890A7";
	setAttr ".t" -type "double3" 0 -6 163 ;
createNode nurbsCurve -n "head_bone_placerShape1" -p "head_bone_placer";
	rename -uid "6F5BE5AC-449E-2E65-9532-1A823AD9F8BC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		5 62 0 no 3
		71 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51
		 52 53 54 55 56 57 58 59 60 61 62 62 62 62 62
		67
		0 0 2
		0 -0.99999988079071045 1.7320507764816284
		0 -1.7320506572723389 0.99999994039535522
		0 -1.9999997615814209 0
		0 -1.7320506572723389 -0.99999994039535522
		0 -0.99999988079071045 -1.7320507764816284
		0 0 -2
		0 1 -1.7320507764816284
		0 1.732050895690918 -0.99999994039535522
		0 2 0
		0 1.732050895690918 0.99999994039535522
		0 1 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.99999988079071045 0 1.7320507764816284
		1.7320506572723389 0 0.99999994039535522
		1.9999997615814209 0 0
		1.7320506572723389 0 -0.99999994039535522
		0.99999988079071045 0 -1.7320507764816284
		0 0 -2
		-0.99999994039535522 0 -1.7320507764816284
		-1.7320507764816284 0 -0.99999994039535522
		-1.9999998807907104 0 0
		-1.7320507764816284 0 0.99999994039535522
		-0.99999994039535522 0 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 -0.70710670948028564 1.7320507764816284
		1.2247447967529297 -1.2247447967529297 0.99999994039535522
		1.4142134189605713 -1.4142134189605713 0
		1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710676908493042 0.70710676908493042 -1.7320507764816284
		-1.2247449159622192 1.2247449159622192 -0.99999994039535522
		-1.4142135381698608 1.4142135381698608 0
		-1.2247449159622192 1.2247449159622192 0.99999994039535522
		-0.70710676908493042 0.70710676908493042 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0.70710670948028564 0.70710670948028564 1.7320507764816284
		1.2247447967529297 1.2247447967529297 0.99999994039535522
		1.4142134189605713 1.4142134189605713 0
		1.2247447967529297 1.2247447967529297 -0.99999994039535522
		0.70710670948028564 0.70710670948028564 -1.7320507764816284
		0 0 -2
		-0.70710670948028564 -0.70710670948028564 -1.7320507764816284
		-1.2247447967529297 -1.2247447967529297 -0.99999994039535522
		-1.4142134189605713 -1.4142134189605713 0
		-1.2247447967529297 -1.2247447967529297 0.99999994039535522
		-0.70710670948028564 -0.70710670948028564 1.7320507764816284
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		0 0 2
		;
createNode transform -n "head_bone_placer_upVector_grp" -p "head_bone_placer";
	rename -uid "84146940-4E50-45CE-A860-6CB2EC21BEB5";
	setAttr ".t" -type "double3" 0 6 -163 ;
	setAttr ".rp" -type "double3" 0 -6 163 ;
	setAttr ".sp" -type "double3" 0 -6 163 ;
createNode transform -n "head_bone_placer_upVector" -p "head_bone_placer_upVector_grp";
	rename -uid "DBF6C367-45DF-6850-84D0-BCB8C2C27E8B";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -4 -6 163 ;
	setAttr ".sp" -type "double3" -4 -6 163 ;
createNode nurbsCurve -n "head_bone_placer_upVectorShape1" -p "head_bone_placer_upVector";
	rename -uid "5079EECB-435B-CB63-F0EB-A385F31AA875";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".ls" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-4 -6 162.99999999791385
		-4 -6 162.93000000000001
		-3.7197853755950927 -6 162.93000000000001
		-3.7197851753234863 -6 162.85222488880157
		-3.5923958110809324 -6 162.99999999895692
		-3.7197851753234863 -6 163.14777511119843
		-3.7197853755950927 -6 163.06999999999999
		-4 -6 163.06999999999999
		-4 -6 162.99999999791385
		-4 -5.9299999999999997 163
		-3.7197853755950927 -5.9299999999999997 163
		-3.7197851753234863 -5.8522248888015751 163
		-3.5923958110809324 -6 162.99999999895692
		-3.7197851753234863 -6.1477751111984249 163
		-3.7197853755950927 -6.0700000000000003 163
		-4 -6.0700000000000003 163
		-4 -6 162.99999999791385
		-3.5923958110809324 -6 162.99999999895692
		;
createNode transform -n "cluster1head_bone_placer_upvecHandle" -p "head_bone_placer_upVector_grp";
	rename -uid "0E509B1C-4633-66AE-26FB-409CBE6FABF2";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1head_bone_placer_upvecHandleShape" -p "cluster1head_bone_placer_upvecHandle";
	rename -uid "BF84526E-458D-B665-054B-DBBB308AA8F9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1head_bone_placer_upvecHandle_parentConstraint1" 
		-p "cluster1head_bone_placer_upvecHandle";
	rename -uid "A9E8577B-40B8-EBB5-B9F6-54B0EEB8F16D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "head_bone_placerW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1 -6 162 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2head_bone_placer_upvecHandle" -p "head_bone_placer_upVector_grp";
	rename -uid "F122A42C-472B-C054-94D2-3D9FD0D48CC7";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2head_bone_placer_upvecHandleShape" -p "cluster2head_bone_placer_upvecHandle";
	rename -uid "D23C6492-4F8D-4F36-94B1-ACA793E8AF3D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2head_bone_placer_upvecHandle_parentConstraint1" 
		-p "cluster2head_bone_placer_upvecHandle";
	rename -uid "66257FFE-4D90-51F8-421A-7CBD42A903C6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "head_bone_placer_upVectorW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -7 -6 162 ;
	setAttr -k on ".w0";
createNode transform -n "head_bone_placer_up_vec_curve" -p "head_bone_placer_upVector_grp";
	rename -uid "D08223E3-4B9E-709F-49DD-5D9091163A24";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "head_bone_placer_up_vec_curveShape" -p "head_bone_placer_up_vec_curve";
	rename -uid "9994C448-4E5D-EA43-AD48-EAB4971F41AB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "head_bone_placer_up_vec_curveShapeOrig" -p "head_bone_placer_up_vec_curve";
	rename -uid "73DE97EE-4677-871B-1A9F-E9B80E99A103";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1head_bone_placer_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2head_bone_placer_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1head_bone_placer_upvec" 1 "cv[0]"
		"cluster2head_bone_placer_upvec" 1 "cv[1]";
createNode transform -n "spine_proxy_curve" -p "SPINE_RIG_PLACER";
	rename -uid "E9D891ED-48D6-3239-C8D7-219BF5331AC5";
	setAttr -l on -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "spine_proxy_curveShape" -p "spine_proxy_curve";
	rename -uid "EEC3A5EA-46D1-336A-E65F-2585F3580CD0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "spine_proxy_curveShapeOrig" -p "spine_proxy_curve";
	rename -uid "3E0EDC00-43FB-5E08-E126-069AAE529A05";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "spine_placercluster_0";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "spine_placercluster_1";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".gtag[2].gtagnm" -type "string" "spine_placercluster_2";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "cv[2]";
	setAttr ".gtag[3].gtagnm" -type "string" "spine_placercluster_3";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "cv[3]";
	setAttr ".gtag[4].gtagnm" -type "string" "spine_placercluster_4";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "cv[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "spine_placercluster_5";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "cv[5]";
	setAttr ".gtag[6].gtagnm" -type "string" "spine_placercluster_6";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "cv[6]";
	setAttr ".gtag[7].gtagnm" -type "string" "spine_placercluster_7";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "cv[7]";
	setAttr ".gtag[8].gtagnm" -type "string" "spine_placercluster_8";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "cv[8]";
	setAttr ".gtag[9].gtagnm" -type "string" "spine_placercluster_9";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "cv[9]";
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 -2 -1 1 2 3 4 5 6 7 8
		10
		0 -1 0
		0 0 0
		0 1 0
		0 2 0
		0 3 0
		0 4 0
		0 5 0
		0 6 0
		0 7 0
		0 8 0
		

		"gtag" 10
		"spine_placercluster_0" 1 "cv[0]"
		"spine_placercluster_1" 1 "cv[1]"
		"spine_placercluster_2" 1 "cv[2]"
		"spine_placercluster_3" 1 "cv[3]"
		"spine_placercluster_4" 1 "cv[4]"
		"spine_placercluster_5" 1 "cv[5]"
		"spine_placercluster_6" 1 "cv[6]"
		"spine_placercluster_7" 1 "cv[7]"
		"spine_placercluster_8" 1 "cv[8]"
		"spine_placercluster_9" 1 "cv[9]";
createNode transform -n "Rig_Controls";
	rename -uid "8BC76820-4DAE-8CA2-E7FF-EF9D9BFD1F24";
	addAttr -ci true -sn "pretransformLevel" -ln "pretransformLevel" -min 0 -max 255 
		-at "byte";
createNode transform -n "world_ctrl_ptr1" -p "Rig_Controls";
	rename -uid "34BCBD39-4AFD-6369-2618-3AB54CD2EC77";
	addAttr -ci true -sn "pretransformLevel" -ln "pretransformLevel" -min 0 -max 255 
		-at "byte";
	setAttr ".pretransformLevel" 1;
createNode transform -n "world_ctrl" -p "world_ctrl_ptr1";
	rename -uid "7D42F505-4E9B-330D-2EE5-9295CAAB5C40";
createNode nurbsCurve -n "world_ctrlShape1" -p "world_ctrl";
	rename -uid "EAFB3D47-4B30-0E08-BF24-7AA98E5F22C2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 24 0 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		16.037476630074014 -28.141232577299689 0
		9.9855986564611801 -93.804108590998965 0
		25.962556506799068 -93.804108590998965 0
		0 -119.82718387753415 0
		-25.962556506799068 -93.804108590998965 0
		-9.9855986564611801 -93.804108590998965 0
		-16.037476630074014 -28.141232577299689 0
		-87.752230617386132 -9.9855986564611801 0
		-87.752230617386132 -25.962556506799068 0
		-119.82718387753415 0 0
		-87.752230617386132 25.962556506799068 0
		-87.752230617386132 9.9855986564611801 0
		-16.037476630074014 28.141232577299689 0
		-9.9855986564611801 93.804108590998965 0
		-25.962556506799068 93.804108590998965 0
		0 119.82718387753415 0
		25.962556506799068 93.804108590998965 0
		9.9855986564611801 93.804108590998965 0
		16.037476630074014 28.141232577299689 0
		87.752230617386132 9.9855986564611801 0
		87.752230617386132 25.962556506799068 0
		119.82718387753415 0 0
		87.752230617386132 -25.962556506799068 0
		87.752230617386132 -9.9855986564611801 0
		16.037476630074014 -28.141232577299689 0
		;
createNode transform -n "worldSpace_loc" -p "world_ctrl";
	rename -uid "EB706F77-4A31-5B12-A2EF-69984718C97D";
	setAttr ".v" no;
createNode locator -n "worldSpace_locShape" -p "worldSpace_loc";
	rename -uid "AB55A08C-46D6-2AA6-185A-2EACDAE6ED5F";
	setAttr -k off ".v";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "4CC8920F-4C88-456E-66B7-F3AA1104E9D1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A5732E0C-4D5A-60BB-C103-F285574DBD94";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "30B6BC9B-4038-92D9-85E8-27A33E558D04";
createNode displayLayerManager -n "layerManager";
	rename -uid "E33E74F3-430F-4356-3D87-E48E3ED73878";
createNode displayLayer -n "defaultLayer";
	rename -uid "08D0387B-4E15-D575-4661-E08DB3926AAF";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "0EEA4BDF-4D8E-E143-61F6-5A8BC7E87BC6";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "502187EA-4D0D-3BCB-B7F2-D4B6761B5033";
	setAttr ".g" yes;
createNode cluster -n "cluster1clavicle_bone_placer_L_upvec";
	rename -uid "9D8628F8-48CF-CA96-3A00-74953EB056B2";
	setAttr ".ip[0].gtg" -type "string" "cluster1clavicle_bone_placer_L_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2clavicle_bone_placer_L_upvec";
	rename -uid "248CA349-4D10-4138-29A0-2398174152DD";
	setAttr ".ip[0].gtg" -type "string" "cluster2clavicle_bone_placer_L_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1armUpper_bone_placer_L_upvec";
	rename -uid "D379C326-4C05-54B9-C7B6-8B9E647D98F2";
	setAttr ".ip[0].gtg" -type "string" "cluster1armUpper_bone_placer_L_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2armUpper_bone_placer_L_upvec";
	rename -uid "0A804943-4051-8A94-E6D0-13AEA56D2AB2";
	setAttr ".ip[0].gtg" -type "string" "cluster2armUpper_bone_placer_L_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1armLower_bone_placer_L_upvec";
	rename -uid "082FF80D-4E44-E3E1-1DA3-ECB0C7A16560";
	setAttr ".ip[0].gtg" -type "string" "cluster1armLower_bone_placer_L_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2armLower_bone_placer_L_upvec";
	rename -uid "83900CF9-4020-EFAF-3205-1589854CEFBC";
	setAttr ".ip[0].gtg" -type "string" "cluster2armLower_bone_placer_L_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1hand_bone_placer_L_upvec";
	rename -uid "A0E6B34B-4759-D791-99AF-BE9F02B8C714";
	setAttr ".ip[0].gtg" -type "string" "cluster1hand_bone_placer_L_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2hand_bone_placer_L_upvec";
	rename -uid "9211B294-4FBE-842C-D09D-50BE0A7D7890";
	setAttr ".ip[0].gtg" -type "string" "cluster2hand_bone_placer_L_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "placercluster0_arm_L";
	rename -uid "B2684BBD-4901-E3A4-71EB-FDAC5ECED453";
	setAttr ".ip[0].gtg" -type "string" "placercluster0_arm_L";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "placercluster1_arm_L";
	rename -uid "48C523C1-4E81-9A46-2201-1A9DD9FD6172";
	setAttr ".ip[0].gtg" -type "string" "placercluster1_arm_L";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "placercluster2_arm_L";
	rename -uid "E9AF6C6E-4B18-EE77-AB93-0496E0439B26";
	setAttr ".ip[0].gtg" -type "string" "placercluster2_arm_L";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "placercluster3_arm_L";
	rename -uid "0C2C3887-4923-84AE-8DE9-8CA539033FD6";
	setAttr ".ip[0].gtg" -type "string" "placercluster3_arm_L";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode decomposeMatrix -n "clavicle_bone_placer_L_decomposeMatrix";
	rename -uid "734CD20C-46D4-083B-6E1B-F08C7C396A39";
createNode decomposeMatrix -n "armUpper_bone_placer_L_decomposeMatrix";
	rename -uid "1C51D480-49D6-69CB-EF4F-9A9D22195AF8";
createNode decomposeMatrix -n "armLower_bone_placer_L_decomposeMatrix";
	rename -uid "EF96D648-4FA1-AC5E-E595-5F86383D7569";
createNode decomposeMatrix -n "hand_bone_placer_L_decomposeMatrix";
	rename -uid "3D29B557-429A-B22F-B524-55A64A58D8A4";
createNode plusMinusAverage -n "clavVec_L";
	rename -uid "420F4DA9-4326-592C-D93E-A08C5B7129BA";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "wholeArmVec_L";
	rename -uid "885E6045-44A3-1F9C-85BB-FA857F993A0C";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "upperArmVec_L";
	rename -uid "A05A959C-49B2-AFF0-F3C5-4E9163787D48";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode crossProduct -n "armZupVec_L";
	rename -uid "AE2C9E73-4E9A-3034-472F-068CF794D0C9";
createNode normalize -n "armZupVec_norm_L";
	rename -uid "B5A01726-4FC5-F92F-1224-C3996BF4BA1C";
createNode crossProduct -n "clavZupVec_L";
	rename -uid "454C3E32-4172-156C-3821-E9A4A28B0DDB";
	setAttr ".i2" -type "double3" 0 1 0 ;
createNode normalize -n "clavZupVec_norm_L";
	rename -uid "4DA1DC83-4C43-D654-44DE-3F934E984C13";
createNode plusMinusAverage -n "clavUpVec_L";
	rename -uid "C35AA1BD-4E0B-F7D7-0AD7-23A5A5393929";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "shoulderUpVec_L";
	rename -uid "A29B7C1A-4196-704B-375C-93B4BBE4FDB9";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "elbowUpVec_L";
	rename -uid "23244ECF-460D-1E7F-E082-2F87C5972EF0";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "wristUpVec_L";
	rename -uid "5E51D310-4B95-7154-8B0C-F8AE24EDDDD0";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode cluster -n "cluster1clavicle_bone_placer_R_upvec";
	rename -uid "6B4ED96D-476C-E4E9-8E07-9190E671A590";
	setAttr ".ip[0].gtg" -type "string" "cluster1clavicle_bone_placer_R_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2clavicle_bone_placer_R_upvec";
	rename -uid "8A30071A-446E-3697-9CCE-59B28D43E5B9";
	setAttr ".ip[0].gtg" -type "string" "cluster2clavicle_bone_placer_R_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1armUpper_bone_placer_R_upvec";
	rename -uid "4B154422-47D2-7780-E69B-D48A0D8AF6AE";
	setAttr ".ip[0].gtg" -type "string" "cluster1armUpper_bone_placer_R_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2armUpper_bone_placer_R_upvec";
	rename -uid "DB3CBF37-4111-36A6-E3BD-FDBF6D1E1112";
	setAttr ".ip[0].gtg" -type "string" "cluster2armUpper_bone_placer_R_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1armLower_bone_placer_R_upvec";
	rename -uid "DCA9E0F7-475B-4D1C-97BD-0399EBC81AAA";
	setAttr ".ip[0].gtg" -type "string" "cluster1armLower_bone_placer_R_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2armLower_bone_placer_R_upvec";
	rename -uid "5D6E0888-43D6-BF02-2971-96B59D7C7928";
	setAttr ".ip[0].gtg" -type "string" "cluster2armLower_bone_placer_R_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1hand_bone_placer_R_upvec";
	rename -uid "6578F69A-4ED1-C150-D613-CE988F3B1EA4";
	setAttr ".ip[0].gtg" -type "string" "cluster1hand_bone_placer_R_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2hand_bone_placer_R_upvec";
	rename -uid "CE18A4AF-4C6A-E48C-796B-38BA62B450B4";
	setAttr ".ip[0].gtg" -type "string" "cluster2hand_bone_placer_R_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "placercluster0_arm_R";
	rename -uid "BB5EA716-4939-3712-74F3-3280633A6A82";
	setAttr ".ip[0].gtg" -type "string" "placercluster0_arm_R";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "placercluster1_arm_R";
	rename -uid "9AAD7418-444F-1AD7-BABA-4FAEA0A04DD0";
	setAttr ".ip[0].gtg" -type "string" "placercluster1_arm_R";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "placercluster2_arm_R";
	rename -uid "4A6AEE1F-460C-DB45-500A-7EB61A187CAB";
	setAttr ".ip[0].gtg" -type "string" "placercluster2_arm_R";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "placercluster3_arm_R";
	rename -uid "47885D00-489A-AAF4-D4A4-7A9852736B27";
	setAttr ".ip[0].gtg" -type "string" "placercluster3_arm_R";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode decomposeMatrix -n "clavicle_bone_placer_R_decomposeMatrix";
	rename -uid "ED7CFF22-44F7-0D73-2FF1-369A1E20DFEC";
createNode decomposeMatrix -n "armUpper_bone_placer_R_decomposeMatrix";
	rename -uid "ECC7CDE2-4D53-E4A4-2589-018757BF0D03";
createNode decomposeMatrix -n "armLower_bone_placer_R_decomposeMatrix";
	rename -uid "998B4762-4EBC-02EE-88B6-E7A0F1F82365";
createNode decomposeMatrix -n "hand_bone_placer_R_decomposeMatrix";
	rename -uid "A2EA9966-4059-A788-63AE-C8A7B220F745";
createNode plusMinusAverage -n "clavVec_R";
	rename -uid "0F67FE9B-433B-5E24-DBA4-E2A43A4BBF39";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "wholeArmVec_R";
	rename -uid "8748F19F-4FA0-C030-8C95-2B80C5A33A5A";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "upperArmVec_R";
	rename -uid "CF5F0B73-49B0-2C9A-A6AC-B3A17180162F";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode crossProduct -n "armZupVec_R";
	rename -uid "1AC39E36-4961-58C6-89FC-A4850BAFB41D";
createNode normalize -n "armZupVec_norm_R";
	rename -uid "9F2D9D0C-448E-9B36-7D68-12B883FE6CD3";
createNode crossProduct -n "clavZupVec_R";
	rename -uid "BB25CAC3-4AC4-8966-6EA2-37A79A08CA95";
	setAttr ".i2" -type "double3" 0 1 0 ;
createNode normalize -n "clavZupVec_norm_R";
	rename -uid "8A8E36D8-466D-1A53-A77A-43AE6F2DD1E2";
createNode plusMinusAverage -n "clavUpVec_R";
	rename -uid "C50D4518-4488-08FF-2618-988A98D649BA";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "shoulderUpVec_R";
	rename -uid "710E1950-43E1-6DBC-404A-41BF8A7B5C83";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "elbowUpVec_R";
	rename -uid "DAFB70A8-4DA9-34F9-F161-34B9045E2961";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "wristUpVec_R";
	rename -uid "3FBB9BA3-4CEF-725A-5F4D-988E3D9BAB4F";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode cluster -n "cluster1legUpper_bone_placer_L_upvec";
	rename -uid "839AAA01-417F-2F42-B9F0-58AF24E18AE8";
	setAttr ".ip[0].gtg" -type "string" "cluster1legUpper_bone_placer_L_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2legUpper_bone_placer_L_upvec";
	rename -uid "38C2098E-449F-7845-BC93-6890D3C32B81";
	setAttr ".ip[0].gtg" -type "string" "cluster2legUpper_bone_placer_L_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1legLower_bone_placer_L_upvec";
	rename -uid "DF7D1EB3-498F-B7E7-0BB3-809390B0AB2C";
	setAttr ".ip[0].gtg" -type "string" "cluster1legLower_bone_placer_L_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2legLower_bone_placer_L_upvec";
	rename -uid "DC58100C-461C-B0F1-AE85-C69A319107AB";
	setAttr ".ip[0].gtg" -type "string" "cluster2legLower_bone_placer_L_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1foot_bone_placer_L_upvec";
	rename -uid "CD90F24A-4508-66B8-1DD3-C28FFAFFED0B";
	setAttr ".ip[0].gtg" -type "string" "cluster1foot_bone_placer_L_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2foot_bone_placer_L_upvec";
	rename -uid "A69F703D-4718-1F22-E340-9D9A0FF43ED6";
	setAttr ".ip[0].gtg" -type "string" "cluster2foot_bone_placer_L_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1ball_bone_placer_L_upvec";
	rename -uid "43D3E933-4EDB-C50A-B02A-2EBEE2B44BC6";
	setAttr ".ip[0].gtg" -type "string" "cluster1ball_bone_placer_L_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2ball_bone_placer_L_upvec";
	rename -uid "C886ED9E-4EB3-C912-EA38-AABF42D5B385";
	setAttr ".ip[0].gtg" -type "string" "cluster2ball_bone_placer_L_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1toeTip_bone_placer_L_upvec";
	rename -uid "AFE0B392-44B1-EA13-2934-2286C020309D";
	setAttr ".ip[0].gtg" -type "string" "cluster1toeTip_bone_placer_L_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2toeTip_bone_placer_L_upvec";
	rename -uid "B27653C9-4A33-31E2-235C-1A8181133E2D";
	setAttr ".ip[0].gtg" -type "string" "cluster2toeTip_bone_placer_L_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "_L_placercluster_0";
	rename -uid "DF32ACE8-47BD-E9C1-C890-C4A567640345";
	setAttr ".ip[0].gtg" -type "string" "_L_placercluster_0";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "_L_placercluster_1";
	rename -uid "9A20426C-4808-9FF2-012B-18B1EF30E490";
	setAttr ".ip[0].gtg" -type "string" "_L_placercluster_1";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "_L_placercluster_2";
	rename -uid "EEF221F5-43F1-AFDD-7251-25957512E217";
	setAttr ".ip[0].gtg" -type "string" "_L_placercluster_2";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "_L_placercluster_3";
	rename -uid "0926CB4A-40DD-EE25-E05C-E6BBB6A6B026";
	setAttr ".ip[0].gtg" -type "string" "_L_placercluster_3";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "_L_placercluster_4";
	rename -uid "8CB28281-4C14-9347-0C86-81A18B5AC1EA";
	setAttr ".ip[0].gtg" -type "string" "_L_placercluster_4";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode decomposeMatrix -n "legUpper_bone_placer_L_decomposeMatrix";
	rename -uid "EEA96D0F-400F-87E5-E00A-37BD90F4228E";
createNode decomposeMatrix -n "legLower_bone_placer_L_decomposeMatrix";
	rename -uid "551BD443-48E0-BADD-727F-E9ABB28C47EA";
createNode decomposeMatrix -n "foot_bone_placer_L_decomposeMatrix";
	rename -uid "732A25F0-400A-DF4A-574C-828EFC9BD6F3";
createNode decomposeMatrix -n "foot_bone_placer_L_Zpos_loc_decomposeMatrix";
	rename -uid "B8FB2B58-4925-A8C2-2EAC-A68BB0F38DB3";
createNode decomposeMatrix -n "ball_bone_placer_L_decomposeMatrix";
	rename -uid "3090A738-4ADA-1F22-48D6-C7B99D73EAA8";
createNode decomposeMatrix -n "toeTip_bone_placer_L_decomposeMatrix";
	rename -uid "36C3771C-406C-6022-FD54-33A2EEBE0932";
createNode plusMinusAverage -n "wholeLeg_Xvec_L";
	rename -uid "E0CADD26-455A-B92F-BCEE-73BF1172DEC1";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "legUpper_Xvec_L";
	rename -uid "8F2156E9-4CE5-8166-4D84-04BC08B4166C";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "legLower_Xvec_L";
	rename -uid "2CCDC222-404C-F442-147D-E4AF5EF16CDA";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "ballXvec_L";
	rename -uid "A6BC9593-411B-23FF-B28C-C4A901D66824";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "footXvec_L";
	rename -uid "8FEBBA69-4D8A-1BF6-3201-47952202A1EE";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode crossProduct -n "leg_Zvec_L";
	rename -uid "056DF488-4DFF-AC77-80B7-0F9E0CA09B15";
createNode normalize -n "leg_Zvec_norm_L";
	rename -uid "1D33912C-498B-1EB0-612E-D19F74C354E3";
createNode crossProduct -n "foot_Zvec_L";
	rename -uid "FD90111A-4D4A-F2A2-158C-14B78BC67A26";
	setAttr ".i1" -type "double3" 0 0 1 ;
createNode normalize -n "foot_Zvec_norm_L";
	rename -uid "B612ADCD-4EDE-8B04-395B-29BEB2F36C42";
createNode crossProduct -n "ball_Zvec_L";
	rename -uid "A8E965EB-4D91-CF76-7ACE-F9A1943E0ECD";
	setAttr ".i2" -type "double3" 0 0 1 ;
createNode normalize -n "ball_Zvec_norm_L";
	rename -uid "30B893A1-45EE-DEB1-6ED3-2EA091C11182";
createNode plusMinusAverage -n "legUpper_Zpos_L";
	rename -uid "6EFA3E48-4AA8-50EA-0322-68B3CF187643";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "legLower_Zpos_L";
	rename -uid "2718688B-425E-AC2F-605B-418DBB0E32D6";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "foot_Zpos_L";
	rename -uid "F51906DE-4D14-9AA4-9B40-BD84E9022791";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "ball_Zpos_L";
	rename -uid "12650446-450A-0D1C-118C-66A8B1AD687C";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "toeTip_Zpos_L";
	rename -uid "6FFAA5B8-4412-F27C-6FF2-6281424B20B2";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode cluster -n "cluster1legUpper_bone_placer_R_upvec";
	rename -uid "3007F6E7-42DA-EFCF-C8B6-FD9E3AB56F2C";
	setAttr ".ip[0].gtg" -type "string" "cluster1legUpper_bone_placer_R_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2legUpper_bone_placer_R_upvec";
	rename -uid "297FA693-4C21-B5E4-AA6C-29B3DDB0CED1";
	setAttr ".ip[0].gtg" -type "string" "cluster2legUpper_bone_placer_R_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1legLower_bone_placer_R_upvec";
	rename -uid "4D8821EE-4D59-4892-22C2-35B10E38DB89";
	setAttr ".ip[0].gtg" -type "string" "cluster1legLower_bone_placer_R_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2legLower_bone_placer_R_upvec";
	rename -uid "E5EA3640-49FE-9992-69C2-738C9F047A06";
	setAttr ".ip[0].gtg" -type "string" "cluster2legLower_bone_placer_R_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1foot_bone_placer_R_upvec";
	rename -uid "6B7152CB-4A96-30D5-4B95-E099492C4324";
	setAttr ".ip[0].gtg" -type "string" "cluster1foot_bone_placer_R_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2foot_bone_placer_R_upvec";
	rename -uid "84EA44AB-4463-B917-099C-E39DCB559414";
	setAttr ".ip[0].gtg" -type "string" "cluster2foot_bone_placer_R_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1ball_bone_placer_R_upvec";
	rename -uid "DB5D4B8D-4BF0-1C0C-A2FB-6CB7FEDE9098";
	setAttr ".ip[0].gtg" -type "string" "cluster1ball_bone_placer_R_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2ball_bone_placer_R_upvec";
	rename -uid "5C229F2E-4135-D3DA-3D5A-0E9504AFDC02";
	setAttr ".ip[0].gtg" -type "string" "cluster2ball_bone_placer_R_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1toeTip_bone_placer_R_upvec";
	rename -uid "BF919879-4CC5-1A4A-C610-9BA95E5FF48D";
	setAttr ".ip[0].gtg" -type "string" "cluster1toeTip_bone_placer_R_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2toeTip_bone_placer_R_upvec";
	rename -uid "3B80E580-422F-C115-53AA-069FB56C3683";
	setAttr ".ip[0].gtg" -type "string" "cluster2toeTip_bone_placer_R_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "_R_placercluster_0";
	rename -uid "61DD3167-4ED7-E8D8-6B71-FBA00F400EA0";
	setAttr ".ip[0].gtg" -type "string" "_R_placercluster_0";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "_R_placercluster_1";
	rename -uid "893364F0-448A-A138-FF6D-3187A8DEDB9F";
	setAttr ".ip[0].gtg" -type "string" "_R_placercluster_1";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "_R_placercluster_2";
	rename -uid "B8AECD4A-42FD-F9DD-45EE-AC822922D83B";
	setAttr ".ip[0].gtg" -type "string" "_R_placercluster_2";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "_R_placercluster_3";
	rename -uid "5584AF52-4244-3DB7-2835-599A1661CF92";
	setAttr ".ip[0].gtg" -type "string" "_R_placercluster_3";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "_R_placercluster_4";
	rename -uid "DD7ABA12-4FB8-60A6-EE0C-E6900BFA6E61";
	setAttr ".ip[0].gtg" -type "string" "_R_placercluster_4";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode decomposeMatrix -n "legUpper_bone_placer_R_decomposeMatrix";
	rename -uid "1AD108B5-45E0-C15B-9A1B-6F9DC44CAA75";
createNode decomposeMatrix -n "legLower_bone_placer_R_decomposeMatrix";
	rename -uid "5EAD5DF2-48EE-71E2-502B-E2BC04179EC6";
createNode decomposeMatrix -n "foot_bone_placer_R_decomposeMatrix";
	rename -uid "814B6D2F-41A8-E3EA-3692-44A098CE4BF1";
createNode decomposeMatrix -n "foot_bone_placer_R_Zpos_loc_decomposeMatrix";
	rename -uid "3A2FEBCF-4FA7-55CF-D926-0B962A943CD8";
createNode decomposeMatrix -n "ball_bone_placer_R_decomposeMatrix";
	rename -uid "D6B60FE5-4CAE-00D2-F2F5-87A335EB6045";
createNode decomposeMatrix -n "toeTip_bone_placer_R_decomposeMatrix";
	rename -uid "CECA5BC6-4F2C-B221-8874-67830C071346";
createNode plusMinusAverage -n "wholeLeg_Xvec_R";
	rename -uid "6B9A09F7-49EA-2D4C-6A80-04AD6AC8C3A3";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "legUpper_Xvec_R";
	rename -uid "B56151FD-4C32-2FE8-6D96-8EA3B96B2BB3";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "legLower_Xvec_R";
	rename -uid "6A59FF48-4A76-A1E2-2677-B8A791A12F00";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "ballXvec_R";
	rename -uid "4F3AD484-4D7D-5FC6-D09B-189BD6B39118";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "footXvec_R";
	rename -uid "9FA6407D-4020-25F4-263D-729A723C7045";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode crossProduct -n "leg_Zvec_R";
	rename -uid "1F742460-4042-F173-2537-E8912479A5FA";
createNode normalize -n "leg_Zvec_norm_R";
	rename -uid "58B74296-4582-AA66-A80A-2887C3F2D415";
createNode crossProduct -n "foot_Zvec_R";
	rename -uid "5B2E4551-4189-0E98-BF11-15927CC96A2B";
	setAttr ".i1" -type "double3" 0 0 1 ;
createNode normalize -n "foot_Zvec_norm_R";
	rename -uid "EA45FC29-49C8-E2B8-4240-C0ADF6F71704";
createNode crossProduct -n "ball_Zvec_R";
	rename -uid "73E7D56D-4895-AEEB-F94C-189AA4E3059F";
	setAttr ".i2" -type "double3" 0 0 1 ;
createNode normalize -n "ball_Zvec_norm_R";
	rename -uid "4340BB96-4727-B0E8-5E95-D6A4997FC167";
createNode plusMinusAverage -n "legUpper_Zpos_R";
	rename -uid "F3B7298C-4C6A-A96C-4A7C-F7A6BC1066D6";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "legLower_Zpos_R";
	rename -uid "8298A819-41D0-CCA4-91AE-438570CA27ED";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "foot_Zpos_R";
	rename -uid "EE9A82E5-443A-0E02-44EA-439F34A7D996";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "ball_Zpos_R";
	rename -uid "86C9A7A1-4284-02F3-44AE-5F926D1DF2DB";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "toeTip_Zpos_R";
	rename -uid "D29E0265-4173-688D-13D3-B6AEED1400D7";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode cluster -n "cluster1root_bone_placer_upvec";
	rename -uid "5D53DF47-4249-BAD0-DB18-FB9117830F05";
	setAttr ".ip[0].gtg" -type "string" "cluster1root_bone_placer_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2root_bone_placer_upvec";
	rename -uid "4BF91F32-461D-60D9-BB0F-5CB36853BBE2";
	setAttr ".ip[0].gtg" -type "string" "cluster2root_bone_placer_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1pelvis_bone_placer_upvec";
	rename -uid "1498130D-4AC8-575C-396E-02ADEFBCC11B";
	setAttr ".ip[0].gtg" -type "string" "cluster1pelvis_bone_placer_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2pelvis_bone_placer_upvec";
	rename -uid "63F5EF5E-4919-4065-A856-EB901AC77253";
	setAttr ".ip[0].gtg" -type "string" "cluster2pelvis_bone_placer_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1spine1_bone_placer_upvec";
	rename -uid "9D0E4422-4616-186A-B977-C49830CB7ACE";
	setAttr ".ip[0].gtg" -type "string" "cluster1spine1_bone_placer_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2spine1_bone_placer_upvec";
	rename -uid "1CBEF2A1-4482-A06D-D2CE-FDB60E62479E";
	setAttr ".ip[0].gtg" -type "string" "cluster2spine1_bone_placer_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1spine2_bone_placer_upvec";
	rename -uid "AE453B8E-47DB-1E0D-CBB4-1FBD64AFAA4E";
	setAttr ".ip[0].gtg" -type "string" "cluster1spine2_bone_placer_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2spine2_bone_placer_upvec";
	rename -uid "4FB38BC3-4410-9EBF-A4AC-DF829E46B769";
	setAttr ".ip[0].gtg" -type "string" "cluster2spine2_bone_placer_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1spine3_bone_placer_upvec";
	rename -uid "781FC3F3-479D-D561-D07F-70BF84DE01B5";
	setAttr ".ip[0].gtg" -type "string" "cluster1spine3_bone_placer_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2spine3_bone_placer_upvec";
	rename -uid "C6AA36B4-4A3B-C10A-158F-3D9705BF8A2E";
	setAttr ".ip[0].gtg" -type "string" "cluster2spine3_bone_placer_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1spine4_bone_placer_upvec";
	rename -uid "50E69B79-435D-21CA-6D93-9FB035C44CDB";
	setAttr ".ip[0].gtg" -type "string" "cluster1spine4_bone_placer_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2spine4_bone_placer_upvec";
	rename -uid "AE9AB7BD-4BB9-3AB2-F3AD-60A1C5D99CAD";
	setAttr ".ip[0].gtg" -type "string" "cluster2spine4_bone_placer_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1spine5_bone_placer_upvec";
	rename -uid "C4A54C03-479E-6C15-AD92-188F5150A235";
	setAttr ".ip[0].gtg" -type "string" "cluster1spine5_bone_placer_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2spine5_bone_placer_upvec";
	rename -uid "8D7F3088-48C6-E3A6-06AB-87897EF9C9D2";
	setAttr ".ip[0].gtg" -type "string" "cluster2spine5_bone_placer_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1neck1_bone_placer_upvec";
	rename -uid "E595513A-426E-9A00-4B9D-FFAB9CA8AE44";
	setAttr ".ip[0].gtg" -type "string" "cluster1neck1_bone_placer_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2neck1_bone_placer_upvec";
	rename -uid "E5AA0C23-4B85-0614-B03F-35BBAC87E200";
	setAttr ".ip[0].gtg" -type "string" "cluster2neck1_bone_placer_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1neck2_bone_placer_upvec";
	rename -uid "84D180F2-4910-2285-5B52-D9BAF09080E5";
	setAttr ".ip[0].gtg" -type "string" "cluster1neck2_bone_placer_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2neck2_bone_placer_upvec";
	rename -uid "F62E256D-4437-8139-E816-51894F5B78FD";
	setAttr ".ip[0].gtg" -type "string" "cluster2neck2_bone_placer_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1head_bone_placer_upvec";
	rename -uid "6322A237-4E4F-5A4E-8B30-65ACE321BC1D";
	setAttr ".ip[0].gtg" -type "string" "cluster1head_bone_placer_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2head_bone_placer_upvec";
	rename -uid "8AA88DC9-42BE-8D27-6831-8F9488FEB8C9";
	setAttr ".ip[0].gtg" -type "string" "cluster2head_bone_placer_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "spine_placercluster_0";
	rename -uid "E4ACF02F-4E17-4951-1BBD-8D98675D4245";
	setAttr ".ip[0].gtg" -type "string" "spine_placercluster_0";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "spine_placercluster_1";
	rename -uid "847F7927-432A-76F5-9519-48BA13F587D0";
	setAttr ".ip[0].gtg" -type "string" "spine_placercluster_1";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "spine_placercluster_2";
	rename -uid "E9304FDF-40B2-F13D-8AF9-24B4DEAAB187";
	setAttr ".ip[0].gtg" -type "string" "spine_placercluster_2";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "spine_placercluster_3";
	rename -uid "C4D738B7-41C7-D6BD-21E6-199505393A06";
	setAttr ".ip[0].gtg" -type "string" "spine_placercluster_3";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "spine_placercluster_4";
	rename -uid "B00D8D4D-4035-6AC4-8B62-619E03415F67";
	setAttr ".ip[0].gtg" -type "string" "spine_placercluster_4";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "spine_placercluster_5";
	rename -uid "A87936D6-4626-B095-69C1-EDB646BA917E";
	setAttr ".ip[0].gtg" -type "string" "spine_placercluster_5";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "spine_placercluster_6";
	rename -uid "099AE723-4163-2AD1-5330-F7938C056623";
	setAttr ".ip[0].gtg" -type "string" "spine_placercluster_6";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "spine_placercluster_7";
	rename -uid "57ABA8FA-4EF9-B97C-AA4A-C6BCDAD3D7EC";
	setAttr ".ip[0].gtg" -type "string" "spine_placercluster_7";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "spine_placercluster_8";
	rename -uid "C0EF84A2-4E2D-EEFB-6C11-7F95FC07B8E5";
	setAttr ".ip[0].gtg" -type "string" "spine_placercluster_8";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "spine_placercluster_9";
	rename -uid "9E9588EF-4331-C754-F547-F49AED728F00";
	setAttr ".ip[0].gtg" -type "string" "spine_placercluster_9";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "23FA3656-4611-43E6-2CCA-42A7D9BBF417";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "918B1E06-4040-14BE-C98B-B69651F7C409";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "7ACC8282-442F-BE9D-8727-D8B9E550F9DB";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "17D73B0B-4783-E1B6-E089-03BEB23BA102";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "36526378-4159-01D5-8E41-9C853AFD3B6B";
	setAttr ".sst" -type "string" "";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "558EF199-4332-BA1C-BB4D-DFBFBBE42BD6";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 584\n            -height 770\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n"
		+ "            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n"
		+ "            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n"
		+ "            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 583\n            -height 769\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n"
		+ "            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n"
		+ "            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 584\n            -height 769\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1238\n            -height 1316\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n"
		+ "            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n"
		+ "                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n"
		+ "                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n"
		+ "                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n"
		+ "                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n"
		+ "                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n"
		+ "                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n"
		+ "            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n"
		+ "                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n"
		+ "                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n"
		+ "                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n"
		+ "\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n"
		+ "                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n"
		+ "            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n"
		+ "            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2004\\n    -height 847\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2004\\n    -height 847\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 100 -divisions 10 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "E4B6096B-4C5B-BA58-A858-21B0D781A16B";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 60 -ast 0 -aet 60 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "30E41571-4BEA-3E01-45BF-5BA1F8057B03";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 0 -30.95237972244389 ;
	setAttr ".tgi[0].vh" -type "double2" 114.28570974440821 0 ;
	setAttr -s 767 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 728.5714111328125;
	setAttr ".tgi[0].ni[0].y" 18222.857421875;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[1].y" 19894.28515625;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 728.5714111328125;
	setAttr ".tgi[0].ni[2].y" 16732.857421875;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 230;
	setAttr ".tgi[0].ni[3].y" 17470;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[4].y" 16477.142578125;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 230;
	setAttr ".tgi[0].ni[5].y" 18514.28515625;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[6].y" 19780;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 1614.2857666015625;
	setAttr ".tgi[0].ni[7].y" 16527.142578125;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[8].y" 17777.142578125;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[9].y" 16217.142578125;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[10].y" 19665.71484375;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" -472.85714721679688;
	setAttr ".tgi[0].ni[11].y" 18287.142578125;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 230;
	setAttr ".tgi[0].ni[12].y" 17628.572265625;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[13].y" 19551.427734375;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" -472.85714721679688;
	setAttr ".tgi[0].ni[14].y" 18645.71484375;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[15].y" 19437.142578125;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" -121.42857360839844;
	setAttr ".tgi[0].ni[16].y" 18338.572265625;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[17].y" 19322.857421875;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" -121.42857360839844;
	setAttr ".tgi[0].ni[18].y" 17920;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" -121.42857360839844;
	setAttr ".tgi[0].ni[19].y" 18180;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 728.5714111328125;
	setAttr ".tgi[0].ni[20].y" 16891.427734375;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 2115.71435546875;
	setAttr ".tgi[0].ni[21].y" -5081.4287109375;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" -121.42857360839844;
	setAttr ".tgi[0].ni[22].y" 18078.572265625;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 728.5714111328125;
	setAttr ".tgi[0].ni[23].y" 18730;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 728.5714111328125;
	setAttr ".tgi[0].ni[24].y" 18932.857421875;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 2157.142822265625;
	setAttr ".tgi[0].ni[25].y" -20031.427734375;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[26].y" 18861.427734375;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 1614.2857666015625;
	setAttr ".tgi[0].ni[27].y" 18855.71484375;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[28].y" 19194.28515625;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 2157.142822265625;
	setAttr ".tgi[0].ni[29].y" -19901.427734375;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 2094.28564453125;
	setAttr ".tgi[0].ni[30].y" -791.4285888671875;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 728.5714111328125;
	setAttr ".tgi[0].ni[31].y" 18831.427734375;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" -121.42857360839844;
	setAttr ".tgi[0].ni[32].y" 18998.572265625;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 2115.71435546875;
	setAttr ".tgi[0].ni[33].y" -4951.4287109375;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 2157.142822265625;
	setAttr ".tgi[0].ni[34].y" -19771.427734375;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 2151.428466796875;
	setAttr ".tgi[0].ni[35].y" -10801.4287109375;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 2094.28564453125;
	setAttr ".tgi[0].ni[36].y" -661.4285888671875;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[37].y" 18702.857421875;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[38].y" 19222.857421875;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 2115.71435546875;
	setAttr ".tgi[0].ni[39].y" -4821.4287109375;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 230;
	setAttr ".tgi[0].ni[40].y" 18717.142578125;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" -121.42857360839844;
	setAttr ".tgi[0].ni[41].y" 17818.572265625;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[42].y" 18957.142578125;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[43].y" 18855.71484375;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 2157.142822265625;
	setAttr ".tgi[0].ni[44].y" -19641.427734375;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 1614.2857666015625;
	setAttr ".tgi[0].ni[45].y" 18702.857421875;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 1614.2857666015625;
	setAttr ".tgi[0].ni[46].y" 19165.71484375;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[47].y" 19121.427734375;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 728.5714111328125;
	setAttr ".tgi[0].ni[48].y" 19034.28515625;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 728.5714111328125;
	setAttr ".tgi[0].ni[49].y" 19237.142578125;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 728.5714111328125;
	setAttr ".tgi[0].ni[50].y" 19135.71484375;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 2115.71435546875;
	setAttr ".tgi[0].ni[51].y" -4691.4287109375;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[52].y" 18962.857421875;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[53].y" 18601.427734375;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 230;
	setAttr ".tgi[0].ni[54].y" 18818.572265625;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[55].y" 18652.857421875;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 1614.2857666015625;
	setAttr ".tgi[0].ni[56].y" 18957.142578125;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 2157.142822265625;
	setAttr ".tgi[0].ni[57].y" -19511.427734375;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[58].y" 18304.28515625;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" 2157.142822265625;
	setAttr ".tgi[0].ni[59].y" -19381.427734375;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 2115.71435546875;
	setAttr ".tgi[0].ni[60].y" -4561.4287109375;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 2094.28564453125;
	setAttr ".tgi[0].ni[61].y" -531.4285888671875;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[62].y" 18138.572265625;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" 2115.71435546875;
	setAttr ".tgi[0].ni[63].y" -4431.4287109375;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" 728.5714111328125;
	setAttr ".tgi[0].ni[64].y" 18020;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 728.5714111328125;
	setAttr ".tgi[0].ni[65].y" 18324.28515625;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" 728.5714111328125;
	setAttr ".tgi[0].ni[66].y" 18425.71484375;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" 2094.28564453125;
	setAttr ".tgi[0].ni[67].y" -401.42855834960938;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" 1614.2857666015625;
	setAttr ".tgi[0].ni[68].y" 17821.427734375;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[69].y" 17980;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" 2115.71435546875;
	setAttr ".tgi[0].ni[70].y" -4301.4287109375;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[71].y" 18240;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 2157.142822265625;
	setAttr ".tgi[0].ni[72].y" -19251.427734375;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" 2157.142822265625;
	setAttr ".tgi[0].ni[73].y" -19121.427734375;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[74].y" 17985.71484375;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" 2144.28564453125;
	setAttr ".tgi[0].ni[75].y" -9631.4287109375;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 230;
	setAttr ".tgi[0].ni[76].y" 18615.71484375;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" -121.42857360839844;
	setAttr ".tgi[0].ni[77].y" 18694.28515625;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" 728.5714111328125;
	setAttr ".tgi[0].ni[78].y" 18628.572265625;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" 2115.71435546875;
	setAttr ".tgi[0].ni[79].y" -4171.4287109375;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" 728.5714111328125;
	setAttr ".tgi[0].ni[80].y" 18527.142578125;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[81].y" 18500;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 1614.2857666015625;
	setAttr ".tgi[0].ni[82].y" 18304.28515625;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" 1614.2857666015625;
	setAttr ".tgi[0].ni[83].y" 18037.142578125;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[84].y" 18341.427734375;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[85].y" 17878.572265625;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[86].y" 17850;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" 230;
	setAttr ".tgi[0].ni[87].y" 18412.857421875;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" 2157.142822265625;
	setAttr ".tgi[0].ni[88].y" -18991.427734375;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" -121.42857360839844;
	setAttr ".tgi[0].ni[89].y" 18590;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 2157.142822265625;
	setAttr ".tgi[0].ni[90].y" -18861.427734375;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 728.5714111328125;
	setAttr ".tgi[0].ni[91].y" 18121.427734375;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[92].y" 18081.427734375;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 2144.28564453125;
	setAttr ".tgi[0].ni[93].y" -9501.4287109375;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" 1614.2857666015625;
	setAttr ".tgi[0].ni[94].y" 18138.572265625;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" 230;
	setAttr ".tgi[0].ni[95].y" 18305.71484375;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" -121.42857360839844;
	setAttr ".tgi[0].ni[96].y" 18897.142578125;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" 2157.142822265625;
	setAttr ".tgi[0].ni[97].y" -18731.427734375;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" 2121.428466796875;
	setAttr ".tgi[0].ni[98].y" -6121.4287109375;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[99].y" 17517.142578125;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[100].y" 17675.71484375;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[101].y" 17580;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" 2115.71435546875;
	setAttr ".tgi[0].ni[102].y" -4041.428466796875;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" 728.5714111328125;
	setAttr ".tgi[0].ni[103].y" 17918.572265625;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" 1614.2857666015625;
	setAttr ".tgi[0].ni[104].y" 17580;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" 2144.28564453125;
	setAttr ".tgi[0].ni[105].y" -9371.4287109375;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" 2094.28564453125;
	setAttr ".tgi[0].ni[106].y" -271.42855834960938;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" 2098.571533203125;
	setAttr ".tgi[0].ni[107].y" -1701.4285888671875;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" 2120;
	setAttr ".tgi[0].ni[108].y" -5601.4287109375;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" 1614.2857666015625;
	setAttr ".tgi[0].ni[109].y" 17421.427734375;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[110].y" 17450;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" 728.5714111328125;
	setAttr ".tgi[0].ni[111].y" 17817.142578125;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[112].y" 17415.71484375;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" 2115.71435546875;
	setAttr ".tgi[0].ni[113].y" -3911.428466796875;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" 728.5714111328125;
	setAttr ".tgi[0].ni[114].y" 17715.71484375;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" 2157.142822265625;
	setAttr ".tgi[0].ni[115].y" -18601.427734375;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" 1614.2857666015625;
	setAttr ".tgi[0].ni[116].y" 17161.427734375;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[117].y" 17320;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" 728.5714111328125;
	setAttr ".tgi[0].ni[118].y" 17614.28515625;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" 1614.2857666015625;
	setAttr ".tgi[0].ni[119].y" 17320;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" 2098.571533203125;
	setAttr ".tgi[0].ni[120].y" -1571.4285888671875;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[121].y" 17314.28515625;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[122].y" 17054.28515625;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" 1614.2857666015625;
	setAttr ".tgi[0].ni[123].y" 16901.427734375;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" 728.5714111328125;
	setAttr ".tgi[0].ni[124].y" 17512.857421875;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" 728.5714111328125;
	setAttr ".tgi[0].ni[125].y" 17411.427734375;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" 2120;
	setAttr ".tgi[0].ni[126].y" -5471.4287109375;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" 2121.428466796875;
	setAttr ".tgi[0].ni[127].y" -5991.4287109375;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[128].y" 17190;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" -121.42857360839844;
	setAttr ".tgi[0].ni[129].y" 18795.71484375;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" 2157.142822265625;
	setAttr ".tgi[0].ni[130].y" -18471.427734375;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[131].y" 16952.857421875;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" 728.5714111328125;
	setAttr ".tgi[0].ni[132].y" 17310;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[133].y" 16692.857421875;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[134].y" 16794.28515625;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" 230;
	setAttr ".tgi[0].ni[135].y" 18204.28515625;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" 230;
	setAttr ".tgi[0].ni[136].y" 18091.427734375;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" 728.5714111328125;
	setAttr ".tgi[0].ni[137].y" 17208.572265625;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" 1614.2857666015625;
	setAttr ".tgi[0].ni[138].y" 17060;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[139].y" 17155.71484375;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[140].y" 17060;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[141].y" 16930;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" 2144.28564453125;
	setAttr ".tgi[0].ni[142].y" -9241.4287109375;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" 728.5714111328125;
	setAttr ".tgi[0].ni[143].y" 17107.142578125;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" 2105.71435546875;
	setAttr ".tgi[0].ni[144].y" -2741.428466796875;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" 2125.71435546875;
	setAttr ".tgi[0].ni[145].y" -7161.4287109375;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[0].ni[146].x" 2157.142822265625;
	setAttr ".tgi[0].ni[146].y" -18341.427734375;
	setAttr ".tgi[0].ni[146].nvs" 18304;
	setAttr ".tgi[0].ni[147].x" 2150;
	setAttr ".tgi[0].ni[147].y" -10541.4287109375;
	setAttr ".tgi[0].ni[147].nvs" 18304;
	setAttr ".tgi[0].ni[148].x" 2157.142822265625;
	setAttr ".tgi[0].ni[148].y" -18211.427734375;
	setAttr ".tgi[0].ni[148].nvs" 18304;
	setAttr ".tgi[0].ni[149].x" 2157.142822265625;
	setAttr ".tgi[0].ni[149].y" -18081.427734375;
	setAttr ".tgi[0].ni[149].nvs" 18304;
	setAttr ".tgi[0].ni[150].x" -121.42857360839844;
	setAttr ".tgi[0].ni[150].y" 18440;
	setAttr ".tgi[0].ni[150].nvs" 18304;
	setAttr ".tgi[0].ni[151].x" 1614.2857666015625;
	setAttr ".tgi[0].ni[151].y" 16685.71484375;
	setAttr ".tgi[0].ni[151].nvs" 18304;
	setAttr ".tgi[0].ni[152].x" 2144.28564453125;
	setAttr ".tgi[0].ni[152].y" -9111.4287109375;
	setAttr ".tgi[0].ni[152].nvs" 18304;
	setAttr ".tgi[0].ni[153].x" 2157.142822265625;
	setAttr ".tgi[0].ni[153].y" -17951.427734375;
	setAttr ".tgi[0].ni[153].nvs" 18304;
	setAttr ".tgi[0].ni[154].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[154].y" 16771.427734375;
	setAttr ".tgi[0].ni[154].nvs" 18304;
	setAttr ".tgi[0].ni[155].x" -1878.5714111328125;
	setAttr ".tgi[0].ni[155].y" 19841.427734375;
	setAttr ".tgi[0].ni[155].nvs" 18304;
	setAttr ".tgi[0].ni[156].x" -1527.142822265625;
	setAttr ".tgi[0].ni[156].y" 19498.572265625;
	setAttr ".tgi[0].ni[156].nvs" 18304;
	setAttr ".tgi[0].ni[157].x" 2127.142822265625;
	setAttr ".tgi[0].ni[157].y" -7421.4287109375;
	setAttr ".tgi[0].ni[157].nvs" 18304;
	setAttr ".tgi[0].ni[158].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[158].y" 16635.71484375;
	setAttr ".tgi[0].ni[158].nvs" 18304;
	setAttr ".tgi[0].ni[159].x" 728.5714111328125;
	setAttr ".tgi[0].ni[159].y" 16472.857421875;
	setAttr ".tgi[0].ni[159].nvs" 18304;
	setAttr ".tgi[0].ni[160].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[160].y" 16527.142578125;
	setAttr ".tgi[0].ni[160].nvs" 18304;
	setAttr ".tgi[0].ni[161].x" -1527.142822265625;
	setAttr ".tgi[0].ni[161].y" 19657.142578125;
	setAttr ".tgi[0].ni[161].nvs" 18304;
	setAttr ".tgi[0].ni[162].x" -1175.7142333984375;
	setAttr ".tgi[0].ni[162].y" 19211.427734375;
	setAttr ".tgi[0].ni[162].nvs" 18304;
	setAttr ".tgi[0].ni[163].x" -1878.5714111328125;
	setAttr ".tgi[0].ni[163].y" 20000;
	setAttr ".tgi[0].ni[163].nvs" 18304;
	setAttr ".tgi[0].ni[164].x" 728.5714111328125;
	setAttr ".tgi[0].ni[164].y" 16371.4287109375;
	setAttr ".tgi[0].ni[164].nvs" 18304;
	setAttr ".tgi[0].ni[165].x" 1614.2857666015625;
	setAttr ".tgi[0].ni[165].y" 16115.7138671875;
	setAttr ".tgi[0].ni[165].nvs" 18304;
	setAttr ".tgi[0].ni[166].x" -1878.5714111328125;
	setAttr ".tgi[0].ni[166].y" 19511.427734375;
	setAttr ".tgi[0].ni[166].nvs" 18304;
	setAttr ".tgi[0].ni[167].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[167].y" 15957.142578125;
	setAttr ".tgi[0].ni[167].nvs" 18304;
	setAttr ".tgi[0].ni[168].x" 2157.142822265625;
	setAttr ".tgi[0].ni[168].y" -17821.427734375;
	setAttr ".tgi[0].ni[168].nvs" 18304;
	setAttr ".tgi[0].ni[169].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[169].y" 16115.7138671875;
	setAttr ".tgi[0].ni[169].nvs" 18304;
	setAttr ".tgi[0].ni[170].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[170].y" 16375.7138671875;
	setAttr ".tgi[0].ni[170].nvs" 18304;
	setAttr ".tgi[0].ni[171].x" 728.5714111328125;
	setAttr ".tgi[0].ni[171].y" 16574.28515625;
	setAttr ".tgi[0].ni[171].nvs" 18304;
	setAttr ".tgi[0].ni[172].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[172].y" 16115.7138671875;
	setAttr ".tgi[0].ni[172].nvs" 18304;
	setAttr ".tgi[0].ni[173].x" 230;
	setAttr ".tgi[0].ni[173].y" 17254.28515625;
	setAttr ".tgi[0].ni[173].nvs" 18304;
	setAttr ".tgi[0].ni[174].x" 2157.142822265625;
	setAttr ".tgi[0].ni[174].y" -17691.427734375;
	setAttr ".tgi[0].ni[174].nvs" 18304;
	setAttr ".tgi[0].ni[175].x" -2230;
	setAttr ".tgi[0].ni[175].y" 19581.427734375;
	setAttr ".tgi[0].ni[175].nvs" 18304;
	setAttr ".tgi[0].ni[176].x" -2230;
	setAttr ".tgi[0].ni[176].y" 20065.71484375;
	setAttr ".tgi[0].ni[176].nvs" 18304;
	setAttr ".tgi[0].ni[177].x" -2230;
	setAttr ".tgi[0].ni[177].y" 19964.28515625;
	setAttr ".tgi[0].ni[177].nvs" 18304;
	setAttr ".tgi[0].ni[178].x" 2150;
	setAttr ".tgi[0].ni[178].y" -10411.4287109375;
	setAttr ".tgi[0].ni[178].nvs" 18304;
	setAttr ".tgi[0].ni[179].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[179].y" 15827.142578125;
	setAttr ".tgi[0].ni[179].nvs" 18304;
	setAttr ".tgi[0].ni[180].x" -1527.142822265625;
	setAttr ".tgi[0].ni[180].y" 19168.572265625;
	setAttr ".tgi[0].ni[180].nvs" 18304;
	setAttr ".tgi[0].ni[181].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[181].y" 15712.857421875;
	setAttr ".tgi[0].ni[181].nvs" 18304;
	setAttr ".tgi[0].ni[182].x" -824.28570556640625;
	setAttr ".tgi[0].ni[182].y" 18818.572265625;
	setAttr ".tgi[0].ni[182].nvs" 18304;
	setAttr ".tgi[0].ni[183].x" -1175.7142333984375;
	setAttr ".tgi[0].ni[183].y" 18722.857421875;
	setAttr ".tgi[0].ni[183].nvs" 18304;
	setAttr ".tgi[0].ni[184].x" -1175.7142333984375;
	setAttr ".tgi[0].ni[184].y" 19052.857421875;
	setAttr ".tgi[0].ni[184].nvs" 18304;
	setAttr ".tgi[0].ni[185].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[185].y" 15598.5712890625;
	setAttr ".tgi[0].ni[185].nvs" 18304;
	setAttr ".tgi[0].ni[186].x" -472.85714721679688;
	setAttr ".tgi[0].ni[186].y" 18487.142578125;
	setAttr ".tgi[0].ni[186].nvs" 18304;
	setAttr ".tgi[0].ni[187].x" -824.28570556640625;
	setAttr ".tgi[0].ni[187].y" 18977.142578125;
	setAttr ".tgi[0].ni[187].nvs" 18304;
	setAttr ".tgi[0].ni[188].x" -824.28570556640625;
	setAttr ".tgi[0].ni[188].y" 18660;
	setAttr ".tgi[0].ni[188].nvs" 18304;
	setAttr ".tgi[0].ni[189].x" 990;
	setAttr ".tgi[0].ni[189].y" 12904.2861328125;
	setAttr ".tgi[0].ni[189].nvs" 18304;
	setAttr ".tgi[0].ni[190].x" -731.4285888671875;
	setAttr ".tgi[0].ni[190].y" 14207.142578125;
	setAttr ".tgi[0].ni[190].nvs" 18304;
	setAttr ".tgi[0].ni[191].x" -731.4285888671875;
	setAttr ".tgi[0].ni[191].y" 14511.4287109375;
	setAttr ".tgi[0].ni[191].nvs" 18304;
	setAttr ".tgi[0].ni[192].x" 1468.5714111328125;
	setAttr ".tgi[0].ni[192].y" 11684.2861328125;
	setAttr ".tgi[0].ni[192].nvs" 18304;
	setAttr ".tgi[0].ni[193].x" -320;
	setAttr ".tgi[0].ni[193].y" 14511.4287109375;
	setAttr ".tgi[0].ni[193].nvs" 18304;
	setAttr ".tgi[0].ni[194].x" 511.42855834960938;
	setAttr ".tgi[0].ni[194].y" 14245.7138671875;
	setAttr ".tgi[0].ni[194].nvs" 18304;
	setAttr ".tgi[0].ni[195].x" 2157.142822265625;
	setAttr ".tgi[0].ni[195].y" -17561.427734375;
	setAttr ".tgi[0].ni[195].nvs" 18304;
	setAttr ".tgi[0].ni[196].x" 990;
	setAttr ".tgi[0].ni[196].y" 11414.2861328125;
	setAttr ".tgi[0].ni[196].nvs" 18304;
	setAttr ".tgi[0].ni[197].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[197].y" 14440;
	setAttr ".tgi[0].ni[197].nvs" 18304;
	setAttr ".tgi[0].ni[198].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[198].y" 14282.857421875;
	setAttr ".tgi[0].ni[198].nvs" 18304;
	setAttr ".tgi[0].ni[199].x" 2157.142822265625;
	setAttr ".tgi[0].ni[199].y" -17431.427734375;
	setAttr ".tgi[0].ni[199].nvs" 18304;
	setAttr ".tgi[0].ni[200].x" -731.4285888671875;
	setAttr ".tgi[0].ni[200].y" 14410;
	setAttr ".tgi[0].ni[200].nvs" 18304;
	setAttr ".tgi[0].ni[201].x" -1178.5714111328125;
	setAttr ".tgi[0].ni[201].y" 14392.857421875;
	setAttr ".tgi[0].ni[201].nvs" 18304;
	setAttr ".tgi[0].ni[202].x" 11.428571701049805;
	setAttr ".tgi[0].ni[202].y" 14447.142578125;
	setAttr ".tgi[0].ni[202].nvs" 18304;
	setAttr ".tgi[0].ni[203].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[203].y" 14152.857421875;
	setAttr ".tgi[0].ni[203].nvs" 18304;
	setAttr ".tgi[0].ni[204].x" 11.428571701049805;
	setAttr ".tgi[0].ni[204].y" 14028.5712890625;
	setAttr ".tgi[0].ni[204].nvs" 18304;
	setAttr ".tgi[0].ni[205].x" 511.42855834960938;
	setAttr ".tgi[0].ni[205].y" 14404.2861328125;
	setAttr ".tgi[0].ni[205].nvs" 18304;
	setAttr ".tgi[0].ni[206].x" -320;
	setAttr ".tgi[0].ni[206].y" 14352.857421875;
	setAttr ".tgi[0].ni[206].nvs" 18304;
	setAttr ".tgi[0].ni[207].x" 11.428571701049805;
	setAttr ".tgi[0].ni[207].y" 14288.5712890625;
	setAttr ".tgi[0].ni[207].nvs" 18304;
	setAttr ".tgi[0].ni[208].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[208].y" 13994.2861328125;
	setAttr ".tgi[0].ni[208].nvs" 18304;
	setAttr ".tgi[0].ni[209].x" 990;
	setAttr ".tgi[0].ni[209].y" 14328.5712890625;
	setAttr ".tgi[0].ni[209].nvs" 18304;
	setAttr ".tgi[0].ni[210].x" -731.4285888671875;
	setAttr ".tgi[0].ni[210].y" 14308.5712890625;
	setAttr ".tgi[0].ni[210].nvs" 18304;
	setAttr ".tgi[0].ni[211].x" 11.428571701049805;
	setAttr ".tgi[0].ni[211].y" 14130;
	setAttr ".tgi[0].ni[211].nvs" 18304;
	setAttr ".tgi[0].ni[212].x" 990;
	setAttr ".tgi[0].ni[212].y" 14170;
	setAttr ".tgi[0].ni[212].nvs" 18304;
	setAttr ".tgi[0].ni[213].x" -320;
	setAttr ".tgi[0].ni[213].y" 14251.4287109375;
	setAttr ".tgi[0].ni[213].nvs" 18304;
	setAttr ".tgi[0].ni[214].x" -1178.5714111328125;
	setAttr ".tgi[0].ni[214].y" 13891.4287109375;
	setAttr ".tgi[0].ni[214].nvs" 18304;
	setAttr ".tgi[0].ni[215].x" -1178.5714111328125;
	setAttr ".tgi[0].ni[215].y" 13358.5712890625;
	setAttr ".tgi[0].ni[215].nvs" 18304;
	setAttr ".tgi[0].ni[216].x" 511.42855834960938;
	setAttr ".tgi[0].ni[216].y" 14144.2861328125;
	setAttr ".tgi[0].ni[216].nvs" 18304;
	setAttr ".tgi[0].ni[217].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[217].y" 13880;
	setAttr ".tgi[0].ni[217].nvs" 18304;
	setAttr ".tgi[0].ni[218].x" -1178.5714111328125;
	setAttr ".tgi[0].ni[218].y" 13790;
	setAttr ".tgi[0].ni[218].nvs" 18304;
	setAttr ".tgi[0].ni[219].x" -731.4285888671875;
	setAttr ".tgi[0].ni[219].y" 13072.857421875;
	setAttr ".tgi[0].ni[219].nvs" 18304;
	setAttr ".tgi[0].ni[220].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[220].y" 13765.7138671875;
	setAttr ".tgi[0].ni[220].nvs" 18304;
	setAttr ".tgi[0].ni[221].x" -1178.5714111328125;
	setAttr ".tgi[0].ni[221].y" 13460;
	setAttr ".tgi[0].ni[221].nvs" 18304;
	setAttr ".tgi[0].ni[222].x" -731.4285888671875;
	setAttr ".tgi[0].ni[222].y" 13237.142578125;
	setAttr ".tgi[0].ni[222].nvs" 18304;
	setAttr ".tgi[0].ni[223].x" -1865.7142333984375;
	setAttr ".tgi[0].ni[223].y" 13857.142578125;
	setAttr ".tgi[0].ni[223].nvs" 18304;
	setAttr ".tgi[0].ni[224].x" -731.4285888671875;
	setAttr ".tgi[0].ni[224].y" 13547.142578125;
	setAttr ".tgi[0].ni[224].nvs" 18304;
	setAttr ".tgi[0].ni[225].x" 11.428571701049805;
	setAttr ".tgi[0].ni[225].y" 13291.4287109375;
	setAttr ".tgi[0].ni[225].nvs" 18304;
	setAttr ".tgi[0].ni[226].x" -320;
	setAttr ".tgi[0].ni[226].y" 12984.2861328125;
	setAttr ".tgi[0].ni[226].nvs" 18304;
	setAttr ".tgi[0].ni[227].x" 11.428571701049805;
	setAttr ".tgi[0].ni[227].y" 12731.4287109375;
	setAttr ".tgi[0].ni[227].nvs" 18304;
	setAttr ".tgi[0].ni[228].x" 1468.5714111328125;
	setAttr ".tgi[0].ni[228].y" 14282.857421875;
	setAttr ".tgi[0].ni[228].nvs" 18304;
	setAttr ".tgi[0].ni[229].x" 990;
	setAttr ".tgi[0].ni[229].y" 14011.4287109375;
	setAttr ".tgi[0].ni[229].nvs" 18304;
	setAttr ".tgi[0].ni[230].x" -1178.5714111328125;
	setAttr ".tgi[0].ni[230].y" 13257.142578125;
	setAttr ".tgi[0].ni[230].nvs" 18304;
	setAttr ".tgi[0].ni[231].x" -731.4285888671875;
	setAttr ".tgi[0].ni[231].y" 13648.5712890625;
	setAttr ".tgi[0].ni[231].nvs" 18304;
	setAttr ".tgi[0].ni[232].x" -320;
	setAttr ".tgi[0].ni[232].y" 13465.7138671875;
	setAttr ".tgi[0].ni[232].nvs" 18304;
	setAttr ".tgi[0].ni[233].x" 2157.142822265625;
	setAttr ".tgi[0].ni[233].y" -17301.427734375;
	setAttr ".tgi[0].ni[233].nvs" 18304;
	setAttr ".tgi[0].ni[234].x" 2157.142822265625;
	setAttr ".tgi[0].ni[234].y" -17171.427734375;
	setAttr ".tgi[0].ni[234].nvs" 18304;
	setAttr ".tgi[0].ni[235].x" 2131.428466796875;
	setAttr ".tgi[0].ni[235].y" -8201.4287109375;
	setAttr ".tgi[0].ni[235].nvs" 18304;
	setAttr ".tgi[0].ni[236].x" 2157.142822265625;
	setAttr ".tgi[0].ni[236].y" -17041.427734375;
	setAttr ".tgi[0].ni[236].nvs" 18304;
	setAttr ".tgi[0].ni[237].x" 11.428571701049805;
	setAttr ".tgi[0].ni[237].y" 12572.857421875;
	setAttr ".tgi[0].ni[237].nvs" 18304;
	setAttr ".tgi[0].ni[238].x" 728.5714111328125;
	setAttr ".tgi[0].ni[238].y" 15522.857421875;
	setAttr ".tgi[0].ni[238].nvs" 18304;
	setAttr ".tgi[0].ni[239].x" 2157.142822265625;
	setAttr ".tgi[0].ni[239].y" -16911.427734375;
	setAttr ".tgi[0].ni[239].nvs" 18304;
	setAttr ".tgi[0].ni[240].x" 2110;
	setAttr ".tgi[0].ni[240].y" -3261.428466796875;
	setAttr ".tgi[0].ni[240].nvs" 18304;
	setAttr ".tgi[0].ni[241].x" 2157.142822265625;
	setAttr ".tgi[0].ni[241].y" -16781.427734375;
	setAttr ".tgi[0].ni[241].nvs" 18304;
	setAttr ".tgi[0].ni[242].x" 2157.142822265625;
	setAttr ".tgi[0].ni[242].y" -16651.427734375;
	setAttr ".tgi[0].ni[242].nvs" 18304;
	setAttr ".tgi[0].ni[243].x" -121.42857360839844;
	setAttr ".tgi[0].ni[243].y" 17432.857421875;
	setAttr ".tgi[0].ni[243].nvs" 18304;
	setAttr ".tgi[0].ni[244].x" -320;
	setAttr ".tgi[0].ni[244].y" 12820;
	setAttr ".tgi[0].ni[244].nvs" 18304;
	setAttr ".tgi[0].ni[245].x" 511.42855834960938;
	setAttr ".tgi[0].ni[245].y" 12885.7138671875;
	setAttr ".tgi[0].ni[245].nvs" 18304;
	setAttr ".tgi[0].ni[246].x" 511.42855834960938;
	setAttr ".tgi[0].ni[246].y" 12277.142578125;
	setAttr ".tgi[0].ni[246].nvs" 18304;
	setAttr ".tgi[0].ni[247].x" 1468.5714111328125;
	setAttr ".tgi[0].ni[247].y" 13304.2861328125;
	setAttr ".tgi[0].ni[247].nvs" 18304;
	setAttr ".tgi[0].ni[248].x" -1485.7142333984375;
	setAttr ".tgi[0].ni[248].y" 13557.142578125;
	setAttr ".tgi[0].ni[248].nvs" 18304;
	setAttr ".tgi[0].ni[249].x" 1468.5714111328125;
	setAttr ".tgi[0].ni[249].y" 12820;
	setAttr ".tgi[0].ni[249].nvs" 18304;
	setAttr ".tgi[0].ni[250].x" 511.42855834960938;
	setAttr ".tgi[0].ni[250].y" 12378.5712890625;
	setAttr ".tgi[0].ni[250].nvs" 18304;
	setAttr ".tgi[0].ni[251].x" 1468.5714111328125;
	setAttr ".tgi[0].ni[251].y" 12407.142578125;
	setAttr ".tgi[0].ni[251].nvs" 18304;
	setAttr ".tgi[0].ni[252].x" 1468.5714111328125;
	setAttr ".tgi[0].ni[252].y" 12045.7138671875;
	setAttr ".tgi[0].ni[252].nvs" 18304;
	setAttr ".tgi[0].ni[253].x" 1468.5714111328125;
	setAttr ".tgi[0].ni[253].y" 12147.142578125;
	setAttr ".tgi[0].ni[253].nvs" 18304;
	setAttr ".tgi[0].ni[254].x" 2157.142822265625;
	setAttr ".tgi[0].ni[254].y" -16521.427734375;
	setAttr ".tgi[0].ni[254].nvs" 18304;
	setAttr ".tgi[0].ni[255].x" 2157.142822265625;
	setAttr ".tgi[0].ni[255].y" -16391.427734375;
	setAttr ".tgi[0].ni[255].nvs" 18304;
	setAttr ".tgi[0].ni[256].x" 511.42855834960938;
	setAttr ".tgi[0].ni[256].y" 13392.857421875;
	setAttr ".tgi[0].ni[256].nvs" 18304;
	setAttr ".tgi[0].ni[257].x" 511.42855834960938;
	setAttr ".tgi[0].ni[257].y" 12480;
	setAttr ".tgi[0].ni[257].nvs" 18304;
	setAttr ".tgi[0].ni[258].x" 2157.142822265625;
	setAttr ".tgi[0].ni[258].y" -16261.4287109375;
	setAttr ".tgi[0].ni[258].nvs" 18304;
	setAttr ".tgi[0].ni[259].x" 2157.142822265625;
	setAttr ".tgi[0].ni[259].y" -16131.4287109375;
	setAttr ".tgi[0].ni[259].nvs" 18304;
	setAttr ".tgi[0].ni[260].x" 1614.2857666015625;
	setAttr ".tgi[0].ni[260].y" 14845.7138671875;
	setAttr ".tgi[0].ni[260].nvs" 18304;
	setAttr ".tgi[0].ni[261].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[261].y" 15318.5712890625;
	setAttr ".tgi[0].ni[261].nvs" 18304;
	setAttr ".tgi[0].ni[262].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[262].y" 15512.857421875;
	setAttr ".tgi[0].ni[262].nvs" 18304;
	setAttr ".tgi[0].ni[263].x" 2132.857177734375;
	setAttr ".tgi[0].ni[263].y" -8461.4287109375;
	setAttr ".tgi[0].ni[263].nvs" 18304;
	setAttr ".tgi[0].ni[264].x" 728.5714111328125;
	setAttr ".tgi[0].ni[264].y" 15927.142578125;
	setAttr ".tgi[0].ni[264].nvs" 18304;
	setAttr ".tgi[0].ni[265].x" 728.5714111328125;
	setAttr ".tgi[0].ni[265].y" 15624.2861328125;
	setAttr ".tgi[0].ni[265].nvs" 18304;
	setAttr ".tgi[0].ni[266].x" 1614.2857666015625;
	setAttr ".tgi[0].ni[266].y" 15318.5712890625;
	setAttr ".tgi[0].ni[266].nvs" 18304;
	setAttr ".tgi[0].ni[267].x" 230;
	setAttr ".tgi[0].ni[267].y" 16664.28515625;
	setAttr ".tgi[0].ni[267].nvs" 18304;
	setAttr ".tgi[0].ni[268].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[268].y" 14954.2861328125;
	setAttr ".tgi[0].ni[268].nvs" 18304;
	setAttr ".tgi[0].ni[269].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[269].y" 14800;
	setAttr ".tgi[0].ni[269].nvs" 18304;
	setAttr ".tgi[0].ni[270].x" 2157.142822265625;
	setAttr ".tgi[0].ni[270].y" -16001.4287109375;
	setAttr ".tgi[0].ni[270].nvs" 18304;
	setAttr ".tgi[0].ni[271].x" 230;
	setAttr ".tgi[0].ni[271].y" 16214.2861328125;
	setAttr ".tgi[0].ni[271].nvs" 18304;
	setAttr ".tgi[0].ni[272].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[272].y" 15031.4287109375;
	setAttr ".tgi[0].ni[272].nvs" 18304;
	setAttr ".tgi[0].ni[273].x" 2157.142822265625;
	setAttr ".tgi[0].ni[273].y" -15871.4287109375;
	setAttr ".tgi[0].ni[273].nvs" 18304;
	setAttr ".tgi[0].ni[274].x" 2122.857177734375;
	setAttr ".tgi[0].ni[274].y" -6511.4287109375;
	setAttr ".tgi[0].ni[274].nvs" 18304;
	setAttr ".tgi[0].ni[275].x" -121.42857360839844;
	setAttr ".tgi[0].ni[275].y" 17007.142578125;
	setAttr ".tgi[0].ni[275].nvs" 18304;
	setAttr ".tgi[0].ni[276].x" 1614.2857666015625;
	setAttr ".tgi[0].ni[276].y" 15004.2861328125;
	setAttr ".tgi[0].ni[276].nvs" 18304;
	setAttr ".tgi[0].ni[277].x" 728.5714111328125;
	setAttr ".tgi[0].ni[277].y" 15421.4287109375;
	setAttr ".tgi[0].ni[277].nvs" 18304;
	setAttr ".tgi[0].ni[278].x" 2157.142822265625;
	setAttr ".tgi[0].ni[278].y" -15741.4287109375;
	setAttr ".tgi[0].ni[278].nvs" 18304;
	setAttr ".tgi[0].ni[279].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[279].y" 14795.7138671875;
	setAttr ".tgi[0].ni[279].nvs" 18304;
	setAttr ".tgi[0].ni[280].x" 2121.428466796875;
	setAttr ".tgi[0].ni[280].y" -5861.4287109375;
	setAttr ".tgi[0].ni[280].nvs" 18304;
	setAttr ".tgi[0].ni[281].x" 728.5714111328125;
	setAttr ".tgi[0].ni[281].y" 14824.2861328125;
	setAttr ".tgi[0].ni[281].nvs" 18304;
	setAttr ".tgi[0].ni[282].x" 1614.2857666015625;
	setAttr ".tgi[0].ni[282].y" 14687.142578125;
	setAttr ".tgi[0].ni[282].nvs" 18304;
	setAttr ".tgi[0].ni[283].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[283].y" 15318.5712890625;
	setAttr ".tgi[0].ni[283].nvs" 18304;
	setAttr ".tgi[0].ni[284].x" 2100;
	setAttr ".tgi[0].ni[284].y" -1831.4285888671875;
	setAttr ".tgi[0].ni[284].nvs" 18304;
	setAttr ".tgi[0].ni[285].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[285].y" 14901.4287109375;
	setAttr ".tgi[0].ni[285].nvs" 18304;
	setAttr ".tgi[0].ni[286].x" 2157.142822265625;
	setAttr ".tgi[0].ni[286].y" -15611.4287109375;
	setAttr ".tgi[0].ni[286].nvs" 18304;
	setAttr ".tgi[0].ni[287].x" 2157.142822265625;
	setAttr ".tgi[0].ni[287].y" -15481.4287109375;
	setAttr ".tgi[0].ni[287].nvs" 18304;
	setAttr ".tgi[0].ni[288].x" 2157.142822265625;
	setAttr ".tgi[0].ni[288].y" -15351.4287109375;
	setAttr ".tgi[0].ni[288].nvs" 18304;
	setAttr ".tgi[0].ni[289].x" 2157.142822265625;
	setAttr ".tgi[0].ni[289].y" -15221.4287109375;
	setAttr ".tgi[0].ni[289].nvs" 18304;
	setAttr ".tgi[0].ni[290].x" 1965.7142333984375;
	setAttr ".tgi[0].ni[290].y" 14687.142578125;
	setAttr ".tgi[0].ni[290].nvs" 18304;
	setAttr ".tgi[0].ni[291].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[291].y" 14641.4287109375;
	setAttr ".tgi[0].ni[291].nvs" 18304;
	setAttr ".tgi[0].ni[292].x" 728.5714111328125;
	setAttr ".tgi[0].ni[292].y" 14722.857421875;
	setAttr ".tgi[0].ni[292].nvs" 18304;
	setAttr ".tgi[0].ni[293].x" -1512.857177734375;
	setAttr ".tgi[0].ni[293].y" 7407.14306640625;
	setAttr ".tgi[0].ni[293].nvs" 18304;
	setAttr ".tgi[0].ni[294].x" 2055.71435546875;
	setAttr ".tgi[0].ni[294].y" 2328.571533203125;
	setAttr ".tgi[0].ni[294].nvs" 18304;
	setAttr ".tgi[0].ni[295].x" 502.85714721679688;
	setAttr ".tgi[0].ni[295].y" 7435.71435546875;
	setAttr ".tgi[0].ni[295].nvs" 18304;
	setAttr ".tgi[0].ni[296].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[296].y" 7942.85693359375;
	setAttr ".tgi[0].ni[296].nvs" 18304;
	setAttr ".tgi[0].ni[297].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[297].y" 7600;
	setAttr ".tgi[0].ni[297].nvs" 18304;
	setAttr ".tgi[0].ni[298].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[298].y" 7498.5712890625;
	setAttr ".tgi[0].ni[298].nvs" 18304;
	setAttr ".tgi[0].ni[299].x" 2078.571533203125;
	setAttr ".tgi[0].ni[299].y" 898.5714111328125;
	setAttr ".tgi[0].ni[299].nvs" 18304;
	setAttr ".tgi[0].ni[300].x" 984.28570556640625;
	setAttr ".tgi[0].ni[300].y" 7790;
	setAttr ".tgi[0].ni[300].nvs" 18304;
	setAttr ".tgi[0].ni[301].x" 2107.142822265625;
	setAttr ".tgi[0].ni[301].y" -2871.428466796875;
	setAttr ".tgi[0].ni[301].nvs" 18304;
	setAttr ".tgi[0].ni[302].x" 502.85714721679688;
	setAttr ".tgi[0].ni[302].y" 7638.5712890625;
	setAttr ".tgi[0].ni[302].nvs" 18304;
	setAttr ".tgi[0].ni[303].x" 984.28570556640625;
	setAttr ".tgi[0].ni[303].y" 7067.14306640625;
	setAttr ".tgi[0].ni[303].nvs" 18304;
	setAttr ".tgi[0].ni[304].x" 502.85714721679688;
	setAttr ".tgi[0].ni[304].y" 7841.4287109375;
	setAttr ".tgi[0].ni[304].nvs" 18304;
	setAttr ".tgi[0].ni[305].x" 502.85714721679688;
	setAttr ".tgi[0].ni[305].y" 7740;
	setAttr ".tgi[0].ni[305].nvs" 18304;
	setAttr ".tgi[0].ni[306].x" 2077.142822265625;
	setAttr ".tgi[0].ni[306].y" 1028.5714111328125;
	setAttr ".tgi[0].ni[306].nvs" 18304;
	setAttr ".tgi[0].ni[307].x" 2.8571429252624512;
	setAttr ".tgi[0].ni[307].y" 7415.71435546875;
	setAttr ".tgi[0].ni[307].nvs" 18304;
	setAttr ".tgi[0].ni[308].x" 2105.71435546875;
	setAttr ".tgi[0].ni[308].y" -2611.428466796875;
	setAttr ".tgi[0].ni[308].nvs" 18304;
	setAttr ".tgi[0].ni[309].x" 984.28570556640625;
	setAttr ".tgi[0].ni[309].y" 7942.85693359375;
	setAttr ".tgi[0].ni[309].nvs" 18304;
	setAttr ".tgi[0].ni[310].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[310].y" 7380;
	setAttr ".tgi[0].ni[310].nvs" 18304;
	setAttr ".tgi[0].ni[311].x" 984.28570556640625;
	setAttr ".tgi[0].ni[311].y" 7428.5712890625;
	setAttr ".tgi[0].ni[311].nvs" 18304;
	setAttr ".tgi[0].ni[312].x" 1465.7142333984375;
	setAttr ".tgi[0].ni[312].y" 7278.5712890625;
	setAttr ".tgi[0].ni[312].nvs" 18304;
	setAttr ".tgi[0].ni[313].x" 502.85714721679688;
	setAttr ".tgi[0].ni[313].y" 7232.85693359375;
	setAttr ".tgi[0].ni[313].nvs" 18304;
	setAttr ".tgi[0].ni[314].x" 502.85714721679688;
	setAttr ".tgi[0].ni[314].y" 7334.28564453125;
	setAttr ".tgi[0].ni[314].nvs" 18304;
	setAttr ".tgi[0].ni[315].x" 1465.7142333984375;
	setAttr ".tgi[0].ni[315].y" 7380;
	setAttr ".tgi[0].ni[315].nvs" 18304;
	setAttr ".tgi[0].ni[316].x" 984.28570556640625;
	setAttr ".tgi[0].ni[316].y" 7270;
	setAttr ".tgi[0].ni[316].nvs" 18304;
	setAttr ".tgi[0].ni[317].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[317].y" 7227.14306640625;
	setAttr ".tgi[0].ni[317].nvs" 18304;
	setAttr ".tgi[0].ni[318].x" 2125.71435546875;
	setAttr ".tgi[0].ni[318].y" -7031.4287109375;
	setAttr ".tgi[0].ni[318].nvs" 18304;
	setAttr ".tgi[0].ni[319].x" 984.28570556640625;
	setAttr ".tgi[0].ni[319].y" 7530;
	setAttr ".tgi[0].ni[319].nvs" 18304;
	setAttr ".tgi[0].ni[320].x" 1465.7142333984375;
	setAttr ".tgi[0].ni[320].y" 7062.85693359375;
	setAttr ".tgi[0].ni[320].nvs" 18304;
	setAttr ".tgi[0].ni[321].x" 2057.142822265625;
	setAttr ".tgi[0].ni[321].y" 2198.571533203125;
	setAttr ".tgi[0].ni[321].nvs" 18304;
	setAttr ".tgi[0].ni[322].x" 1465.7142333984375;
	setAttr ".tgi[0].ni[322].y" 7600;
	setAttr ".tgi[0].ni[322].nvs" 18304;
	setAttr ".tgi[0].ni[323].x" 2141.428466796875;
	setAttr ".tgi[0].ni[323].y" -8721.4287109375;
	setAttr ".tgi[0].ni[323].nvs" 18304;
	setAttr ".tgi[0].ni[324].x" 2090;
	setAttr ".tgi[0].ni[324].y" -141.42857360839844;
	setAttr ".tgi[0].ni[324].nvs" 18304;
	setAttr ".tgi[0].ni[325].x" 984.28570556640625;
	setAttr ".tgi[0].ni[325].y" 6864.28564453125;
	setAttr ".tgi[0].ni[325].nvs" 18304;
	setAttr ".tgi[0].ni[326].x" 984.28570556640625;
	setAttr ".tgi[0].ni[326].y" 7631.4287109375;
	setAttr ".tgi[0].ni[326].nvs" 18304;
	setAttr ".tgi[0].ni[327].x" 2.8571429252624512;
	setAttr ".tgi[0].ni[327].y" 7804.28564453125;
	setAttr ".tgi[0].ni[327].nvs" 18304;
	setAttr ".tgi[0].ni[328].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[328].y" 7091.4287109375;
	setAttr ".tgi[0].ni[328].nvs" 18304;
	setAttr ".tgi[0].ni[329].x" 984.28570556640625;
	setAttr ".tgi[0].ni[329].y" 7168.5712890625;
	setAttr ".tgi[0].ni[329].nvs" 18304;
	setAttr ".tgi[0].ni[330].x" -1512.857177734375;
	setAttr ".tgi[0].ni[330].y" 7184.28564453125;
	setAttr ".tgi[0].ni[330].nvs" 18304;
	setAttr ".tgi[0].ni[331].x" 2157.142822265625;
	setAttr ".tgi[0].ni[331].y" -15091.4287109375;
	setAttr ".tgi[0].ni[331].nvs" 18304;
	setAttr ".tgi[0].ni[332].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[332].y" 6961.4287109375;
	setAttr ".tgi[0].ni[332].nvs" 18304;
	setAttr ".tgi[0].ni[333].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[333].y" 6720;
	setAttr ".tgi[0].ni[333].nvs" 18304;
	setAttr ".tgi[0].ni[334].x" 1465.7142333984375;
	setAttr ".tgi[0].ni[334].y" 6430;
	setAttr ".tgi[0].ni[334].nvs" 18304;
	setAttr ".tgi[0].ni[335].x" 984.28570556640625;
	setAttr ".tgi[0].ni[335].y" 6965.71435546875;
	setAttr ".tgi[0].ni[335].nvs" 18304;
	setAttr ".tgi[0].ni[336].x" 2112.857177734375;
	setAttr ".tgi[0].ni[336].y" -3781.428466796875;
	setAttr ".tgi[0].ni[336].nvs" 18304;
	setAttr ".tgi[0].ni[337].x" 502.85714721679688;
	setAttr ".tgi[0].ni[337].y" 6820;
	setAttr ".tgi[0].ni[337].nvs" 18304;
	setAttr ".tgi[0].ni[338].x" 502.85714721679688;
	setAttr ".tgi[0].ni[338].y" 7022.85693359375;
	setAttr ".tgi[0].ni[338].nvs" 18304;
	setAttr ".tgi[0].ni[339].x" 502.85714721679688;
	setAttr ".tgi[0].ni[339].y" 6921.4287109375;
	setAttr ".tgi[0].ni[339].nvs" 18304;
	setAttr ".tgi[0].ni[340].x" 502.85714721679688;
	setAttr ".tgi[0].ni[340].y" 6592.85693359375;
	setAttr ".tgi[0].ni[340].nvs" 18304;
	setAttr ".tgi[0].ni[341].x" 984.28570556640625;
	setAttr ".tgi[0].ni[341].y" 6388.5712890625;
	setAttr ".tgi[0].ni[341].nvs" 18304;
	setAttr ".tgi[0].ni[342].x" 2157.142822265625;
	setAttr ".tgi[0].ni[342].y" -14961.4287109375;
	setAttr ".tgi[0].ni[342].nvs" 18304;
	setAttr ".tgi[0].ni[343].x" 984.28570556640625;
	setAttr ".tgi[0].ni[343].y" 6705.71435546875;
	setAttr ".tgi[0].ni[343].nvs" 18304;
	setAttr ".tgi[0].ni[344].x" -1205.7142333984375;
	setAttr ".tgi[0].ni[344].y" 7362.85693359375;
	setAttr ".tgi[0].ni[344].nvs" 18304;
	setAttr ".tgi[0].ni[345].x" -1205.7142333984375;
	setAttr ".tgi[0].ni[345].y" 7464.28564453125;
	setAttr ".tgi[0].ni[345].nvs" 18304;
	setAttr ".tgi[0].ni[346].x" -785.71429443359375;
	setAttr ".tgi[0].ni[346].y" 7472.85693359375;
	setAttr ".tgi[0].ni[346].nvs" 18304;
	setAttr ".tgi[0].ni[347].x" 502.85714721679688;
	setAttr ".tgi[0].ni[347].y" 6434.28564453125;
	setAttr ".tgi[0].ni[347].nvs" 18304;
	setAttr ".tgi[0].ni[348].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[348].y" 6572.85693359375;
	setAttr ".tgi[0].ni[348].nvs" 18304;
	setAttr ".tgi[0].ni[349].x" -347.14285278320312;
	setAttr ".tgi[0].ni[349].y" 6700;
	setAttr ".tgi[0].ni[349].nvs" 18304;
	setAttr ".tgi[0].ni[350].x" 2.8571429252624512;
	setAttr ".tgi[0].ni[350].y" 6778.5712890625;
	setAttr ".tgi[0].ni[350].nvs" 18304;
	setAttr ".tgi[0].ni[351].x" 2157.142822265625;
	setAttr ".tgi[0].ni[351].y" -14831.4287109375;
	setAttr ".tgi[0].ni[351].nvs" 18304;
	setAttr ".tgi[0].ni[352].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[352].y" 6458.5712890625;
	setAttr ".tgi[0].ni[352].nvs" 18304;
	setAttr ".tgi[0].ni[353].x" 2.8571429252624512;
	setAttr ".tgi[0].ni[353].y" 6880;
	setAttr ".tgi[0].ni[353].nvs" 18304;
	setAttr ".tgi[0].ni[354].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[354].y" 6244.28564453125;
	setAttr ".tgi[0].ni[354].nvs" 18304;
	setAttr ".tgi[0].ni[355].x" 502.85714721679688;
	setAttr ".tgi[0].ni[355].y" 6275.71435546875;
	setAttr ".tgi[0].ni[355].nvs" 18304;
	setAttr ".tgi[0].ni[356].x" 1465.7142333984375;
	setAttr ".tgi[0].ni[356].y" 6720;
	setAttr ".tgi[0].ni[356].nvs" 18304;
	setAttr ".tgi[0].ni[357].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[357].y" 6084.28564453125;
	setAttr ".tgi[0].ni[357].nvs" 18304;
	setAttr ".tgi[0].ni[358].x" 984.28570556640625;
	setAttr ".tgi[0].ni[358].y" 6547.14306640625;
	setAttr ".tgi[0].ni[358].nvs" 18304;
	setAttr ".tgi[0].ni[359].x" 1465.7142333984375;
	setAttr ".tgi[0].ni[359].y" 6244.28564453125;
	setAttr ".tgi[0].ni[359].nvs" 18304;
	setAttr ".tgi[0].ni[360].x" 2.8571429252624512;
	setAttr ".tgi[0].ni[360].y" 7068.5712890625;
	setAttr ".tgi[0].ni[360].nvs" 18304;
	setAttr ".tgi[0].ni[361].x" -347.14285278320312;
	setAttr ".tgi[0].ni[361].y" 6902.85693359375;
	setAttr ".tgi[0].ni[361].nvs" 18304;
	setAttr ".tgi[0].ni[362].x" 984.28570556640625;
	setAttr ".tgi[0].ni[362].y" 6230;
	setAttr ".tgi[0].ni[362].nvs" 18304;
	setAttr ".tgi[0].ni[363].x" -347.14285278320312;
	setAttr ".tgi[0].ni[363].y" 6801.4287109375;
	setAttr ".tgi[0].ni[363].nvs" 18304;
	setAttr ".tgi[0].ni[364].x" -785.71429443359375;
	setAttr ".tgi[0].ni[364].y" 6990;
	setAttr ".tgi[0].ni[364].nvs" 18304;
	setAttr ".tgi[0].ni[365].x" 2.8571429252624512;
	setAttr ".tgi[0].ni[365].y" 6620;
	setAttr ".tgi[0].ni[365].nvs" 18304;
	setAttr ".tgi[0].ni[366].x" 984.28570556640625;
	setAttr ".tgi[0].ni[366].y" 6071.4287109375;
	setAttr ".tgi[0].ni[366].nvs" 18304;
	setAttr ".tgi[0].ni[367].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[367].y" 5970;
	setAttr ".tgi[0].ni[367].nvs" 18304;
	setAttr ".tgi[0].ni[368].x" -1205.7142333984375;
	setAttr ".tgi[0].ni[368].y" 6757.14306640625;
	setAttr ".tgi[0].ni[368].nvs" 18304;
	setAttr ".tgi[0].ni[369].x" -1205.7142333984375;
	setAttr ".tgi[0].ni[369].y" 7565.71435546875;
	setAttr ".tgi[0].ni[369].nvs" 18304;
	setAttr ".tgi[0].ni[370].x" -785.71429443359375;
	setAttr ".tgi[0].ni[370].y" 6651.4287109375;
	setAttr ".tgi[0].ni[370].nvs" 18304;
	setAttr ".tgi[0].ni[371].x" -785.71429443359375;
	setAttr ".tgi[0].ni[371].y" 7574.28564453125;
	setAttr ".tgi[0].ni[371].nvs" 18304;
	setAttr ".tgi[0].ni[372].x" 502.85714721679688;
	setAttr ".tgi[0].ni[372].y" 6055.71435546875;
	setAttr ".tgi[0].ni[372].nvs" 18304;
	setAttr ".tgi[0].ni[373].x" 495.71429443359375;
	setAttr ".tgi[0].ni[373].y" 5200;
	setAttr ".tgi[0].ni[373].nvs" 18304;
	setAttr ".tgi[0].ni[374].x" 495.71429443359375;
	setAttr ".tgi[0].ni[374].y" 5301.4287109375;
	setAttr ".tgi[0].ni[374].nvs" 18304;
	setAttr ".tgi[0].ni[375].x" 2157.142822265625;
	setAttr ".tgi[0].ni[375].y" -14701.4287109375;
	setAttr ".tgi[0].ni[375].nvs" 18304;
	setAttr ".tgi[0].ni[376].x" 1465.7142333984375;
	setAttr ".tgi[0].ni[376].y" 7498.5712890625;
	setAttr ".tgi[0].ni[376].nvs" 18304;
	setAttr ".tgi[0].ni[377].x" 502.85714721679688;
	setAttr ".tgi[0].ni[377].y" 7537.14306640625;
	setAttr ".tgi[0].ni[377].nvs" 18304;
	setAttr ".tgi[0].ni[378].x" 2157.142822265625;
	setAttr ".tgi[0].ni[378].y" -14571.4287109375;
	setAttr ".tgi[0].ni[378].nvs" 18304;
	setAttr ".tgi[0].ni[379].x" 2142.857177734375;
	setAttr ".tgi[0].ni[379].y" -8851.4287109375;
	setAttr ".tgi[0].ni[379].nvs" 18304;
	setAttr ".tgi[0].ni[380].x" 2124.28564453125;
	setAttr ".tgi[0].ni[380].y" -6901.4287109375;
	setAttr ".tgi[0].ni[380].nvs" 18304;
	setAttr ".tgi[0].ni[381].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[381].y" 5068.5712890625;
	setAttr ".tgi[0].ni[381].nvs" 18304;
	setAttr ".tgi[0].ni[382].x" 2157.142822265625;
	setAttr ".tgi[0].ni[382].y" -14441.4287109375;
	setAttr ".tgi[0].ni[382].nvs" 18304;
	setAttr ".tgi[0].ni[383].x" 2095.71435546875;
	setAttr ".tgi[0].ni[383].y" -1051.4285888671875;
	setAttr ".tgi[0].ni[383].nvs" 18304;
	setAttr ".tgi[0].ni[384].x" 980;
	setAttr ".tgi[0].ni[384].y" 5258.5712890625;
	setAttr ".tgi[0].ni[384].nvs" 18304;
	setAttr ".tgi[0].ni[385].x" 980;
	setAttr ".tgi[0].ni[385].y" 4998.5712890625;
	setAttr ".tgi[0].ni[385].nvs" 18304;
	setAttr ".tgi[0].ni[386].x" 1464.2857666015625;
	setAttr ".tgi[0].ni[386].y" 4387.14306640625;
	setAttr ".tgi[0].ni[386].nvs" 18304;
	setAttr ".tgi[0].ni[387].x" 2074.28564453125;
	setAttr ".tgi[0].ni[387].y" 1548.5714111328125;
	setAttr ".tgi[0].ni[387].nvs" 18304;
	setAttr ".tgi[0].ni[388].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[388].y" 4967.14306640625;
	setAttr ".tgi[0].ni[388].nvs" 18304;
	setAttr ".tgi[0].ni[389].x" 1465.7142333984375;
	setAttr ".tgi[0].ni[389].y" 5855.71435546875;
	setAttr ".tgi[0].ni[389].nvs" 18304;
	setAttr ".tgi[0].ni[390].x" 2.8571429252624512;
	setAttr ".tgi[0].ni[390].y" 7517.14306640625;
	setAttr ".tgi[0].ni[390].nvs" 18304;
	setAttr ".tgi[0].ni[391].x" -347.14285278320312;
	setAttr ".tgi[0].ni[391].y" 6427.14306640625;
	setAttr ".tgi[0].ni[391].nvs" 18304;
	setAttr ".tgi[0].ni[392].x" 502.85714721679688;
	setAttr ".tgi[0].ni[392].y" 7131.4287109375;
	setAttr ".tgi[0].ni[392].nvs" 18304;
	setAttr ".tgi[0].ni[393].x" 1465.7142333984375;
	setAttr ".tgi[0].ni[393].y" 7942.85693359375;
	setAttr ".tgi[0].ni[393].nvs" 18304;
	setAttr ".tgi[0].ni[394].x" -1391.4285888671875;
	setAttr ".tgi[0].ni[394].y" 4558.5712890625;
	setAttr ".tgi[0].ni[394].nvs" 18304;
	setAttr ".tgi[0].ni[395].x" 502.85714721679688;
	setAttr ".tgi[0].ni[395].y" 7942.85693359375;
	setAttr ".tgi[0].ni[395].nvs" 18304;
	setAttr ".tgi[0].ni[396].x" -347.14285278320312;
	setAttr ".tgi[0].ni[396].y" 7517.14306640625;
	setAttr ".tgi[0].ni[396].nvs" 18304;
	setAttr ".tgi[0].ni[397].x" 2.8571429252624512;
	setAttr ".tgi[0].ni[397].y" 6225.71435546875;
	setAttr ".tgi[0].ni[397].nvs" 18304;
	setAttr ".tgi[0].ni[398].x" 1465.7142333984375;
	setAttr ".tgi[0].ni[398].y" 6961.4287109375;
	setAttr ".tgi[0].ni[398].nvs" 18304;
	setAttr ".tgi[0].ni[399].x" 495.71429443359375;
	setAttr ".tgi[0].ni[399].y" 4794.28564453125;
	setAttr ".tgi[0].ni[399].nvs" 18304;
	setAttr ".tgi[0].ni[400].x" 1464.2857666015625;
	setAttr ".tgi[0].ni[400].y" 5068.5712890625;
	setAttr ".tgi[0].ni[400].nvs" 18304;
	setAttr ".tgi[0].ni[401].x" 980;
	setAttr ".tgi[0].ni[401].y" 4637.14306640625;
	setAttr ".tgi[0].ni[401].nvs" 18304;
	setAttr ".tgi[0].ni[402].x" 980;
	setAttr ".tgi[0].ni[402].y" 5100;
	setAttr ".tgi[0].ni[402].nvs" 18304;
	setAttr ".tgi[0].ni[403].x" 502.85714721679688;
	setAttr ".tgi[0].ni[403].y" 5930;
	setAttr ".tgi[0].ni[403].nvs" 18304;
	setAttr ".tgi[0].ni[404].x" 2098.571533203125;
	setAttr ".tgi[0].ni[404].y" -1441.4285888671875;
	setAttr ".tgi[0].ni[404].nvs" 18304;
	setAttr ".tgi[0].ni[405].x" 502.85714721679688;
	setAttr ".tgi[0].ni[405].y" 5672.85693359375;
	setAttr ".tgi[0].ni[405].nvs" 18304;
	setAttr ".tgi[0].ni[406].x" 2.8571429252624512;
	setAttr ".tgi[0].ni[406].y" 6111.4287109375;
	setAttr ".tgi[0].ni[406].nvs" 18304;
	setAttr ".tgi[0].ni[407].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[407].y" 5855.71435546875;
	setAttr ".tgi[0].ni[407].nvs" 18304;
	setAttr ".tgi[0].ni[408].x" -1512.857177734375;
	setAttr ".tgi[0].ni[408].y" 7285.71435546875;
	setAttr ".tgi[0].ni[408].nvs" 18304;
	setAttr ".tgi[0].ni[409].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[409].y" 5617.14306640625;
	setAttr ".tgi[0].ni[409].nvs" 18304;
	setAttr ".tgi[0].ni[410].x" 984.28570556640625;
	setAttr ".tgi[0].ni[410].y" 5490;
	setAttr ".tgi[0].ni[410].nvs" 18304;
	setAttr ".tgi[0].ni[411].x" 2157.142822265625;
	setAttr ".tgi[0].ni[411].y" -14311.4287109375;
	setAttr ".tgi[0].ni[411].nvs" 18304;
	setAttr ".tgi[0].ni[412].x" 2124.28564453125;
	setAttr ".tgi[0].ni[412].y" -6771.4287109375;
	setAttr ".tgi[0].ni[412].nvs" 18304;
	setAttr ".tgi[0].ni[413].x" 2157.142822265625;
	setAttr ".tgi[0].ni[413].y" -14181.4287109375;
	setAttr ".tgi[0].ni[413].nvs" 18304;
	setAttr ".tgi[0].ni[414].x" -1512.857177734375;
	setAttr ".tgi[0].ni[414].y" 6832.85693359375;
	setAttr ".tgi[0].ni[414].nvs" 18304;
	setAttr ".tgi[0].ni[415].x" 1465.7142333984375;
	setAttr ".tgi[0].ni[415].y" 5430;
	setAttr ".tgi[0].ni[415].nvs" 18304;
	setAttr ".tgi[0].ni[416].x" 2157.142822265625;
	setAttr ".tgi[0].ni[416].y" -14051.4287109375;
	setAttr ".tgi[0].ni[416].nvs" 18304;
	setAttr ".tgi[0].ni[417].x" 2127.142822265625;
	setAttr ".tgi[0].ni[417].y" -7291.4287109375;
	setAttr ".tgi[0].ni[417].nvs" 18304;
	setAttr ".tgi[0].ni[418].x" 2075.71435546875;
	setAttr ".tgi[0].ni[418].y" 1288.5714111328125;
	setAttr ".tgi[0].ni[418].nvs" 18304;
	setAttr ".tgi[0].ni[419].x" 2157.142822265625;
	setAttr ".tgi[0].ni[419].y" -13921.4287109375;
	setAttr ".tgi[0].ni[419].nvs" 18304;
	setAttr ".tgi[0].ni[420].x" 984.28570556640625;
	setAttr ".tgi[0].ni[420].y" 5750;
	setAttr ".tgi[0].ni[420].nvs" 18304;
	setAttr ".tgi[0].ni[421].x" 2144.28564453125;
	setAttr ".tgi[0].ni[421].y" -8981.4287109375;
	setAttr ".tgi[0].ni[421].nvs" 18304;
	setAttr ".tgi[0].ni[422].x" 2157.142822265625;
	setAttr ".tgi[0].ni[422].y" -13791.4287109375;
	setAttr ".tgi[0].ni[422].nvs" 18304;
	setAttr ".tgi[0].ni[423].x" 984.28570556640625;
	setAttr ".tgi[0].ni[423].y" 5855.71435546875;
	setAttr ".tgi[0].ni[423].nvs" 18304;
	setAttr ".tgi[0].ni[424].x" 502.85714721679688;
	setAttr ".tgi[0].ni[424].y" 5774.28564453125;
	setAttr ".tgi[0].ni[424].nvs" 18304;
	setAttr ".tgi[0].ni[425].x" 1465.7142333984375;
	setAttr ".tgi[0].ni[425].y" 5618.5712890625;
	setAttr ".tgi[0].ni[425].nvs" 18304;
	setAttr ".tgi[0].ni[426].x" 984.28570556640625;
	setAttr ".tgi[0].ni[426].y" 5591.4287109375;
	setAttr ".tgi[0].ni[426].nvs" 18304;
	setAttr ".tgi[0].ni[427].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[427].y" 5458.5712890625;
	setAttr ".tgi[0].ni[427].nvs" 18304;
	setAttr ".tgi[0].ni[428].x" 20;
	setAttr ".tgi[0].ni[428].y" 8738.5712890625;
	setAttr ".tgi[0].ni[428].nvs" 18304;
	setAttr ".tgi[0].ni[429].x" -2165.71435546875;
	setAttr ".tgi[0].ni[429].y" 10428.5712890625;
	setAttr ".tgi[0].ni[429].nvs" 18304;
	setAttr ".tgi[0].ni[430].x" 995.71429443359375;
	setAttr ".tgi[0].ni[430].y" 9905.7138671875;
	setAttr ".tgi[0].ni[430].nvs" 18304;
	setAttr ".tgi[0].ni[431].x" 995.71429443359375;
	setAttr ".tgi[0].ni[431].y" 8174.28564453125;
	setAttr ".tgi[0].ni[431].nvs" 18304;
	setAttr ".tgi[0].ni[432].x" 2157.142822265625;
	setAttr ".tgi[0].ni[432].y" -13661.4287109375;
	setAttr ".tgi[0].ni[432].nvs" 18304;
	setAttr ".tgi[0].ni[433].x" 2147.142822265625;
	setAttr ".tgi[0].ni[433].y" -9891.4287109375;
	setAttr ".tgi[0].ni[433].nvs" 18304;
	setAttr ".tgi[0].ni[434].x" 995.71429443359375;
	setAttr ".tgi[0].ni[434].y" 11284.2861328125;
	setAttr ".tgi[0].ni[434].nvs" 18304;
	setAttr ".tgi[0].ni[435].x" 1471.4285888671875;
	setAttr ".tgi[0].ni[435].y" 10734.2861328125;
	setAttr ".tgi[0].ni[435].nvs" 18304;
	setAttr ".tgi[0].ni[436].x" 2097.142822265625;
	setAttr ".tgi[0].ni[436].y" -1181.4285888671875;
	setAttr ".tgi[0].ni[436].nvs" 18304;
	setAttr ".tgi[0].ni[437].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[437].y" 11284.2861328125;
	setAttr ".tgi[0].ni[437].nvs" 18304;
	setAttr ".tgi[0].ni[438].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[438].y" 11128.5712890625;
	setAttr ".tgi[0].ni[438].nvs" 18304;
	setAttr ".tgi[0].ni[439].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[439].y" 10998.5712890625;
	setAttr ".tgi[0].ni[439].nvs" 18304;
	setAttr ".tgi[0].ni[440].x" 2118.571533203125;
	setAttr ".tgi[0].ni[440].y" -5341.4287109375;
	setAttr ".tgi[0].ni[440].nvs" 18304;
	setAttr ".tgi[0].ni[441].x" 995.71429443359375;
	setAttr ".tgi[0].ni[441].y" 10892.857421875;
	setAttr ".tgi[0].ni[441].nvs" 18304;
	setAttr ".tgi[0].ni[442].x" 995.71429443359375;
	setAttr ".tgi[0].ni[442].y" 10531.4287109375;
	setAttr ".tgi[0].ni[442].nvs" 18304;
	setAttr ".tgi[0].ni[443].x" -1480;
	setAttr ".tgi[0].ni[443].y" 10295.7138671875;
	setAttr ".tgi[0].ni[443].nvs" 18304;
	setAttr ".tgi[0].ni[444].x" 2101.428466796875;
	setAttr ".tgi[0].ni[444].y" -2091.428466796875;
	setAttr ".tgi[0].ni[444].nvs" 18304;
	setAttr ".tgi[0].ni[445].x" 995.71429443359375;
	setAttr ".tgi[0].ni[445].y" 10994.2861328125;
	setAttr ".tgi[0].ni[445].nvs" 18304;
	setAttr ".tgi[0].ni[446].x" 520;
	setAttr ".tgi[0].ni[446].y" 11182.857421875;
	setAttr ".tgi[0].ni[446].nvs" 18304;
	setAttr ".tgi[0].ni[447].x" 2151.428466796875;
	setAttr ".tgi[0].ni[447].y" -10671.4287109375;
	setAttr ".tgi[0].ni[447].nvs" 18304;
	setAttr ".tgi[0].ni[448].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[448].y" 10892.857421875;
	setAttr ".tgi[0].ni[448].nvs" 18304;
	setAttr ".tgi[0].ni[449].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[449].y" 10762.857421875;
	setAttr ".tgi[0].ni[449].nvs" 18304;
	setAttr ".tgi[0].ni[450].x" 1471.4285888671875;
	setAttr ".tgi[0].ni[450].y" 10467.142578125;
	setAttr ".tgi[0].ni[450].nvs" 18304;
	setAttr ".tgi[0].ni[451].x" 520;
	setAttr ".tgi[0].ni[451].y" 10647.142578125;
	setAttr ".tgi[0].ni[451].nvs" 18304;
	setAttr ".tgi[0].ni[452].x" 995.71429443359375;
	setAttr ".tgi[0].ni[452].y" 10430;
	setAttr ".tgi[0].ni[452].nvs" 18304;
	setAttr ".tgi[0].ni[453].x" 995.71429443359375;
	setAttr ".tgi[0].ni[453].y" 10791.4287109375;
	setAttr ".tgi[0].ni[453].nvs" 18304;
	setAttr ".tgi[0].ni[454].x" 2122.857177734375;
	setAttr ".tgi[0].ni[454].y" -6381.4287109375;
	setAttr ".tgi[0].ni[454].nvs" 18304;
	setAttr ".tgi[0].ni[455].x" 1471.4285888671875;
	setAttr ".tgi[0].ni[455].y" 10998.5712890625;
	setAttr ".tgi[0].ni[455].nvs" 18304;
	setAttr ".tgi[0].ni[456].x" 520;
	setAttr ".tgi[0].ni[456].y" 10748.5712890625;
	setAttr ".tgi[0].ni[456].nvs" 18304;
	setAttr ".tgi[0].ni[457].x" 995.71429443359375;
	setAttr ".tgi[0].ni[457].y" 11152.857421875;
	setAttr ".tgi[0].ni[457].nvs" 18304;
	setAttr ".tgi[0].ni[458].x" 520;
	setAttr ".tgi[0].ni[458].y" 10545.7138671875;
	setAttr ".tgi[0].ni[458].nvs" 18304;
	setAttr ".tgi[0].ni[459].x" 1471.4285888671875;
	setAttr ".tgi[0].ni[459].y" 10568.5712890625;
	setAttr ".tgi[0].ni[459].nvs" 18304;
	setAttr ".tgi[0].ni[460].x" 20;
	setAttr ".tgi[0].ni[460].y" 10744.2861328125;
	setAttr ".tgi[0].ni[460].nvs" 18304;
	setAttr ".tgi[0].ni[461].x" 2157.142822265625;
	setAttr ".tgi[0].ni[461].y" -13531.4287109375;
	setAttr ".tgi[0].ni[461].nvs" 18304;
	setAttr ".tgi[0].ni[462].x" 520;
	setAttr ".tgi[0].ni[462].y" 11081.4287109375;
	setAttr ".tgi[0].ni[462].nvs" 18304;
	setAttr ".tgi[0].ni[463].x" 995.71429443359375;
	setAttr ".tgi[0].ni[463].y" 10690;
	setAttr ".tgi[0].ni[463].nvs" 18304;
	setAttr ".tgi[0].ni[464].x" 520;
	setAttr ".tgi[0].ni[464].y" 10980;
	setAttr ".tgi[0].ni[464].nvs" 18304;
	setAttr ".tgi[0].ni[465].x" 20;
	setAttr ".tgi[0].ni[465].y" 11045.7138671875;
	setAttr ".tgi[0].ni[465].nvs" 18304;
	setAttr ".tgi[0].ni[466].x" -1480;
	setAttr ".tgi[0].ni[466].y" 10454.2861328125;
	setAttr ".tgi[0].ni[466].nvs" 18304;
	setAttr ".tgi[0].ni[467].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[467].y" 10568.5712890625;
	setAttr ".tgi[0].ni[467].nvs" 18304;
	setAttr ".tgi[0].ni[468].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[468].y" 10417.142578125;
	setAttr ".tgi[0].ni[468].nvs" 18304;
	setAttr ".tgi[0].ni[469].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[469].y" 10308.5712890625;
	setAttr ".tgi[0].ni[469].nvs" 18304;
	setAttr ".tgi[0].ni[470].x" 995.71429443359375;
	setAttr ".tgi[0].ni[470].y" 9804.2861328125;
	setAttr ".tgi[0].ni[470].nvs" 18304;
	setAttr ".tgi[0].ni[471].x" 2150;
	setAttr ".tgi[0].ni[471].y" -10281.4287109375;
	setAttr ".tgi[0].ni[471].nvs" 18304;
	setAttr ".tgi[0].ni[472].x" 995.71429443359375;
	setAttr ".tgi[0].ni[472].y" 10328.5712890625;
	setAttr ".tgi[0].ni[472].nvs" 18304;
	setAttr ".tgi[0].ni[473].x" -727.14288330078125;
	setAttr ".tgi[0].ni[473].y" 10352.857421875;
	setAttr ".tgi[0].ni[473].nvs" 18304;
	setAttr ".tgi[0].ni[474].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[474].y" 10178.5712890625;
	setAttr ".tgi[0].ni[474].nvs" 18304;
	setAttr ".tgi[0].ni[475].x" 20;
	setAttr ".tgi[0].ni[475].y" 10005.7138671875;
	setAttr ".tgi[0].ni[475].nvs" 18304;
	setAttr ".tgi[0].ni[476].x" 995.71429443359375;
	setAttr ".tgi[0].ni[476].y" 9442.857421875;
	setAttr ".tgi[0].ni[476].nvs" 18304;
	setAttr ".tgi[0].ni[477].x" 2104.28564453125;
	setAttr ".tgi[0].ni[477].y" -2351.428466796875;
	setAttr ".tgi[0].ni[477].nvs" 18304;
	setAttr ".tgi[0].ni[478].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[478].y" 9775.7138671875;
	setAttr ".tgi[0].ni[478].nvs" 18304;
	setAttr ".tgi[0].ni[479].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[479].y" 9525.7138671875;
	setAttr ".tgi[0].ni[479].nvs" 18304;
	setAttr ".tgi[0].ni[480].x" 20;
	setAttr ".tgi[0].ni[480].y" 10164.2861328125;
	setAttr ".tgi[0].ni[480].nvs" 18304;
	setAttr ".tgi[0].ni[481].x" -727.14288330078125;
	setAttr ".tgi[0].ni[481].y" 10251.4287109375;
	setAttr ".tgi[0].ni[481].nvs" 18304;
	setAttr ".tgi[0].ni[482].x" 20;
	setAttr ".tgi[0].ni[482].y" 9904.2861328125;
	setAttr ".tgi[0].ni[482].nvs" 18304;
	setAttr ".tgi[0].ni[483].x" 1471.4285888671875;
	setAttr ".tgi[0].ni[483].y" 9424.2861328125;
	setAttr ".tgi[0].ni[483].nvs" 18304;
	setAttr ".tgi[0].ni[484].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[484].y" 9424.2861328125;
	setAttr ".tgi[0].ni[484].nvs" 18304;
	setAttr ".tgi[0].ni[485].x" 520;
	setAttr ".tgi[0].ni[485].y" 9287.142578125;
	setAttr ".tgi[0].ni[485].nvs" 18304;
	setAttr ".tgi[0].ni[486].x" 2157.142822265625;
	setAttr ".tgi[0].ni[486].y" -13401.4287109375;
	setAttr ".tgi[0].ni[486].nvs" 18304;
	setAttr ".tgi[0].ni[487].x" 1471.4285888671875;
	setAttr ".tgi[0].ni[487].y" 9747.142578125;
	setAttr ".tgi[0].ni[487].nvs" 18304;
	setAttr ".tgi[0].ni[488].x" 520;
	setAttr ".tgi[0].ni[488].y" 9490;
	setAttr ".tgi[0].ni[488].nvs" 18304;
	setAttr ".tgi[0].ni[489].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[489].y" 9214.2861328125;
	setAttr ".tgi[0].ni[489].nvs" 18304;
	setAttr ".tgi[0].ni[490].x" -388.57144165039062;
	setAttr ".tgi[0].ni[490].y" 10337.142578125;
	setAttr ".tgi[0].ni[490].nvs" 18304;
	setAttr ".tgi[0].ni[491].x" 995.71429443359375;
	setAttr ".tgi[0].ni[491].y" 9284.2861328125;
	setAttr ".tgi[0].ni[491].nvs" 18304;
	setAttr ".tgi[0].ni[492].x" -388.57144165039062;
	setAttr ".tgi[0].ni[492].y" 10438.5712890625;
	setAttr ".tgi[0].ni[492].nvs" 18304;
	setAttr ".tgi[0].ni[493].x" 2132.857177734375;
	setAttr ".tgi[0].ni[493].y" -8331.4287109375;
	setAttr ".tgi[0].ni[493].nvs" 18304;
	setAttr ".tgi[0].ni[494].x" 2081.428466796875;
	setAttr ".tgi[0].ni[494].y" 508.57144165039062;
	setAttr ".tgi[0].ni[494].nvs" 18304;
	setAttr ".tgi[0].ni[495].x" 520;
	setAttr ".tgi[0].ni[495].y" 9388.5712890625;
	setAttr ".tgi[0].ni[495].nvs" 18304;
	setAttr ".tgi[0].ni[496].x" 20;
	setAttr ".tgi[0].ni[496].y" 9587.142578125;
	setAttr ".tgi[0].ni[496].nvs" 18304;
	setAttr ".tgi[0].ni[497].x" 2157.142822265625;
	setAttr ".tgi[0].ni[497].y" -13271.4287109375;
	setAttr ".tgi[0].ni[497].nvs" 18304;
	setAttr ".tgi[0].ni[498].x" -727.14288330078125;
	setAttr ".tgi[0].ni[498].y" 10092.857421875;
	setAttr ".tgi[0].ni[498].nvs" 18304;
	setAttr ".tgi[0].ni[499].x" -388.57144165039062;
	setAttr ".tgi[0].ni[499].y" 10178.5712890625;
	setAttr ".tgi[0].ni[499].nvs" 18304;
	setAttr ".tgi[0].ni[500].x" 520;
	setAttr ".tgi[0].ni[500].y" 9908.5712890625;
	setAttr ".tgi[0].ni[500].nvs" 18304;
	setAttr ".tgi[0].ni[501].x" -388.57144165039062;
	setAttr ".tgi[0].ni[501].y" 10020;
	setAttr ".tgi[0].ni[501].nvs" 18304;
	setAttr ".tgi[0].ni[502].x" 995.71429443359375;
	setAttr ".tgi[0].ni[502].y" 9702.857421875;
	setAttr ".tgi[0].ni[502].nvs" 18304;
	setAttr ".tgi[0].ni[503].x" 520;
	setAttr ".tgi[0].ni[503].y" 9648.5712890625;
	setAttr ".tgi[0].ni[503].nvs" 18304;
	setAttr ".tgi[0].ni[504].x" 520;
	setAttr ".tgi[0].ni[504].y" 9750;
	setAttr ".tgi[0].ni[504].nvs" 18304;
	setAttr ".tgi[0].ni[505].x" -1172.857177734375;
	setAttr ".tgi[0].ni[505].y" 10432.857421875;
	setAttr ".tgi[0].ni[505].nvs" 18304;
	setAttr ".tgi[0].ni[506].x" 20;
	setAttr ".tgi[0].ni[506].y" 8840;
	setAttr ".tgi[0].ni[506].nvs" 18304;
	setAttr ".tgi[0].ni[507].x" -388.57144165039062;
	setAttr ".tgi[0].ni[507].y" 10654.2861328125;
	setAttr ".tgi[0].ni[507].nvs" 18304;
	setAttr ".tgi[0].ni[508].x" 520;
	setAttr ".tgi[0].ni[508].y" 8900;
	setAttr ".tgi[0].ni[508].nvs" 18304;
	setAttr ".tgi[0].ni[509].x" 520;
	setAttr ".tgi[0].ni[509].y" 11284.2861328125;
	setAttr ".tgi[0].ni[509].nvs" 18304;
	setAttr ".tgi[0].ni[510].x" 520;
	setAttr ".tgi[0].ni[510].y" 10444.2861328125;
	setAttr ".tgi[0].ni[510].nvs" 18304;
	setAttr ".tgi[0].ni[511].x" -388.57144165039062;
	setAttr ".tgi[0].ni[511].y" 11020;
	setAttr ".tgi[0].ni[511].nvs" 18304;
	setAttr ".tgi[0].ni[512].x" 1471.4285888671875;
	setAttr ".tgi[0].ni[512].y" 8072.85693359375;
	setAttr ".tgi[0].ni[512].nvs" 18304;
	setAttr ".tgi[0].ni[513].x" 1471.4285888671875;
	setAttr ".tgi[0].ni[513].y" 10892.857421875;
	setAttr ".tgi[0].ni[513].nvs" 18304;
	setAttr ".tgi[0].ni[514].x" -1172.857177734375;
	setAttr ".tgi[0].ni[514].y" 10534.2861328125;
	setAttr ".tgi[0].ni[514].nvs" 18304;
	setAttr ".tgi[0].ni[515].x" -727.14288330078125;
	setAttr ".tgi[0].ni[515].y" 9534.2861328125;
	setAttr ".tgi[0].ni[515].nvs" 18304;
	setAttr ".tgi[0].ni[516].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[516].y" 9100;
	setAttr ".tgi[0].ni[516].nvs" 18304;
	setAttr ".tgi[0].ni[517].x" 2157.142822265625;
	setAttr ".tgi[0].ni[517].y" -13141.4287109375;
	setAttr ".tgi[0].ni[517].nvs" 18304;
	setAttr ".tgi[0].ni[518].x" 2157.142822265625;
	setAttr ".tgi[0].ni[518].y" -13011.4287109375;
	setAttr ".tgi[0].ni[518].nvs" 18304;
	setAttr ".tgi[0].ni[519].x" 995.71429443359375;
	setAttr ".tgi[0].ni[519].y" 9068.5712890625;
	setAttr ".tgi[0].ni[519].nvs" 18304;
	setAttr ".tgi[0].ni[520].x" 20;
	setAttr ".tgi[0].ni[520].y" 9745.7138671875;
	setAttr ".tgi[0].ni[520].nvs" 18304;
	setAttr ".tgi[0].ni[521].x" -1172.857177734375;
	setAttr ".tgi[0].ni[521].y" 9874.2861328125;
	setAttr ".tgi[0].ni[521].nvs" 18304;
	setAttr ".tgi[0].ni[522].x" -1172.857177734375;
	setAttr ".tgi[0].ni[522].y" 9772.857421875;
	setAttr ".tgi[0].ni[522].nvs" 18304;
	setAttr ".tgi[0].ni[523].x" -1172.857177734375;
	setAttr ".tgi[0].ni[523].y" 10750;
	setAttr ".tgi[0].ni[523].nvs" 18304;
	setAttr ".tgi[0].ni[524].x" -1858.5714111328125;
	setAttr ".tgi[0].ni[524].y" 10444.2861328125;
	setAttr ".tgi[0].ni[524].nvs" 18304;
	setAttr ".tgi[0].ni[525].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[525].y" 8994.2861328125;
	setAttr ".tgi[0].ni[525].nvs" 18304;
	setAttr ".tgi[0].ni[526].x" -727.14288330078125;
	setAttr ".tgi[0].ni[526].y" 9432.857421875;
	setAttr ".tgi[0].ni[526].nvs" 18304;
	setAttr ".tgi[0].ni[527].x" -727.14288330078125;
	setAttr ".tgi[0].ni[527].y" 10581.4287109375;
	setAttr ".tgi[0].ni[527].nvs" 18304;
	setAttr ".tgi[0].ni[528].x" 1471.4285888671875;
	setAttr ".tgi[0].ni[528].y" 9525.7138671875;
	setAttr ".tgi[0].ni[528].nvs" 18304;
	setAttr ".tgi[0].ni[529].x" 995.71429443359375;
	setAttr ".tgi[0].ni[529].y" 9544.2861328125;
	setAttr ".tgi[0].ni[529].nvs" 18304;
	setAttr ".tgi[0].ni[530].x" -727.14288330078125;
	setAttr ".tgi[0].ni[530].y" 10895.7138671875;
	setAttr ".tgi[0].ni[530].nvs" 18304;
	setAttr ".tgi[0].ni[531].x" -388.57144165039062;
	setAttr ".tgi[0].ni[531].y" 9151.4287109375;
	setAttr ".tgi[0].ni[531].nvs" 18304;
	setAttr ".tgi[0].ni[532].x" 20;
	setAttr ".tgi[0].ni[532].y" 11147.142578125;
	setAttr ".tgi[0].ni[532].nvs" 18304;
	setAttr ".tgi[0].ni[533].x" 20;
	setAttr ".tgi[0].ni[533].y" 10642.857421875;
	setAttr ".tgi[0].ni[533].nvs" 18304;
	setAttr ".tgi[0].ni[534].x" 520;
	setAttr ".tgi[0].ni[534].y" 8187.14306640625;
	setAttr ".tgi[0].ni[534].nvs" 18304;
	setAttr ".tgi[0].ni[535].x" 520;
	setAttr ".tgi[0].ni[535].y" 10850;
	setAttr ".tgi[0].ni[535].nvs" 18304;
	setAttr ".tgi[0].ni[536].x" -1480;
	setAttr ".tgi[0].ni[536].y" 10612.857421875;
	setAttr ".tgi[0].ni[536].nvs" 18304;
	setAttr ".tgi[0].ni[537].x" 1471.4285888671875;
	setAttr ".tgi[0].ni[537].y" 8900;
	setAttr ".tgi[0].ni[537].nvs" 18304;
	setAttr ".tgi[0].ni[538].x" 1471.4285888671875;
	setAttr ".tgi[0].ni[538].y" 11284.2861328125;
	setAttr ".tgi[0].ni[538].nvs" 18304;
	setAttr ".tgi[0].ni[539].x" 1471.4285888671875;
	setAttr ".tgi[0].ni[539].y" 10308.5712890625;
	setAttr ".tgi[0].ni[539].nvs" 18304;
	setAttr ".tgi[0].ni[540].x" 2157.142822265625;
	setAttr ".tgi[0].ni[540].y" -12881.4287109375;
	setAttr ".tgi[0].ni[540].nvs" 18304;
	setAttr ".tgi[0].ni[541].x" 2157.142822265625;
	setAttr ".tgi[0].ni[541].y" -12751.4287109375;
	setAttr ".tgi[0].ni[541].nvs" 18304;
	setAttr ".tgi[0].ni[542].x" 2157.142822265625;
	setAttr ".tgi[0].ni[542].y" -12621.4287109375;
	setAttr ".tgi[0].ni[542].nvs" 18304;
	setAttr ".tgi[0].ni[543].x" 2157.142822265625;
	setAttr ".tgi[0].ni[543].y" -12491.4287109375;
	setAttr ".tgi[0].ni[543].nvs" 18304;
	setAttr ".tgi[0].ni[544].x" 2157.142822265625;
	setAttr ".tgi[0].ni[544].y" -12361.4287109375;
	setAttr ".tgi[0].ni[544].nvs" 18304;
	setAttr ".tgi[0].ni[545].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[545].y" 13571.4287109375;
	setAttr ".tgi[0].ni[545].nvs" 18304;
	setAttr ".tgi[0].ni[546].x" 1468.5714111328125;
	setAttr ".tgi[0].ni[546].y" 13470;
	setAttr ".tgi[0].ni[546].nvs" 18304;
	setAttr ".tgi[0].ni[547].x" 511.42855834960938;
	setAttr ".tgi[0].ni[547].y" 13497.142578125;
	setAttr ".tgi[0].ni[547].nvs" 18304;
	setAttr ".tgi[0].ni[548].x" -1485.7142333984375;
	setAttr ".tgi[0].ni[548].y" 14191.4287109375;
	setAttr ".tgi[0].ni[548].nvs" 18304;
	setAttr ".tgi[0].ni[549].x" 1468.5714111328125;
	setAttr ".tgi[0].ni[549].y" 13571.4287109375;
	setAttr ".tgi[0].ni[549].nvs" 18304;
	setAttr ".tgi[0].ni[550].x" 2157.142822265625;
	setAttr ".tgi[0].ni[550].y" -12231.4287109375;
	setAttr ".tgi[0].ni[550].nvs" 18304;
	setAttr ".tgi[0].ni[551].x" 2157.142822265625;
	setAttr ".tgi[0].ni[551].y" -12101.4287109375;
	setAttr ".tgi[0].ni[551].nvs" 18304;
	setAttr ".tgi[0].ni[552].x" 2128.571533203125;
	setAttr ".tgi[0].ni[552].y" -7551.4287109375;
	setAttr ".tgi[0].ni[552].nvs" 18304;
	setAttr ".tgi[0].ni[553].x" 990;
	setAttr ".tgi[0].ni[553].y" 13507.142578125;
	setAttr ".tgi[0].ni[553].nvs" 18304;
	setAttr ".tgi[0].ni[554].x" 11.428571701049805;
	setAttr ".tgi[0].ni[554].y" 13641.4287109375;
	setAttr ".tgi[0].ni[554].nvs" 18304;
	setAttr ".tgi[0].ni[555].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[555].y" 13418.5712890625;
	setAttr ".tgi[0].ni[555].nvs" 18304;
	setAttr ".tgi[0].ni[556].x" 990;
	setAttr ".tgi[0].ni[556].y" 13665.7138671875;
	setAttr ".tgi[0].ni[556].nvs" 18304;
	setAttr ".tgi[0].ni[557].x" 511.42855834960938;
	setAttr ".tgi[0].ni[557].y" 13700;
	setAttr ".tgi[0].ni[557].nvs" 18304;
	setAttr ".tgi[0].ni[558].x" -1485.7142333984375;
	setAttr ".tgi[0].ni[558].y" 13988.5712890625;
	setAttr ".tgi[0].ni[558].nvs" 18304;
	setAttr ".tgi[0].ni[559].x" 511.42855834960938;
	setAttr ".tgi[0].ni[559].y" 13598.5712890625;
	setAttr ".tgi[0].ni[559].nvs" 18304;
	setAttr ".tgi[0].ni[560].x" 2130;
	setAttr ".tgi[0].ni[560].y" -7941.4287109375;
	setAttr ".tgi[0].ni[560].nvs" 18304;
	setAttr ".tgi[0].ni[561].x" 2111.428466796875;
	setAttr ".tgi[0].ni[561].y" -3521.428466796875;
	setAttr ".tgi[0].ni[561].nvs" 18304;
	setAttr ".tgi[0].ni[562].x" 2060;
	setAttr ".tgi[0].ni[562].y" 2068.571533203125;
	setAttr ".tgi[0].ni[562].nvs" 18304;
	setAttr ".tgi[0].ni[563].x" 2081.428466796875;
	setAttr ".tgi[0].ni[563].y" 638.5714111328125;
	setAttr ".tgi[0].ni[563].nvs" 18304;
	setAttr ".tgi[0].ni[564].x" 990;
	setAttr ".tgi[0].ni[564].y" 13405.7138671875;
	setAttr ".tgi[0].ni[564].nvs" 18304;
	setAttr ".tgi[0].ni[565].x" 2110;
	setAttr ".tgi[0].ni[565].y" -3131.428466796875;
	setAttr ".tgi[0].ni[565].nvs" 18304;
	setAttr ".tgi[0].ni[566].x" 2157.142822265625;
	setAttr ".tgi[0].ni[566].y" -11971.4287109375;
	setAttr ".tgi[0].ni[566].nvs" 18304;
	setAttr ".tgi[0].ni[567].x" 990;
	setAttr ".tgi[0].ni[567].y" 13304.2861328125;
	setAttr ".tgi[0].ni[567].nvs" 18304;
	setAttr ".tgi[0].ni[568].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[568].y" 13304.2861328125;
	setAttr ".tgi[0].ni[568].nvs" 18304;
	setAttr ".tgi[0].ni[569].x" 990;
	setAttr ".tgi[0].ni[569].y" 13164.2861328125;
	setAttr ".tgi[0].ni[569].nvs" 18304;
	setAttr ".tgi[0].ni[570].x" 2095.71435546875;
	setAttr ".tgi[0].ni[570].y" -921.4285888671875;
	setAttr ".tgi[0].ni[570].nvs" 18304;
	setAttr ".tgi[0].ni[571].x" 511.42855834960938;
	setAttr ".tgi[0].ni[571].y" 13190;
	setAttr ".tgi[0].ni[571].nvs" 18304;
	setAttr ".tgi[0].ni[572].x" 990;
	setAttr ".tgi[0].ni[572].y" 12701.4287109375;
	setAttr ".tgi[0].ni[572].nvs" 18304;
	setAttr ".tgi[0].ni[573].x" -2172.857177734375;
	setAttr ".tgi[0].ni[573].y" 13992.857421875;
	setAttr ".tgi[0].ni[573].nvs" 18304;
	setAttr ".tgi[0].ni[574].x" 2157.142822265625;
	setAttr ".tgi[0].ni[574].y" -11841.4287109375;
	setAttr ".tgi[0].ni[574].nvs" 18304;
	setAttr ".tgi[0].ni[575].x" 511.42855834960938;
	setAttr ".tgi[0].ni[575].y" 12581.4287109375;
	setAttr ".tgi[0].ni[575].nvs" 18304;
	setAttr ".tgi[0].ni[576].x" 511.42855834960938;
	setAttr ".tgi[0].ni[576].y" 12784.2861328125;
	setAttr ".tgi[0].ni[576].nvs" 18304;
	setAttr ".tgi[0].ni[577].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[577].y" 12921.4287109375;
	setAttr ".tgi[0].ni[577].nvs" 18304;
	setAttr ".tgi[0].ni[578].x" 2082.857177734375;
	setAttr ".tgi[0].ni[578].y" 248.57142639160156;
	setAttr ".tgi[0].ni[578].nvs" 18304;
	setAttr ".tgi[0].ni[579].x" 2117.142822265625;
	setAttr ".tgi[0].ni[579].y" -5211.4287109375;
	setAttr ".tgi[0].ni[579].nvs" 18304;
	setAttr ".tgi[0].ni[580].x" 990;
	setAttr ".tgi[0].ni[580].y" 12802.857421875;
	setAttr ".tgi[0].ni[580].nvs" 18304;
	setAttr ".tgi[0].ni[581].x" 511.42855834960938;
	setAttr ".tgi[0].ni[581].y" 12682.857421875;
	setAttr ".tgi[0].ni[581].nvs" 18304;
	setAttr ".tgi[0].ni[582].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[582].y" 12820;
	setAttr ".tgi[0].ni[582].nvs" 18304;
	setAttr ".tgi[0].ni[583].x" 990;
	setAttr ".tgi[0].ni[583].y" 12600;
	setAttr ".tgi[0].ni[583].nvs" 18304;
	setAttr ".tgi[0].ni[584].x" 1468.5714111328125;
	setAttr ".tgi[0].ni[584].y" 12661.4287109375;
	setAttr ".tgi[0].ni[584].nvs" 18304;
	setAttr ".tgi[0].ni[585].x" 1468.5714111328125;
	setAttr ".tgi[0].ni[585].y" 12560;
	setAttr ".tgi[0].ni[585].nvs" 18304;
	setAttr ".tgi[0].ni[586].x" 2061.428466796875;
	setAttr ".tgi[0].ni[586].y" 1808.5714111328125;
	setAttr ".tgi[0].ni[586].nvs" 18304;
	setAttr ".tgi[0].ni[587].x" 11.428571701049805;
	setAttr ".tgi[0].ni[587].y" 12992.857421875;
	setAttr ".tgi[0].ni[587].nvs" 18304;
	setAttr ".tgi[0].ni[588].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[588].y" 12690;
	setAttr ".tgi[0].ni[588].nvs" 18304;
	setAttr ".tgi[0].ni[589].x" 990;
	setAttr ".tgi[0].ni[589].y" 12340;
	setAttr ".tgi[0].ni[589].nvs" 18304;
	setAttr ".tgi[0].ni[590].x" 990;
	setAttr ".tgi[0].ni[590].y" 12441.4287109375;
	setAttr ".tgi[0].ni[590].nvs" 18304;
	setAttr ".tgi[0].ni[591].x" 2145.71435546875;
	setAttr ".tgi[0].ni[591].y" -9761.4287109375;
	setAttr ".tgi[0].ni[591].nvs" 18304;
	setAttr ".tgi[0].ni[592].x" 1468.5714111328125;
	setAttr ".tgi[0].ni[592].y" 11887.142578125;
	setAttr ".tgi[0].ni[592].nvs" 18304;
	setAttr ".tgi[0].ni[593].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[593].y" 12560;
	setAttr ".tgi[0].ni[593].nvs" 18304;
	setAttr ".tgi[0].ni[594].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[594].y" 12407.142578125;
	setAttr ".tgi[0].ni[594].nvs" 18304;
	setAttr ".tgi[0].ni[595].x" 511.42855834960938;
	setAttr ".tgi[0].ni[595].y" 13088.5712890625;
	setAttr ".tgi[0].ni[595].nvs" 18304;
	setAttr ".tgi[0].ni[596].x" 511.42855834960938;
	setAttr ".tgi[0].ni[596].y" 13291.4287109375;
	setAttr ".tgi[0].ni[596].nvs" 18304;
	setAttr ".tgi[0].ni[597].x" 990;
	setAttr ".tgi[0].ni[597].y" 12238.5712890625;
	setAttr ".tgi[0].ni[597].nvs" 18304;
	setAttr ".tgi[0].ni[598].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[598].y" 12277.142578125;
	setAttr ".tgi[0].ni[598].nvs" 18304;
	setAttr ".tgi[0].ni[599].x" 511.42855834960938;
	setAttr ".tgi[0].ni[599].y" 11757.142578125;
	setAttr ".tgi[0].ni[599].nvs" 18304;
	setAttr ".tgi[0].ni[600].x" 990;
	setAttr ".tgi[0].ni[600].y" 11934.2861328125;
	setAttr ".tgi[0].ni[600].nvs" 18304;
	setAttr ".tgi[0].ni[601].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[601].y" 12147.142578125;
	setAttr ".tgi[0].ni[601].nvs" 18304;
	setAttr ".tgi[0].ni[602].x" 511.42855834960938;
	setAttr ".tgi[0].ni[602].y" 11858.5712890625;
	setAttr ".tgi[0].ni[602].nvs" 18304;
	setAttr ".tgi[0].ni[603].x" 990;
	setAttr ".tgi[0].ni[603].y" 13005.7138671875;
	setAttr ".tgi[0].ni[603].nvs" 18304;
	setAttr ".tgi[0].ni[604].x" 11.428571701049805;
	setAttr ".tgi[0].ni[604].y" 12364.2861328125;
	setAttr ".tgi[0].ni[604].nvs" 18304;
	setAttr ".tgi[0].ni[605].x" 1468.5714111328125;
	setAttr ".tgi[0].ni[605].y" 12248.5712890625;
	setAttr ".tgi[0].ni[605].nvs" 18304;
	setAttr ".tgi[0].ni[606].x" 2130;
	setAttr ".tgi[0].ni[606].y" -7811.4287109375;
	setAttr ".tgi[0].ni[606].nvs" 18304;
	setAttr ".tgi[0].ni[607].x" 2157.142822265625;
	setAttr ".tgi[0].ni[607].y" -11711.4287109375;
	setAttr ".tgi[0].ni[607].nvs" 18304;
	setAttr ".tgi[0].ni[608].x" 1468.5714111328125;
	setAttr ".tgi[0].ni[608].y" 14124.2861328125;
	setAttr ".tgi[0].ni[608].nvs" 18304;
	setAttr ".tgi[0].ni[609].x" 2080;
	setAttr ".tgi[0].ni[609].y" 768.5714111328125;
	setAttr ".tgi[0].ni[609].nvs" 18304;
	setAttr ".tgi[0].ni[610].x" 11.428571701049805;
	setAttr ".tgi[0].ni[610].y" 13434.2861328125;
	setAttr ".tgi[0].ni[610].nvs" 18304;
	setAttr ".tgi[0].ni[611].x" 990;
	setAttr ".tgi[0].ni[611].y" 12035.7138671875;
	setAttr ".tgi[0].ni[611].nvs" 18304;
	setAttr ".tgi[0].ni[612].x" 2150;
	setAttr ".tgi[0].ni[612].y" -10151.4287109375;
	setAttr ".tgi[0].ni[612].nvs" 18304;
	setAttr ".tgi[0].ni[613].x" 2098.571533203125;
	setAttr ".tgi[0].ni[613].y" -1311.4285888671875;
	setAttr ".tgi[0].ni[613].nvs" 18304;
	setAttr ".tgi[0].ni[614].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[614].y" 12045.7138671875;
	setAttr ".tgi[0].ni[614].nvs" 18304;
	setAttr ".tgi[0].ni[615].x" -1485.7142333984375;
	setAttr ".tgi[0].ni[615].y" 13772.857421875;
	setAttr ".tgi[0].ni[615].nvs" 18304;
	setAttr ".tgi[0].ni[616].x" 1468.5714111328125;
	setAttr ".tgi[0].ni[616].y" 12921.4287109375;
	setAttr ".tgi[0].ni[616].nvs" 18304;
	setAttr ".tgi[0].ni[617].x" 2121.428466796875;
	setAttr ".tgi[0].ni[617].y" -5731.4287109375;
	setAttr ".tgi[0].ni[617].nvs" 18304;
	setAttr ".tgi[0].ni[618].x" 990;
	setAttr ".tgi[0].ni[618].y" 11832.857421875;
	setAttr ".tgi[0].ni[618].nvs" 18304;
	setAttr ".tgi[0].ni[619].x" 511.42855834960938;
	setAttr ".tgi[0].ni[619].y" 12101.4287109375;
	setAttr ".tgi[0].ni[619].nvs" 18304;
	setAttr ".tgi[0].ni[620].x" 1468.5714111328125;
	setAttr ".tgi[0].ni[620].y" 11785.7138671875;
	setAttr ".tgi[0].ni[620].nvs" 18304;
	setAttr ".tgi[0].ni[621].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[621].y" 11915.7138671875;
	setAttr ".tgi[0].ni[621].nvs" 18304;
	setAttr ".tgi[0].ni[622].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[622].y" 11785.7138671875;
	setAttr ".tgi[0].ni[622].nvs" 18304;
	setAttr ".tgi[0].ni[623].x" 990;
	setAttr ".tgi[0].ni[623].y" 11674.2861328125;
	setAttr ".tgi[0].ni[623].nvs" 18304;
	setAttr ".tgi[0].ni[624].x" -1485.7142333984375;
	setAttr ".tgi[0].ni[624].y" 14090;
	setAttr ".tgi[0].ni[624].nvs" 18304;
	setAttr ".tgi[0].ni[625].x" 2148.571533203125;
	setAttr ".tgi[0].ni[625].y" -10021.4287109375;
	setAttr ".tgi[0].ni[625].nvs" 18304;
	setAttr ".tgi[0].ni[626].x" 990;
	setAttr ".tgi[0].ni[626].y" 12137.142578125;
	setAttr ".tgi[0].ni[626].nvs" 18304;
	setAttr ".tgi[0].ni[627].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[627].y" 11684.2861328125;
	setAttr ".tgi[0].ni[627].nvs" 18304;
	setAttr ".tgi[0].ni[628].x" 2101.428466796875;
	setAttr ".tgi[0].ni[628].y" -1961.4285888671875;
	setAttr ".tgi[0].ni[628].nvs" 18304;
	setAttr ".tgi[0].ni[629].x" 990;
	setAttr ".tgi[0].ni[629].y" 11572.857421875;
	setAttr ".tgi[0].ni[629].nvs" 18304;
	setAttr ".tgi[0].ni[630].x" 511.42855834960938;
	setAttr ".tgi[0].ni[630].y" 11497.142578125;
	setAttr ".tgi[0].ni[630].nvs" 18304;
	setAttr ".tgi[0].ni[631].x" 511.42855834960938;
	setAttr ".tgi[0].ni[631].y" 12987.142578125;
	setAttr ".tgi[0].ni[631].nvs" 18304;
	setAttr ".tgi[0].ni[632].x" 511.42855834960938;
	setAttr ".tgi[0].ni[632].y" 11598.5712890625;
	setAttr ".tgi[0].ni[632].nvs" 18304;
	setAttr ".tgi[0].ni[633].x" -4.2857141494750977;
	setAttr ".tgi[0].ni[633].y" 4494.28564453125;
	setAttr ".tgi[0].ni[633].nvs" 18304;
	setAttr ".tgi[0].ni[634].x" 980;
	setAttr ".tgi[0].ni[634].y" 4320;
	setAttr ".tgi[0].ni[634].nvs" 18304;
	setAttr ".tgi[0].ni[635].x" 1464.2857666015625;
	setAttr ".tgi[0].ni[635].y" 3435.71435546875;
	setAttr ".tgi[0].ni[635].nvs" 18304;
	setAttr ".tgi[0].ni[636].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[636].y" 4818.5712890625;
	setAttr ".tgi[0].ni[636].nvs" 18304;
	setAttr ".tgi[0].ni[637].x" 2105.71435546875;
	setAttr ".tgi[0].ni[637].y" -2481.428466796875;
	setAttr ".tgi[0].ni[637].nvs" 18304;
	setAttr ".tgi[0].ni[638].x" 495.71429443359375;
	setAttr ".tgi[0].ni[638].y" 4692.85693359375;
	setAttr ".tgi[0].ni[638].nvs" 18304;
	setAttr ".tgi[0].ni[639].x" 2055.71435546875;
	setAttr ".tgi[0].ni[639].y" 2458.571533203125;
	setAttr ".tgi[0].ni[639].nvs" 18304;
	setAttr ".tgi[0].ni[640].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[640].y" 4688.5712890625;
	setAttr ".tgi[0].ni[640].nvs" 18304;
	setAttr ".tgi[0].ni[641].x" 2124.28564453125;
	setAttr ".tgi[0].ni[641].y" -6641.4287109375;
	setAttr ".tgi[0].ni[641].nvs" 18304;
	setAttr ".tgi[0].ni[642].x" 2122.857177734375;
	setAttr ".tgi[0].ni[642].y" -6251.4287109375;
	setAttr ".tgi[0].ni[642].nvs" 18304;
	setAttr ".tgi[0].ni[643].x" 980;
	setAttr ".tgi[0].ni[643].y" 4421.4287109375;
	setAttr ".tgi[0].ni[643].nvs" 18304;
	setAttr ".tgi[0].ni[644].x" -1391.4285888671875;
	setAttr ".tgi[0].ni[644].y" 4355.71435546875;
	setAttr ".tgi[0].ni[644].nvs" 18304;
	setAttr ".tgi[0].ni[645].x" 2075.71435546875;
	setAttr ".tgi[0].ni[645].y" 1418.5714111328125;
	setAttr ".tgi[0].ni[645].nvs" 18304;
	setAttr ".tgi[0].ni[646].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[646].y" 4530;
	setAttr ".tgi[0].ni[646].nvs" 18304;
	setAttr ".tgi[0].ni[647].x" 980;
	setAttr ".tgi[0].ni[647].y" 3958.571533203125;
	setAttr ".tgi[0].ni[647].nvs" 18304;
	setAttr ".tgi[0].ni[648].x" 495.71429443359375;
	setAttr ".tgi[0].ni[648].y" 4417.14306640625;
	setAttr ".tgi[0].ni[648].nvs" 18304;
	setAttr ".tgi[0].ni[649].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[649].y" 4415.71435546875;
	setAttr ".tgi[0].ni[649].nvs" 18304;
	setAttr ".tgi[0].ni[650].x" 2104.28564453125;
	setAttr ".tgi[0].ni[650].y" -2221.428466796875;
	setAttr ".tgi[0].ni[650].nvs" 18304;
	setAttr ".tgi[0].ni[651].x" 1464.2857666015625;
	setAttr ".tgi[0].ni[651].y" 4660;
	setAttr ".tgi[0].ni[651].nvs" 18304;
	setAttr ".tgi[0].ni[652].x" 2054.28564453125;
	setAttr ".tgi[0].ni[652].y" 2588.571533203125;
	setAttr ".tgi[0].ni[652].nvs" 18304;
	setAttr ".tgi[0].ni[653].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[653].y" 4228.5712890625;
	setAttr ".tgi[0].ni[653].nvs" 18304;
	setAttr ".tgi[0].ni[654].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[654].y" 4057.142822265625;
	setAttr ".tgi[0].ni[654].nvs" 18304;
	setAttr ".tgi[0].ni[655].x" 495.71429443359375;
	setAttr ".tgi[0].ni[655].y" 4214.28564453125;
	setAttr ".tgi[0].ni[655].nvs" 18304;
	setAttr ".tgi[0].ni[656].x" 495.71429443359375;
	setAttr ".tgi[0].ni[656].y" 4315.71435546875;
	setAttr ".tgi[0].ni[656].nvs" 18304;
	setAttr ".tgi[0].ni[657].x" 1464.2857666015625;
	setAttr ".tgi[0].ni[657].y" 4228.5712890625;
	setAttr ".tgi[0].ni[657].nvs" 18304;
	setAttr ".tgi[0].ni[658].x" 980;
	setAttr ".tgi[0].ni[658].y" 4060;
	setAttr ".tgi[0].ni[658].nvs" 18304;
	setAttr ".tgi[0].ni[659].x" -1391.4285888671875;
	setAttr ".tgi[0].ni[659].y" 4457.14306640625;
	setAttr ".tgi[0].ni[659].nvs" 18304;
	setAttr ".tgi[0].ni[660].x" 980;
	setAttr ".tgi[0].ni[660].y" 3857.142822265625;
	setAttr ".tgi[0].ni[660].nvs" 18304;
	setAttr ".tgi[0].ni[661].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[661].y" 3955.71435546875;
	setAttr ".tgi[0].ni[661].nvs" 18304;
	setAttr ".tgi[0].ni[662].x" 2077.142822265625;
	setAttr ".tgi[0].ni[662].y" 1158.5714111328125;
	setAttr ".tgi[0].ni[662].nvs" 18304;
	setAttr ".tgi[0].ni[663].x" 980;
	setAttr ".tgi[0].ni[663].y" 4897.14306640625;
	setAttr ".tgi[0].ni[663].nvs" 18304;
	setAttr ".tgi[0].ni[664].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[664].y" 3804.28564453125;
	setAttr ".tgi[0].ni[664].nvs" 18304;
	setAttr ".tgi[0].ni[665].x" 2157.142822265625;
	setAttr ".tgi[0].ni[665].y" -11581.4287109375;
	setAttr ".tgi[0].ni[665].nvs" 18304;
	setAttr ".tgi[0].ni[666].x" 495.71429443359375;
	setAttr ".tgi[0].ni[666].y" 4997.14306640625;
	setAttr ".tgi[0].ni[666].nvs" 18304;
	setAttr ".tgi[0].ni[667].x" 2138.571533203125;
	setAttr ".tgi[0].ni[667].y" -8591.4287109375;
	setAttr ".tgi[0].ni[667].nvs" 18304;
	setAttr ".tgi[0].ni[668].x" 495.71429443359375;
	setAttr ".tgi[0].ni[668].y" 4895.71435546875;
	setAttr ".tgi[0].ni[668].nvs" 18304;
	setAttr ".tgi[0].ni[669].x" 2088.571533203125;
	setAttr ".tgi[0].ni[669].y" -11.428571701049805;
	setAttr ".tgi[0].ni[669].nvs" 18304;
	setAttr ".tgi[0].ni[670].x" 495.71429443359375;
	setAttr ".tgi[0].ni[670].y" 3808.571533203125;
	setAttr ".tgi[0].ni[670].nvs" 18304;
	setAttr ".tgi[0].ni[671].x" 495.71429443359375;
	setAttr ".tgi[0].ni[671].y" 3605.71435546875;
	setAttr ".tgi[0].ni[671].nvs" 18304;
	setAttr ".tgi[0].ni[672].x" 495.71429443359375;
	setAttr ".tgi[0].ni[672].y" 3707.142822265625;
	setAttr ".tgi[0].ni[672].nvs" 18304;
	setAttr ".tgi[0].ni[673].x" 980;
	setAttr ".tgi[0].ni[673].y" 4218.5712890625;
	setAttr ".tgi[0].ni[673].nvs" 18304;
	setAttr ".tgi[0].ni[674].x" -4.2857141494750977;
	setAttr ".tgi[0].ni[674].y" 3981.428466796875;
	setAttr ".tgi[0].ni[674].nvs" 18304;
	setAttr ".tgi[0].ni[675].x" 980;
	setAttr ".tgi[0].ni[675].y" 3394.28564453125;
	setAttr ".tgi[0].ni[675].nvs" 18304;
	setAttr ".tgi[0].ni[676].x" -4.2857141494750977;
	setAttr ".tgi[0].ni[676].y" 4894.28564453125;
	setAttr ".tgi[0].ni[676].nvs" 18304;
	setAttr ".tgi[0].ni[677].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[677].y" 3695.71435546875;
	setAttr ".tgi[0].ni[677].nvs" 18304;
	setAttr ".tgi[0].ni[678].x" 980;
	setAttr ".tgi[0].ni[678].y" 3755.71435546875;
	setAttr ".tgi[0].ni[678].nvs" 18304;
	setAttr ".tgi[0].ni[679].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[679].y" 3594.28564453125;
	setAttr ".tgi[0].ni[679].nvs" 18304;
	setAttr ".tgi[0].ni[680].x" 1464.2857666015625;
	setAttr ".tgi[0].ni[680].y" 3854.28564453125;
	setAttr ".tgi[0].ni[680].nvs" 18304;
	setAttr ".tgi[0].ni[681].x" 980;
	setAttr ".tgi[0].ni[681].y" 3552.857177734375;
	setAttr ".tgi[0].ni[681].nvs" 18304;
	setAttr ".tgi[0].ni[682].x" 980;
	setAttr ".tgi[0].ni[682].y" 3654.28564453125;
	setAttr ".tgi[0].ni[682].nvs" 18304;
	setAttr ".tgi[0].ni[683].x" 980;
	setAttr ".tgi[0].ni[683].y" 4738.5712890625;
	setAttr ".tgi[0].ni[683].nvs" 18304;
	setAttr ".tgi[0].ni[684].x" -355.71429443359375;
	setAttr ".tgi[0].ni[684].y" 3810;
	setAttr ".tgi[0].ni[684].nvs" 18304;
	setAttr ".tgi[0].ni[685].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[685].y" 3464.28564453125;
	setAttr ".tgi[0].ni[685].nvs" 18304;
	setAttr ".tgi[0].ni[686].x" 2110;
	setAttr ".tgi[0].ni[686].y" -3001.428466796875;
	setAttr ".tgi[0].ni[686].nvs" 18304;
	setAttr ".tgi[0].ni[687].x" -1391.4285888671875;
	setAttr ".tgi[0].ni[687].y" 4155.71435546875;
	setAttr ".tgi[0].ni[687].nvs" 18304;
	setAttr ".tgi[0].ni[688].x" 1464.2857666015625;
	setAttr ".tgi[0].ni[688].y" 4818.5712890625;
	setAttr ".tgi[0].ni[688].nvs" 18304;
	setAttr ".tgi[0].ni[689].x" 1464.2857666015625;
	setAttr ".tgi[0].ni[689].y" 3594.28564453125;
	setAttr ".tgi[0].ni[689].nvs" 18304;
	setAttr ".tgi[0].ni[690].x" 2157.142822265625;
	setAttr ".tgi[0].ni[690].y" -11451.4287109375;
	setAttr ".tgi[0].ni[690].nvs" 18304;
	setAttr ".tgi[0].ni[691].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[691].y" 3115.71435546875;
	setAttr ".tgi[0].ni[691].nvs" 18304;
	setAttr ".tgi[0].ni[692].x" -4.2857141494750977;
	setAttr ".tgi[0].ni[692].y" 3880;
	setAttr ".tgi[0].ni[692].nvs" 18304;
	setAttr ".tgi[0].ni[693].x" 2157.142822265625;
	setAttr ".tgi[0].ni[693].y" -11321.4287109375;
	setAttr ".tgi[0].ni[693].nvs" 18304;
	setAttr ".tgi[0].ni[694].x" -355.71429443359375;
	setAttr ".tgi[0].ni[694].y" 3708.571533203125;
	setAttr ".tgi[0].ni[694].nvs" 18304;
	setAttr ".tgi[0].ni[695].x" -355.71429443359375;
	setAttr ".tgi[0].ni[695].y" 3911.428466796875;
	setAttr ".tgi[0].ni[695].nvs" 18304;
	setAttr ".tgi[0].ni[696].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[696].y" 2985.71435546875;
	setAttr ".tgi[0].ni[696].nvs" 18304;
	setAttr ".tgi[0].ni[697].x" -4.2857141494750977;
	setAttr ".tgi[0].ni[697].y" 4140;
	setAttr ".tgi[0].ni[697].nvs" 18304;
	setAttr ".tgi[0].ni[698].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[698].y" 2832.857177734375;
	setAttr ".tgi[0].ni[698].nvs" 18304;
	setAttr ".tgi[0].ni[699].x" 1464.2857666015625;
	setAttr ".tgi[0].ni[699].y" 3115.71435546875;
	setAttr ".tgi[0].ni[699].nvs" 18304;
	setAttr ".tgi[0].ni[700].x" -4.2857141494750977;
	setAttr ".tgi[0].ni[700].y" 3404.28564453125;
	setAttr ".tgi[0].ni[700].nvs" 18304;
	setAttr ".tgi[0].ni[701].x" -1084.2857666015625;
	setAttr ".tgi[0].ni[701].y" 4812.85693359375;
	setAttr ".tgi[0].ni[701].nvs" 18304;
	setAttr ".tgi[0].ni[702].x" -1084.2857666015625;
	setAttr ".tgi[0].ni[702].y" 4540;
	setAttr ".tgi[0].ni[702].nvs" 18304;
	setAttr ".tgi[0].ni[703].x" -662.85711669921875;
	setAttr ".tgi[0].ni[703].y" 4828.5712890625;
	setAttr ".tgi[0].ni[703].nvs" 18304;
	setAttr ".tgi[0].ni[704].x" -4.2857141494750977;
	setAttr ".tgi[0].ni[704].y" 3562.857177734375;
	setAttr ".tgi[0].ni[704].nvs" 18304;
	setAttr ".tgi[0].ni[705].x" -662.85711669921875;
	setAttr ".tgi[0].ni[705].y" 4440;
	setAttr ".tgi[0].ni[705].nvs" 18304;
	setAttr ".tgi[0].ni[706].x" -355.71429443359375;
	setAttr ".tgi[0].ni[706].y" 4262.85693359375;
	setAttr ".tgi[0].ni[706].nvs" 18304;
	setAttr ".tgi[0].ni[707].x" -1084.2857666015625;
	setAttr ".tgi[0].ni[707].y" 4438.5712890625;
	setAttr ".tgi[0].ni[707].nvs" 18304;
	setAttr ".tgi[0].ni[708].x" 2157.142822265625;
	setAttr ".tgi[0].ni[708].y" -11191.4287109375;
	setAttr ".tgi[0].ni[708].nvs" 18304;
	setAttr ".tgi[0].ni[709].x" 1464.2857666015625;
	setAttr ".tgi[0].ni[709].y" 4967.14306640625;
	setAttr ".tgi[0].ni[709].nvs" 18304;
	setAttr ".tgi[0].ni[710].x" 2111.428466796875;
	setAttr ".tgi[0].ni[710].y" -3391.428466796875;
	setAttr ".tgi[0].ni[710].nvs" 18304;
	setAttr ".tgi[0].ni[711].x" 1471.4285888671875;
	setAttr ".tgi[0].ni[711].y" 8741.4287109375;
	setAttr ".tgi[0].ni[711].nvs" 18304;
	setAttr ".tgi[0].ni[712].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[712].y" 8892.857421875;
	setAttr ".tgi[0].ni[712].nvs" 18304;
	setAttr ".tgi[0].ni[713].x" -4.2857141494750977;
	setAttr ".tgi[0].ni[713].y" 3721.428466796875;
	setAttr ".tgi[0].ni[713].nvs" 18304;
	setAttr ".tgi[0].ni[714].x" 495.71429443359375;
	setAttr ".tgi[0].ni[714].y" 3345.71435546875;
	setAttr ".tgi[0].ni[714].nvs" 18304;
	setAttr ".tgi[0].ni[715].x" 495.71429443359375;
	setAttr ".tgi[0].ni[715].y" 3244.28564453125;
	setAttr ".tgi[0].ni[715].nvs" 18304;
	setAttr ".tgi[0].ni[716].x" 980;
	setAttr ".tgi[0].ni[716].y" 3274.28564453125;
	setAttr ".tgi[0].ni[716].nvs" 18304;
	setAttr ".tgi[0].ni[717].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[717].y" 2718.571533203125;
	setAttr ".tgi[0].ni[717].nvs" 18304;
	setAttr ".tgi[0].ni[718].x" -1084.2857666015625;
	setAttr ".tgi[0].ni[718].y" 4337.14306640625;
	setAttr ".tgi[0].ni[718].nvs" 18304;
	setAttr ".tgi[0].ni[719].x" 495.71429443359375;
	setAttr ".tgi[0].ni[719].y" 3504.28564453125;
	setAttr ".tgi[0].ni[719].nvs" 18304;
	setAttr ".tgi[0].ni[720].x" -662.85711669921875;
	setAttr ".tgi[0].ni[720].y" 4338.5712890625;
	setAttr ".tgi[0].ni[720].nvs" 18304;
	setAttr ".tgi[0].ni[721].x" 980;
	setAttr ".tgi[0].ni[721].y" 2900;
	setAttr ".tgi[0].ni[721].nvs" 18304;
	setAttr ".tgi[0].ni[722].x" 980;
	setAttr ".tgi[0].ni[722].y" 3115.71435546875;
	setAttr ".tgi[0].ni[722].nvs" 18304;
	setAttr ".tgi[0].ni[723].x" 495.71429443359375;
	setAttr ".tgi[0].ni[723].y" 4011.428466796875;
	setAttr ".tgi[0].ni[723].nvs" 18304;
	setAttr ".tgi[0].ni[724].x" 495.71429443359375;
	setAttr ".tgi[0].ni[724].y" 4112.85693359375;
	setAttr ".tgi[0].ni[724].nvs" 18304;
	setAttr ".tgi[0].ni[725].x" 495.71429443359375;
	setAttr ".tgi[0].ni[725].y" 5098.5712890625;
	setAttr ".tgi[0].ni[725].nvs" 18304;
	setAttr ".tgi[0].ni[726].x" 495.71429443359375;
	setAttr ".tgi[0].ni[726].y" 3910;
	setAttr ".tgi[0].ni[726].nvs" 18304;
	setAttr ".tgi[0].ni[727].x" -4.2857141494750977;
	setAttr ".tgi[0].ni[727].y" 4995.71435546875;
	setAttr ".tgi[0].ni[727].nvs" 18304;
	setAttr ".tgi[0].ni[728].x" 1464.2857666015625;
	setAttr ".tgi[0].ni[728].y" 4057.142822265625;
	setAttr ".tgi[0].ni[728].nvs" 18304;
	setAttr ".tgi[0].ni[729].x" 1464.2857666015625;
	setAttr ".tgi[0].ni[729].y" 3955.71435546875;
	setAttr ".tgi[0].ni[729].nvs" 18304;
	setAttr ".tgi[0].ni[730].x" -355.71429443359375;
	setAttr ".tgi[0].ni[730].y" 4912.85693359375;
	setAttr ".tgi[0].ni[730].nvs" 18304;
	setAttr ".tgi[0].ni[731].x" 1464.2857666015625;
	setAttr ".tgi[0].ni[731].y" 3695.71435546875;
	setAttr ".tgi[0].ni[731].nvs" 18304;
	setAttr ".tgi[0].ni[732].x" 2157.142822265625;
	setAttr ".tgi[0].ni[732].y" -11061.4287109375;
	setAttr ".tgi[0].ni[732].nvs" 18304;
	setAttr ".tgi[0].ni[733].x" 2157.142822265625;
	setAttr ".tgi[0].ni[733].y" -10931.4287109375;
	setAttr ".tgi[0].ni[733].nvs" 18304;
	setAttr ".tgi[0].ni[734].x" -1480;
	setAttr ".tgi[0].ni[734].y" 10124.2861328125;
	setAttr ".tgi[0].ni[734].nvs" 18304;
	setAttr ".tgi[0].ni[735].x" 2130;
	setAttr ".tgi[0].ni[735].y" -7681.4287109375;
	setAttr ".tgi[0].ni[735].nvs" 18304;
	setAttr ".tgi[0].ni[736].x" 995.71429443359375;
	setAttr ".tgi[0].ni[736].y" 8795.7138671875;
	setAttr ".tgi[0].ni[736].nvs" 18304;
	setAttr ".tgi[0].ni[737].x" 2061.428466796875;
	setAttr ".tgi[0].ni[737].y" 1938.5714111328125;
	setAttr ".tgi[0].ni[737].nvs" 18304;
	setAttr ".tgi[0].ni[738].x" 520;
	setAttr ".tgi[0].ni[738].y" 8798.5712890625;
	setAttr ".tgi[0].ni[738].nvs" 18304;
	setAttr ".tgi[0].ni[739].x" 995.71429443359375;
	setAttr ".tgi[0].ni[739].y" 8434.2861328125;
	setAttr ".tgi[0].ni[739].nvs" 18304;
	setAttr ".tgi[0].ni[740].x" -1480;
	setAttr ".tgi[0].ni[740].y" 10022.857421875;
	setAttr ".tgi[0].ni[740].nvs" 18304;
	setAttr ".tgi[0].ni[741].x" 1471.4285888671875;
	setAttr ".tgi[0].ni[741].y" 11100;
	setAttr ".tgi[0].ni[741].nvs" 18304;
	setAttr ".tgi[0].ni[742].x" 20;
	setAttr ".tgi[0].ni[742].y" 9051.4287109375;
	setAttr ".tgi[0].ni[742].nvs" 18304;
	setAttr ".tgi[0].ni[743].x" 995.71429443359375;
	setAttr ".tgi[0].ni[743].y" 8072.85693359375;
	setAttr ".tgi[0].ni[743].nvs" 18304;
	setAttr ".tgi[0].ni[744].x" 2131.428466796875;
	setAttr ".tgi[0].ni[744].y" -8071.4287109375;
	setAttr ".tgi[0].ni[744].nvs" 18304;
	setAttr ".tgi[0].ni[745].x" 2062.857177734375;
	setAttr ".tgi[0].ni[745].y" 1678.5714111328125;
	setAttr ".tgi[0].ni[745].nvs" 18304;
	setAttr ".tgi[0].ni[746].x" 1471.4285888671875;
	setAttr ".tgi[0].ni[746].y" 8640;
	setAttr ".tgi[0].ni[746].nvs" 18304;
	setAttr ".tgi[0].ni[747].x" 520;
	setAttr ".tgi[0].ni[747].y" 8592.857421875;
	setAttr ".tgi[0].ni[747].nvs" 18304;
	setAttr ".tgi[0].ni[748].x" 995.71429443359375;
	setAttr ".tgi[0].ni[748].y" 8694.2861328125;
	setAttr ".tgi[0].ni[748].nvs" 18304;
	setAttr ".tgi[0].ni[749].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[749].y" 8770;
	setAttr ".tgi[0].ni[749].nvs" 18304;
	setAttr ".tgi[0].ni[750].x" 520;
	setAttr ".tgi[0].ni[750].y" 8694.2861328125;
	setAttr ".tgi[0].ni[750].nvs" 18304;
	setAttr ".tgi[0].ni[751].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[751].y" 8640;
	setAttr ".tgi[0].ni[751].nvs" 18304;
	setAttr ".tgi[0].ni[752].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[752].y" 8538.5712890625;
	setAttr ".tgi[0].ni[752].nvs" 18304;
	setAttr ".tgi[0].ni[753].x" 1964.2857666015625;
	setAttr ".tgi[0].ni[753].y" 8072.85693359375;
	setAttr ".tgi[0].ni[753].nvs" 18304;
	setAttr ".tgi[0].ni[754].x" 2112.857177734375;
	setAttr ".tgi[0].ni[754].y" -3651.428466796875;
	setAttr ".tgi[0].ni[754].nvs" 18304;
	setAttr ".tgi[0].ni[755].x" 2084.28564453125;
	setAttr ".tgi[0].ni[755].y" 118.57142639160156;
	setAttr ".tgi[0].ni[755].nvs" 18304;
	setAttr ".tgi[0].ni[756].x" 995.71429443359375;
	setAttr ".tgi[0].ni[756].y" 8332.857421875;
	setAttr ".tgi[0].ni[756].nvs" 18304;
	setAttr ".tgi[0].ni[757].x" 520;
	setAttr ".tgi[0].ni[757].y" 8288.5712890625;
	setAttr ".tgi[0].ni[757].nvs" 18304;
	setAttr ".tgi[0].ni[758].x" 520;
	setAttr ".tgi[0].ni[758].y" 8491.4287109375;
	setAttr ".tgi[0].ni[758].nvs" 18304;
	setAttr ".tgi[0].ni[759].x" 2082.857177734375;
	setAttr ".tgi[0].ni[759].y" 378.57144165039062;
	setAttr ".tgi[0].ni[759].nvs" 18304;
	setAttr ".tgi[0].ni[760].x" 995.71429443359375;
	setAttr ".tgi[0].ni[760].y" 8592.857421875;
	setAttr ".tgi[0].ni[760].nvs" 18304;
	setAttr ".tgi[0].ni[761].x" 1471.4285888671875;
	setAttr ".tgi[0].ni[761].y" 8538.5712890625;
	setAttr ".tgi[0].ni[761].nvs" 18304;
	setAttr ".tgi[0].ni[762].x" 520;
	setAttr ".tgi[0].ni[762].y" 8390;
	setAttr ".tgi[0].ni[762].nvs" 18304;
	setAttr ".tgi[0].ni[763].x" 114.28571319580078;
	setAttr ".tgi[0].ni[763].y" 17.142856597900391;
	setAttr ".tgi[0].ni[763].nvs" 18304;
	setAttr ".tgi[0].ni[764].x" -192.85714721679688;
	setAttr ".tgi[0].ni[764].y" 17.142856597900391;
	setAttr ".tgi[0].ni[764].nvs" 18304;
	setAttr ".tgi[0].ni[765].x" -192.85714721679688;
	setAttr ".tgi[0].ni[765].y" -84.285713195800781;
	setAttr ".tgi[0].ni[765].nvs" 18304;
	setAttr ".tgi[0].ni[766].x" -192.85714721679688;
	setAttr ".tgi[0].ni[766].y" 118.57142639160156;
	setAttr ".tgi[0].ni[766].nvs" 18304;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 0;
	setAttr -av -k on ".unw";
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".rm";
	setAttr -k on ".lm";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -k on ".hom";
	setAttr -k on ".hodm";
	setAttr -k on ".xry";
	setAttr -k on ".jxr";
	setAttr -k on ".sslt";
	setAttr -k on ".cbr";
	setAttr -k on ".bbr";
	setAttr -k on ".mhl";
	setAttr -k on ".cons";
	setAttr -k on ".vac";
	setAttr -k on ".hwi";
	setAttr -k on ".csvd";
	setAttr -av -k on ".ta";
	setAttr -av -k on ".tq";
	setAttr -av -k on ".etmr";
	setAttr -av -k on ".tmr";
	setAttr -av -k on ".aoon";
	setAttr -av -k on ".aoam";
	setAttr -av -k on ".aora";
	setAttr -k on ".aofr";
	setAttr -k on ".aosm";
	setAttr -k on ".hff";
	setAttr -av -k on ".hfd";
	setAttr -av -k on ".hfs";
	setAttr -av -k on ".hfe";
	setAttr -av ".hfc";
	setAttr -av -k on ".hfcr";
	setAttr -av -k on ".hfcg";
	setAttr -av -k on ".hfcb";
	setAttr -av -k on ".hfa";
	setAttr -av -k on ".mbe";
	setAttr -k on ".mbt";
	setAttr -av -k on ".mbsof";
	setAttr -k on ".mbsc";
	setAttr -k on ".mbc";
	setAttr -k on ".mbfa";
	setAttr -k on ".mbftb";
	setAttr -k on ".mbftg";
	setAttr -k on ".mbftr";
	setAttr -k on ".mbfta";
	setAttr -k on ".mbfe";
	setAttr -k on ".mbme";
	setAttr -k on ".mbcsx";
	setAttr -k on ".mbcsy";
	setAttr -k on ".mbasx";
	setAttr -k on ".mbasy";
	setAttr -k on ".blen";
	setAttr -k on ".blth";
	setAttr -k on ".blfr";
	setAttr -k on ".blfa";
	setAttr -k on ".blat";
	setAttr -av -k on ".msaa";
	setAttr -k on ".aasc";
	setAttr -k on ".aasq";
	setAttr -k on ".laa";
	setAttr -k on ".fprt" yes;
	setAttr -k on ".rtfm" 1;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -cb on ".ai_override";
	setAttr -cb on ".ai_surface_shaderr";
	setAttr -cb on ".ai_surface_shaderg";
	setAttr -cb on ".ai_surface_shaderb";
	setAttr -cb on ".ai_volume_shaderr";
	setAttr -cb on ".ai_volume_shaderg";
	setAttr -cb on ".ai_volume_shaderb";
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -cb on ".ai_override";
	setAttr -cb on ".ai_surface_shaderr";
	setAttr -cb on ".ai_surface_shaderg";
	setAttr -cb on ".ai_surface_shaderb";
	setAttr -cb on ".ai_volume_shaderr";
	setAttr -cb on ".ai_volume_shaderg";
	setAttr -cb on ".ai_volume_shaderb";
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".macc";
	setAttr -av -k on ".macd";
	setAttr -av -k on ".macq";
	setAttr -av -k on ".mcfr";
	setAttr -k on ".ifg";
	setAttr -av -k on ".clip";
	setAttr -av -k on ".edm";
	setAttr -av -k on ".edl";
	setAttr -av -k on ".ren" -type "string" "arnold";
	setAttr -av -k on ".esr";
	setAttr -av -k on ".ors";
	setAttr -k on ".sdf";
	setAttr -av -k on ".outf";
	setAttr -av -k on ".imfkey";
	setAttr -av -k on ".gama";
	setAttr -k on ".exrc";
	setAttr -k on ".expt";
	setAttr -av -k on ".an";
	setAttr -k on ".ar";
	setAttr -av -k on ".fs" 1;
	setAttr -av -k on ".ef" 10;
	setAttr -av -k on ".bfs";
	setAttr -av -k on ".me";
	setAttr -k on ".se";
	setAttr -av -k on ".be";
	setAttr -av -cb on ".ep";
	setAttr -av -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -k on ".ofe";
	setAttr -k on ".efe";
	setAttr -k on ".oft";
	setAttr -k on ".umfn";
	setAttr -k on ".ufe";
	setAttr -av -k on ".pff";
	setAttr -av -k on ".peie";
	setAttr -av -k on ".ifp";
	setAttr -k on ".rv";
	setAttr -av -k on ".comp";
	setAttr -av -k on ".cth";
	setAttr -av -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -av -k on ".rd";
	setAttr -av -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -av -k on ".shs";
	setAttr -av -k on ".lpr";
	setAttr -k on ".gv";
	setAttr -k on ".sv";
	setAttr -av -k on ".mm";
	setAttr -av -k on ".npu";
	setAttr -av -k on ".itf";
	setAttr -av -k on ".shp";
	setAttr -k on ".isp";
	setAttr -av -k on ".uf";
	setAttr -av -k on ".oi";
	setAttr -av -k on ".rut";
	setAttr -av -k on ".mot";
	setAttr -av -k on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -av -k on ".mbso";
	setAttr -av -k on ".mbsc";
	setAttr -av -k on ".afp";
	setAttr -av -k on ".pfb";
	setAttr -av -k on ".pram";
	setAttr -av -k on ".poam";
	setAttr -av -k on ".prlm";
	setAttr -av -k on ".polm";
	setAttr -av -k on ".prm";
	setAttr -av -k on ".pom";
	setAttr -k on ".pfrm";
	setAttr -k on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -av -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -av -k on ".ubc";
	setAttr -av -k on ".mbc";
	setAttr -k on ".mbt";
	setAttr -av -k on ".udbx";
	setAttr -av -k on ".smc";
	setAttr -av -k on ".kmv";
	setAttr -k on ".isl";
	setAttr -k on ".ism";
	setAttr -k on ".imb";
	setAttr -av -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -av -k on ".tlwd";
	setAttr -av -k on ".tlht";
	setAttr -av -k on ".jfc";
	setAttr -k on ".rsb";
	setAttr -av -k on ".ope";
	setAttr -av -k on ".oppf";
	setAttr -av -k on ".rcp";
	setAttr -av -k on ".icp";
	setAttr -av -k on ".ocp";
	setAttr -k on ".hbl";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k off -cb on ".ctrs" 256;
	setAttr -av -k off -cb on ".btrs" 512;
	setAttr -av -k off -cb on ".fbfm";
	setAttr -av -k off -cb on ".ehql";
	setAttr -av -k off -cb on ".eams";
	setAttr -av -k off -cb on ".eeaa";
	setAttr -av -k off -cb on ".engm";
	setAttr -av -k off -cb on ".mes";
	setAttr -av -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -av -k off -cb on ".mbs";
	setAttr -av -k off -cb on ".trm";
	setAttr -av -k off -cb on ".tshc";
	setAttr -av -k off -cb on ".enpt";
	setAttr -av -k off -cb on ".clmt";
	setAttr -av -k off -cb on ".tcov";
	setAttr -av -k off -cb on ".lith";
	setAttr -av -k off -cb on ".sobc";
	setAttr -av -k off -cb on ".cuth";
	setAttr -av -k off -cb on ".hgcd";
	setAttr -av -k off -cb on ".hgci";
	setAttr -av -k off -cb on ".mgcs";
	setAttr -av -k off -cb on ".twa";
	setAttr -av -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
connectAttr "clavUpVec_L.o3" "clavicle_bone_placer_L_loc.t";
connectAttr "shoulderUpVec_L.o3" "armUpper_bone_placer_L_loc.t";
connectAttr "elbowUpVec_L.o3" "armLower_bone_placer_L_loc.t";
connectAttr "wristUpVec_L.o3" "hand_bone_placer_L_loc.t";
connectAttr "placercluster0_arm_LHandle_parentConstraint1.ctx" "placercluster0_arm_LHandle.tx"
		;
connectAttr "placercluster0_arm_LHandle_parentConstraint1.cty" "placercluster0_arm_LHandle.ty"
		;
connectAttr "placercluster0_arm_LHandle_parentConstraint1.ctz" "placercluster0_arm_LHandle.tz"
		;
connectAttr "placercluster0_arm_LHandle_parentConstraint1.crx" "placercluster0_arm_LHandle.rx"
		;
connectAttr "placercluster0_arm_LHandle_parentConstraint1.cry" "placercluster0_arm_LHandle.ry"
		;
connectAttr "placercluster0_arm_LHandle_parentConstraint1.crz" "placercluster0_arm_LHandle.rz"
		;
connectAttr "placercluster0_arm_LHandle.ro" "placercluster0_arm_LHandle_parentConstraint1.cro"
		;
connectAttr "placercluster0_arm_LHandle.pim" "placercluster0_arm_LHandle_parentConstraint1.cpim"
		;
connectAttr "placercluster0_arm_LHandle.rp" "placercluster0_arm_LHandle_parentConstraint1.crp"
		;
connectAttr "placercluster0_arm_LHandle.rpt" "placercluster0_arm_LHandle_parentConstraint1.crt"
		;
connectAttr "clavicle_bone_placer_L.t" "placercluster0_arm_LHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "clavicle_bone_placer_L.rp" "placercluster0_arm_LHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "clavicle_bone_placer_L.rpt" "placercluster0_arm_LHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "clavicle_bone_placer_L.r" "placercluster0_arm_LHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "clavicle_bone_placer_L.ro" "placercluster0_arm_LHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "clavicle_bone_placer_L.s" "placercluster0_arm_LHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "clavicle_bone_placer_L.pm" "placercluster0_arm_LHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "placercluster0_arm_LHandle_parentConstraint1.w0" "placercluster0_arm_LHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "placercluster1_arm_LHandle_parentConstraint1.ctx" "placercluster1_arm_LHandle.tx"
		;
connectAttr "placercluster1_arm_LHandle_parentConstraint1.cty" "placercluster1_arm_LHandle.ty"
		;
connectAttr "placercluster1_arm_LHandle_parentConstraint1.ctz" "placercluster1_arm_LHandle.tz"
		;
connectAttr "placercluster1_arm_LHandle_parentConstraint1.crx" "placercluster1_arm_LHandle.rx"
		;
connectAttr "placercluster1_arm_LHandle_parentConstraint1.cry" "placercluster1_arm_LHandle.ry"
		;
connectAttr "placercluster1_arm_LHandle_parentConstraint1.crz" "placercluster1_arm_LHandle.rz"
		;
connectAttr "placercluster1_arm_LHandle.ro" "placercluster1_arm_LHandle_parentConstraint1.cro"
		;
connectAttr "placercluster1_arm_LHandle.pim" "placercluster1_arm_LHandle_parentConstraint1.cpim"
		;
connectAttr "placercluster1_arm_LHandle.rp" "placercluster1_arm_LHandle_parentConstraint1.crp"
		;
connectAttr "placercluster1_arm_LHandle.rpt" "placercluster1_arm_LHandle_parentConstraint1.crt"
		;
connectAttr "armUpper_bone_placer_L.t" "placercluster1_arm_LHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "armUpper_bone_placer_L.rp" "placercluster1_arm_LHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "armUpper_bone_placer_L.rpt" "placercluster1_arm_LHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "armUpper_bone_placer_L.r" "placercluster1_arm_LHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "armUpper_bone_placer_L.ro" "placercluster1_arm_LHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "armUpper_bone_placer_L.s" "placercluster1_arm_LHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "armUpper_bone_placer_L.pm" "placercluster1_arm_LHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "placercluster1_arm_LHandle_parentConstraint1.w0" "placercluster1_arm_LHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "placercluster2_arm_LHandle_parentConstraint1.ctx" "placercluster2_arm_LHandle.tx"
		;
connectAttr "placercluster2_arm_LHandle_parentConstraint1.cty" "placercluster2_arm_LHandle.ty"
		;
connectAttr "placercluster2_arm_LHandle_parentConstraint1.ctz" "placercluster2_arm_LHandle.tz"
		;
connectAttr "placercluster2_arm_LHandle_parentConstraint1.crx" "placercluster2_arm_LHandle.rx"
		;
connectAttr "placercluster2_arm_LHandle_parentConstraint1.cry" "placercluster2_arm_LHandle.ry"
		;
connectAttr "placercluster2_arm_LHandle_parentConstraint1.crz" "placercluster2_arm_LHandle.rz"
		;
connectAttr "placercluster2_arm_LHandle.ro" "placercluster2_arm_LHandle_parentConstraint1.cro"
		;
connectAttr "placercluster2_arm_LHandle.pim" "placercluster2_arm_LHandle_parentConstraint1.cpim"
		;
connectAttr "placercluster2_arm_LHandle.rp" "placercluster2_arm_LHandle_parentConstraint1.crp"
		;
connectAttr "placercluster2_arm_LHandle.rpt" "placercluster2_arm_LHandle_parentConstraint1.crt"
		;
connectAttr "armLower_bone_placer_L.t" "placercluster2_arm_LHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "armLower_bone_placer_L.rp" "placercluster2_arm_LHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "armLower_bone_placer_L.rpt" "placercluster2_arm_LHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "armLower_bone_placer_L.r" "placercluster2_arm_LHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "armLower_bone_placer_L.ro" "placercluster2_arm_LHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "armLower_bone_placer_L.s" "placercluster2_arm_LHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "armLower_bone_placer_L.pm" "placercluster2_arm_LHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "placercluster2_arm_LHandle_parentConstraint1.w0" "placercluster2_arm_LHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "placercluster3_arm_LHandle_parentConstraint1.ctx" "placercluster3_arm_LHandle.tx"
		;
connectAttr "placercluster3_arm_LHandle_parentConstraint1.cty" "placercluster3_arm_LHandle.ty"
		;
connectAttr "placercluster3_arm_LHandle_parentConstraint1.ctz" "placercluster3_arm_LHandle.tz"
		;
connectAttr "placercluster3_arm_LHandle_parentConstraint1.crx" "placercluster3_arm_LHandle.rx"
		;
connectAttr "placercluster3_arm_LHandle_parentConstraint1.cry" "placercluster3_arm_LHandle.ry"
		;
connectAttr "placercluster3_arm_LHandle_parentConstraint1.crz" "placercluster3_arm_LHandle.rz"
		;
connectAttr "placercluster3_arm_LHandle.ro" "placercluster3_arm_LHandle_parentConstraint1.cro"
		;
connectAttr "placercluster3_arm_LHandle.pim" "placercluster3_arm_LHandle_parentConstraint1.cpim"
		;
connectAttr "placercluster3_arm_LHandle.rp" "placercluster3_arm_LHandle_parentConstraint1.crp"
		;
connectAttr "placercluster3_arm_LHandle.rpt" "placercluster3_arm_LHandle_parentConstraint1.crt"
		;
connectAttr "hand_bone_placer_L.t" "placercluster3_arm_LHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "hand_bone_placer_L.rp" "placercluster3_arm_LHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "hand_bone_placer_L.rpt" "placercluster3_arm_LHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "hand_bone_placer_L.r" "placercluster3_arm_LHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "hand_bone_placer_L.ro" "placercluster3_arm_LHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "hand_bone_placer_L.s" "placercluster3_arm_LHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "hand_bone_placer_L.pm" "placercluster3_arm_LHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "placercluster3_arm_LHandle_parentConstraint1.w0" "placercluster3_arm_LHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "placercluster3_arm_L.og[0]" "proxy_curve_arm_LShape.cr";
connectAttr "armUpper_bone_placer_L_upVector_grp_aimConstraint1.crx" "armUpper_bone_placer_L_upVector_grp.rx"
		;
connectAttr "armUpper_bone_placer_L_upVector_grp_aimConstraint1.cry" "armUpper_bone_placer_L_upVector_grp.ry"
		;
connectAttr "armUpper_bone_placer_L_upVector_grp_aimConstraint1.crz" "armUpper_bone_placer_L_upVector_grp.rz"
		;
connectAttr "cluster1armUpper_bone_placer_L_upvecHandle_parentConstraint1.ctx" "cluster1armUpper_bone_placer_L_upvecHandle.tx"
		;
connectAttr "cluster1armUpper_bone_placer_L_upvecHandle_parentConstraint1.cty" "cluster1armUpper_bone_placer_L_upvecHandle.ty"
		;
connectAttr "cluster1armUpper_bone_placer_L_upvecHandle_parentConstraint1.ctz" "cluster1armUpper_bone_placer_L_upvecHandle.tz"
		;
connectAttr "cluster1armUpper_bone_placer_L_upvecHandle_parentConstraint1.crx" "cluster1armUpper_bone_placer_L_upvecHandle.rx"
		;
connectAttr "cluster1armUpper_bone_placer_L_upvecHandle_parentConstraint1.cry" "cluster1armUpper_bone_placer_L_upvecHandle.ry"
		;
connectAttr "cluster1armUpper_bone_placer_L_upvecHandle_parentConstraint1.crz" "cluster1armUpper_bone_placer_L_upvecHandle.rz"
		;
connectAttr "cluster1armUpper_bone_placer_L_upvecHandle.ro" "cluster1armUpper_bone_placer_L_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1armUpper_bone_placer_L_upvecHandle.pim" "cluster1armUpper_bone_placer_L_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1armUpper_bone_placer_L_upvecHandle.rp" "cluster1armUpper_bone_placer_L_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1armUpper_bone_placer_L_upvecHandle.rpt" "cluster1armUpper_bone_placer_L_upvecHandle_parentConstraint1.crt"
		;
connectAttr "armUpper_bone_placer_L.t" "cluster1armUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "armUpper_bone_placer_L.rp" "cluster1armUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "armUpper_bone_placer_L.rpt" "cluster1armUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "armUpper_bone_placer_L.r" "cluster1armUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "armUpper_bone_placer_L.ro" "cluster1armUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "armUpper_bone_placer_L.s" "cluster1armUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "armUpper_bone_placer_L.pm" "cluster1armUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1armUpper_bone_placer_L_upvecHandle_parentConstraint1.w0" "cluster1armUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2armUpper_bone_placer_L_upvecHandle_parentConstraint1.ctx" "cluster2armUpper_bone_placer_L_upvecHandle.tx"
		;
connectAttr "cluster2armUpper_bone_placer_L_upvecHandle_parentConstraint1.cty" "cluster2armUpper_bone_placer_L_upvecHandle.ty"
		;
connectAttr "cluster2armUpper_bone_placer_L_upvecHandle_parentConstraint1.ctz" "cluster2armUpper_bone_placer_L_upvecHandle.tz"
		;
connectAttr "cluster2armUpper_bone_placer_L_upvecHandle_parentConstraint1.crx" "cluster2armUpper_bone_placer_L_upvecHandle.rx"
		;
connectAttr "cluster2armUpper_bone_placer_L_upvecHandle_parentConstraint1.cry" "cluster2armUpper_bone_placer_L_upvecHandle.ry"
		;
connectAttr "cluster2armUpper_bone_placer_L_upvecHandle_parentConstraint1.crz" "cluster2armUpper_bone_placer_L_upvecHandle.rz"
		;
connectAttr "cluster2armUpper_bone_placer_L_upvecHandle.ro" "cluster2armUpper_bone_placer_L_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2armUpper_bone_placer_L_upvecHandle.pim" "cluster2armUpper_bone_placer_L_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2armUpper_bone_placer_L_upvecHandle.rp" "cluster2armUpper_bone_placer_L_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2armUpper_bone_placer_L_upvecHandle.rpt" "cluster2armUpper_bone_placer_L_upvecHandle_parentConstraint1.crt"
		;
connectAttr "armUpper_bone_placer_L_upVector.t" "cluster2armUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "armUpper_bone_placer_L_upVector.rp" "cluster2armUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "armUpper_bone_placer_L_upVector.rpt" "cluster2armUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "armUpper_bone_placer_L_upVector.r" "cluster2armUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "armUpper_bone_placer_L_upVector.ro" "cluster2armUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "armUpper_bone_placer_L_upVector.s" "cluster2armUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "armUpper_bone_placer_L_upVector.pm" "cluster2armUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2armUpper_bone_placer_L_upvecHandle_parentConstraint1.w0" "cluster2armUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2armUpper_bone_placer_L_upvec.og[0]" "armUpper_bone_placer_L_up_vec_curveShape.cr"
		;
connectAttr "armUpper_bone_placer_L_upVector_grp.pim" "armUpper_bone_placer_L_upVector_grp_aimConstraint1.cpim"
		;
connectAttr "armUpper_bone_placer_L_upVector_grp.t" "armUpper_bone_placer_L_upVector_grp_aimConstraint1.ct"
		;
connectAttr "armUpper_bone_placer_L_upVector_grp.rp" "armUpper_bone_placer_L_upVector_grp_aimConstraint1.crp"
		;
connectAttr "armUpper_bone_placer_L_upVector_grp.rpt" "armUpper_bone_placer_L_upVector_grp_aimConstraint1.crt"
		;
connectAttr "armUpper_bone_placer_L_upVector_grp.ro" "armUpper_bone_placer_L_upVector_grp_aimConstraint1.cro"
		;
connectAttr "armUpper_bone_placer_L_loc.t" "armUpper_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tt"
		;
connectAttr "armUpper_bone_placer_L_loc.rp" "armUpper_bone_placer_L_upVector_grp_aimConstraint1.tg[0].trp"
		;
connectAttr "armUpper_bone_placer_L_loc.rpt" "armUpper_bone_placer_L_upVector_grp_aimConstraint1.tg[0].trt"
		;
connectAttr "armUpper_bone_placer_L_loc.pm" "armUpper_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tpm"
		;
connectAttr "armUpper_bone_placer_L_upVector_grp_aimConstraint1.w0" "armUpper_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tw"
		;
connectAttr "armLower_bone_placer_L_upVector_grp_aimConstraint1.crx" "armLower_bone_placer_L_upVector_grp.rx"
		;
connectAttr "armLower_bone_placer_L_upVector_grp_aimConstraint1.cry" "armLower_bone_placer_L_upVector_grp.ry"
		;
connectAttr "armLower_bone_placer_L_upVector_grp_aimConstraint1.crz" "armLower_bone_placer_L_upVector_grp.rz"
		;
connectAttr "cluster1armLower_bone_placer_L_upvecHandle_parentConstraint1.ctx" "cluster1armLower_bone_placer_L_upvecHandle.tx"
		;
connectAttr "cluster1armLower_bone_placer_L_upvecHandle_parentConstraint1.cty" "cluster1armLower_bone_placer_L_upvecHandle.ty"
		;
connectAttr "cluster1armLower_bone_placer_L_upvecHandle_parentConstraint1.ctz" "cluster1armLower_bone_placer_L_upvecHandle.tz"
		;
connectAttr "cluster1armLower_bone_placer_L_upvecHandle_parentConstraint1.crx" "cluster1armLower_bone_placer_L_upvecHandle.rx"
		;
connectAttr "cluster1armLower_bone_placer_L_upvecHandle_parentConstraint1.cry" "cluster1armLower_bone_placer_L_upvecHandle.ry"
		;
connectAttr "cluster1armLower_bone_placer_L_upvecHandle_parentConstraint1.crz" "cluster1armLower_bone_placer_L_upvecHandle.rz"
		;
connectAttr "cluster1armLower_bone_placer_L_upvecHandle.ro" "cluster1armLower_bone_placer_L_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1armLower_bone_placer_L_upvecHandle.pim" "cluster1armLower_bone_placer_L_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1armLower_bone_placer_L_upvecHandle.rp" "cluster1armLower_bone_placer_L_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1armLower_bone_placer_L_upvecHandle.rpt" "cluster1armLower_bone_placer_L_upvecHandle_parentConstraint1.crt"
		;
connectAttr "armLower_bone_placer_L.t" "cluster1armLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "armLower_bone_placer_L.rp" "cluster1armLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "armLower_bone_placer_L.rpt" "cluster1armLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "armLower_bone_placer_L.r" "cluster1armLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "armLower_bone_placer_L.ro" "cluster1armLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "armLower_bone_placer_L.s" "cluster1armLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "armLower_bone_placer_L.pm" "cluster1armLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1armLower_bone_placer_L_upvecHandle_parentConstraint1.w0" "cluster1armLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2armLower_bone_placer_L_upvecHandle_parentConstraint1.ctx" "cluster2armLower_bone_placer_L_upvecHandle.tx"
		;
connectAttr "cluster2armLower_bone_placer_L_upvecHandle_parentConstraint1.cty" "cluster2armLower_bone_placer_L_upvecHandle.ty"
		;
connectAttr "cluster2armLower_bone_placer_L_upvecHandle_parentConstraint1.ctz" "cluster2armLower_bone_placer_L_upvecHandle.tz"
		;
connectAttr "cluster2armLower_bone_placer_L_upvecHandle_parentConstraint1.crx" "cluster2armLower_bone_placer_L_upvecHandle.rx"
		;
connectAttr "cluster2armLower_bone_placer_L_upvecHandle_parentConstraint1.cry" "cluster2armLower_bone_placer_L_upvecHandle.ry"
		;
connectAttr "cluster2armLower_bone_placer_L_upvecHandle_parentConstraint1.crz" "cluster2armLower_bone_placer_L_upvecHandle.rz"
		;
connectAttr "cluster2armLower_bone_placer_L_upvecHandle.ro" "cluster2armLower_bone_placer_L_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2armLower_bone_placer_L_upvecHandle.pim" "cluster2armLower_bone_placer_L_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2armLower_bone_placer_L_upvecHandle.rp" "cluster2armLower_bone_placer_L_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2armLower_bone_placer_L_upvecHandle.rpt" "cluster2armLower_bone_placer_L_upvecHandle_parentConstraint1.crt"
		;
connectAttr "armLower_bone_placer_L_upVector.t" "cluster2armLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "armLower_bone_placer_L_upVector.rp" "cluster2armLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "armLower_bone_placer_L_upVector.rpt" "cluster2armLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "armLower_bone_placer_L_upVector.r" "cluster2armLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "armLower_bone_placer_L_upVector.ro" "cluster2armLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "armLower_bone_placer_L_upVector.s" "cluster2armLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "armLower_bone_placer_L_upVector.pm" "cluster2armLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2armLower_bone_placer_L_upvecHandle_parentConstraint1.w0" "cluster2armLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2armLower_bone_placer_L_upvec.og[0]" "armLower_bone_placer_L_up_vec_curveShape.cr"
		;
connectAttr "armLower_bone_placer_L_upVector_grp.pim" "armLower_bone_placer_L_upVector_grp_aimConstraint1.cpim"
		;
connectAttr "armLower_bone_placer_L_upVector_grp.t" "armLower_bone_placer_L_upVector_grp_aimConstraint1.ct"
		;
connectAttr "armLower_bone_placer_L_upVector_grp.rp" "armLower_bone_placer_L_upVector_grp_aimConstraint1.crp"
		;
connectAttr "armLower_bone_placer_L_upVector_grp.rpt" "armLower_bone_placer_L_upVector_grp_aimConstraint1.crt"
		;
connectAttr "armLower_bone_placer_L_upVector_grp.ro" "armLower_bone_placer_L_upVector_grp_aimConstraint1.cro"
		;
connectAttr "armLower_bone_placer_L_loc.t" "armLower_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tt"
		;
connectAttr "armLower_bone_placer_L_loc.rp" "armLower_bone_placer_L_upVector_grp_aimConstraint1.tg[0].trp"
		;
connectAttr "armLower_bone_placer_L_loc.rpt" "armLower_bone_placer_L_upVector_grp_aimConstraint1.tg[0].trt"
		;
connectAttr "armLower_bone_placer_L_loc.pm" "armLower_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tpm"
		;
connectAttr "armLower_bone_placer_L_upVector_grp_aimConstraint1.w0" "armLower_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tw"
		;
connectAttr "hand_bone_placer_L_upVector_grp_aimConstraint1.crx" "hand_bone_placer_L_upVector_grp.rx"
		;
connectAttr "hand_bone_placer_L_upVector_grp_aimConstraint1.cry" "hand_bone_placer_L_upVector_grp.ry"
		;
connectAttr "hand_bone_placer_L_upVector_grp_aimConstraint1.crz" "hand_bone_placer_L_upVector_grp.rz"
		;
connectAttr "cluster1hand_bone_placer_L_upvecHandle_parentConstraint1.ctx" "cluster1hand_bone_placer_L_upvecHandle.tx"
		;
connectAttr "cluster1hand_bone_placer_L_upvecHandle_parentConstraint1.cty" "cluster1hand_bone_placer_L_upvecHandle.ty"
		;
connectAttr "cluster1hand_bone_placer_L_upvecHandle_parentConstraint1.ctz" "cluster1hand_bone_placer_L_upvecHandle.tz"
		;
connectAttr "cluster1hand_bone_placer_L_upvecHandle_parentConstraint1.crx" "cluster1hand_bone_placer_L_upvecHandle.rx"
		;
connectAttr "cluster1hand_bone_placer_L_upvecHandle_parentConstraint1.cry" "cluster1hand_bone_placer_L_upvecHandle.ry"
		;
connectAttr "cluster1hand_bone_placer_L_upvecHandle_parentConstraint1.crz" "cluster1hand_bone_placer_L_upvecHandle.rz"
		;
connectAttr "cluster1hand_bone_placer_L_upvecHandle.ro" "cluster1hand_bone_placer_L_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1hand_bone_placer_L_upvecHandle.pim" "cluster1hand_bone_placer_L_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1hand_bone_placer_L_upvecHandle.rp" "cluster1hand_bone_placer_L_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1hand_bone_placer_L_upvecHandle.rpt" "cluster1hand_bone_placer_L_upvecHandle_parentConstraint1.crt"
		;
connectAttr "hand_bone_placer_L.t" "cluster1hand_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "hand_bone_placer_L.rp" "cluster1hand_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "hand_bone_placer_L.rpt" "cluster1hand_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "hand_bone_placer_L.r" "cluster1hand_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "hand_bone_placer_L.ro" "cluster1hand_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "hand_bone_placer_L.s" "cluster1hand_bone_placer_L_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "hand_bone_placer_L.pm" "cluster1hand_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1hand_bone_placer_L_upvecHandle_parentConstraint1.w0" "cluster1hand_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2hand_bone_placer_L_upvecHandle_parentConstraint1.ctx" "cluster2hand_bone_placer_L_upvecHandle.tx"
		;
connectAttr "cluster2hand_bone_placer_L_upvecHandle_parentConstraint1.cty" "cluster2hand_bone_placer_L_upvecHandle.ty"
		;
connectAttr "cluster2hand_bone_placer_L_upvecHandle_parentConstraint1.ctz" "cluster2hand_bone_placer_L_upvecHandle.tz"
		;
connectAttr "cluster2hand_bone_placer_L_upvecHandle_parentConstraint1.crx" "cluster2hand_bone_placer_L_upvecHandle.rx"
		;
connectAttr "cluster2hand_bone_placer_L_upvecHandle_parentConstraint1.cry" "cluster2hand_bone_placer_L_upvecHandle.ry"
		;
connectAttr "cluster2hand_bone_placer_L_upvecHandle_parentConstraint1.crz" "cluster2hand_bone_placer_L_upvecHandle.rz"
		;
connectAttr "cluster2hand_bone_placer_L_upvecHandle.ro" "cluster2hand_bone_placer_L_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2hand_bone_placer_L_upvecHandle.pim" "cluster2hand_bone_placer_L_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2hand_bone_placer_L_upvecHandle.rp" "cluster2hand_bone_placer_L_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2hand_bone_placer_L_upvecHandle.rpt" "cluster2hand_bone_placer_L_upvecHandle_parentConstraint1.crt"
		;
connectAttr "hand_bone_placer_L_upVector.t" "cluster2hand_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "hand_bone_placer_L_upVector.rp" "cluster2hand_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "hand_bone_placer_L_upVector.rpt" "cluster2hand_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "hand_bone_placer_L_upVector.r" "cluster2hand_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "hand_bone_placer_L_upVector.ro" "cluster2hand_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "hand_bone_placer_L_upVector.s" "cluster2hand_bone_placer_L_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "hand_bone_placer_L_upVector.pm" "cluster2hand_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2hand_bone_placer_L_upvecHandle_parentConstraint1.w0" "cluster2hand_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2hand_bone_placer_L_upvec.og[0]" "hand_bone_placer_L_up_vec_curveShape.cr"
		;
connectAttr "hand_bone_placer_L_upVector_grp.pim" "hand_bone_placer_L_upVector_grp_aimConstraint1.cpim"
		;
connectAttr "hand_bone_placer_L_upVector_grp.t" "hand_bone_placer_L_upVector_grp_aimConstraint1.ct"
		;
connectAttr "hand_bone_placer_L_upVector_grp.rp" "hand_bone_placer_L_upVector_grp_aimConstraint1.crp"
		;
connectAttr "hand_bone_placer_L_upVector_grp.rpt" "hand_bone_placer_L_upVector_grp_aimConstraint1.crt"
		;
connectAttr "hand_bone_placer_L_upVector_grp.ro" "hand_bone_placer_L_upVector_grp_aimConstraint1.cro"
		;
connectAttr "hand_bone_placer_L_loc.t" "hand_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tt"
		;
connectAttr "hand_bone_placer_L_loc.rp" "hand_bone_placer_L_upVector_grp_aimConstraint1.tg[0].trp"
		;
connectAttr "hand_bone_placer_L_loc.rpt" "hand_bone_placer_L_upVector_grp_aimConstraint1.tg[0].trt"
		;
connectAttr "hand_bone_placer_L_loc.pm" "hand_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tpm"
		;
connectAttr "hand_bone_placer_L_upVector_grp_aimConstraint1.w0" "hand_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tw"
		;
connectAttr "clavicle_bone_placer_L_upVector_grp_aimConstraint1.crx" "clavicle_bone_placer_L_upVector_grp.rx"
		;
connectAttr "clavicle_bone_placer_L_upVector_grp_aimConstraint1.cry" "clavicle_bone_placer_L_upVector_grp.ry"
		;
connectAttr "clavicle_bone_placer_L_upVector_grp_aimConstraint1.crz" "clavicle_bone_placer_L_upVector_grp.rz"
		;
connectAttr "cluster1clavicle_bone_placer_L_upvecHandle_parentConstraint1.ctx" "cluster1clavicle_bone_placer_L_upvecHandle.tx"
		;
connectAttr "cluster1clavicle_bone_placer_L_upvecHandle_parentConstraint1.cty" "cluster1clavicle_bone_placer_L_upvecHandle.ty"
		;
connectAttr "cluster1clavicle_bone_placer_L_upvecHandle_parentConstraint1.ctz" "cluster1clavicle_bone_placer_L_upvecHandle.tz"
		;
connectAttr "cluster1clavicle_bone_placer_L_upvecHandle_parentConstraint1.crx" "cluster1clavicle_bone_placer_L_upvecHandle.rx"
		;
connectAttr "cluster1clavicle_bone_placer_L_upvecHandle_parentConstraint1.cry" "cluster1clavicle_bone_placer_L_upvecHandle.ry"
		;
connectAttr "cluster1clavicle_bone_placer_L_upvecHandle_parentConstraint1.crz" "cluster1clavicle_bone_placer_L_upvecHandle.rz"
		;
connectAttr "cluster1clavicle_bone_placer_L_upvecHandle.ro" "cluster1clavicle_bone_placer_L_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1clavicle_bone_placer_L_upvecHandle.pim" "cluster1clavicle_bone_placer_L_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1clavicle_bone_placer_L_upvecHandle.rp" "cluster1clavicle_bone_placer_L_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1clavicle_bone_placer_L_upvecHandle.rpt" "cluster1clavicle_bone_placer_L_upvecHandle_parentConstraint1.crt"
		;
connectAttr "clavicle_bone_placer_L.t" "cluster1clavicle_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "clavicle_bone_placer_L.rp" "cluster1clavicle_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "clavicle_bone_placer_L.rpt" "cluster1clavicle_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "clavicle_bone_placer_L.r" "cluster1clavicle_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "clavicle_bone_placer_L.ro" "cluster1clavicle_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "clavicle_bone_placer_L.s" "cluster1clavicle_bone_placer_L_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "clavicle_bone_placer_L.pm" "cluster1clavicle_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1clavicle_bone_placer_L_upvecHandle_parentConstraint1.w0" "cluster1clavicle_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2clavicle_bone_placer_L_upvecHandle_parentConstraint1.ctx" "cluster2clavicle_bone_placer_L_upvecHandle.tx"
		;
connectAttr "cluster2clavicle_bone_placer_L_upvecHandle_parentConstraint1.cty" "cluster2clavicle_bone_placer_L_upvecHandle.ty"
		;
connectAttr "cluster2clavicle_bone_placer_L_upvecHandle_parentConstraint1.ctz" "cluster2clavicle_bone_placer_L_upvecHandle.tz"
		;
connectAttr "cluster2clavicle_bone_placer_L_upvecHandle_parentConstraint1.crx" "cluster2clavicle_bone_placer_L_upvecHandle.rx"
		;
connectAttr "cluster2clavicle_bone_placer_L_upvecHandle_parentConstraint1.cry" "cluster2clavicle_bone_placer_L_upvecHandle.ry"
		;
connectAttr "cluster2clavicle_bone_placer_L_upvecHandle_parentConstraint1.crz" "cluster2clavicle_bone_placer_L_upvecHandle.rz"
		;
connectAttr "cluster2clavicle_bone_placer_L_upvecHandle.ro" "cluster2clavicle_bone_placer_L_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2clavicle_bone_placer_L_upvecHandle.pim" "cluster2clavicle_bone_placer_L_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2clavicle_bone_placer_L_upvecHandle.rp" "cluster2clavicle_bone_placer_L_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2clavicle_bone_placer_L_upvecHandle.rpt" "cluster2clavicle_bone_placer_L_upvecHandle_parentConstraint1.crt"
		;
connectAttr "clavicle_bone_placer_L_upVector.t" "cluster2clavicle_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "clavicle_bone_placer_L_upVector.rp" "cluster2clavicle_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "clavicle_bone_placer_L_upVector.rpt" "cluster2clavicle_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "clavicle_bone_placer_L_upVector.r" "cluster2clavicle_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "clavicle_bone_placer_L_upVector.ro" "cluster2clavicle_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "clavicle_bone_placer_L_upVector.s" "cluster2clavicle_bone_placer_L_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "clavicle_bone_placer_L_upVector.pm" "cluster2clavicle_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2clavicle_bone_placer_L_upvecHandle_parentConstraint1.w0" "cluster2clavicle_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2clavicle_bone_placer_L_upvec.og[0]" "clavicle_bone_placer_L_up_vec_curveShape.cr"
		;
connectAttr "clavicle_bone_placer_L_upVector_grp.pim" "clavicle_bone_placer_L_upVector_grp_aimConstraint1.cpim"
		;
connectAttr "clavicle_bone_placer_L_upVector_grp.t" "clavicle_bone_placer_L_upVector_grp_aimConstraint1.ct"
		;
connectAttr "clavicle_bone_placer_L_upVector_grp.rp" "clavicle_bone_placer_L_upVector_grp_aimConstraint1.crp"
		;
connectAttr "clavicle_bone_placer_L_upVector_grp.rpt" "clavicle_bone_placer_L_upVector_grp_aimConstraint1.crt"
		;
connectAttr "clavicle_bone_placer_L_upVector_grp.ro" "clavicle_bone_placer_L_upVector_grp_aimConstraint1.cro"
		;
connectAttr "clavicle_bone_placer_L_loc.t" "clavicle_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tt"
		;
connectAttr "clavicle_bone_placer_L_loc.rp" "clavicle_bone_placer_L_upVector_grp_aimConstraint1.tg[0].trp"
		;
connectAttr "clavicle_bone_placer_L_loc.rpt" "clavicle_bone_placer_L_upVector_grp_aimConstraint1.tg[0].trt"
		;
connectAttr "clavicle_bone_placer_L_loc.pm" "clavicle_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tpm"
		;
connectAttr "clavicle_bone_placer_L_upVector_grp_aimConstraint1.w0" "clavicle_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tw"
		;
connectAttr "clavUpVec_R.o3" "clavicle_bone_placer_R_loc.t";
connectAttr "shoulderUpVec_R.o3" "armUpper_bone_placer_R_loc.t";
connectAttr "elbowUpVec_R.o3" "armLower_bone_placer_R_loc.t";
connectAttr "wristUpVec_R.o3" "hand_bone_placer_R_loc.t";
connectAttr "placercluster0_arm_RHandle_parentConstraint1.ctx" "placercluster0_arm_RHandle.tx"
		;
connectAttr "placercluster0_arm_RHandle_parentConstraint1.cty" "placercluster0_arm_RHandle.ty"
		;
connectAttr "placercluster0_arm_RHandle_parentConstraint1.ctz" "placercluster0_arm_RHandle.tz"
		;
connectAttr "placercluster0_arm_RHandle_parentConstraint1.crx" "placercluster0_arm_RHandle.rx"
		;
connectAttr "placercluster0_arm_RHandle_parentConstraint1.cry" "placercluster0_arm_RHandle.ry"
		;
connectAttr "placercluster0_arm_RHandle_parentConstraint1.crz" "placercluster0_arm_RHandle.rz"
		;
connectAttr "placercluster0_arm_RHandle.ro" "placercluster0_arm_RHandle_parentConstraint1.cro"
		;
connectAttr "placercluster0_arm_RHandle.pim" "placercluster0_arm_RHandle_parentConstraint1.cpim"
		;
connectAttr "placercluster0_arm_RHandle.rp" "placercluster0_arm_RHandle_parentConstraint1.crp"
		;
connectAttr "placercluster0_arm_RHandle.rpt" "placercluster0_arm_RHandle_parentConstraint1.crt"
		;
connectAttr "clavicle_bone_placer_R.t" "placercluster0_arm_RHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "clavicle_bone_placer_R.rp" "placercluster0_arm_RHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "clavicle_bone_placer_R.rpt" "placercluster0_arm_RHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "clavicle_bone_placer_R.r" "placercluster0_arm_RHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "clavicle_bone_placer_R.ro" "placercluster0_arm_RHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "clavicle_bone_placer_R.s" "placercluster0_arm_RHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "clavicle_bone_placer_R.pm" "placercluster0_arm_RHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "placercluster0_arm_RHandle_parentConstraint1.w0" "placercluster0_arm_RHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "placercluster1_arm_RHandle_parentConstraint1.ctx" "placercluster1_arm_RHandle.tx"
		;
connectAttr "placercluster1_arm_RHandle_parentConstraint1.cty" "placercluster1_arm_RHandle.ty"
		;
connectAttr "placercluster1_arm_RHandle_parentConstraint1.ctz" "placercluster1_arm_RHandle.tz"
		;
connectAttr "placercluster1_arm_RHandle_parentConstraint1.crx" "placercluster1_arm_RHandle.rx"
		;
connectAttr "placercluster1_arm_RHandle_parentConstraint1.cry" "placercluster1_arm_RHandle.ry"
		;
connectAttr "placercluster1_arm_RHandle_parentConstraint1.crz" "placercluster1_arm_RHandle.rz"
		;
connectAttr "placercluster1_arm_RHandle.ro" "placercluster1_arm_RHandle_parentConstraint1.cro"
		;
connectAttr "placercluster1_arm_RHandle.pim" "placercluster1_arm_RHandle_parentConstraint1.cpim"
		;
connectAttr "placercluster1_arm_RHandle.rp" "placercluster1_arm_RHandle_parentConstraint1.crp"
		;
connectAttr "placercluster1_arm_RHandle.rpt" "placercluster1_arm_RHandle_parentConstraint1.crt"
		;
connectAttr "armUpper_bone_placer_R.t" "placercluster1_arm_RHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "armUpper_bone_placer_R.rp" "placercluster1_arm_RHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "armUpper_bone_placer_R.rpt" "placercluster1_arm_RHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "armUpper_bone_placer_R.r" "placercluster1_arm_RHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "armUpper_bone_placer_R.ro" "placercluster1_arm_RHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "armUpper_bone_placer_R.s" "placercluster1_arm_RHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "armUpper_bone_placer_R.pm" "placercluster1_arm_RHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "placercluster1_arm_RHandle_parentConstraint1.w0" "placercluster1_arm_RHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "placercluster2_arm_RHandle_parentConstraint1.ctx" "placercluster2_arm_RHandle.tx"
		;
connectAttr "placercluster2_arm_RHandle_parentConstraint1.cty" "placercluster2_arm_RHandle.ty"
		;
connectAttr "placercluster2_arm_RHandle_parentConstraint1.ctz" "placercluster2_arm_RHandle.tz"
		;
connectAttr "placercluster2_arm_RHandle_parentConstraint1.crx" "placercluster2_arm_RHandle.rx"
		;
connectAttr "placercluster2_arm_RHandle_parentConstraint1.cry" "placercluster2_arm_RHandle.ry"
		;
connectAttr "placercluster2_arm_RHandle_parentConstraint1.crz" "placercluster2_arm_RHandle.rz"
		;
connectAttr "placercluster2_arm_RHandle.ro" "placercluster2_arm_RHandle_parentConstraint1.cro"
		;
connectAttr "placercluster2_arm_RHandle.pim" "placercluster2_arm_RHandle_parentConstraint1.cpim"
		;
connectAttr "placercluster2_arm_RHandle.rp" "placercluster2_arm_RHandle_parentConstraint1.crp"
		;
connectAttr "placercluster2_arm_RHandle.rpt" "placercluster2_arm_RHandle_parentConstraint1.crt"
		;
connectAttr "armLower_bone_placer_R.t" "placercluster2_arm_RHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "armLower_bone_placer_R.rp" "placercluster2_arm_RHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "armLower_bone_placer_R.rpt" "placercluster2_arm_RHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "armLower_bone_placer_R.r" "placercluster2_arm_RHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "armLower_bone_placer_R.ro" "placercluster2_arm_RHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "armLower_bone_placer_R.s" "placercluster2_arm_RHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "armLower_bone_placer_R.pm" "placercluster2_arm_RHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "placercluster2_arm_RHandle_parentConstraint1.w0" "placercluster2_arm_RHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "placercluster3_arm_RHandle_parentConstraint1.ctx" "placercluster3_arm_RHandle.tx"
		;
connectAttr "placercluster3_arm_RHandle_parentConstraint1.cty" "placercluster3_arm_RHandle.ty"
		;
connectAttr "placercluster3_arm_RHandle_parentConstraint1.ctz" "placercluster3_arm_RHandle.tz"
		;
connectAttr "placercluster3_arm_RHandle_parentConstraint1.crx" "placercluster3_arm_RHandle.rx"
		;
connectAttr "placercluster3_arm_RHandle_parentConstraint1.cry" "placercluster3_arm_RHandle.ry"
		;
connectAttr "placercluster3_arm_RHandle_parentConstraint1.crz" "placercluster3_arm_RHandle.rz"
		;
connectAttr "placercluster3_arm_RHandle.ro" "placercluster3_arm_RHandle_parentConstraint1.cro"
		;
connectAttr "placercluster3_arm_RHandle.pim" "placercluster3_arm_RHandle_parentConstraint1.cpim"
		;
connectAttr "placercluster3_arm_RHandle.rp" "placercluster3_arm_RHandle_parentConstraint1.crp"
		;
connectAttr "placercluster3_arm_RHandle.rpt" "placercluster3_arm_RHandle_parentConstraint1.crt"
		;
connectAttr "hand_bone_placer_R.t" "placercluster3_arm_RHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "hand_bone_placer_R.rp" "placercluster3_arm_RHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "hand_bone_placer_R.rpt" "placercluster3_arm_RHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "hand_bone_placer_R.r" "placercluster3_arm_RHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "hand_bone_placer_R.ro" "placercluster3_arm_RHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "hand_bone_placer_R.s" "placercluster3_arm_RHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "hand_bone_placer_R.pm" "placercluster3_arm_RHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "placercluster3_arm_RHandle_parentConstraint1.w0" "placercluster3_arm_RHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "placercluster3_arm_R.og[0]" "proxy_curve_arm_RShape.cr";
connectAttr "armUpper_bone_placer_R_upVector_grp_aimConstraint1.crx" "armUpper_bone_placer_R_upVector_grp.rx"
		;
connectAttr "armUpper_bone_placer_R_upVector_grp_aimConstraint1.cry" "armUpper_bone_placer_R_upVector_grp.ry"
		;
connectAttr "armUpper_bone_placer_R_upVector_grp_aimConstraint1.crz" "armUpper_bone_placer_R_upVector_grp.rz"
		;
connectAttr "cluster1armUpper_bone_placer_R_upvecHandle_parentConstraint1.ctx" "cluster1armUpper_bone_placer_R_upvecHandle.tx"
		;
connectAttr "cluster1armUpper_bone_placer_R_upvecHandle_parentConstraint1.cty" "cluster1armUpper_bone_placer_R_upvecHandle.ty"
		;
connectAttr "cluster1armUpper_bone_placer_R_upvecHandle_parentConstraint1.ctz" "cluster1armUpper_bone_placer_R_upvecHandle.tz"
		;
connectAttr "cluster1armUpper_bone_placer_R_upvecHandle_parentConstraint1.crx" "cluster1armUpper_bone_placer_R_upvecHandle.rx"
		;
connectAttr "cluster1armUpper_bone_placer_R_upvecHandle_parentConstraint1.cry" "cluster1armUpper_bone_placer_R_upvecHandle.ry"
		;
connectAttr "cluster1armUpper_bone_placer_R_upvecHandle_parentConstraint1.crz" "cluster1armUpper_bone_placer_R_upvecHandle.rz"
		;
connectAttr "cluster1armUpper_bone_placer_R_upvecHandle.ro" "cluster1armUpper_bone_placer_R_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1armUpper_bone_placer_R_upvecHandle.pim" "cluster1armUpper_bone_placer_R_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1armUpper_bone_placer_R_upvecHandle.rp" "cluster1armUpper_bone_placer_R_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1armUpper_bone_placer_R_upvecHandle.rpt" "cluster1armUpper_bone_placer_R_upvecHandle_parentConstraint1.crt"
		;
connectAttr "armUpper_bone_placer_R.t" "cluster1armUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "armUpper_bone_placer_R.rp" "cluster1armUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "armUpper_bone_placer_R.rpt" "cluster1armUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "armUpper_bone_placer_R.r" "cluster1armUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "armUpper_bone_placer_R.ro" "cluster1armUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "armUpper_bone_placer_R.s" "cluster1armUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "armUpper_bone_placer_R.pm" "cluster1armUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1armUpper_bone_placer_R_upvecHandle_parentConstraint1.w0" "cluster1armUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2armUpper_bone_placer_R_upvecHandle_parentConstraint1.ctx" "cluster2armUpper_bone_placer_R_upvecHandle.tx"
		;
connectAttr "cluster2armUpper_bone_placer_R_upvecHandle_parentConstraint1.cty" "cluster2armUpper_bone_placer_R_upvecHandle.ty"
		;
connectAttr "cluster2armUpper_bone_placer_R_upvecHandle_parentConstraint1.ctz" "cluster2armUpper_bone_placer_R_upvecHandle.tz"
		;
connectAttr "cluster2armUpper_bone_placer_R_upvecHandle_parentConstraint1.crx" "cluster2armUpper_bone_placer_R_upvecHandle.rx"
		;
connectAttr "cluster2armUpper_bone_placer_R_upvecHandle_parentConstraint1.cry" "cluster2armUpper_bone_placer_R_upvecHandle.ry"
		;
connectAttr "cluster2armUpper_bone_placer_R_upvecHandle_parentConstraint1.crz" "cluster2armUpper_bone_placer_R_upvecHandle.rz"
		;
connectAttr "cluster2armUpper_bone_placer_R_upvecHandle.ro" "cluster2armUpper_bone_placer_R_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2armUpper_bone_placer_R_upvecHandle.pim" "cluster2armUpper_bone_placer_R_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2armUpper_bone_placer_R_upvecHandle.rp" "cluster2armUpper_bone_placer_R_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2armUpper_bone_placer_R_upvecHandle.rpt" "cluster2armUpper_bone_placer_R_upvecHandle_parentConstraint1.crt"
		;
connectAttr "armUpper_bone_placer_R_upVector.t" "cluster2armUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "armUpper_bone_placer_R_upVector.rp" "cluster2armUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "armUpper_bone_placer_R_upVector.rpt" "cluster2armUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "armUpper_bone_placer_R_upVector.r" "cluster2armUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "armUpper_bone_placer_R_upVector.ro" "cluster2armUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "armUpper_bone_placer_R_upVector.s" "cluster2armUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "armUpper_bone_placer_R_upVector.pm" "cluster2armUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2armUpper_bone_placer_R_upvecHandle_parentConstraint1.w0" "cluster2armUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2armUpper_bone_placer_R_upvec.og[0]" "armUpper_bone_placer_R_up_vec_curveShape.cr"
		;
connectAttr "armUpper_bone_placer_R_upVector_grp.pim" "armUpper_bone_placer_R_upVector_grp_aimConstraint1.cpim"
		;
connectAttr "armUpper_bone_placer_R_upVector_grp.t" "armUpper_bone_placer_R_upVector_grp_aimConstraint1.ct"
		;
connectAttr "armUpper_bone_placer_R_upVector_grp.rp" "armUpper_bone_placer_R_upVector_grp_aimConstraint1.crp"
		;
connectAttr "armUpper_bone_placer_R_upVector_grp.rpt" "armUpper_bone_placer_R_upVector_grp_aimConstraint1.crt"
		;
connectAttr "armUpper_bone_placer_R_upVector_grp.ro" "armUpper_bone_placer_R_upVector_grp_aimConstraint1.cro"
		;
connectAttr "armUpper_bone_placer_R_loc.t" "armUpper_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tt"
		;
connectAttr "armUpper_bone_placer_R_loc.rp" "armUpper_bone_placer_R_upVector_grp_aimConstraint1.tg[0].trp"
		;
connectAttr "armUpper_bone_placer_R_loc.rpt" "armUpper_bone_placer_R_upVector_grp_aimConstraint1.tg[0].trt"
		;
connectAttr "armUpper_bone_placer_R_loc.pm" "armUpper_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tpm"
		;
connectAttr "armUpper_bone_placer_R_upVector_grp_aimConstraint1.w0" "armUpper_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tw"
		;
connectAttr "armLower_bone_placer_R_upVector_grp_aimConstraint1.crx" "armLower_bone_placer_R_upVector_grp.rx"
		;
connectAttr "armLower_bone_placer_R_upVector_grp_aimConstraint1.cry" "armLower_bone_placer_R_upVector_grp.ry"
		;
connectAttr "armLower_bone_placer_R_upVector_grp_aimConstraint1.crz" "armLower_bone_placer_R_upVector_grp.rz"
		;
connectAttr "cluster1armLower_bone_placer_R_upvecHandle_parentConstraint1.ctx" "cluster1armLower_bone_placer_R_upvecHandle.tx"
		;
connectAttr "cluster1armLower_bone_placer_R_upvecHandle_parentConstraint1.cty" "cluster1armLower_bone_placer_R_upvecHandle.ty"
		;
connectAttr "cluster1armLower_bone_placer_R_upvecHandle_parentConstraint1.ctz" "cluster1armLower_bone_placer_R_upvecHandle.tz"
		;
connectAttr "cluster1armLower_bone_placer_R_upvecHandle_parentConstraint1.crx" "cluster1armLower_bone_placer_R_upvecHandle.rx"
		;
connectAttr "cluster1armLower_bone_placer_R_upvecHandle_parentConstraint1.cry" "cluster1armLower_bone_placer_R_upvecHandle.ry"
		;
connectAttr "cluster1armLower_bone_placer_R_upvecHandle_parentConstraint1.crz" "cluster1armLower_bone_placer_R_upvecHandle.rz"
		;
connectAttr "cluster1armLower_bone_placer_R_upvecHandle.ro" "cluster1armLower_bone_placer_R_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1armLower_bone_placer_R_upvecHandle.pim" "cluster1armLower_bone_placer_R_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1armLower_bone_placer_R_upvecHandle.rp" "cluster1armLower_bone_placer_R_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1armLower_bone_placer_R_upvecHandle.rpt" "cluster1armLower_bone_placer_R_upvecHandle_parentConstraint1.crt"
		;
connectAttr "armLower_bone_placer_R.t" "cluster1armLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "armLower_bone_placer_R.rp" "cluster1armLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "armLower_bone_placer_R.rpt" "cluster1armLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "armLower_bone_placer_R.r" "cluster1armLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "armLower_bone_placer_R.ro" "cluster1armLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "armLower_bone_placer_R.s" "cluster1armLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "armLower_bone_placer_R.pm" "cluster1armLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1armLower_bone_placer_R_upvecHandle_parentConstraint1.w0" "cluster1armLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2armLower_bone_placer_R_upvecHandle_parentConstraint1.ctx" "cluster2armLower_bone_placer_R_upvecHandle.tx"
		;
connectAttr "cluster2armLower_bone_placer_R_upvecHandle_parentConstraint1.cty" "cluster2armLower_bone_placer_R_upvecHandle.ty"
		;
connectAttr "cluster2armLower_bone_placer_R_upvecHandle_parentConstraint1.ctz" "cluster2armLower_bone_placer_R_upvecHandle.tz"
		;
connectAttr "cluster2armLower_bone_placer_R_upvecHandle_parentConstraint1.crx" "cluster2armLower_bone_placer_R_upvecHandle.rx"
		;
connectAttr "cluster2armLower_bone_placer_R_upvecHandle_parentConstraint1.cry" "cluster2armLower_bone_placer_R_upvecHandle.ry"
		;
connectAttr "cluster2armLower_bone_placer_R_upvecHandle_parentConstraint1.crz" "cluster2armLower_bone_placer_R_upvecHandle.rz"
		;
connectAttr "cluster2armLower_bone_placer_R_upvecHandle.ro" "cluster2armLower_bone_placer_R_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2armLower_bone_placer_R_upvecHandle.pim" "cluster2armLower_bone_placer_R_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2armLower_bone_placer_R_upvecHandle.rp" "cluster2armLower_bone_placer_R_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2armLower_bone_placer_R_upvecHandle.rpt" "cluster2armLower_bone_placer_R_upvecHandle_parentConstraint1.crt"
		;
connectAttr "armLower_bone_placer_R_upVector.t" "cluster2armLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "armLower_bone_placer_R_upVector.rp" "cluster2armLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "armLower_bone_placer_R_upVector.rpt" "cluster2armLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "armLower_bone_placer_R_upVector.r" "cluster2armLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "armLower_bone_placer_R_upVector.ro" "cluster2armLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "armLower_bone_placer_R_upVector.s" "cluster2armLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "armLower_bone_placer_R_upVector.pm" "cluster2armLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2armLower_bone_placer_R_upvecHandle_parentConstraint1.w0" "cluster2armLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2armLower_bone_placer_R_upvec.og[0]" "armLower_bone_placer_R_up_vec_curveShape.cr"
		;
connectAttr "armLower_bone_placer_R_upVector_grp.pim" "armLower_bone_placer_R_upVector_grp_aimConstraint1.cpim"
		;
connectAttr "armLower_bone_placer_R_upVector_grp.t" "armLower_bone_placer_R_upVector_grp_aimConstraint1.ct"
		;
connectAttr "armLower_bone_placer_R_upVector_grp.rp" "armLower_bone_placer_R_upVector_grp_aimConstraint1.crp"
		;
connectAttr "armLower_bone_placer_R_upVector_grp.rpt" "armLower_bone_placer_R_upVector_grp_aimConstraint1.crt"
		;
connectAttr "armLower_bone_placer_R_upVector_grp.ro" "armLower_bone_placer_R_upVector_grp_aimConstraint1.cro"
		;
connectAttr "armLower_bone_placer_R_loc.t" "armLower_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tt"
		;
connectAttr "armLower_bone_placer_R_loc.rp" "armLower_bone_placer_R_upVector_grp_aimConstraint1.tg[0].trp"
		;
connectAttr "armLower_bone_placer_R_loc.rpt" "armLower_bone_placer_R_upVector_grp_aimConstraint1.tg[0].trt"
		;
connectAttr "armLower_bone_placer_R_loc.pm" "armLower_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tpm"
		;
connectAttr "armLower_bone_placer_R_upVector_grp_aimConstraint1.w0" "armLower_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tw"
		;
connectAttr "hand_bone_placer_R_upVector_grp_aimConstraint1.crx" "hand_bone_placer_R_upVector_grp.rx"
		;
connectAttr "hand_bone_placer_R_upVector_grp_aimConstraint1.cry" "hand_bone_placer_R_upVector_grp.ry"
		;
connectAttr "hand_bone_placer_R_upVector_grp_aimConstraint1.crz" "hand_bone_placer_R_upVector_grp.rz"
		;
connectAttr "cluster1hand_bone_placer_R_upvecHandle_parentConstraint1.ctx" "cluster1hand_bone_placer_R_upvecHandle.tx"
		;
connectAttr "cluster1hand_bone_placer_R_upvecHandle_parentConstraint1.cty" "cluster1hand_bone_placer_R_upvecHandle.ty"
		;
connectAttr "cluster1hand_bone_placer_R_upvecHandle_parentConstraint1.ctz" "cluster1hand_bone_placer_R_upvecHandle.tz"
		;
connectAttr "cluster1hand_bone_placer_R_upvecHandle_parentConstraint1.crx" "cluster1hand_bone_placer_R_upvecHandle.rx"
		;
connectAttr "cluster1hand_bone_placer_R_upvecHandle_parentConstraint1.cry" "cluster1hand_bone_placer_R_upvecHandle.ry"
		;
connectAttr "cluster1hand_bone_placer_R_upvecHandle_parentConstraint1.crz" "cluster1hand_bone_placer_R_upvecHandle.rz"
		;
connectAttr "cluster1hand_bone_placer_R_upvecHandle.ro" "cluster1hand_bone_placer_R_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1hand_bone_placer_R_upvecHandle.pim" "cluster1hand_bone_placer_R_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1hand_bone_placer_R_upvecHandle.rp" "cluster1hand_bone_placer_R_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1hand_bone_placer_R_upvecHandle.rpt" "cluster1hand_bone_placer_R_upvecHandle_parentConstraint1.crt"
		;
connectAttr "hand_bone_placer_R.t" "cluster1hand_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "hand_bone_placer_R.rp" "cluster1hand_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "hand_bone_placer_R.rpt" "cluster1hand_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "hand_bone_placer_R.r" "cluster1hand_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "hand_bone_placer_R.ro" "cluster1hand_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "hand_bone_placer_R.s" "cluster1hand_bone_placer_R_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "hand_bone_placer_R.pm" "cluster1hand_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1hand_bone_placer_R_upvecHandle_parentConstraint1.w0" "cluster1hand_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2hand_bone_placer_R_upvecHandle_parentConstraint1.ctx" "cluster2hand_bone_placer_R_upvecHandle.tx"
		;
connectAttr "cluster2hand_bone_placer_R_upvecHandle_parentConstraint1.cty" "cluster2hand_bone_placer_R_upvecHandle.ty"
		;
connectAttr "cluster2hand_bone_placer_R_upvecHandle_parentConstraint1.ctz" "cluster2hand_bone_placer_R_upvecHandle.tz"
		;
connectAttr "cluster2hand_bone_placer_R_upvecHandle_parentConstraint1.crx" "cluster2hand_bone_placer_R_upvecHandle.rx"
		;
connectAttr "cluster2hand_bone_placer_R_upvecHandle_parentConstraint1.cry" "cluster2hand_bone_placer_R_upvecHandle.ry"
		;
connectAttr "cluster2hand_bone_placer_R_upvecHandle_parentConstraint1.crz" "cluster2hand_bone_placer_R_upvecHandle.rz"
		;
connectAttr "cluster2hand_bone_placer_R_upvecHandle.ro" "cluster2hand_bone_placer_R_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2hand_bone_placer_R_upvecHandle.pim" "cluster2hand_bone_placer_R_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2hand_bone_placer_R_upvecHandle.rp" "cluster2hand_bone_placer_R_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2hand_bone_placer_R_upvecHandle.rpt" "cluster2hand_bone_placer_R_upvecHandle_parentConstraint1.crt"
		;
connectAttr "hand_bone_placer_R_upVector.t" "cluster2hand_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "hand_bone_placer_R_upVector.rp" "cluster2hand_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "hand_bone_placer_R_upVector.rpt" "cluster2hand_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "hand_bone_placer_R_upVector.r" "cluster2hand_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "hand_bone_placer_R_upVector.ro" "cluster2hand_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "hand_bone_placer_R_upVector.s" "cluster2hand_bone_placer_R_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "hand_bone_placer_R_upVector.pm" "cluster2hand_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2hand_bone_placer_R_upvecHandle_parentConstraint1.w0" "cluster2hand_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2hand_bone_placer_R_upvec.og[0]" "hand_bone_placer_R_up_vec_curveShape.cr"
		;
connectAttr "hand_bone_placer_R_upVector_grp.pim" "hand_bone_placer_R_upVector_grp_aimConstraint1.cpim"
		;
connectAttr "hand_bone_placer_R_upVector_grp.t" "hand_bone_placer_R_upVector_grp_aimConstraint1.ct"
		;
connectAttr "hand_bone_placer_R_upVector_grp.rp" "hand_bone_placer_R_upVector_grp_aimConstraint1.crp"
		;
connectAttr "hand_bone_placer_R_upVector_grp.rpt" "hand_bone_placer_R_upVector_grp_aimConstraint1.crt"
		;
connectAttr "hand_bone_placer_R_upVector_grp.ro" "hand_bone_placer_R_upVector_grp_aimConstraint1.cro"
		;
connectAttr "hand_bone_placer_R_loc.t" "hand_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tt"
		;
connectAttr "hand_bone_placer_R_loc.rp" "hand_bone_placer_R_upVector_grp_aimConstraint1.tg[0].trp"
		;
connectAttr "hand_bone_placer_R_loc.rpt" "hand_bone_placer_R_upVector_grp_aimConstraint1.tg[0].trt"
		;
connectAttr "hand_bone_placer_R_loc.pm" "hand_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tpm"
		;
connectAttr "hand_bone_placer_R_upVector_grp_aimConstraint1.w0" "hand_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tw"
		;
connectAttr "clavicle_bone_placer_R_upVector_grp_aimConstraint1.crx" "clavicle_bone_placer_R_upVector_grp.rx"
		;
connectAttr "clavicle_bone_placer_R_upVector_grp_aimConstraint1.cry" "clavicle_bone_placer_R_upVector_grp.ry"
		;
connectAttr "clavicle_bone_placer_R_upVector_grp_aimConstraint1.crz" "clavicle_bone_placer_R_upVector_grp.rz"
		;
connectAttr "cluster1clavicle_bone_placer_R_upvecHandle_parentConstraint1.ctx" "cluster1clavicle_bone_placer_R_upvecHandle.tx"
		;
connectAttr "cluster1clavicle_bone_placer_R_upvecHandle_parentConstraint1.cty" "cluster1clavicle_bone_placer_R_upvecHandle.ty"
		;
connectAttr "cluster1clavicle_bone_placer_R_upvecHandle_parentConstraint1.ctz" "cluster1clavicle_bone_placer_R_upvecHandle.tz"
		;
connectAttr "cluster1clavicle_bone_placer_R_upvecHandle_parentConstraint1.crx" "cluster1clavicle_bone_placer_R_upvecHandle.rx"
		;
connectAttr "cluster1clavicle_bone_placer_R_upvecHandle_parentConstraint1.cry" "cluster1clavicle_bone_placer_R_upvecHandle.ry"
		;
connectAttr "cluster1clavicle_bone_placer_R_upvecHandle_parentConstraint1.crz" "cluster1clavicle_bone_placer_R_upvecHandle.rz"
		;
connectAttr "cluster1clavicle_bone_placer_R_upvecHandle.ro" "cluster1clavicle_bone_placer_R_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1clavicle_bone_placer_R_upvecHandle.pim" "cluster1clavicle_bone_placer_R_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1clavicle_bone_placer_R_upvecHandle.rp" "cluster1clavicle_bone_placer_R_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1clavicle_bone_placer_R_upvecHandle.rpt" "cluster1clavicle_bone_placer_R_upvecHandle_parentConstraint1.crt"
		;
connectAttr "clavicle_bone_placer_R.t" "cluster1clavicle_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "clavicle_bone_placer_R.rp" "cluster1clavicle_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "clavicle_bone_placer_R.rpt" "cluster1clavicle_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "clavicle_bone_placer_R.r" "cluster1clavicle_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "clavicle_bone_placer_R.ro" "cluster1clavicle_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "clavicle_bone_placer_R.s" "cluster1clavicle_bone_placer_R_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "clavicle_bone_placer_R.pm" "cluster1clavicle_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1clavicle_bone_placer_R_upvecHandle_parentConstraint1.w0" "cluster1clavicle_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2clavicle_bone_placer_R_upvecHandle_parentConstraint1.ctx" "cluster2clavicle_bone_placer_R_upvecHandle.tx"
		;
connectAttr "cluster2clavicle_bone_placer_R_upvecHandle_parentConstraint1.cty" "cluster2clavicle_bone_placer_R_upvecHandle.ty"
		;
connectAttr "cluster2clavicle_bone_placer_R_upvecHandle_parentConstraint1.ctz" "cluster2clavicle_bone_placer_R_upvecHandle.tz"
		;
connectAttr "cluster2clavicle_bone_placer_R_upvecHandle_parentConstraint1.crx" "cluster2clavicle_bone_placer_R_upvecHandle.rx"
		;
connectAttr "cluster2clavicle_bone_placer_R_upvecHandle_parentConstraint1.cry" "cluster2clavicle_bone_placer_R_upvecHandle.ry"
		;
connectAttr "cluster2clavicle_bone_placer_R_upvecHandle_parentConstraint1.crz" "cluster2clavicle_bone_placer_R_upvecHandle.rz"
		;
connectAttr "cluster2clavicle_bone_placer_R_upvecHandle.ro" "cluster2clavicle_bone_placer_R_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2clavicle_bone_placer_R_upvecHandle.pim" "cluster2clavicle_bone_placer_R_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2clavicle_bone_placer_R_upvecHandle.rp" "cluster2clavicle_bone_placer_R_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2clavicle_bone_placer_R_upvecHandle.rpt" "cluster2clavicle_bone_placer_R_upvecHandle_parentConstraint1.crt"
		;
connectAttr "clavicle_bone_placer_R_upVector.t" "cluster2clavicle_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "clavicle_bone_placer_R_upVector.rp" "cluster2clavicle_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "clavicle_bone_placer_R_upVector.rpt" "cluster2clavicle_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "clavicle_bone_placer_R_upVector.r" "cluster2clavicle_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "clavicle_bone_placer_R_upVector.ro" "cluster2clavicle_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "clavicle_bone_placer_R_upVector.s" "cluster2clavicle_bone_placer_R_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "clavicle_bone_placer_R_upVector.pm" "cluster2clavicle_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2clavicle_bone_placer_R_upvecHandle_parentConstraint1.w0" "cluster2clavicle_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2clavicle_bone_placer_R_upvec.og[0]" "clavicle_bone_placer_R_up_vec_curveShape.cr"
		;
connectAttr "clavicle_bone_placer_R_upVector_grp.pim" "clavicle_bone_placer_R_upVector_grp_aimConstraint1.cpim"
		;
connectAttr "clavicle_bone_placer_R_upVector_grp.t" "clavicle_bone_placer_R_upVector_grp_aimConstraint1.ct"
		;
connectAttr "clavicle_bone_placer_R_upVector_grp.rp" "clavicle_bone_placer_R_upVector_grp_aimConstraint1.crp"
		;
connectAttr "clavicle_bone_placer_R_upVector_grp.rpt" "clavicle_bone_placer_R_upVector_grp_aimConstraint1.crt"
		;
connectAttr "clavicle_bone_placer_R_upVector_grp.ro" "clavicle_bone_placer_R_upVector_grp_aimConstraint1.cro"
		;
connectAttr "clavicle_bone_placer_R_loc.t" "clavicle_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tt"
		;
connectAttr "clavicle_bone_placer_R_loc.rp" "clavicle_bone_placer_R_upVector_grp_aimConstraint1.tg[0].trp"
		;
connectAttr "clavicle_bone_placer_R_loc.rpt" "clavicle_bone_placer_R_upVector_grp_aimConstraint1.tg[0].trt"
		;
connectAttr "clavicle_bone_placer_R_loc.pm" "clavicle_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tpm"
		;
connectAttr "clavicle_bone_placer_R_upVector_grp_aimConstraint1.w0" "clavicle_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tw"
		;
connectAttr "legUpper_Zpos_L.o3" "legUpper_bone_placer_L_loc.t";
connectAttr "legLower_Zpos_L.o3" "legLower_bone_placer_L_loc.t";
connectAttr "foot_Zpos_L.o3" "foot_bone_placer_L_loc.t";
connectAttr "ball_Zpos_L.o3" "ball_bone_placer_L_loc.t";
connectAttr "toeTip_Zpos_L.o3" "toeTip_bone_placer_L_loc.t";
connectAttr "_L_placercluster_0Handle_pointConstraint1.ctx" "_L_placercluster_0Handle.tx"
		;
connectAttr "_L_placercluster_0Handle_pointConstraint1.cty" "_L_placercluster_0Handle.ty"
		;
connectAttr "_L_placercluster_0Handle_pointConstraint1.ctz" "_L_placercluster_0Handle.tz"
		;
connectAttr "_L_placercluster_0Handle.pim" "_L_placercluster_0Handle_pointConstraint1.cpim"
		;
connectAttr "_L_placercluster_0Handle.rp" "_L_placercluster_0Handle_pointConstraint1.crp"
		;
connectAttr "_L_placercluster_0Handle.rpt" "_L_placercluster_0Handle_pointConstraint1.crt"
		;
connectAttr "legUpper_bone_placer_L.t" "_L_placercluster_0Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "legUpper_bone_placer_L.rp" "_L_placercluster_0Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "legUpper_bone_placer_L.rpt" "_L_placercluster_0Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "legUpper_bone_placer_L.pm" "_L_placercluster_0Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "_L_placercluster_0Handle_pointConstraint1.w0" "_L_placercluster_0Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "_L_placercluster_1Handle_pointConstraint1.ctx" "_L_placercluster_1Handle.tx"
		;
connectAttr "_L_placercluster_1Handle_pointConstraint1.cty" "_L_placercluster_1Handle.ty"
		;
connectAttr "_L_placercluster_1Handle_pointConstraint1.ctz" "_L_placercluster_1Handle.tz"
		;
connectAttr "_L_placercluster_1Handle.pim" "_L_placercluster_1Handle_pointConstraint1.cpim"
		;
connectAttr "_L_placercluster_1Handle.rp" "_L_placercluster_1Handle_pointConstraint1.crp"
		;
connectAttr "_L_placercluster_1Handle.rpt" "_L_placercluster_1Handle_pointConstraint1.crt"
		;
connectAttr "legLower_bone_placer_L.t" "_L_placercluster_1Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "legLower_bone_placer_L.rp" "_L_placercluster_1Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "legLower_bone_placer_L.rpt" "_L_placercluster_1Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "legLower_bone_placer_L.pm" "_L_placercluster_1Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "_L_placercluster_1Handle_pointConstraint1.w0" "_L_placercluster_1Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "_L_placercluster_2Handle_pointConstraint1.ctx" "_L_placercluster_2Handle.tx"
		;
connectAttr "_L_placercluster_2Handle_pointConstraint1.cty" "_L_placercluster_2Handle.ty"
		;
connectAttr "_L_placercluster_2Handle_pointConstraint1.ctz" "_L_placercluster_2Handle.tz"
		;
connectAttr "_L_placercluster_2Handle.pim" "_L_placercluster_2Handle_pointConstraint1.cpim"
		;
connectAttr "_L_placercluster_2Handle.rp" "_L_placercluster_2Handle_pointConstraint1.crp"
		;
connectAttr "_L_placercluster_2Handle.rpt" "_L_placercluster_2Handle_pointConstraint1.crt"
		;
connectAttr "foot_bone_placer_L.t" "_L_placercluster_2Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "foot_bone_placer_L.rp" "_L_placercluster_2Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "foot_bone_placer_L.rpt" "_L_placercluster_2Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "foot_bone_placer_L.pm" "_L_placercluster_2Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "_L_placercluster_2Handle_pointConstraint1.w0" "_L_placercluster_2Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "_L_placercluster_3Handle_pointConstraint1.ctx" "_L_placercluster_3Handle.tx"
		;
connectAttr "_L_placercluster_3Handle_pointConstraint1.cty" "_L_placercluster_3Handle.ty"
		;
connectAttr "_L_placercluster_3Handle_pointConstraint1.ctz" "_L_placercluster_3Handle.tz"
		;
connectAttr "_L_placercluster_3Handle.pim" "_L_placercluster_3Handle_pointConstraint1.cpim"
		;
connectAttr "_L_placercluster_3Handle.rp" "_L_placercluster_3Handle_pointConstraint1.crp"
		;
connectAttr "_L_placercluster_3Handle.rpt" "_L_placercluster_3Handle_pointConstraint1.crt"
		;
connectAttr "ball_bone_placer_L.t" "_L_placercluster_3Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "ball_bone_placer_L.rp" "_L_placercluster_3Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "ball_bone_placer_L.rpt" "_L_placercluster_3Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "ball_bone_placer_L.pm" "_L_placercluster_3Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "_L_placercluster_3Handle_pointConstraint1.w0" "_L_placercluster_3Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "_L_placercluster_4Handle_pointConstraint1.ctx" "_L_placercluster_4Handle.tx"
		;
connectAttr "_L_placercluster_4Handle_pointConstraint1.cty" "_L_placercluster_4Handle.ty"
		;
connectAttr "_L_placercluster_4Handle_pointConstraint1.ctz" "_L_placercluster_4Handle.tz"
		;
connectAttr "_L_placercluster_4Handle.pim" "_L_placercluster_4Handle_pointConstraint1.cpim"
		;
connectAttr "_L_placercluster_4Handle.rp" "_L_placercluster_4Handle_pointConstraint1.crp"
		;
connectAttr "_L_placercluster_4Handle.rpt" "_L_placercluster_4Handle_pointConstraint1.crt"
		;
connectAttr "toeTip_bone_placer_L.t" "_L_placercluster_4Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "toeTip_bone_placer_L.rp" "_L_placercluster_4Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "toeTip_bone_placer_L.rpt" "_L_placercluster_4Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "toeTip_bone_placer_L.pm" "_L_placercluster_4Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "_L_placercluster_4Handle_pointConstraint1.w0" "_L_placercluster_4Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "_L_placercluster_4.og[0]" "leg_proxy_curve_leg_LShape.cr";
connectAttr "legUpper_bone_placer_L_upVector_grp_aimConstraint1.crx" "legUpper_bone_placer_L_upVector_grp.rx"
		;
connectAttr "legUpper_bone_placer_L_upVector_grp_aimConstraint1.cry" "legUpper_bone_placer_L_upVector_grp.ry"
		;
connectAttr "legUpper_bone_placer_L_upVector_grp_aimConstraint1.crz" "legUpper_bone_placer_L_upVector_grp.rz"
		;
connectAttr "cluster1legUpper_bone_placer_L_upvecHandle_parentConstraint1.ctx" "cluster1legUpper_bone_placer_L_upvecHandle.tx"
		;
connectAttr "cluster1legUpper_bone_placer_L_upvecHandle_parentConstraint1.cty" "cluster1legUpper_bone_placer_L_upvecHandle.ty"
		;
connectAttr "cluster1legUpper_bone_placer_L_upvecHandle_parentConstraint1.ctz" "cluster1legUpper_bone_placer_L_upvecHandle.tz"
		;
connectAttr "cluster1legUpper_bone_placer_L_upvecHandle_parentConstraint1.crx" "cluster1legUpper_bone_placer_L_upvecHandle.rx"
		;
connectAttr "cluster1legUpper_bone_placer_L_upvecHandle_parentConstraint1.cry" "cluster1legUpper_bone_placer_L_upvecHandle.ry"
		;
connectAttr "cluster1legUpper_bone_placer_L_upvecHandle_parentConstraint1.crz" "cluster1legUpper_bone_placer_L_upvecHandle.rz"
		;
connectAttr "cluster1legUpper_bone_placer_L_upvecHandle.ro" "cluster1legUpper_bone_placer_L_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1legUpper_bone_placer_L_upvecHandle.pim" "cluster1legUpper_bone_placer_L_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1legUpper_bone_placer_L_upvecHandle.rp" "cluster1legUpper_bone_placer_L_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1legUpper_bone_placer_L_upvecHandle.rpt" "cluster1legUpper_bone_placer_L_upvecHandle_parentConstraint1.crt"
		;
connectAttr "legUpper_bone_placer_L.t" "cluster1legUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "legUpper_bone_placer_L.rp" "cluster1legUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "legUpper_bone_placer_L.rpt" "cluster1legUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "legUpper_bone_placer_L.r" "cluster1legUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "legUpper_bone_placer_L.ro" "cluster1legUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "legUpper_bone_placer_L.s" "cluster1legUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "legUpper_bone_placer_L.pm" "cluster1legUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1legUpper_bone_placer_L_upvecHandle_parentConstraint1.w0" "cluster1legUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2legUpper_bone_placer_L_upvecHandle_parentConstraint1.ctx" "cluster2legUpper_bone_placer_L_upvecHandle.tx"
		;
connectAttr "cluster2legUpper_bone_placer_L_upvecHandle_parentConstraint1.cty" "cluster2legUpper_bone_placer_L_upvecHandle.ty"
		;
connectAttr "cluster2legUpper_bone_placer_L_upvecHandle_parentConstraint1.ctz" "cluster2legUpper_bone_placer_L_upvecHandle.tz"
		;
connectAttr "cluster2legUpper_bone_placer_L_upvecHandle_parentConstraint1.crx" "cluster2legUpper_bone_placer_L_upvecHandle.rx"
		;
connectAttr "cluster2legUpper_bone_placer_L_upvecHandle_parentConstraint1.cry" "cluster2legUpper_bone_placer_L_upvecHandle.ry"
		;
connectAttr "cluster2legUpper_bone_placer_L_upvecHandle_parentConstraint1.crz" "cluster2legUpper_bone_placer_L_upvecHandle.rz"
		;
connectAttr "cluster2legUpper_bone_placer_L_upvecHandle.ro" "cluster2legUpper_bone_placer_L_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2legUpper_bone_placer_L_upvecHandle.pim" "cluster2legUpper_bone_placer_L_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2legUpper_bone_placer_L_upvecHandle.rp" "cluster2legUpper_bone_placer_L_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2legUpper_bone_placer_L_upvecHandle.rpt" "cluster2legUpper_bone_placer_L_upvecHandle_parentConstraint1.crt"
		;
connectAttr "legUpper_bone_placer_L_upVector.t" "cluster2legUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "legUpper_bone_placer_L_upVector.rp" "cluster2legUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "legUpper_bone_placer_L_upVector.rpt" "cluster2legUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "legUpper_bone_placer_L_upVector.r" "cluster2legUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "legUpper_bone_placer_L_upVector.ro" "cluster2legUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "legUpper_bone_placer_L_upVector.s" "cluster2legUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "legUpper_bone_placer_L_upVector.pm" "cluster2legUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2legUpper_bone_placer_L_upvecHandle_parentConstraint1.w0" "cluster2legUpper_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2legUpper_bone_placer_L_upvec.og[0]" "legUpper_bone_placer_L_up_vec_curveShape.cr"
		;
connectAttr "legUpper_bone_placer_L_upVector_grp.pim" "legUpper_bone_placer_L_upVector_grp_aimConstraint1.cpim"
		;
connectAttr "legUpper_bone_placer_L_upVector_grp.t" "legUpper_bone_placer_L_upVector_grp_aimConstraint1.ct"
		;
connectAttr "legUpper_bone_placer_L_upVector_grp.rp" "legUpper_bone_placer_L_upVector_grp_aimConstraint1.crp"
		;
connectAttr "legUpper_bone_placer_L_upVector_grp.rpt" "legUpper_bone_placer_L_upVector_grp_aimConstraint1.crt"
		;
connectAttr "legUpper_bone_placer_L_upVector_grp.ro" "legUpper_bone_placer_L_upVector_grp_aimConstraint1.cro"
		;
connectAttr "legUpper_bone_placer_L_loc.t" "legUpper_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tt"
		;
connectAttr "legUpper_bone_placer_L_loc.rp" "legUpper_bone_placer_L_upVector_grp_aimConstraint1.tg[0].trp"
		;
connectAttr "legUpper_bone_placer_L_loc.rpt" "legUpper_bone_placer_L_upVector_grp_aimConstraint1.tg[0].trt"
		;
connectAttr "legUpper_bone_placer_L_loc.pm" "legUpper_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tpm"
		;
connectAttr "legUpper_bone_placer_L_upVector_grp_aimConstraint1.w0" "legUpper_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tw"
		;
connectAttr "legLower_bone_placer_L_upVector_grp_aimConstraint1.crx" "legLower_bone_placer_L_upVector_grp.rx"
		;
connectAttr "legLower_bone_placer_L_upVector_grp_aimConstraint1.cry" "legLower_bone_placer_L_upVector_grp.ry"
		;
connectAttr "legLower_bone_placer_L_upVector_grp_aimConstraint1.crz" "legLower_bone_placer_L_upVector_grp.rz"
		;
connectAttr "cluster1legLower_bone_placer_L_upvecHandle_parentConstraint1.ctx" "cluster1legLower_bone_placer_L_upvecHandle.tx"
		;
connectAttr "cluster1legLower_bone_placer_L_upvecHandle_parentConstraint1.cty" "cluster1legLower_bone_placer_L_upvecHandle.ty"
		;
connectAttr "cluster1legLower_bone_placer_L_upvecHandle_parentConstraint1.ctz" "cluster1legLower_bone_placer_L_upvecHandle.tz"
		;
connectAttr "cluster1legLower_bone_placer_L_upvecHandle_parentConstraint1.crx" "cluster1legLower_bone_placer_L_upvecHandle.rx"
		;
connectAttr "cluster1legLower_bone_placer_L_upvecHandle_parentConstraint1.cry" "cluster1legLower_bone_placer_L_upvecHandle.ry"
		;
connectAttr "cluster1legLower_bone_placer_L_upvecHandle_parentConstraint1.crz" "cluster1legLower_bone_placer_L_upvecHandle.rz"
		;
connectAttr "cluster1legLower_bone_placer_L_upvecHandle.ro" "cluster1legLower_bone_placer_L_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1legLower_bone_placer_L_upvecHandle.pim" "cluster1legLower_bone_placer_L_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1legLower_bone_placer_L_upvecHandle.rp" "cluster1legLower_bone_placer_L_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1legLower_bone_placer_L_upvecHandle.rpt" "cluster1legLower_bone_placer_L_upvecHandle_parentConstraint1.crt"
		;
connectAttr "legLower_bone_placer_L.t" "cluster1legLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "legLower_bone_placer_L.rp" "cluster1legLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "legLower_bone_placer_L.rpt" "cluster1legLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "legLower_bone_placer_L.r" "cluster1legLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "legLower_bone_placer_L.ro" "cluster1legLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "legLower_bone_placer_L.s" "cluster1legLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "legLower_bone_placer_L.pm" "cluster1legLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1legLower_bone_placer_L_upvecHandle_parentConstraint1.w0" "cluster1legLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2legLower_bone_placer_L_upvecHandle_parentConstraint1.ctx" "cluster2legLower_bone_placer_L_upvecHandle.tx"
		;
connectAttr "cluster2legLower_bone_placer_L_upvecHandle_parentConstraint1.cty" "cluster2legLower_bone_placer_L_upvecHandle.ty"
		;
connectAttr "cluster2legLower_bone_placer_L_upvecHandle_parentConstraint1.ctz" "cluster2legLower_bone_placer_L_upvecHandle.tz"
		;
connectAttr "cluster2legLower_bone_placer_L_upvecHandle_parentConstraint1.crx" "cluster2legLower_bone_placer_L_upvecHandle.rx"
		;
connectAttr "cluster2legLower_bone_placer_L_upvecHandle_parentConstraint1.cry" "cluster2legLower_bone_placer_L_upvecHandle.ry"
		;
connectAttr "cluster2legLower_bone_placer_L_upvecHandle_parentConstraint1.crz" "cluster2legLower_bone_placer_L_upvecHandle.rz"
		;
connectAttr "cluster2legLower_bone_placer_L_upvecHandle.ro" "cluster2legLower_bone_placer_L_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2legLower_bone_placer_L_upvecHandle.pim" "cluster2legLower_bone_placer_L_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2legLower_bone_placer_L_upvecHandle.rp" "cluster2legLower_bone_placer_L_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2legLower_bone_placer_L_upvecHandle.rpt" "cluster2legLower_bone_placer_L_upvecHandle_parentConstraint1.crt"
		;
connectAttr "legLower_bone_placer_L_upVector.t" "cluster2legLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "legLower_bone_placer_L_upVector.rp" "cluster2legLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "legLower_bone_placer_L_upVector.rpt" "cluster2legLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "legLower_bone_placer_L_upVector.r" "cluster2legLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "legLower_bone_placer_L_upVector.ro" "cluster2legLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "legLower_bone_placer_L_upVector.s" "cluster2legLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "legLower_bone_placer_L_upVector.pm" "cluster2legLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2legLower_bone_placer_L_upvecHandle_parentConstraint1.w0" "cluster2legLower_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2legLower_bone_placer_L_upvec.og[0]" "legLower_bone_placer_L_up_vec_curveShape.cr"
		;
connectAttr "legLower_bone_placer_L_upVector_grp.pim" "legLower_bone_placer_L_upVector_grp_aimConstraint1.cpim"
		;
connectAttr "legLower_bone_placer_L_upVector_grp.t" "legLower_bone_placer_L_upVector_grp_aimConstraint1.ct"
		;
connectAttr "legLower_bone_placer_L_upVector_grp.rp" "legLower_bone_placer_L_upVector_grp_aimConstraint1.crp"
		;
connectAttr "legLower_bone_placer_L_upVector_grp.rpt" "legLower_bone_placer_L_upVector_grp_aimConstraint1.crt"
		;
connectAttr "legLower_bone_placer_L_upVector_grp.ro" "legLower_bone_placer_L_upVector_grp_aimConstraint1.cro"
		;
connectAttr "legLower_bone_placer_L_loc.t" "legLower_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tt"
		;
connectAttr "legLower_bone_placer_L_loc.rp" "legLower_bone_placer_L_upVector_grp_aimConstraint1.tg[0].trp"
		;
connectAttr "legLower_bone_placer_L_loc.rpt" "legLower_bone_placer_L_upVector_grp_aimConstraint1.tg[0].trt"
		;
connectAttr "legLower_bone_placer_L_loc.pm" "legLower_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tpm"
		;
connectAttr "legLower_bone_placer_L_upVector_grp_aimConstraint1.w0" "legLower_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tw"
		;
connectAttr "foot_bone_placer_L_upVector_grp_aimConstraint1.crx" "foot_bone_placer_L_upVector_grp.rx"
		;
connectAttr "foot_bone_placer_L_upVector_grp_aimConstraint1.cry" "foot_bone_placer_L_upVector_grp.ry"
		;
connectAttr "foot_bone_placer_L_upVector_grp_aimConstraint1.crz" "foot_bone_placer_L_upVector_grp.rz"
		;
connectAttr "cluster1foot_bone_placer_L_upvecHandle_parentConstraint1.ctx" "cluster1foot_bone_placer_L_upvecHandle.tx"
		;
connectAttr "cluster1foot_bone_placer_L_upvecHandle_parentConstraint1.cty" "cluster1foot_bone_placer_L_upvecHandle.ty"
		;
connectAttr "cluster1foot_bone_placer_L_upvecHandle_parentConstraint1.ctz" "cluster1foot_bone_placer_L_upvecHandle.tz"
		;
connectAttr "cluster1foot_bone_placer_L_upvecHandle_parentConstraint1.crx" "cluster1foot_bone_placer_L_upvecHandle.rx"
		;
connectAttr "cluster1foot_bone_placer_L_upvecHandle_parentConstraint1.cry" "cluster1foot_bone_placer_L_upvecHandle.ry"
		;
connectAttr "cluster1foot_bone_placer_L_upvecHandle_parentConstraint1.crz" "cluster1foot_bone_placer_L_upvecHandle.rz"
		;
connectAttr "cluster1foot_bone_placer_L_upvecHandle.ro" "cluster1foot_bone_placer_L_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1foot_bone_placer_L_upvecHandle.pim" "cluster1foot_bone_placer_L_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1foot_bone_placer_L_upvecHandle.rp" "cluster1foot_bone_placer_L_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1foot_bone_placer_L_upvecHandle.rpt" "cluster1foot_bone_placer_L_upvecHandle_parentConstraint1.crt"
		;
connectAttr "foot_bone_placer_L.t" "cluster1foot_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "foot_bone_placer_L.rp" "cluster1foot_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "foot_bone_placer_L.rpt" "cluster1foot_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "foot_bone_placer_L.r" "cluster1foot_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "foot_bone_placer_L.ro" "cluster1foot_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "foot_bone_placer_L.s" "cluster1foot_bone_placer_L_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "foot_bone_placer_L.pm" "cluster1foot_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1foot_bone_placer_L_upvecHandle_parentConstraint1.w0" "cluster1foot_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2foot_bone_placer_L_upvecHandle_parentConstraint1.ctx" "cluster2foot_bone_placer_L_upvecHandle.tx"
		;
connectAttr "cluster2foot_bone_placer_L_upvecHandle_parentConstraint1.cty" "cluster2foot_bone_placer_L_upvecHandle.ty"
		;
connectAttr "cluster2foot_bone_placer_L_upvecHandle_parentConstraint1.ctz" "cluster2foot_bone_placer_L_upvecHandle.tz"
		;
connectAttr "cluster2foot_bone_placer_L_upvecHandle_parentConstraint1.crx" "cluster2foot_bone_placer_L_upvecHandle.rx"
		;
connectAttr "cluster2foot_bone_placer_L_upvecHandle_parentConstraint1.cry" "cluster2foot_bone_placer_L_upvecHandle.ry"
		;
connectAttr "cluster2foot_bone_placer_L_upvecHandle_parentConstraint1.crz" "cluster2foot_bone_placer_L_upvecHandle.rz"
		;
connectAttr "cluster2foot_bone_placer_L_upvecHandle.ro" "cluster2foot_bone_placer_L_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2foot_bone_placer_L_upvecHandle.pim" "cluster2foot_bone_placer_L_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2foot_bone_placer_L_upvecHandle.rp" "cluster2foot_bone_placer_L_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2foot_bone_placer_L_upvecHandle.rpt" "cluster2foot_bone_placer_L_upvecHandle_parentConstraint1.crt"
		;
connectAttr "foot_bone_placer_L_upVector.t" "cluster2foot_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "foot_bone_placer_L_upVector.rp" "cluster2foot_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "foot_bone_placer_L_upVector.rpt" "cluster2foot_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "foot_bone_placer_L_upVector.r" "cluster2foot_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "foot_bone_placer_L_upVector.ro" "cluster2foot_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "foot_bone_placer_L_upVector.s" "cluster2foot_bone_placer_L_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "foot_bone_placer_L_upVector.pm" "cluster2foot_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2foot_bone_placer_L_upvecHandle_parentConstraint1.w0" "cluster2foot_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2foot_bone_placer_L_upvec.og[0]" "foot_bone_placer_L_up_vec_curveShape.cr"
		;
connectAttr "foot_bone_placer_L_upVector_grp.pim" "foot_bone_placer_L_upVector_grp_aimConstraint1.cpim"
		;
connectAttr "foot_bone_placer_L_upVector_grp.t" "foot_bone_placer_L_upVector_grp_aimConstraint1.ct"
		;
connectAttr "foot_bone_placer_L_upVector_grp.rp" "foot_bone_placer_L_upVector_grp_aimConstraint1.crp"
		;
connectAttr "foot_bone_placer_L_upVector_grp.rpt" "foot_bone_placer_L_upVector_grp_aimConstraint1.crt"
		;
connectAttr "foot_bone_placer_L_upVector_grp.ro" "foot_bone_placer_L_upVector_grp_aimConstraint1.cro"
		;
connectAttr "foot_bone_placer_L_loc.t" "foot_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tt"
		;
connectAttr "foot_bone_placer_L_loc.rp" "foot_bone_placer_L_upVector_grp_aimConstraint1.tg[0].trp"
		;
connectAttr "foot_bone_placer_L_loc.rpt" "foot_bone_placer_L_upVector_grp_aimConstraint1.tg[0].trt"
		;
connectAttr "foot_bone_placer_L_loc.pm" "foot_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tpm"
		;
connectAttr "foot_bone_placer_L_upVector_grp_aimConstraint1.w0" "foot_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tw"
		;
connectAttr "ball_bone_placer_L_upVector_grp_aimConstraint1.crx" "ball_bone_placer_L_upVector_grp.rx"
		;
connectAttr "ball_bone_placer_L_upVector_grp_aimConstraint1.cry" "ball_bone_placer_L_upVector_grp.ry"
		;
connectAttr "ball_bone_placer_L_upVector_grp_aimConstraint1.crz" "ball_bone_placer_L_upVector_grp.rz"
		;
connectAttr "cluster1ball_bone_placer_L_upvecHandle_parentConstraint1.ctx" "cluster1ball_bone_placer_L_upvecHandle.tx"
		;
connectAttr "cluster1ball_bone_placer_L_upvecHandle_parentConstraint1.cty" "cluster1ball_bone_placer_L_upvecHandle.ty"
		;
connectAttr "cluster1ball_bone_placer_L_upvecHandle_parentConstraint1.ctz" "cluster1ball_bone_placer_L_upvecHandle.tz"
		;
connectAttr "cluster1ball_bone_placer_L_upvecHandle_parentConstraint1.crx" "cluster1ball_bone_placer_L_upvecHandle.rx"
		;
connectAttr "cluster1ball_bone_placer_L_upvecHandle_parentConstraint1.cry" "cluster1ball_bone_placer_L_upvecHandle.ry"
		;
connectAttr "cluster1ball_bone_placer_L_upvecHandle_parentConstraint1.crz" "cluster1ball_bone_placer_L_upvecHandle.rz"
		;
connectAttr "cluster1ball_bone_placer_L_upvecHandle.ro" "cluster1ball_bone_placer_L_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1ball_bone_placer_L_upvecHandle.pim" "cluster1ball_bone_placer_L_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1ball_bone_placer_L_upvecHandle.rp" "cluster1ball_bone_placer_L_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1ball_bone_placer_L_upvecHandle.rpt" "cluster1ball_bone_placer_L_upvecHandle_parentConstraint1.crt"
		;
connectAttr "ball_bone_placer_L.t" "cluster1ball_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "ball_bone_placer_L.rp" "cluster1ball_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "ball_bone_placer_L.rpt" "cluster1ball_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "ball_bone_placer_L.r" "cluster1ball_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "ball_bone_placer_L.ro" "cluster1ball_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "ball_bone_placer_L.s" "cluster1ball_bone_placer_L_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "ball_bone_placer_L.pm" "cluster1ball_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1ball_bone_placer_L_upvecHandle_parentConstraint1.w0" "cluster1ball_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2ball_bone_placer_L_upvecHandle_parentConstraint1.ctx" "cluster2ball_bone_placer_L_upvecHandle.tx"
		;
connectAttr "cluster2ball_bone_placer_L_upvecHandle_parentConstraint1.cty" "cluster2ball_bone_placer_L_upvecHandle.ty"
		;
connectAttr "cluster2ball_bone_placer_L_upvecHandle_parentConstraint1.ctz" "cluster2ball_bone_placer_L_upvecHandle.tz"
		;
connectAttr "cluster2ball_bone_placer_L_upvecHandle_parentConstraint1.crx" "cluster2ball_bone_placer_L_upvecHandle.rx"
		;
connectAttr "cluster2ball_bone_placer_L_upvecHandle_parentConstraint1.cry" "cluster2ball_bone_placer_L_upvecHandle.ry"
		;
connectAttr "cluster2ball_bone_placer_L_upvecHandle_parentConstraint1.crz" "cluster2ball_bone_placer_L_upvecHandle.rz"
		;
connectAttr "cluster2ball_bone_placer_L_upvecHandle.ro" "cluster2ball_bone_placer_L_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2ball_bone_placer_L_upvecHandle.pim" "cluster2ball_bone_placer_L_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2ball_bone_placer_L_upvecHandle.rp" "cluster2ball_bone_placer_L_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2ball_bone_placer_L_upvecHandle.rpt" "cluster2ball_bone_placer_L_upvecHandle_parentConstraint1.crt"
		;
connectAttr "ball_bone_placer_L_upVector.t" "cluster2ball_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "ball_bone_placer_L_upVector.rp" "cluster2ball_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "ball_bone_placer_L_upVector.rpt" "cluster2ball_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "ball_bone_placer_L_upVector.r" "cluster2ball_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "ball_bone_placer_L_upVector.ro" "cluster2ball_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "ball_bone_placer_L_upVector.s" "cluster2ball_bone_placer_L_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "ball_bone_placer_L_upVector.pm" "cluster2ball_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2ball_bone_placer_L_upvecHandle_parentConstraint1.w0" "cluster2ball_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2ball_bone_placer_L_upvec.og[0]" "ball_bone_placer_L_up_vec_curveShape.cr"
		;
connectAttr "ball_bone_placer_L_upVector_grp.pim" "ball_bone_placer_L_upVector_grp_aimConstraint1.cpim"
		;
connectAttr "ball_bone_placer_L_upVector_grp.t" "ball_bone_placer_L_upVector_grp_aimConstraint1.ct"
		;
connectAttr "ball_bone_placer_L_upVector_grp.rp" "ball_bone_placer_L_upVector_grp_aimConstraint1.crp"
		;
connectAttr "ball_bone_placer_L_upVector_grp.rpt" "ball_bone_placer_L_upVector_grp_aimConstraint1.crt"
		;
connectAttr "ball_bone_placer_L_upVector_grp.ro" "ball_bone_placer_L_upVector_grp_aimConstraint1.cro"
		;
connectAttr "ball_bone_placer_L_loc.t" "ball_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tt"
		;
connectAttr "ball_bone_placer_L_loc.rp" "ball_bone_placer_L_upVector_grp_aimConstraint1.tg[0].trp"
		;
connectAttr "ball_bone_placer_L_loc.rpt" "ball_bone_placer_L_upVector_grp_aimConstraint1.tg[0].trt"
		;
connectAttr "ball_bone_placer_L_loc.pm" "ball_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tpm"
		;
connectAttr "ball_bone_placer_L_upVector_grp_aimConstraint1.w0" "ball_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tw"
		;
connectAttr "foot_bone_placer_L_decomposeMatrix.otz" "foot_Zpos_loc_L.tz";
connectAttr "toeTip_bone_placer_L_upVector_grp_aimConstraint1.crx" "toeTip_bone_placer_L_upVector_grp.rx"
		;
connectAttr "toeTip_bone_placer_L_upVector_grp_aimConstraint1.cry" "toeTip_bone_placer_L_upVector_grp.ry"
		;
connectAttr "toeTip_bone_placer_L_upVector_grp_aimConstraint1.crz" "toeTip_bone_placer_L_upVector_grp.rz"
		;
connectAttr "cluster1toeTip_bone_placer_L_upvecHandle_parentConstraint1.ctx" "cluster1toeTip_bone_placer_L_upvecHandle.tx"
		;
connectAttr "cluster1toeTip_bone_placer_L_upvecHandle_parentConstraint1.cty" "cluster1toeTip_bone_placer_L_upvecHandle.ty"
		;
connectAttr "cluster1toeTip_bone_placer_L_upvecHandle_parentConstraint1.ctz" "cluster1toeTip_bone_placer_L_upvecHandle.tz"
		;
connectAttr "cluster1toeTip_bone_placer_L_upvecHandle_parentConstraint1.crx" "cluster1toeTip_bone_placer_L_upvecHandle.rx"
		;
connectAttr "cluster1toeTip_bone_placer_L_upvecHandle_parentConstraint1.cry" "cluster1toeTip_bone_placer_L_upvecHandle.ry"
		;
connectAttr "cluster1toeTip_bone_placer_L_upvecHandle_parentConstraint1.crz" "cluster1toeTip_bone_placer_L_upvecHandle.rz"
		;
connectAttr "cluster1toeTip_bone_placer_L_upvecHandle.ro" "cluster1toeTip_bone_placer_L_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1toeTip_bone_placer_L_upvecHandle.pim" "cluster1toeTip_bone_placer_L_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1toeTip_bone_placer_L_upvecHandle.rp" "cluster1toeTip_bone_placer_L_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1toeTip_bone_placer_L_upvecHandle.rpt" "cluster1toeTip_bone_placer_L_upvecHandle_parentConstraint1.crt"
		;
connectAttr "toeTip_bone_placer_L.t" "cluster1toeTip_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "toeTip_bone_placer_L.rp" "cluster1toeTip_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "toeTip_bone_placer_L.rpt" "cluster1toeTip_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "toeTip_bone_placer_L.r" "cluster1toeTip_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "toeTip_bone_placer_L.ro" "cluster1toeTip_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "toeTip_bone_placer_L.s" "cluster1toeTip_bone_placer_L_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "toeTip_bone_placer_L.pm" "cluster1toeTip_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1toeTip_bone_placer_L_upvecHandle_parentConstraint1.w0" "cluster1toeTip_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2toeTip_bone_placer_L_upvecHandle_parentConstraint1.ctx" "cluster2toeTip_bone_placer_L_upvecHandle.tx"
		;
connectAttr "cluster2toeTip_bone_placer_L_upvecHandle_parentConstraint1.cty" "cluster2toeTip_bone_placer_L_upvecHandle.ty"
		;
connectAttr "cluster2toeTip_bone_placer_L_upvecHandle_parentConstraint1.ctz" "cluster2toeTip_bone_placer_L_upvecHandle.tz"
		;
connectAttr "cluster2toeTip_bone_placer_L_upvecHandle_parentConstraint1.crx" "cluster2toeTip_bone_placer_L_upvecHandle.rx"
		;
connectAttr "cluster2toeTip_bone_placer_L_upvecHandle_parentConstraint1.cry" "cluster2toeTip_bone_placer_L_upvecHandle.ry"
		;
connectAttr "cluster2toeTip_bone_placer_L_upvecHandle_parentConstraint1.crz" "cluster2toeTip_bone_placer_L_upvecHandle.rz"
		;
connectAttr "cluster2toeTip_bone_placer_L_upvecHandle.ro" "cluster2toeTip_bone_placer_L_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2toeTip_bone_placer_L_upvecHandle.pim" "cluster2toeTip_bone_placer_L_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2toeTip_bone_placer_L_upvecHandle.rp" "cluster2toeTip_bone_placer_L_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2toeTip_bone_placer_L_upvecHandle.rpt" "cluster2toeTip_bone_placer_L_upvecHandle_parentConstraint1.crt"
		;
connectAttr "toeTip_bone_placer_L_upVector.t" "cluster2toeTip_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "toeTip_bone_placer_L_upVector.rp" "cluster2toeTip_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "toeTip_bone_placer_L_upVector.rpt" "cluster2toeTip_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "toeTip_bone_placer_L_upVector.r" "cluster2toeTip_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "toeTip_bone_placer_L_upVector.ro" "cluster2toeTip_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "toeTip_bone_placer_L_upVector.s" "cluster2toeTip_bone_placer_L_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "toeTip_bone_placer_L_upVector.pm" "cluster2toeTip_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2toeTip_bone_placer_L_upvecHandle_parentConstraint1.w0" "cluster2toeTip_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2toeTip_bone_placer_L_upvec.og[0]" "toeTip_bone_placer_L_up_vec_curveShape.cr"
		;
connectAttr "toeTip_bone_placer_L_upVector_grp.pim" "toeTip_bone_placer_L_upVector_grp_aimConstraint1.cpim"
		;
connectAttr "toeTip_bone_placer_L_upVector_grp.t" "toeTip_bone_placer_L_upVector_grp_aimConstraint1.ct"
		;
connectAttr "toeTip_bone_placer_L_upVector_grp.rp" "toeTip_bone_placer_L_upVector_grp_aimConstraint1.crp"
		;
connectAttr "toeTip_bone_placer_L_upVector_grp.rpt" "toeTip_bone_placer_L_upVector_grp_aimConstraint1.crt"
		;
connectAttr "toeTip_bone_placer_L_upVector_grp.ro" "toeTip_bone_placer_L_upVector_grp_aimConstraint1.cro"
		;
connectAttr "toeTip_bone_placer_L_loc.t" "toeTip_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tt"
		;
connectAttr "toeTip_bone_placer_L_loc.rp" "toeTip_bone_placer_L_upVector_grp_aimConstraint1.tg[0].trp"
		;
connectAttr "toeTip_bone_placer_L_loc.rpt" "toeTip_bone_placer_L_upVector_grp_aimConstraint1.tg[0].trt"
		;
connectAttr "toeTip_bone_placer_L_loc.pm" "toeTip_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tpm"
		;
connectAttr "toeTip_bone_placer_L_upVector_grp_aimConstraint1.w0" "toeTip_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tw"
		;
connectAttr "legUpper_Zpos_R.o3" "legUpper_bone_placer_R_loc.t";
connectAttr "legLower_Zpos_R.o3" "legLower_bone_placer_R_loc.t";
connectAttr "foot_Zpos_R.o3" "foot_bone_placer_R_loc.t";
connectAttr "ball_Zpos_R.o3" "ball_bone_placer_R_loc.t";
connectAttr "toeTip_Zpos_R.o3" "toeTip_bone_placer_R_loc.t";
connectAttr "_R_placercluster_0Handle_pointConstraint1.ctx" "_R_placercluster_0Handle.tx"
		;
connectAttr "_R_placercluster_0Handle_pointConstraint1.cty" "_R_placercluster_0Handle.ty"
		;
connectAttr "_R_placercluster_0Handle_pointConstraint1.ctz" "_R_placercluster_0Handle.tz"
		;
connectAttr "_R_placercluster_0Handle.pim" "_R_placercluster_0Handle_pointConstraint1.cpim"
		;
connectAttr "_R_placercluster_0Handle.rp" "_R_placercluster_0Handle_pointConstraint1.crp"
		;
connectAttr "_R_placercluster_0Handle.rpt" "_R_placercluster_0Handle_pointConstraint1.crt"
		;
connectAttr "legUpper_bone_placer_R.t" "_R_placercluster_0Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "legUpper_bone_placer_R.rp" "_R_placercluster_0Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "legUpper_bone_placer_R.rpt" "_R_placercluster_0Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "legUpper_bone_placer_R.pm" "_R_placercluster_0Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "_R_placercluster_0Handle_pointConstraint1.w0" "_R_placercluster_0Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "_R_placercluster_1Handle_pointConstraint1.ctx" "_R_placercluster_1Handle.tx"
		;
connectAttr "_R_placercluster_1Handle_pointConstraint1.cty" "_R_placercluster_1Handle.ty"
		;
connectAttr "_R_placercluster_1Handle_pointConstraint1.ctz" "_R_placercluster_1Handle.tz"
		;
connectAttr "_R_placercluster_1Handle.pim" "_R_placercluster_1Handle_pointConstraint1.cpim"
		;
connectAttr "_R_placercluster_1Handle.rp" "_R_placercluster_1Handle_pointConstraint1.crp"
		;
connectAttr "_R_placercluster_1Handle.rpt" "_R_placercluster_1Handle_pointConstraint1.crt"
		;
connectAttr "legLower_bone_placer_R.t" "_R_placercluster_1Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "legLower_bone_placer_R.rp" "_R_placercluster_1Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "legLower_bone_placer_R.rpt" "_R_placercluster_1Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "legLower_bone_placer_R.pm" "_R_placercluster_1Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "_R_placercluster_1Handle_pointConstraint1.w0" "_R_placercluster_1Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "_R_placercluster_2Handle_pointConstraint1.ctx" "_R_placercluster_2Handle.tx"
		;
connectAttr "_R_placercluster_2Handle_pointConstraint1.cty" "_R_placercluster_2Handle.ty"
		;
connectAttr "_R_placercluster_2Handle_pointConstraint1.ctz" "_R_placercluster_2Handle.tz"
		;
connectAttr "_R_placercluster_2Handle.pim" "_R_placercluster_2Handle_pointConstraint1.cpim"
		;
connectAttr "_R_placercluster_2Handle.rp" "_R_placercluster_2Handle_pointConstraint1.crp"
		;
connectAttr "_R_placercluster_2Handle.rpt" "_R_placercluster_2Handle_pointConstraint1.crt"
		;
connectAttr "foot_bone_placer_R.t" "_R_placercluster_2Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "foot_bone_placer_R.rp" "_R_placercluster_2Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "foot_bone_placer_R.rpt" "_R_placercluster_2Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "foot_bone_placer_R.pm" "_R_placercluster_2Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "_R_placercluster_2Handle_pointConstraint1.w0" "_R_placercluster_2Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "_R_placercluster_3Handle_pointConstraint1.ctx" "_R_placercluster_3Handle.tx"
		;
connectAttr "_R_placercluster_3Handle_pointConstraint1.cty" "_R_placercluster_3Handle.ty"
		;
connectAttr "_R_placercluster_3Handle_pointConstraint1.ctz" "_R_placercluster_3Handle.tz"
		;
connectAttr "_R_placercluster_3Handle.pim" "_R_placercluster_3Handle_pointConstraint1.cpim"
		;
connectAttr "_R_placercluster_3Handle.rp" "_R_placercluster_3Handle_pointConstraint1.crp"
		;
connectAttr "_R_placercluster_3Handle.rpt" "_R_placercluster_3Handle_pointConstraint1.crt"
		;
connectAttr "ball_bone_placer_R.t" "_R_placercluster_3Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "ball_bone_placer_R.rp" "_R_placercluster_3Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "ball_bone_placer_R.rpt" "_R_placercluster_3Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "ball_bone_placer_R.pm" "_R_placercluster_3Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "_R_placercluster_3Handle_pointConstraint1.w0" "_R_placercluster_3Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "_R_placercluster_4Handle_pointConstraint1.ctx" "_R_placercluster_4Handle.tx"
		;
connectAttr "_R_placercluster_4Handle_pointConstraint1.cty" "_R_placercluster_4Handle.ty"
		;
connectAttr "_R_placercluster_4Handle_pointConstraint1.ctz" "_R_placercluster_4Handle.tz"
		;
connectAttr "_R_placercluster_4Handle.pim" "_R_placercluster_4Handle_pointConstraint1.cpim"
		;
connectAttr "_R_placercluster_4Handle.rp" "_R_placercluster_4Handle_pointConstraint1.crp"
		;
connectAttr "_R_placercluster_4Handle.rpt" "_R_placercluster_4Handle_pointConstraint1.crt"
		;
connectAttr "toeTip_bone_placer_R.t" "_R_placercluster_4Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "toeTip_bone_placer_R.rp" "_R_placercluster_4Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "toeTip_bone_placer_R.rpt" "_R_placercluster_4Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "toeTip_bone_placer_R.pm" "_R_placercluster_4Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "_R_placercluster_4Handle_pointConstraint1.w0" "_R_placercluster_4Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "_R_placercluster_4.og[0]" "leg_proxy_curve_leg_RShape.cr";
connectAttr "legUpper_bone_placer_R_upVector_grp_aimConstraint1.crx" "legUpper_bone_placer_R_upVector_grp.rx"
		;
connectAttr "legUpper_bone_placer_R_upVector_grp_aimConstraint1.cry" "legUpper_bone_placer_R_upVector_grp.ry"
		;
connectAttr "legUpper_bone_placer_R_upVector_grp_aimConstraint1.crz" "legUpper_bone_placer_R_upVector_grp.rz"
		;
connectAttr "cluster1legUpper_bone_placer_R_upvecHandle_parentConstraint1.ctx" "cluster1legUpper_bone_placer_R_upvecHandle.tx"
		;
connectAttr "cluster1legUpper_bone_placer_R_upvecHandle_parentConstraint1.cty" "cluster1legUpper_bone_placer_R_upvecHandle.ty"
		;
connectAttr "cluster1legUpper_bone_placer_R_upvecHandle_parentConstraint1.ctz" "cluster1legUpper_bone_placer_R_upvecHandle.tz"
		;
connectAttr "cluster1legUpper_bone_placer_R_upvecHandle_parentConstraint1.crx" "cluster1legUpper_bone_placer_R_upvecHandle.rx"
		;
connectAttr "cluster1legUpper_bone_placer_R_upvecHandle_parentConstraint1.cry" "cluster1legUpper_bone_placer_R_upvecHandle.ry"
		;
connectAttr "cluster1legUpper_bone_placer_R_upvecHandle_parentConstraint1.crz" "cluster1legUpper_bone_placer_R_upvecHandle.rz"
		;
connectAttr "cluster1legUpper_bone_placer_R_upvecHandle.ro" "cluster1legUpper_bone_placer_R_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1legUpper_bone_placer_R_upvecHandle.pim" "cluster1legUpper_bone_placer_R_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1legUpper_bone_placer_R_upvecHandle.rp" "cluster1legUpper_bone_placer_R_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1legUpper_bone_placer_R_upvecHandle.rpt" "cluster1legUpper_bone_placer_R_upvecHandle_parentConstraint1.crt"
		;
connectAttr "legUpper_bone_placer_R.t" "cluster1legUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "legUpper_bone_placer_R.rp" "cluster1legUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "legUpper_bone_placer_R.rpt" "cluster1legUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "legUpper_bone_placer_R.r" "cluster1legUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "legUpper_bone_placer_R.ro" "cluster1legUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "legUpper_bone_placer_R.s" "cluster1legUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "legUpper_bone_placer_R.pm" "cluster1legUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1legUpper_bone_placer_R_upvecHandle_parentConstraint1.w0" "cluster1legUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2legUpper_bone_placer_R_upvecHandle_parentConstraint1.ctx" "cluster2legUpper_bone_placer_R_upvecHandle.tx"
		;
connectAttr "cluster2legUpper_bone_placer_R_upvecHandle_parentConstraint1.cty" "cluster2legUpper_bone_placer_R_upvecHandle.ty"
		;
connectAttr "cluster2legUpper_bone_placer_R_upvecHandle_parentConstraint1.ctz" "cluster2legUpper_bone_placer_R_upvecHandle.tz"
		;
connectAttr "cluster2legUpper_bone_placer_R_upvecHandle_parentConstraint1.crx" "cluster2legUpper_bone_placer_R_upvecHandle.rx"
		;
connectAttr "cluster2legUpper_bone_placer_R_upvecHandle_parentConstraint1.cry" "cluster2legUpper_bone_placer_R_upvecHandle.ry"
		;
connectAttr "cluster2legUpper_bone_placer_R_upvecHandle_parentConstraint1.crz" "cluster2legUpper_bone_placer_R_upvecHandle.rz"
		;
connectAttr "cluster2legUpper_bone_placer_R_upvecHandle.ro" "cluster2legUpper_bone_placer_R_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2legUpper_bone_placer_R_upvecHandle.pim" "cluster2legUpper_bone_placer_R_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2legUpper_bone_placer_R_upvecHandle.rp" "cluster2legUpper_bone_placer_R_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2legUpper_bone_placer_R_upvecHandle.rpt" "cluster2legUpper_bone_placer_R_upvecHandle_parentConstraint1.crt"
		;
connectAttr "legUpper_bone_placer_R_upVector.t" "cluster2legUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "legUpper_bone_placer_R_upVector.rp" "cluster2legUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "legUpper_bone_placer_R_upVector.rpt" "cluster2legUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "legUpper_bone_placer_R_upVector.r" "cluster2legUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "legUpper_bone_placer_R_upVector.ro" "cluster2legUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "legUpper_bone_placer_R_upVector.s" "cluster2legUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "legUpper_bone_placer_R_upVector.pm" "cluster2legUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2legUpper_bone_placer_R_upvecHandle_parentConstraint1.w0" "cluster2legUpper_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2legUpper_bone_placer_R_upvec.og[0]" "legUpper_bone_placer_R_up_vec_curveShape.cr"
		;
connectAttr "legUpper_bone_placer_R_upVector_grp.pim" "legUpper_bone_placer_R_upVector_grp_aimConstraint1.cpim"
		;
connectAttr "legUpper_bone_placer_R_upVector_grp.t" "legUpper_bone_placer_R_upVector_grp_aimConstraint1.ct"
		;
connectAttr "legUpper_bone_placer_R_upVector_grp.rp" "legUpper_bone_placer_R_upVector_grp_aimConstraint1.crp"
		;
connectAttr "legUpper_bone_placer_R_upVector_grp.rpt" "legUpper_bone_placer_R_upVector_grp_aimConstraint1.crt"
		;
connectAttr "legUpper_bone_placer_R_upVector_grp.ro" "legUpper_bone_placer_R_upVector_grp_aimConstraint1.cro"
		;
connectAttr "legUpper_bone_placer_R_loc.t" "legUpper_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tt"
		;
connectAttr "legUpper_bone_placer_R_loc.rp" "legUpper_bone_placer_R_upVector_grp_aimConstraint1.tg[0].trp"
		;
connectAttr "legUpper_bone_placer_R_loc.rpt" "legUpper_bone_placer_R_upVector_grp_aimConstraint1.tg[0].trt"
		;
connectAttr "legUpper_bone_placer_R_loc.pm" "legUpper_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tpm"
		;
connectAttr "legUpper_bone_placer_R_upVector_grp_aimConstraint1.w0" "legUpper_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tw"
		;
connectAttr "legLower_bone_placer_R_upVector_grp_aimConstraint1.crx" "legLower_bone_placer_R_upVector_grp.rx"
		;
connectAttr "legLower_bone_placer_R_upVector_grp_aimConstraint1.cry" "legLower_bone_placer_R_upVector_grp.ry"
		;
connectAttr "legLower_bone_placer_R_upVector_grp_aimConstraint1.crz" "legLower_bone_placer_R_upVector_grp.rz"
		;
connectAttr "cluster1legLower_bone_placer_R_upvecHandle_parentConstraint1.ctx" "cluster1legLower_bone_placer_R_upvecHandle.tx"
		;
connectAttr "cluster1legLower_bone_placer_R_upvecHandle_parentConstraint1.cty" "cluster1legLower_bone_placer_R_upvecHandle.ty"
		;
connectAttr "cluster1legLower_bone_placer_R_upvecHandle_parentConstraint1.ctz" "cluster1legLower_bone_placer_R_upvecHandle.tz"
		;
connectAttr "cluster1legLower_bone_placer_R_upvecHandle_parentConstraint1.crx" "cluster1legLower_bone_placer_R_upvecHandle.rx"
		;
connectAttr "cluster1legLower_bone_placer_R_upvecHandle_parentConstraint1.cry" "cluster1legLower_bone_placer_R_upvecHandle.ry"
		;
connectAttr "cluster1legLower_bone_placer_R_upvecHandle_parentConstraint1.crz" "cluster1legLower_bone_placer_R_upvecHandle.rz"
		;
connectAttr "cluster1legLower_bone_placer_R_upvecHandle.ro" "cluster1legLower_bone_placer_R_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1legLower_bone_placer_R_upvecHandle.pim" "cluster1legLower_bone_placer_R_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1legLower_bone_placer_R_upvecHandle.rp" "cluster1legLower_bone_placer_R_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1legLower_bone_placer_R_upvecHandle.rpt" "cluster1legLower_bone_placer_R_upvecHandle_parentConstraint1.crt"
		;
connectAttr "legLower_bone_placer_R.t" "cluster1legLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "legLower_bone_placer_R.rp" "cluster1legLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "legLower_bone_placer_R.rpt" "cluster1legLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "legLower_bone_placer_R.r" "cluster1legLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "legLower_bone_placer_R.ro" "cluster1legLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "legLower_bone_placer_R.s" "cluster1legLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "legLower_bone_placer_R.pm" "cluster1legLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1legLower_bone_placer_R_upvecHandle_parentConstraint1.w0" "cluster1legLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2legLower_bone_placer_R_upvecHandle_parentConstraint1.ctx" "cluster2legLower_bone_placer_R_upvecHandle.tx"
		;
connectAttr "cluster2legLower_bone_placer_R_upvecHandle_parentConstraint1.cty" "cluster2legLower_bone_placer_R_upvecHandle.ty"
		;
connectAttr "cluster2legLower_bone_placer_R_upvecHandle_parentConstraint1.ctz" "cluster2legLower_bone_placer_R_upvecHandle.tz"
		;
connectAttr "cluster2legLower_bone_placer_R_upvecHandle_parentConstraint1.crx" "cluster2legLower_bone_placer_R_upvecHandle.rx"
		;
connectAttr "cluster2legLower_bone_placer_R_upvecHandle_parentConstraint1.cry" "cluster2legLower_bone_placer_R_upvecHandle.ry"
		;
connectAttr "cluster2legLower_bone_placer_R_upvecHandle_parentConstraint1.crz" "cluster2legLower_bone_placer_R_upvecHandle.rz"
		;
connectAttr "cluster2legLower_bone_placer_R_upvecHandle.ro" "cluster2legLower_bone_placer_R_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2legLower_bone_placer_R_upvecHandle.pim" "cluster2legLower_bone_placer_R_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2legLower_bone_placer_R_upvecHandle.rp" "cluster2legLower_bone_placer_R_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2legLower_bone_placer_R_upvecHandle.rpt" "cluster2legLower_bone_placer_R_upvecHandle_parentConstraint1.crt"
		;
connectAttr "legLower_bone_placer_R_upVector.t" "cluster2legLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "legLower_bone_placer_R_upVector.rp" "cluster2legLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "legLower_bone_placer_R_upVector.rpt" "cluster2legLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "legLower_bone_placer_R_upVector.r" "cluster2legLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "legLower_bone_placer_R_upVector.ro" "cluster2legLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "legLower_bone_placer_R_upVector.s" "cluster2legLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "legLower_bone_placer_R_upVector.pm" "cluster2legLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2legLower_bone_placer_R_upvecHandle_parentConstraint1.w0" "cluster2legLower_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2legLower_bone_placer_R_upvec.og[0]" "legLower_bone_placer_R_up_vec_curveShape.cr"
		;
connectAttr "legLower_bone_placer_R_upVector_grp.pim" "legLower_bone_placer_R_upVector_grp_aimConstraint1.cpim"
		;
connectAttr "legLower_bone_placer_R_upVector_grp.t" "legLower_bone_placer_R_upVector_grp_aimConstraint1.ct"
		;
connectAttr "legLower_bone_placer_R_upVector_grp.rp" "legLower_bone_placer_R_upVector_grp_aimConstraint1.crp"
		;
connectAttr "legLower_bone_placer_R_upVector_grp.rpt" "legLower_bone_placer_R_upVector_grp_aimConstraint1.crt"
		;
connectAttr "legLower_bone_placer_R_upVector_grp.ro" "legLower_bone_placer_R_upVector_grp_aimConstraint1.cro"
		;
connectAttr "legLower_bone_placer_R_loc.t" "legLower_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tt"
		;
connectAttr "legLower_bone_placer_R_loc.rp" "legLower_bone_placer_R_upVector_grp_aimConstraint1.tg[0].trp"
		;
connectAttr "legLower_bone_placer_R_loc.rpt" "legLower_bone_placer_R_upVector_grp_aimConstraint1.tg[0].trt"
		;
connectAttr "legLower_bone_placer_R_loc.pm" "legLower_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tpm"
		;
connectAttr "legLower_bone_placer_R_upVector_grp_aimConstraint1.w0" "legLower_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tw"
		;
connectAttr "foot_bone_placer_R_upVector_grp_aimConstraint1.crx" "foot_bone_placer_R_upVector_grp.rx"
		;
connectAttr "foot_bone_placer_R_upVector_grp_aimConstraint1.cry" "foot_bone_placer_R_upVector_grp.ry"
		;
connectAttr "foot_bone_placer_R_upVector_grp_aimConstraint1.crz" "foot_bone_placer_R_upVector_grp.rz"
		;
connectAttr "cluster1foot_bone_placer_R_upvecHandle_parentConstraint1.ctx" "cluster1foot_bone_placer_R_upvecHandle.tx"
		;
connectAttr "cluster1foot_bone_placer_R_upvecHandle_parentConstraint1.cty" "cluster1foot_bone_placer_R_upvecHandle.ty"
		;
connectAttr "cluster1foot_bone_placer_R_upvecHandle_parentConstraint1.ctz" "cluster1foot_bone_placer_R_upvecHandle.tz"
		;
connectAttr "cluster1foot_bone_placer_R_upvecHandle_parentConstraint1.crx" "cluster1foot_bone_placer_R_upvecHandle.rx"
		;
connectAttr "cluster1foot_bone_placer_R_upvecHandle_parentConstraint1.cry" "cluster1foot_bone_placer_R_upvecHandle.ry"
		;
connectAttr "cluster1foot_bone_placer_R_upvecHandle_parentConstraint1.crz" "cluster1foot_bone_placer_R_upvecHandle.rz"
		;
connectAttr "cluster1foot_bone_placer_R_upvecHandle.ro" "cluster1foot_bone_placer_R_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1foot_bone_placer_R_upvecHandle.pim" "cluster1foot_bone_placer_R_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1foot_bone_placer_R_upvecHandle.rp" "cluster1foot_bone_placer_R_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1foot_bone_placer_R_upvecHandle.rpt" "cluster1foot_bone_placer_R_upvecHandle_parentConstraint1.crt"
		;
connectAttr "foot_bone_placer_R.t" "cluster1foot_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "foot_bone_placer_R.rp" "cluster1foot_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "foot_bone_placer_R.rpt" "cluster1foot_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "foot_bone_placer_R.r" "cluster1foot_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "foot_bone_placer_R.ro" "cluster1foot_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "foot_bone_placer_R.s" "cluster1foot_bone_placer_R_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "foot_bone_placer_R.pm" "cluster1foot_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1foot_bone_placer_R_upvecHandle_parentConstraint1.w0" "cluster1foot_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2foot_bone_placer_R_upvecHandle_parentConstraint1.ctx" "cluster2foot_bone_placer_R_upvecHandle.tx"
		;
connectAttr "cluster2foot_bone_placer_R_upvecHandle_parentConstraint1.cty" "cluster2foot_bone_placer_R_upvecHandle.ty"
		;
connectAttr "cluster2foot_bone_placer_R_upvecHandle_parentConstraint1.ctz" "cluster2foot_bone_placer_R_upvecHandle.tz"
		;
connectAttr "cluster2foot_bone_placer_R_upvecHandle_parentConstraint1.crx" "cluster2foot_bone_placer_R_upvecHandle.rx"
		;
connectAttr "cluster2foot_bone_placer_R_upvecHandle_parentConstraint1.cry" "cluster2foot_bone_placer_R_upvecHandle.ry"
		;
connectAttr "cluster2foot_bone_placer_R_upvecHandle_parentConstraint1.crz" "cluster2foot_bone_placer_R_upvecHandle.rz"
		;
connectAttr "cluster2foot_bone_placer_R_upvecHandle.ro" "cluster2foot_bone_placer_R_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2foot_bone_placer_R_upvecHandle.pim" "cluster2foot_bone_placer_R_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2foot_bone_placer_R_upvecHandle.rp" "cluster2foot_bone_placer_R_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2foot_bone_placer_R_upvecHandle.rpt" "cluster2foot_bone_placer_R_upvecHandle_parentConstraint1.crt"
		;
connectAttr "foot_bone_placer_R_upVector.t" "cluster2foot_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "foot_bone_placer_R_upVector.rp" "cluster2foot_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "foot_bone_placer_R_upVector.rpt" "cluster2foot_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "foot_bone_placer_R_upVector.r" "cluster2foot_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "foot_bone_placer_R_upVector.ro" "cluster2foot_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "foot_bone_placer_R_upVector.s" "cluster2foot_bone_placer_R_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "foot_bone_placer_R_upVector.pm" "cluster2foot_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2foot_bone_placer_R_upvecHandle_parentConstraint1.w0" "cluster2foot_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2foot_bone_placer_R_upvec.og[0]" "foot_bone_placer_R_up_vec_curveShape.cr"
		;
connectAttr "foot_bone_placer_R_upVector_grp.pim" "foot_bone_placer_R_upVector_grp_aimConstraint1.cpim"
		;
connectAttr "foot_bone_placer_R_upVector_grp.t" "foot_bone_placer_R_upVector_grp_aimConstraint1.ct"
		;
connectAttr "foot_bone_placer_R_upVector_grp.rp" "foot_bone_placer_R_upVector_grp_aimConstraint1.crp"
		;
connectAttr "foot_bone_placer_R_upVector_grp.rpt" "foot_bone_placer_R_upVector_grp_aimConstraint1.crt"
		;
connectAttr "foot_bone_placer_R_upVector_grp.ro" "foot_bone_placer_R_upVector_grp_aimConstraint1.cro"
		;
connectAttr "foot_bone_placer_R_loc.t" "foot_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tt"
		;
connectAttr "foot_bone_placer_R_loc.rp" "foot_bone_placer_R_upVector_grp_aimConstraint1.tg[0].trp"
		;
connectAttr "foot_bone_placer_R_loc.rpt" "foot_bone_placer_R_upVector_grp_aimConstraint1.tg[0].trt"
		;
connectAttr "foot_bone_placer_R_loc.pm" "foot_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tpm"
		;
connectAttr "foot_bone_placer_R_upVector_grp_aimConstraint1.w0" "foot_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tw"
		;
connectAttr "ball_bone_placer_R_upVector_grp_aimConstraint1.crx" "ball_bone_placer_R_upVector_grp.rx"
		;
connectAttr "ball_bone_placer_R_upVector_grp_aimConstraint1.cry" "ball_bone_placer_R_upVector_grp.ry"
		;
connectAttr "ball_bone_placer_R_upVector_grp_aimConstraint1.crz" "ball_bone_placer_R_upVector_grp.rz"
		;
connectAttr "cluster1ball_bone_placer_R_upvecHandle_parentConstraint1.ctx" "cluster1ball_bone_placer_R_upvecHandle.tx"
		;
connectAttr "cluster1ball_bone_placer_R_upvecHandle_parentConstraint1.cty" "cluster1ball_bone_placer_R_upvecHandle.ty"
		;
connectAttr "cluster1ball_bone_placer_R_upvecHandle_parentConstraint1.ctz" "cluster1ball_bone_placer_R_upvecHandle.tz"
		;
connectAttr "cluster1ball_bone_placer_R_upvecHandle_parentConstraint1.crx" "cluster1ball_bone_placer_R_upvecHandle.rx"
		;
connectAttr "cluster1ball_bone_placer_R_upvecHandle_parentConstraint1.cry" "cluster1ball_bone_placer_R_upvecHandle.ry"
		;
connectAttr "cluster1ball_bone_placer_R_upvecHandle_parentConstraint1.crz" "cluster1ball_bone_placer_R_upvecHandle.rz"
		;
connectAttr "cluster1ball_bone_placer_R_upvecHandle.ro" "cluster1ball_bone_placer_R_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1ball_bone_placer_R_upvecHandle.pim" "cluster1ball_bone_placer_R_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1ball_bone_placer_R_upvecHandle.rp" "cluster1ball_bone_placer_R_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1ball_bone_placer_R_upvecHandle.rpt" "cluster1ball_bone_placer_R_upvecHandle_parentConstraint1.crt"
		;
connectAttr "ball_bone_placer_R.t" "cluster1ball_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "ball_bone_placer_R.rp" "cluster1ball_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "ball_bone_placer_R.rpt" "cluster1ball_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "ball_bone_placer_R.r" "cluster1ball_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "ball_bone_placer_R.ro" "cluster1ball_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "ball_bone_placer_R.s" "cluster1ball_bone_placer_R_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "ball_bone_placer_R.pm" "cluster1ball_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1ball_bone_placer_R_upvecHandle_parentConstraint1.w0" "cluster1ball_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2ball_bone_placer_R_upvecHandle_parentConstraint1.ctx" "cluster2ball_bone_placer_R_upvecHandle.tx"
		;
connectAttr "cluster2ball_bone_placer_R_upvecHandle_parentConstraint1.cty" "cluster2ball_bone_placer_R_upvecHandle.ty"
		;
connectAttr "cluster2ball_bone_placer_R_upvecHandle_parentConstraint1.ctz" "cluster2ball_bone_placer_R_upvecHandle.tz"
		;
connectAttr "cluster2ball_bone_placer_R_upvecHandle_parentConstraint1.crx" "cluster2ball_bone_placer_R_upvecHandle.rx"
		;
connectAttr "cluster2ball_bone_placer_R_upvecHandle_parentConstraint1.cry" "cluster2ball_bone_placer_R_upvecHandle.ry"
		;
connectAttr "cluster2ball_bone_placer_R_upvecHandle_parentConstraint1.crz" "cluster2ball_bone_placer_R_upvecHandle.rz"
		;
connectAttr "cluster2ball_bone_placer_R_upvecHandle.ro" "cluster2ball_bone_placer_R_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2ball_bone_placer_R_upvecHandle.pim" "cluster2ball_bone_placer_R_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2ball_bone_placer_R_upvecHandle.rp" "cluster2ball_bone_placer_R_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2ball_bone_placer_R_upvecHandle.rpt" "cluster2ball_bone_placer_R_upvecHandle_parentConstraint1.crt"
		;
connectAttr "ball_bone_placer_R_upVector.t" "cluster2ball_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "ball_bone_placer_R_upVector.rp" "cluster2ball_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "ball_bone_placer_R_upVector.rpt" "cluster2ball_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "ball_bone_placer_R_upVector.r" "cluster2ball_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "ball_bone_placer_R_upVector.ro" "cluster2ball_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "ball_bone_placer_R_upVector.s" "cluster2ball_bone_placer_R_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "ball_bone_placer_R_upVector.pm" "cluster2ball_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2ball_bone_placer_R_upvecHandle_parentConstraint1.w0" "cluster2ball_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2ball_bone_placer_R_upvec.og[0]" "ball_bone_placer_R_up_vec_curveShape.cr"
		;
connectAttr "ball_bone_placer_R_upVector_grp.pim" "ball_bone_placer_R_upVector_grp_aimConstraint1.cpim"
		;
connectAttr "ball_bone_placer_R_upVector_grp.t" "ball_bone_placer_R_upVector_grp_aimConstraint1.ct"
		;
connectAttr "ball_bone_placer_R_upVector_grp.rp" "ball_bone_placer_R_upVector_grp_aimConstraint1.crp"
		;
connectAttr "ball_bone_placer_R_upVector_grp.rpt" "ball_bone_placer_R_upVector_grp_aimConstraint1.crt"
		;
connectAttr "ball_bone_placer_R_upVector_grp.ro" "ball_bone_placer_R_upVector_grp_aimConstraint1.cro"
		;
connectAttr "ball_bone_placer_R_loc.t" "ball_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tt"
		;
connectAttr "ball_bone_placer_R_loc.rp" "ball_bone_placer_R_upVector_grp_aimConstraint1.tg[0].trp"
		;
connectAttr "ball_bone_placer_R_loc.rpt" "ball_bone_placer_R_upVector_grp_aimConstraint1.tg[0].trt"
		;
connectAttr "ball_bone_placer_R_loc.pm" "ball_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tpm"
		;
connectAttr "ball_bone_placer_R_upVector_grp_aimConstraint1.w0" "ball_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tw"
		;
connectAttr "foot_bone_placer_R_decomposeMatrix.otz" "foot_Zpos_loc_R.tz";
connectAttr "toeTip_bone_placer_R_upVector_grp_aimConstraint1.crx" "toeTip_bone_placer_R_upVector_grp.rx"
		;
connectAttr "toeTip_bone_placer_R_upVector_grp_aimConstraint1.cry" "toeTip_bone_placer_R_upVector_grp.ry"
		;
connectAttr "toeTip_bone_placer_R_upVector_grp_aimConstraint1.crz" "toeTip_bone_placer_R_upVector_grp.rz"
		;
connectAttr "cluster1toeTip_bone_placer_R_upvecHandle_parentConstraint1.ctx" "cluster1toeTip_bone_placer_R_upvecHandle.tx"
		;
connectAttr "cluster1toeTip_bone_placer_R_upvecHandle_parentConstraint1.cty" "cluster1toeTip_bone_placer_R_upvecHandle.ty"
		;
connectAttr "cluster1toeTip_bone_placer_R_upvecHandle_parentConstraint1.ctz" "cluster1toeTip_bone_placer_R_upvecHandle.tz"
		;
connectAttr "cluster1toeTip_bone_placer_R_upvecHandle_parentConstraint1.crx" "cluster1toeTip_bone_placer_R_upvecHandle.rx"
		;
connectAttr "cluster1toeTip_bone_placer_R_upvecHandle_parentConstraint1.cry" "cluster1toeTip_bone_placer_R_upvecHandle.ry"
		;
connectAttr "cluster1toeTip_bone_placer_R_upvecHandle_parentConstraint1.crz" "cluster1toeTip_bone_placer_R_upvecHandle.rz"
		;
connectAttr "cluster1toeTip_bone_placer_R_upvecHandle.ro" "cluster1toeTip_bone_placer_R_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1toeTip_bone_placer_R_upvecHandle.pim" "cluster1toeTip_bone_placer_R_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1toeTip_bone_placer_R_upvecHandle.rp" "cluster1toeTip_bone_placer_R_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1toeTip_bone_placer_R_upvecHandle.rpt" "cluster1toeTip_bone_placer_R_upvecHandle_parentConstraint1.crt"
		;
connectAttr "toeTip_bone_placer_R.t" "cluster1toeTip_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "toeTip_bone_placer_R.rp" "cluster1toeTip_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "toeTip_bone_placer_R.rpt" "cluster1toeTip_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "toeTip_bone_placer_R.r" "cluster1toeTip_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "toeTip_bone_placer_R.ro" "cluster1toeTip_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "toeTip_bone_placer_R.s" "cluster1toeTip_bone_placer_R_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "toeTip_bone_placer_R.pm" "cluster1toeTip_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1toeTip_bone_placer_R_upvecHandle_parentConstraint1.w0" "cluster1toeTip_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2toeTip_bone_placer_R_upvecHandle_parentConstraint1.ctx" "cluster2toeTip_bone_placer_R_upvecHandle.tx"
		;
connectAttr "cluster2toeTip_bone_placer_R_upvecHandle_parentConstraint1.cty" "cluster2toeTip_bone_placer_R_upvecHandle.ty"
		;
connectAttr "cluster2toeTip_bone_placer_R_upvecHandle_parentConstraint1.ctz" "cluster2toeTip_bone_placer_R_upvecHandle.tz"
		;
connectAttr "cluster2toeTip_bone_placer_R_upvecHandle_parentConstraint1.crx" "cluster2toeTip_bone_placer_R_upvecHandle.rx"
		;
connectAttr "cluster2toeTip_bone_placer_R_upvecHandle_parentConstraint1.cry" "cluster2toeTip_bone_placer_R_upvecHandle.ry"
		;
connectAttr "cluster2toeTip_bone_placer_R_upvecHandle_parentConstraint1.crz" "cluster2toeTip_bone_placer_R_upvecHandle.rz"
		;
connectAttr "cluster2toeTip_bone_placer_R_upvecHandle.ro" "cluster2toeTip_bone_placer_R_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2toeTip_bone_placer_R_upvecHandle.pim" "cluster2toeTip_bone_placer_R_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2toeTip_bone_placer_R_upvecHandle.rp" "cluster2toeTip_bone_placer_R_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2toeTip_bone_placer_R_upvecHandle.rpt" "cluster2toeTip_bone_placer_R_upvecHandle_parentConstraint1.crt"
		;
connectAttr "toeTip_bone_placer_R_upVector.t" "cluster2toeTip_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "toeTip_bone_placer_R_upVector.rp" "cluster2toeTip_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "toeTip_bone_placer_R_upVector.rpt" "cluster2toeTip_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "toeTip_bone_placer_R_upVector.r" "cluster2toeTip_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "toeTip_bone_placer_R_upVector.ro" "cluster2toeTip_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "toeTip_bone_placer_R_upVector.s" "cluster2toeTip_bone_placer_R_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "toeTip_bone_placer_R_upVector.pm" "cluster2toeTip_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2toeTip_bone_placer_R_upvecHandle_parentConstraint1.w0" "cluster2toeTip_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2toeTip_bone_placer_R_upvec.og[0]" "toeTip_bone_placer_R_up_vec_curveShape.cr"
		;
connectAttr "toeTip_bone_placer_R_upVector_grp.pim" "toeTip_bone_placer_R_upVector_grp_aimConstraint1.cpim"
		;
connectAttr "toeTip_bone_placer_R_upVector_grp.t" "toeTip_bone_placer_R_upVector_grp_aimConstraint1.ct"
		;
connectAttr "toeTip_bone_placer_R_upVector_grp.rp" "toeTip_bone_placer_R_upVector_grp_aimConstraint1.crp"
		;
connectAttr "toeTip_bone_placer_R_upVector_grp.rpt" "toeTip_bone_placer_R_upVector_grp_aimConstraint1.crt"
		;
connectAttr "toeTip_bone_placer_R_upVector_grp.ro" "toeTip_bone_placer_R_upVector_grp_aimConstraint1.cro"
		;
connectAttr "toeTip_bone_placer_R_loc.t" "toeTip_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tt"
		;
connectAttr "toeTip_bone_placer_R_loc.rp" "toeTip_bone_placer_R_upVector_grp_aimConstraint1.tg[0].trp"
		;
connectAttr "toeTip_bone_placer_R_loc.rpt" "toeTip_bone_placer_R_upVector_grp_aimConstraint1.tg[0].trt"
		;
connectAttr "toeTip_bone_placer_R_loc.pm" "toeTip_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tpm"
		;
connectAttr "toeTip_bone_placer_R_upVector_grp_aimConstraint1.w0" "toeTip_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tw"
		;
connectAttr "spine_placercluster_0Handle_pointConstraint1.ctx" "spine_placercluster_0Handle.tx"
		;
connectAttr "spine_placercluster_0Handle_pointConstraint1.cty" "spine_placercluster_0Handle.ty"
		;
connectAttr "spine_placercluster_0Handle_pointConstraint1.ctz" "spine_placercluster_0Handle.tz"
		;
connectAttr "spine_placercluster_0Handle.pim" "spine_placercluster_0Handle_pointConstraint1.cpim"
		;
connectAttr "spine_placercluster_0Handle.rp" "spine_placercluster_0Handle_pointConstraint1.crp"
		;
connectAttr "spine_placercluster_0Handle.rpt" "spine_placercluster_0Handle_pointConstraint1.crt"
		;
connectAttr "root_bone_placer.t" "spine_placercluster_0Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "root_bone_placer.rp" "spine_placercluster_0Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "root_bone_placer.rpt" "spine_placercluster_0Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "root_bone_placer.pm" "spine_placercluster_0Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "spine_placercluster_0Handle_pointConstraint1.w0" "spine_placercluster_0Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "spine_placercluster_1Handle_pointConstraint1.ctx" "spine_placercluster_1Handle.tx"
		;
connectAttr "spine_placercluster_1Handle_pointConstraint1.cty" "spine_placercluster_1Handle.ty"
		;
connectAttr "spine_placercluster_1Handle_pointConstraint1.ctz" "spine_placercluster_1Handle.tz"
		;
connectAttr "spine_placercluster_1Handle.pim" "spine_placercluster_1Handle_pointConstraint1.cpim"
		;
connectAttr "spine_placercluster_1Handle.rp" "spine_placercluster_1Handle_pointConstraint1.crp"
		;
connectAttr "spine_placercluster_1Handle.rpt" "spine_placercluster_1Handle_pointConstraint1.crt"
		;
connectAttr "pelvis_bone_placer.t" "spine_placercluster_1Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "pelvis_bone_placer.rp" "spine_placercluster_1Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "pelvis_bone_placer.rpt" "spine_placercluster_1Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "pelvis_bone_placer.pm" "spine_placercluster_1Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "spine_placercluster_1Handle_pointConstraint1.w0" "spine_placercluster_1Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "spine_placercluster_2Handle_pointConstraint1.ctx" "spine_placercluster_2Handle.tx"
		;
connectAttr "spine_placercluster_2Handle_pointConstraint1.cty" "spine_placercluster_2Handle.ty"
		;
connectAttr "spine_placercluster_2Handle_pointConstraint1.ctz" "spine_placercluster_2Handle.tz"
		;
connectAttr "spine_placercluster_2Handle.pim" "spine_placercluster_2Handle_pointConstraint1.cpim"
		;
connectAttr "spine_placercluster_2Handle.rp" "spine_placercluster_2Handle_pointConstraint1.crp"
		;
connectAttr "spine_placercluster_2Handle.rpt" "spine_placercluster_2Handle_pointConstraint1.crt"
		;
connectAttr "spine1_bone_placer.t" "spine_placercluster_2Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "spine1_bone_placer.rp" "spine_placercluster_2Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "spine1_bone_placer.rpt" "spine_placercluster_2Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "spine1_bone_placer.pm" "spine_placercluster_2Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "spine_placercluster_2Handle_pointConstraint1.w0" "spine_placercluster_2Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "spine_placercluster_3Handle_pointConstraint1.ctx" "spine_placercluster_3Handle.tx"
		;
connectAttr "spine_placercluster_3Handle_pointConstraint1.cty" "spine_placercluster_3Handle.ty"
		;
connectAttr "spine_placercluster_3Handle_pointConstraint1.ctz" "spine_placercluster_3Handle.tz"
		;
connectAttr "spine_placercluster_3Handle.pim" "spine_placercluster_3Handle_pointConstraint1.cpim"
		;
connectAttr "spine_placercluster_3Handle.rp" "spine_placercluster_3Handle_pointConstraint1.crp"
		;
connectAttr "spine_placercluster_3Handle.rpt" "spine_placercluster_3Handle_pointConstraint1.crt"
		;
connectAttr "spine2_bone_placer.t" "spine_placercluster_3Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "spine2_bone_placer.rp" "spine_placercluster_3Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "spine2_bone_placer.rpt" "spine_placercluster_3Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "spine2_bone_placer.pm" "spine_placercluster_3Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "spine_placercluster_3Handle_pointConstraint1.w0" "spine_placercluster_3Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "spine_placercluster_4Handle_pointConstraint1.ctx" "spine_placercluster_4Handle.tx"
		;
connectAttr "spine_placercluster_4Handle_pointConstraint1.cty" "spine_placercluster_4Handle.ty"
		;
connectAttr "spine_placercluster_4Handle_pointConstraint1.ctz" "spine_placercluster_4Handle.tz"
		;
connectAttr "spine_placercluster_4Handle.pim" "spine_placercluster_4Handle_pointConstraint1.cpim"
		;
connectAttr "spine_placercluster_4Handle.rp" "spine_placercluster_4Handle_pointConstraint1.crp"
		;
connectAttr "spine_placercluster_4Handle.rpt" "spine_placercluster_4Handle_pointConstraint1.crt"
		;
connectAttr "spine3_bone_placer.t" "spine_placercluster_4Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "spine3_bone_placer.rp" "spine_placercluster_4Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "spine3_bone_placer.rpt" "spine_placercluster_4Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "spine3_bone_placer.pm" "spine_placercluster_4Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "spine_placercluster_4Handle_pointConstraint1.w0" "spine_placercluster_4Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "spine_placercluster_5Handle_pointConstraint1.ctx" "spine_placercluster_5Handle.tx"
		;
connectAttr "spine_placercluster_5Handle_pointConstraint1.cty" "spine_placercluster_5Handle.ty"
		;
connectAttr "spine_placercluster_5Handle_pointConstraint1.ctz" "spine_placercluster_5Handle.tz"
		;
connectAttr "spine_placercluster_5Handle.pim" "spine_placercluster_5Handle_pointConstraint1.cpim"
		;
connectAttr "spine_placercluster_5Handle.rp" "spine_placercluster_5Handle_pointConstraint1.crp"
		;
connectAttr "spine_placercluster_5Handle.rpt" "spine_placercluster_5Handle_pointConstraint1.crt"
		;
connectAttr "spine4_bone_placer.t" "spine_placercluster_5Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "spine4_bone_placer.rp" "spine_placercluster_5Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "spine4_bone_placer.rpt" "spine_placercluster_5Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "spine4_bone_placer.pm" "spine_placercluster_5Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "spine_placercluster_5Handle_pointConstraint1.w0" "spine_placercluster_5Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "spine_placercluster_6Handle_pointConstraint1.ctx" "spine_placercluster_6Handle.tx"
		;
connectAttr "spine_placercluster_6Handle_pointConstraint1.cty" "spine_placercluster_6Handle.ty"
		;
connectAttr "spine_placercluster_6Handle_pointConstraint1.ctz" "spine_placercluster_6Handle.tz"
		;
connectAttr "spine_placercluster_6Handle.pim" "spine_placercluster_6Handle_pointConstraint1.cpim"
		;
connectAttr "spine_placercluster_6Handle.rp" "spine_placercluster_6Handle_pointConstraint1.crp"
		;
connectAttr "spine_placercluster_6Handle.rpt" "spine_placercluster_6Handle_pointConstraint1.crt"
		;
connectAttr "spine5_bone_placer.t" "spine_placercluster_6Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "spine5_bone_placer.rp" "spine_placercluster_6Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "spine5_bone_placer.rpt" "spine_placercluster_6Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "spine5_bone_placer.pm" "spine_placercluster_6Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "spine_placercluster_6Handle_pointConstraint1.w0" "spine_placercluster_6Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "spine_placercluster_7Handle_pointConstraint1.ctx" "spine_placercluster_7Handle.tx"
		;
connectAttr "spine_placercluster_7Handle_pointConstraint1.cty" "spine_placercluster_7Handle.ty"
		;
connectAttr "spine_placercluster_7Handle_pointConstraint1.ctz" "spine_placercluster_7Handle.tz"
		;
connectAttr "spine_placercluster_7Handle.pim" "spine_placercluster_7Handle_pointConstraint1.cpim"
		;
connectAttr "spine_placercluster_7Handle.rp" "spine_placercluster_7Handle_pointConstraint1.crp"
		;
connectAttr "spine_placercluster_7Handle.rpt" "spine_placercluster_7Handle_pointConstraint1.crt"
		;
connectAttr "neck1_bone_placer.t" "spine_placercluster_7Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "neck1_bone_placer.rp" "spine_placercluster_7Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "neck1_bone_placer.rpt" "spine_placercluster_7Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "neck1_bone_placer.pm" "spine_placercluster_7Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "spine_placercluster_7Handle_pointConstraint1.w0" "spine_placercluster_7Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "spine_placercluster_8Handle_pointConstraint1.ctx" "spine_placercluster_8Handle.tx"
		;
connectAttr "spine_placercluster_8Handle_pointConstraint1.cty" "spine_placercluster_8Handle.ty"
		;
connectAttr "spine_placercluster_8Handle_pointConstraint1.ctz" "spine_placercluster_8Handle.tz"
		;
connectAttr "spine_placercluster_8Handle.pim" "spine_placercluster_8Handle_pointConstraint1.cpim"
		;
connectAttr "spine_placercluster_8Handle.rp" "spine_placercluster_8Handle_pointConstraint1.crp"
		;
connectAttr "spine_placercluster_8Handle.rpt" "spine_placercluster_8Handle_pointConstraint1.crt"
		;
connectAttr "neck2_bone_placer.t" "spine_placercluster_8Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "neck2_bone_placer.rp" "spine_placercluster_8Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "neck2_bone_placer.rpt" "spine_placercluster_8Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "neck2_bone_placer.pm" "spine_placercluster_8Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "spine_placercluster_8Handle_pointConstraint1.w0" "spine_placercluster_8Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "spine_placercluster_9Handle_pointConstraint1.ctx" "spine_placercluster_9Handle.tx"
		;
connectAttr "spine_placercluster_9Handle_pointConstraint1.cty" "spine_placercluster_9Handle.ty"
		;
connectAttr "spine_placercluster_9Handle_pointConstraint1.ctz" "spine_placercluster_9Handle.tz"
		;
connectAttr "spine_placercluster_9Handle.pim" "spine_placercluster_9Handle_pointConstraint1.cpim"
		;
connectAttr "spine_placercluster_9Handle.rp" "spine_placercluster_9Handle_pointConstraint1.crp"
		;
connectAttr "spine_placercluster_9Handle.rpt" "spine_placercluster_9Handle_pointConstraint1.crt"
		;
connectAttr "head_bone_placer.t" "spine_placercluster_9Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "head_bone_placer.rp" "spine_placercluster_9Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "head_bone_placer.rpt" "spine_placercluster_9Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "head_bone_placer.pm" "spine_placercluster_9Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "spine_placercluster_9Handle_pointConstraint1.w0" "spine_placercluster_9Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "cluster1root_bone_placer_upvecHandle_parentConstraint1.ctx" "cluster1root_bone_placer_upvecHandle.tx"
		;
connectAttr "cluster1root_bone_placer_upvecHandle_parentConstraint1.cty" "cluster1root_bone_placer_upvecHandle.ty"
		;
connectAttr "cluster1root_bone_placer_upvecHandle_parentConstraint1.ctz" "cluster1root_bone_placer_upvecHandle.tz"
		;
connectAttr "cluster1root_bone_placer_upvecHandle_parentConstraint1.crx" "cluster1root_bone_placer_upvecHandle.rx"
		;
connectAttr "cluster1root_bone_placer_upvecHandle_parentConstraint1.cry" "cluster1root_bone_placer_upvecHandle.ry"
		;
connectAttr "cluster1root_bone_placer_upvecHandle_parentConstraint1.crz" "cluster1root_bone_placer_upvecHandle.rz"
		;
connectAttr "cluster1root_bone_placer_upvecHandle.ro" "cluster1root_bone_placer_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1root_bone_placer_upvecHandle.pim" "cluster1root_bone_placer_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1root_bone_placer_upvecHandle.rp" "cluster1root_bone_placer_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1root_bone_placer_upvecHandle.rpt" "cluster1root_bone_placer_upvecHandle_parentConstraint1.crt"
		;
connectAttr "root_bone_placer.t" "cluster1root_bone_placer_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "root_bone_placer.rp" "cluster1root_bone_placer_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "root_bone_placer.rpt" "cluster1root_bone_placer_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "root_bone_placer.r" "cluster1root_bone_placer_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "root_bone_placer.ro" "cluster1root_bone_placer_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "root_bone_placer.s" "cluster1root_bone_placer_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "root_bone_placer.pm" "cluster1root_bone_placer_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1root_bone_placer_upvecHandle_parentConstraint1.w0" "cluster1root_bone_placer_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2root_bone_placer_upvecHandle_parentConstraint1.ctx" "cluster2root_bone_placer_upvecHandle.tx"
		;
connectAttr "cluster2root_bone_placer_upvecHandle_parentConstraint1.cty" "cluster2root_bone_placer_upvecHandle.ty"
		;
connectAttr "cluster2root_bone_placer_upvecHandle_parentConstraint1.ctz" "cluster2root_bone_placer_upvecHandle.tz"
		;
connectAttr "cluster2root_bone_placer_upvecHandle_parentConstraint1.crx" "cluster2root_bone_placer_upvecHandle.rx"
		;
connectAttr "cluster2root_bone_placer_upvecHandle_parentConstraint1.cry" "cluster2root_bone_placer_upvecHandle.ry"
		;
connectAttr "cluster2root_bone_placer_upvecHandle_parentConstraint1.crz" "cluster2root_bone_placer_upvecHandle.rz"
		;
connectAttr "cluster2root_bone_placer_upvecHandle.ro" "cluster2root_bone_placer_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2root_bone_placer_upvecHandle.pim" "cluster2root_bone_placer_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2root_bone_placer_upvecHandle.rp" "cluster2root_bone_placer_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2root_bone_placer_upvecHandle.rpt" "cluster2root_bone_placer_upvecHandle_parentConstraint1.crt"
		;
connectAttr "root_bone_placer_upVector.t" "cluster2root_bone_placer_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "root_bone_placer_upVector.rp" "cluster2root_bone_placer_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "root_bone_placer_upVector.rpt" "cluster2root_bone_placer_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "root_bone_placer_upVector.r" "cluster2root_bone_placer_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "root_bone_placer_upVector.ro" "cluster2root_bone_placer_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "root_bone_placer_upVector.s" "cluster2root_bone_placer_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "root_bone_placer_upVector.pm" "cluster2root_bone_placer_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2root_bone_placer_upvecHandle_parentConstraint1.w0" "cluster2root_bone_placer_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2root_bone_placer_upvec.og[0]" "root_bone_placer_up_vec_curveShape.cr"
		;
connectAttr "cluster1pelvis_bone_placer_upvecHandle_parentConstraint1.ctx" "cluster1pelvis_bone_placer_upvecHandle.tx"
		;
connectAttr "cluster1pelvis_bone_placer_upvecHandle_parentConstraint1.cty" "cluster1pelvis_bone_placer_upvecHandle.ty"
		;
connectAttr "cluster1pelvis_bone_placer_upvecHandle_parentConstraint1.ctz" "cluster1pelvis_bone_placer_upvecHandle.tz"
		;
connectAttr "cluster1pelvis_bone_placer_upvecHandle_parentConstraint1.crx" "cluster1pelvis_bone_placer_upvecHandle.rx"
		;
connectAttr "cluster1pelvis_bone_placer_upvecHandle_parentConstraint1.cry" "cluster1pelvis_bone_placer_upvecHandle.ry"
		;
connectAttr "cluster1pelvis_bone_placer_upvecHandle_parentConstraint1.crz" "cluster1pelvis_bone_placer_upvecHandle.rz"
		;
connectAttr "cluster1pelvis_bone_placer_upvecHandle.ro" "cluster1pelvis_bone_placer_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1pelvis_bone_placer_upvecHandle.pim" "cluster1pelvis_bone_placer_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1pelvis_bone_placer_upvecHandle.rp" "cluster1pelvis_bone_placer_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1pelvis_bone_placer_upvecHandle.rpt" "cluster1pelvis_bone_placer_upvecHandle_parentConstraint1.crt"
		;
connectAttr "pelvis_bone_placer.t" "cluster1pelvis_bone_placer_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "pelvis_bone_placer.rp" "cluster1pelvis_bone_placer_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "pelvis_bone_placer.rpt" "cluster1pelvis_bone_placer_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "pelvis_bone_placer.r" "cluster1pelvis_bone_placer_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "pelvis_bone_placer.ro" "cluster1pelvis_bone_placer_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "pelvis_bone_placer.s" "cluster1pelvis_bone_placer_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "pelvis_bone_placer.pm" "cluster1pelvis_bone_placer_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1pelvis_bone_placer_upvecHandle_parentConstraint1.w0" "cluster1pelvis_bone_placer_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2pelvis_bone_placer_upvecHandle_parentConstraint1.ctx" "cluster2pelvis_bone_placer_upvecHandle.tx"
		;
connectAttr "cluster2pelvis_bone_placer_upvecHandle_parentConstraint1.cty" "cluster2pelvis_bone_placer_upvecHandle.ty"
		;
connectAttr "cluster2pelvis_bone_placer_upvecHandle_parentConstraint1.ctz" "cluster2pelvis_bone_placer_upvecHandle.tz"
		;
connectAttr "cluster2pelvis_bone_placer_upvecHandle_parentConstraint1.crx" "cluster2pelvis_bone_placer_upvecHandle.rx"
		;
connectAttr "cluster2pelvis_bone_placer_upvecHandle_parentConstraint1.cry" "cluster2pelvis_bone_placer_upvecHandle.ry"
		;
connectAttr "cluster2pelvis_bone_placer_upvecHandle_parentConstraint1.crz" "cluster2pelvis_bone_placer_upvecHandle.rz"
		;
connectAttr "cluster2pelvis_bone_placer_upvecHandle.ro" "cluster2pelvis_bone_placer_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2pelvis_bone_placer_upvecHandle.pim" "cluster2pelvis_bone_placer_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2pelvis_bone_placer_upvecHandle.rp" "cluster2pelvis_bone_placer_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2pelvis_bone_placer_upvecHandle.rpt" "cluster2pelvis_bone_placer_upvecHandle_parentConstraint1.crt"
		;
connectAttr "pelvis_bone_placer_upVector.t" "cluster2pelvis_bone_placer_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "pelvis_bone_placer_upVector.rp" "cluster2pelvis_bone_placer_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "pelvis_bone_placer_upVector.rpt" "cluster2pelvis_bone_placer_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "pelvis_bone_placer_upVector.r" "cluster2pelvis_bone_placer_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "pelvis_bone_placer_upVector.ro" "cluster2pelvis_bone_placer_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "pelvis_bone_placer_upVector.s" "cluster2pelvis_bone_placer_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "pelvis_bone_placer_upVector.pm" "cluster2pelvis_bone_placer_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2pelvis_bone_placer_upvecHandle_parentConstraint1.w0" "cluster2pelvis_bone_placer_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2pelvis_bone_placer_upvec.og[0]" "pelvis_bone_placer_up_vec_curveShape.cr"
		;
connectAttr "cluster1spine1_bone_placer_upvecHandle_parentConstraint1.ctx" "cluster1spine1_bone_placer_upvecHandle.tx"
		;
connectAttr "cluster1spine1_bone_placer_upvecHandle_parentConstraint1.cty" "cluster1spine1_bone_placer_upvecHandle.ty"
		;
connectAttr "cluster1spine1_bone_placer_upvecHandle_parentConstraint1.ctz" "cluster1spine1_bone_placer_upvecHandle.tz"
		;
connectAttr "cluster1spine1_bone_placer_upvecHandle_parentConstraint1.crx" "cluster1spine1_bone_placer_upvecHandle.rx"
		;
connectAttr "cluster1spine1_bone_placer_upvecHandle_parentConstraint1.cry" "cluster1spine1_bone_placer_upvecHandle.ry"
		;
connectAttr "cluster1spine1_bone_placer_upvecHandle_parentConstraint1.crz" "cluster1spine1_bone_placer_upvecHandle.rz"
		;
connectAttr "cluster1spine1_bone_placer_upvecHandle.ro" "cluster1spine1_bone_placer_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1spine1_bone_placer_upvecHandle.pim" "cluster1spine1_bone_placer_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1spine1_bone_placer_upvecHandle.rp" "cluster1spine1_bone_placer_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1spine1_bone_placer_upvecHandle.rpt" "cluster1spine1_bone_placer_upvecHandle_parentConstraint1.crt"
		;
connectAttr "spine1_bone_placer.t" "cluster1spine1_bone_placer_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "spine1_bone_placer.rp" "cluster1spine1_bone_placer_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "spine1_bone_placer.rpt" "cluster1spine1_bone_placer_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "spine1_bone_placer.r" "cluster1spine1_bone_placer_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "spine1_bone_placer.ro" "cluster1spine1_bone_placer_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "spine1_bone_placer.s" "cluster1spine1_bone_placer_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "spine1_bone_placer.pm" "cluster1spine1_bone_placer_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1spine1_bone_placer_upvecHandle_parentConstraint1.w0" "cluster1spine1_bone_placer_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2spine1_bone_placer_upvecHandle_parentConstraint1.ctx" "cluster2spine1_bone_placer_upvecHandle.tx"
		;
connectAttr "cluster2spine1_bone_placer_upvecHandle_parentConstraint1.cty" "cluster2spine1_bone_placer_upvecHandle.ty"
		;
connectAttr "cluster2spine1_bone_placer_upvecHandle_parentConstraint1.ctz" "cluster2spine1_bone_placer_upvecHandle.tz"
		;
connectAttr "cluster2spine1_bone_placer_upvecHandle_parentConstraint1.crx" "cluster2spine1_bone_placer_upvecHandle.rx"
		;
connectAttr "cluster2spine1_bone_placer_upvecHandle_parentConstraint1.cry" "cluster2spine1_bone_placer_upvecHandle.ry"
		;
connectAttr "cluster2spine1_bone_placer_upvecHandle_parentConstraint1.crz" "cluster2spine1_bone_placer_upvecHandle.rz"
		;
connectAttr "cluster2spine1_bone_placer_upvecHandle.ro" "cluster2spine1_bone_placer_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2spine1_bone_placer_upvecHandle.pim" "cluster2spine1_bone_placer_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2spine1_bone_placer_upvecHandle.rp" "cluster2spine1_bone_placer_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2spine1_bone_placer_upvecHandle.rpt" "cluster2spine1_bone_placer_upvecHandle_parentConstraint1.crt"
		;
connectAttr "spine1_bone_placer_upVector.t" "cluster2spine1_bone_placer_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "spine1_bone_placer_upVector.rp" "cluster2spine1_bone_placer_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "spine1_bone_placer_upVector.rpt" "cluster2spine1_bone_placer_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "spine1_bone_placer_upVector.r" "cluster2spine1_bone_placer_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "spine1_bone_placer_upVector.ro" "cluster2spine1_bone_placer_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "spine1_bone_placer_upVector.s" "cluster2spine1_bone_placer_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "spine1_bone_placer_upVector.pm" "cluster2spine1_bone_placer_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2spine1_bone_placer_upvecHandle_parentConstraint1.w0" "cluster2spine1_bone_placer_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2spine1_bone_placer_upvec.og[0]" "spine1_bone_placer_up_vec_curveShape.cr"
		;
connectAttr "cluster1spine2_bone_placer_upvecHandle_parentConstraint1.ctx" "cluster1spine2_bone_placer_upvecHandle.tx"
		;
connectAttr "cluster1spine2_bone_placer_upvecHandle_parentConstraint1.cty" "cluster1spine2_bone_placer_upvecHandle.ty"
		;
connectAttr "cluster1spine2_bone_placer_upvecHandle_parentConstraint1.ctz" "cluster1spine2_bone_placer_upvecHandle.tz"
		;
connectAttr "cluster1spine2_bone_placer_upvecHandle_parentConstraint1.crx" "cluster1spine2_bone_placer_upvecHandle.rx"
		;
connectAttr "cluster1spine2_bone_placer_upvecHandle_parentConstraint1.cry" "cluster1spine2_bone_placer_upvecHandle.ry"
		;
connectAttr "cluster1spine2_bone_placer_upvecHandle_parentConstraint1.crz" "cluster1spine2_bone_placer_upvecHandle.rz"
		;
connectAttr "cluster1spine2_bone_placer_upvecHandle.ro" "cluster1spine2_bone_placer_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1spine2_bone_placer_upvecHandle.pim" "cluster1spine2_bone_placer_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1spine2_bone_placer_upvecHandle.rp" "cluster1spine2_bone_placer_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1spine2_bone_placer_upvecHandle.rpt" "cluster1spine2_bone_placer_upvecHandle_parentConstraint1.crt"
		;
connectAttr "spine2_bone_placer.t" "cluster1spine2_bone_placer_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "spine2_bone_placer.rp" "cluster1spine2_bone_placer_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "spine2_bone_placer.rpt" "cluster1spine2_bone_placer_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "spine2_bone_placer.r" "cluster1spine2_bone_placer_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "spine2_bone_placer.ro" "cluster1spine2_bone_placer_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "spine2_bone_placer.s" "cluster1spine2_bone_placer_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "spine2_bone_placer.pm" "cluster1spine2_bone_placer_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1spine2_bone_placer_upvecHandle_parentConstraint1.w0" "cluster1spine2_bone_placer_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2spine2_bone_placer_upvecHandle_parentConstraint1.ctx" "cluster2spine2_bone_placer_upvecHandle.tx"
		;
connectAttr "cluster2spine2_bone_placer_upvecHandle_parentConstraint1.cty" "cluster2spine2_bone_placer_upvecHandle.ty"
		;
connectAttr "cluster2spine2_bone_placer_upvecHandle_parentConstraint1.ctz" "cluster2spine2_bone_placer_upvecHandle.tz"
		;
connectAttr "cluster2spine2_bone_placer_upvecHandle_parentConstraint1.crx" "cluster2spine2_bone_placer_upvecHandle.rx"
		;
connectAttr "cluster2spine2_bone_placer_upvecHandle_parentConstraint1.cry" "cluster2spine2_bone_placer_upvecHandle.ry"
		;
connectAttr "cluster2spine2_bone_placer_upvecHandle_parentConstraint1.crz" "cluster2spine2_bone_placer_upvecHandle.rz"
		;
connectAttr "cluster2spine2_bone_placer_upvecHandle.ro" "cluster2spine2_bone_placer_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2spine2_bone_placer_upvecHandle.pim" "cluster2spine2_bone_placer_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2spine2_bone_placer_upvecHandle.rp" "cluster2spine2_bone_placer_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2spine2_bone_placer_upvecHandle.rpt" "cluster2spine2_bone_placer_upvecHandle_parentConstraint1.crt"
		;
connectAttr "spine2_bone_placer_upVector.t" "cluster2spine2_bone_placer_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "spine2_bone_placer_upVector.rp" "cluster2spine2_bone_placer_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "spine2_bone_placer_upVector.rpt" "cluster2spine2_bone_placer_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "spine2_bone_placer_upVector.r" "cluster2spine2_bone_placer_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "spine2_bone_placer_upVector.ro" "cluster2spine2_bone_placer_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "spine2_bone_placer_upVector.s" "cluster2spine2_bone_placer_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "spine2_bone_placer_upVector.pm" "cluster2spine2_bone_placer_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2spine2_bone_placer_upvecHandle_parentConstraint1.w0" "cluster2spine2_bone_placer_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2spine2_bone_placer_upvec.og[0]" "spine2_bone_placer_up_vec_curveShape.cr"
		;
connectAttr "cluster1spine3_bone_placer_upvecHandle_parentConstraint1.ctx" "cluster1spine3_bone_placer_upvecHandle.tx"
		;
connectAttr "cluster1spine3_bone_placer_upvecHandle_parentConstraint1.cty" "cluster1spine3_bone_placer_upvecHandle.ty"
		;
connectAttr "cluster1spine3_bone_placer_upvecHandle_parentConstraint1.ctz" "cluster1spine3_bone_placer_upvecHandle.tz"
		;
connectAttr "cluster1spine3_bone_placer_upvecHandle_parentConstraint1.crx" "cluster1spine3_bone_placer_upvecHandle.rx"
		;
connectAttr "cluster1spine3_bone_placer_upvecHandle_parentConstraint1.cry" "cluster1spine3_bone_placer_upvecHandle.ry"
		;
connectAttr "cluster1spine3_bone_placer_upvecHandle_parentConstraint1.crz" "cluster1spine3_bone_placer_upvecHandle.rz"
		;
connectAttr "cluster1spine3_bone_placer_upvecHandle.ro" "cluster1spine3_bone_placer_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1spine3_bone_placer_upvecHandle.pim" "cluster1spine3_bone_placer_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1spine3_bone_placer_upvecHandle.rp" "cluster1spine3_bone_placer_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1spine3_bone_placer_upvecHandle.rpt" "cluster1spine3_bone_placer_upvecHandle_parentConstraint1.crt"
		;
connectAttr "spine3_bone_placer.t" "cluster1spine3_bone_placer_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "spine3_bone_placer.rp" "cluster1spine3_bone_placer_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "spine3_bone_placer.rpt" "cluster1spine3_bone_placer_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "spine3_bone_placer.r" "cluster1spine3_bone_placer_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "spine3_bone_placer.ro" "cluster1spine3_bone_placer_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "spine3_bone_placer.s" "cluster1spine3_bone_placer_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "spine3_bone_placer.pm" "cluster1spine3_bone_placer_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1spine3_bone_placer_upvecHandle_parentConstraint1.w0" "cluster1spine3_bone_placer_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2spine3_bone_placer_upvecHandle_parentConstraint1.ctx" "cluster2spine3_bone_placer_upvecHandle.tx"
		;
connectAttr "cluster2spine3_bone_placer_upvecHandle_parentConstraint1.cty" "cluster2spine3_bone_placer_upvecHandle.ty"
		;
connectAttr "cluster2spine3_bone_placer_upvecHandle_parentConstraint1.ctz" "cluster2spine3_bone_placer_upvecHandle.tz"
		;
connectAttr "cluster2spine3_bone_placer_upvecHandle_parentConstraint1.crx" "cluster2spine3_bone_placer_upvecHandle.rx"
		;
connectAttr "cluster2spine3_bone_placer_upvecHandle_parentConstraint1.cry" "cluster2spine3_bone_placer_upvecHandle.ry"
		;
connectAttr "cluster2spine3_bone_placer_upvecHandle_parentConstraint1.crz" "cluster2spine3_bone_placer_upvecHandle.rz"
		;
connectAttr "cluster2spine3_bone_placer_upvecHandle.ro" "cluster2spine3_bone_placer_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2spine3_bone_placer_upvecHandle.pim" "cluster2spine3_bone_placer_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2spine3_bone_placer_upvecHandle.rp" "cluster2spine3_bone_placer_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2spine3_bone_placer_upvecHandle.rpt" "cluster2spine3_bone_placer_upvecHandle_parentConstraint1.crt"
		;
connectAttr "spine3_bone_placer_upVector.t" "cluster2spine3_bone_placer_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "spine3_bone_placer_upVector.rp" "cluster2spine3_bone_placer_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "spine3_bone_placer_upVector.rpt" "cluster2spine3_bone_placer_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "spine3_bone_placer_upVector.r" "cluster2spine3_bone_placer_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "spine3_bone_placer_upVector.ro" "cluster2spine3_bone_placer_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "spine3_bone_placer_upVector.s" "cluster2spine3_bone_placer_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "spine3_bone_placer_upVector.pm" "cluster2spine3_bone_placer_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2spine3_bone_placer_upvecHandle_parentConstraint1.w0" "cluster2spine3_bone_placer_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2spine3_bone_placer_upvec.og[0]" "spine3_bone_placer_up_vec_curveShape.cr"
		;
connectAttr "cluster1spine4_bone_placer_upvecHandle_parentConstraint1.ctx" "cluster1spine4_bone_placer_upvecHandle.tx"
		;
connectAttr "cluster1spine4_bone_placer_upvecHandle_parentConstraint1.cty" "cluster1spine4_bone_placer_upvecHandle.ty"
		;
connectAttr "cluster1spine4_bone_placer_upvecHandle_parentConstraint1.ctz" "cluster1spine4_bone_placer_upvecHandle.tz"
		;
connectAttr "cluster1spine4_bone_placer_upvecHandle_parentConstraint1.crx" "cluster1spine4_bone_placer_upvecHandle.rx"
		;
connectAttr "cluster1spine4_bone_placer_upvecHandle_parentConstraint1.cry" "cluster1spine4_bone_placer_upvecHandle.ry"
		;
connectAttr "cluster1spine4_bone_placer_upvecHandle_parentConstraint1.crz" "cluster1spine4_bone_placer_upvecHandle.rz"
		;
connectAttr "cluster1spine4_bone_placer_upvecHandle.ro" "cluster1spine4_bone_placer_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1spine4_bone_placer_upvecHandle.pim" "cluster1spine4_bone_placer_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1spine4_bone_placer_upvecHandle.rp" "cluster1spine4_bone_placer_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1spine4_bone_placer_upvecHandle.rpt" "cluster1spine4_bone_placer_upvecHandle_parentConstraint1.crt"
		;
connectAttr "spine4_bone_placer.t" "cluster1spine4_bone_placer_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "spine4_bone_placer.rp" "cluster1spine4_bone_placer_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "spine4_bone_placer.rpt" "cluster1spine4_bone_placer_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "spine4_bone_placer.r" "cluster1spine4_bone_placer_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "spine4_bone_placer.ro" "cluster1spine4_bone_placer_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "spine4_bone_placer.s" "cluster1spine4_bone_placer_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "spine4_bone_placer.pm" "cluster1spine4_bone_placer_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1spine4_bone_placer_upvecHandle_parentConstraint1.w0" "cluster1spine4_bone_placer_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2spine4_bone_placer_upvecHandle_parentConstraint1.ctx" "cluster2spine4_bone_placer_upvecHandle.tx"
		;
connectAttr "cluster2spine4_bone_placer_upvecHandle_parentConstraint1.cty" "cluster2spine4_bone_placer_upvecHandle.ty"
		;
connectAttr "cluster2spine4_bone_placer_upvecHandle_parentConstraint1.ctz" "cluster2spine4_bone_placer_upvecHandle.tz"
		;
connectAttr "cluster2spine4_bone_placer_upvecHandle_parentConstraint1.crx" "cluster2spine4_bone_placer_upvecHandle.rx"
		;
connectAttr "cluster2spine4_bone_placer_upvecHandle_parentConstraint1.cry" "cluster2spine4_bone_placer_upvecHandle.ry"
		;
connectAttr "cluster2spine4_bone_placer_upvecHandle_parentConstraint1.crz" "cluster2spine4_bone_placer_upvecHandle.rz"
		;
connectAttr "cluster2spine4_bone_placer_upvecHandle.ro" "cluster2spine4_bone_placer_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2spine4_bone_placer_upvecHandle.pim" "cluster2spine4_bone_placer_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2spine4_bone_placer_upvecHandle.rp" "cluster2spine4_bone_placer_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2spine4_bone_placer_upvecHandle.rpt" "cluster2spine4_bone_placer_upvecHandle_parentConstraint1.crt"
		;
connectAttr "spine4_bone_placer_upVector.t" "cluster2spine4_bone_placer_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "spine4_bone_placer_upVector.rp" "cluster2spine4_bone_placer_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "spine4_bone_placer_upVector.rpt" "cluster2spine4_bone_placer_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "spine4_bone_placer_upVector.r" "cluster2spine4_bone_placer_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "spine4_bone_placer_upVector.ro" "cluster2spine4_bone_placer_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "spine4_bone_placer_upVector.s" "cluster2spine4_bone_placer_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "spine4_bone_placer_upVector.pm" "cluster2spine4_bone_placer_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2spine4_bone_placer_upvecHandle_parentConstraint1.w0" "cluster2spine4_bone_placer_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2spine4_bone_placer_upvec.og[0]" "spine4_bone_placer_up_vec_curveShape.cr"
		;
connectAttr "cluster1spine5_bone_placer_upvecHandle_parentConstraint1.ctx" "cluster1spine5_bone_placer_upvecHandle.tx"
		;
connectAttr "cluster1spine5_bone_placer_upvecHandle_parentConstraint1.cty" "cluster1spine5_bone_placer_upvecHandle.ty"
		;
connectAttr "cluster1spine5_bone_placer_upvecHandle_parentConstraint1.ctz" "cluster1spine5_bone_placer_upvecHandle.tz"
		;
connectAttr "cluster1spine5_bone_placer_upvecHandle_parentConstraint1.crx" "cluster1spine5_bone_placer_upvecHandle.rx"
		;
connectAttr "cluster1spine5_bone_placer_upvecHandle_parentConstraint1.cry" "cluster1spine5_bone_placer_upvecHandle.ry"
		;
connectAttr "cluster1spine5_bone_placer_upvecHandle_parentConstraint1.crz" "cluster1spine5_bone_placer_upvecHandle.rz"
		;
connectAttr "cluster1spine5_bone_placer_upvecHandle.ro" "cluster1spine5_bone_placer_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1spine5_bone_placer_upvecHandle.pim" "cluster1spine5_bone_placer_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1spine5_bone_placer_upvecHandle.rp" "cluster1spine5_bone_placer_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1spine5_bone_placer_upvecHandle.rpt" "cluster1spine5_bone_placer_upvecHandle_parentConstraint1.crt"
		;
connectAttr "spine5_bone_placer.t" "cluster1spine5_bone_placer_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "spine5_bone_placer.rp" "cluster1spine5_bone_placer_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "spine5_bone_placer.rpt" "cluster1spine5_bone_placer_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "spine5_bone_placer.r" "cluster1spine5_bone_placer_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "spine5_bone_placer.ro" "cluster1spine5_bone_placer_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "spine5_bone_placer.s" "cluster1spine5_bone_placer_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "spine5_bone_placer.pm" "cluster1spine5_bone_placer_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1spine5_bone_placer_upvecHandle_parentConstraint1.w0" "cluster1spine5_bone_placer_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2spine5_bone_placer_upvecHandle_parentConstraint1.ctx" "cluster2spine5_bone_placer_upvecHandle.tx"
		;
connectAttr "cluster2spine5_bone_placer_upvecHandle_parentConstraint1.cty" "cluster2spine5_bone_placer_upvecHandle.ty"
		;
connectAttr "cluster2spine5_bone_placer_upvecHandle_parentConstraint1.ctz" "cluster2spine5_bone_placer_upvecHandle.tz"
		;
connectAttr "cluster2spine5_bone_placer_upvecHandle_parentConstraint1.crx" "cluster2spine5_bone_placer_upvecHandle.rx"
		;
connectAttr "cluster2spine5_bone_placer_upvecHandle_parentConstraint1.cry" "cluster2spine5_bone_placer_upvecHandle.ry"
		;
connectAttr "cluster2spine5_bone_placer_upvecHandle_parentConstraint1.crz" "cluster2spine5_bone_placer_upvecHandle.rz"
		;
connectAttr "cluster2spine5_bone_placer_upvecHandle.ro" "cluster2spine5_bone_placer_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2spine5_bone_placer_upvecHandle.pim" "cluster2spine5_bone_placer_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2spine5_bone_placer_upvecHandle.rp" "cluster2spine5_bone_placer_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2spine5_bone_placer_upvecHandle.rpt" "cluster2spine5_bone_placer_upvecHandle_parentConstraint1.crt"
		;
connectAttr "spine5_bone_placer_upVector.t" "cluster2spine5_bone_placer_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "spine5_bone_placer_upVector.rp" "cluster2spine5_bone_placer_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "spine5_bone_placer_upVector.rpt" "cluster2spine5_bone_placer_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "spine5_bone_placer_upVector.r" "cluster2spine5_bone_placer_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "spine5_bone_placer_upVector.ro" "cluster2spine5_bone_placer_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "spine5_bone_placer_upVector.s" "cluster2spine5_bone_placer_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "spine5_bone_placer_upVector.pm" "cluster2spine5_bone_placer_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2spine5_bone_placer_upvecHandle_parentConstraint1.w0" "cluster2spine5_bone_placer_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2spine5_bone_placer_upvec.og[0]" "spine5_bone_placer_up_vec_curveShape.cr"
		;
connectAttr "cluster1neck1_bone_placer_upvecHandle_parentConstraint1.ctx" "cluster1neck1_bone_placer_upvecHandle.tx"
		;
connectAttr "cluster1neck1_bone_placer_upvecHandle_parentConstraint1.cty" "cluster1neck1_bone_placer_upvecHandle.ty"
		;
connectAttr "cluster1neck1_bone_placer_upvecHandle_parentConstraint1.ctz" "cluster1neck1_bone_placer_upvecHandle.tz"
		;
connectAttr "cluster1neck1_bone_placer_upvecHandle_parentConstraint1.crx" "cluster1neck1_bone_placer_upvecHandle.rx"
		;
connectAttr "cluster1neck1_bone_placer_upvecHandle_parentConstraint1.cry" "cluster1neck1_bone_placer_upvecHandle.ry"
		;
connectAttr "cluster1neck1_bone_placer_upvecHandle_parentConstraint1.crz" "cluster1neck1_bone_placer_upvecHandle.rz"
		;
connectAttr "cluster1neck1_bone_placer_upvecHandle.ro" "cluster1neck1_bone_placer_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1neck1_bone_placer_upvecHandle.pim" "cluster1neck1_bone_placer_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1neck1_bone_placer_upvecHandle.rp" "cluster1neck1_bone_placer_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1neck1_bone_placer_upvecHandle.rpt" "cluster1neck1_bone_placer_upvecHandle_parentConstraint1.crt"
		;
connectAttr "neck1_bone_placer.t" "cluster1neck1_bone_placer_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "neck1_bone_placer.rp" "cluster1neck1_bone_placer_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "neck1_bone_placer.rpt" "cluster1neck1_bone_placer_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "neck1_bone_placer.r" "cluster1neck1_bone_placer_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "neck1_bone_placer.ro" "cluster1neck1_bone_placer_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "neck1_bone_placer.s" "cluster1neck1_bone_placer_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "neck1_bone_placer.pm" "cluster1neck1_bone_placer_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1neck1_bone_placer_upvecHandle_parentConstraint1.w0" "cluster1neck1_bone_placer_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2neck1_bone_placer_upvecHandle_parentConstraint1.ctx" "cluster2neck1_bone_placer_upvecHandle.tx"
		;
connectAttr "cluster2neck1_bone_placer_upvecHandle_parentConstraint1.cty" "cluster2neck1_bone_placer_upvecHandle.ty"
		;
connectAttr "cluster2neck1_bone_placer_upvecHandle_parentConstraint1.ctz" "cluster2neck1_bone_placer_upvecHandle.tz"
		;
connectAttr "cluster2neck1_bone_placer_upvecHandle_parentConstraint1.crx" "cluster2neck1_bone_placer_upvecHandle.rx"
		;
connectAttr "cluster2neck1_bone_placer_upvecHandle_parentConstraint1.cry" "cluster2neck1_bone_placer_upvecHandle.ry"
		;
connectAttr "cluster2neck1_bone_placer_upvecHandle_parentConstraint1.crz" "cluster2neck1_bone_placer_upvecHandle.rz"
		;
connectAttr "cluster2neck1_bone_placer_upvecHandle.ro" "cluster2neck1_bone_placer_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2neck1_bone_placer_upvecHandle.pim" "cluster2neck1_bone_placer_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2neck1_bone_placer_upvecHandle.rp" "cluster2neck1_bone_placer_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2neck1_bone_placer_upvecHandle.rpt" "cluster2neck1_bone_placer_upvecHandle_parentConstraint1.crt"
		;
connectAttr "neck1_bone_placer_upVector.t" "cluster2neck1_bone_placer_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "neck1_bone_placer_upVector.rp" "cluster2neck1_bone_placer_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "neck1_bone_placer_upVector.rpt" "cluster2neck1_bone_placer_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "neck1_bone_placer_upVector.r" "cluster2neck1_bone_placer_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "neck1_bone_placer_upVector.ro" "cluster2neck1_bone_placer_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "neck1_bone_placer_upVector.s" "cluster2neck1_bone_placer_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "neck1_bone_placer_upVector.pm" "cluster2neck1_bone_placer_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2neck1_bone_placer_upvecHandle_parentConstraint1.w0" "cluster2neck1_bone_placer_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2neck1_bone_placer_upvec.og[0]" "neck1_bone_placer_up_vec_curveShape.cr"
		;
connectAttr "cluster1neck2_bone_placer_upvecHandle_parentConstraint1.ctx" "cluster1neck2_bone_placer_upvecHandle.tx"
		;
connectAttr "cluster1neck2_bone_placer_upvecHandle_parentConstraint1.cty" "cluster1neck2_bone_placer_upvecHandle.ty"
		;
connectAttr "cluster1neck2_bone_placer_upvecHandle_parentConstraint1.ctz" "cluster1neck2_bone_placer_upvecHandle.tz"
		;
connectAttr "cluster1neck2_bone_placer_upvecHandle_parentConstraint1.crx" "cluster1neck2_bone_placer_upvecHandle.rx"
		;
connectAttr "cluster1neck2_bone_placer_upvecHandle_parentConstraint1.cry" "cluster1neck2_bone_placer_upvecHandle.ry"
		;
connectAttr "cluster1neck2_bone_placer_upvecHandle_parentConstraint1.crz" "cluster1neck2_bone_placer_upvecHandle.rz"
		;
connectAttr "cluster1neck2_bone_placer_upvecHandle.ro" "cluster1neck2_bone_placer_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1neck2_bone_placer_upvecHandle.pim" "cluster1neck2_bone_placer_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1neck2_bone_placer_upvecHandle.rp" "cluster1neck2_bone_placer_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1neck2_bone_placer_upvecHandle.rpt" "cluster1neck2_bone_placer_upvecHandle_parentConstraint1.crt"
		;
connectAttr "neck2_bone_placer.t" "cluster1neck2_bone_placer_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "neck2_bone_placer.rp" "cluster1neck2_bone_placer_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "neck2_bone_placer.rpt" "cluster1neck2_bone_placer_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "neck2_bone_placer.r" "cluster1neck2_bone_placer_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "neck2_bone_placer.ro" "cluster1neck2_bone_placer_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "neck2_bone_placer.s" "cluster1neck2_bone_placer_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "neck2_bone_placer.pm" "cluster1neck2_bone_placer_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1neck2_bone_placer_upvecHandle_parentConstraint1.w0" "cluster1neck2_bone_placer_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2neck2_bone_placer_upvecHandle_parentConstraint1.ctx" "cluster2neck2_bone_placer_upvecHandle.tx"
		;
connectAttr "cluster2neck2_bone_placer_upvecHandle_parentConstraint1.cty" "cluster2neck2_bone_placer_upvecHandle.ty"
		;
connectAttr "cluster2neck2_bone_placer_upvecHandle_parentConstraint1.ctz" "cluster2neck2_bone_placer_upvecHandle.tz"
		;
connectAttr "cluster2neck2_bone_placer_upvecHandle_parentConstraint1.crx" "cluster2neck2_bone_placer_upvecHandle.rx"
		;
connectAttr "cluster2neck2_bone_placer_upvecHandle_parentConstraint1.cry" "cluster2neck2_bone_placer_upvecHandle.ry"
		;
connectAttr "cluster2neck2_bone_placer_upvecHandle_parentConstraint1.crz" "cluster2neck2_bone_placer_upvecHandle.rz"
		;
connectAttr "cluster2neck2_bone_placer_upvecHandle.ro" "cluster2neck2_bone_placer_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2neck2_bone_placer_upvecHandle.pim" "cluster2neck2_bone_placer_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2neck2_bone_placer_upvecHandle.rp" "cluster2neck2_bone_placer_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2neck2_bone_placer_upvecHandle.rpt" "cluster2neck2_bone_placer_upvecHandle_parentConstraint1.crt"
		;
connectAttr "neck2_bone_placer_upVector.t" "cluster2neck2_bone_placer_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "neck2_bone_placer_upVector.rp" "cluster2neck2_bone_placer_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "neck2_bone_placer_upVector.rpt" "cluster2neck2_bone_placer_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "neck2_bone_placer_upVector.r" "cluster2neck2_bone_placer_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "neck2_bone_placer_upVector.ro" "cluster2neck2_bone_placer_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "neck2_bone_placer_upVector.s" "cluster2neck2_bone_placer_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "neck2_bone_placer_upVector.pm" "cluster2neck2_bone_placer_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2neck2_bone_placer_upvecHandle_parentConstraint1.w0" "cluster2neck2_bone_placer_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2neck2_bone_placer_upvec.og[0]" "neck2_bone_placer_up_vec_curveShape.cr"
		;
connectAttr "cluster1head_bone_placer_upvecHandle_parentConstraint1.ctx" "cluster1head_bone_placer_upvecHandle.tx"
		;
connectAttr "cluster1head_bone_placer_upvecHandle_parentConstraint1.cty" "cluster1head_bone_placer_upvecHandle.ty"
		;
connectAttr "cluster1head_bone_placer_upvecHandle_parentConstraint1.ctz" "cluster1head_bone_placer_upvecHandle.tz"
		;
connectAttr "cluster1head_bone_placer_upvecHandle_parentConstraint1.crx" "cluster1head_bone_placer_upvecHandle.rx"
		;
connectAttr "cluster1head_bone_placer_upvecHandle_parentConstraint1.cry" "cluster1head_bone_placer_upvecHandle.ry"
		;
connectAttr "cluster1head_bone_placer_upvecHandle_parentConstraint1.crz" "cluster1head_bone_placer_upvecHandle.rz"
		;
connectAttr "cluster1head_bone_placer_upvecHandle.ro" "cluster1head_bone_placer_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1head_bone_placer_upvecHandle.pim" "cluster1head_bone_placer_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1head_bone_placer_upvecHandle.rp" "cluster1head_bone_placer_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1head_bone_placer_upvecHandle.rpt" "cluster1head_bone_placer_upvecHandle_parentConstraint1.crt"
		;
connectAttr "head_bone_placer.t" "cluster1head_bone_placer_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "head_bone_placer.rp" "cluster1head_bone_placer_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "head_bone_placer.rpt" "cluster1head_bone_placer_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "head_bone_placer.r" "cluster1head_bone_placer_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "head_bone_placer.ro" "cluster1head_bone_placer_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "head_bone_placer.s" "cluster1head_bone_placer_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "head_bone_placer.pm" "cluster1head_bone_placer_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1head_bone_placer_upvecHandle_parentConstraint1.w0" "cluster1head_bone_placer_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2head_bone_placer_upvecHandle_parentConstraint1.ctx" "cluster2head_bone_placer_upvecHandle.tx"
		;
connectAttr "cluster2head_bone_placer_upvecHandle_parentConstraint1.cty" "cluster2head_bone_placer_upvecHandle.ty"
		;
connectAttr "cluster2head_bone_placer_upvecHandle_parentConstraint1.ctz" "cluster2head_bone_placer_upvecHandle.tz"
		;
connectAttr "cluster2head_bone_placer_upvecHandle_parentConstraint1.crx" "cluster2head_bone_placer_upvecHandle.rx"
		;
connectAttr "cluster2head_bone_placer_upvecHandle_parentConstraint1.cry" "cluster2head_bone_placer_upvecHandle.ry"
		;
connectAttr "cluster2head_bone_placer_upvecHandle_parentConstraint1.crz" "cluster2head_bone_placer_upvecHandle.rz"
		;
connectAttr "cluster2head_bone_placer_upvecHandle.ro" "cluster2head_bone_placer_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2head_bone_placer_upvecHandle.pim" "cluster2head_bone_placer_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2head_bone_placer_upvecHandle.rp" "cluster2head_bone_placer_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2head_bone_placer_upvecHandle.rpt" "cluster2head_bone_placer_upvecHandle_parentConstraint1.crt"
		;
connectAttr "head_bone_placer_upVector.t" "cluster2head_bone_placer_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "head_bone_placer_upVector.rp" "cluster2head_bone_placer_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "head_bone_placer_upVector.rpt" "cluster2head_bone_placer_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "head_bone_placer_upVector.r" "cluster2head_bone_placer_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "head_bone_placer_upVector.ro" "cluster2head_bone_placer_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "head_bone_placer_upVector.s" "cluster2head_bone_placer_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "head_bone_placer_upVector.pm" "cluster2head_bone_placer_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2head_bone_placer_upvecHandle_parentConstraint1.w0" "cluster2head_bone_placer_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2head_bone_placer_upvec.og[0]" "head_bone_placer_up_vec_curveShape.cr"
		;
connectAttr "spine_placercluster_9.og[0]" "spine_proxy_curveShape.cr";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "clavicle_bone_placer_L_up_vec_curveShapeOrig.ws" "cluster1clavicle_bone_placer_L_upvec.ip[0].ig"
		;
connectAttr "clavicle_bone_placer_L_up_vec_curveShapeOrig.l" "cluster1clavicle_bone_placer_L_upvec.orggeom[0]"
		;
connectAttr "cluster1clavicle_bone_placer_L_upvecHandle.wm" "cluster1clavicle_bone_placer_L_upvec.ma"
		;
connectAttr "cluster1clavicle_bone_placer_L_upvecHandleShape.x" "cluster1clavicle_bone_placer_L_upvec.x"
		;
connectAttr "cluster1clavicle_bone_placer_L_upvec.og[0]" "cluster2clavicle_bone_placer_L_upvec.ip[0].ig"
		;
connectAttr "clavicle_bone_placer_L_up_vec_curveShapeOrig.l" "cluster2clavicle_bone_placer_L_upvec.orggeom[0]"
		;
connectAttr "cluster2clavicle_bone_placer_L_upvecHandle.wm" "cluster2clavicle_bone_placer_L_upvec.ma"
		;
connectAttr "cluster2clavicle_bone_placer_L_upvecHandleShape.x" "cluster2clavicle_bone_placer_L_upvec.x"
		;
connectAttr "armUpper_bone_placer_L_up_vec_curveShapeOrig.ws" "cluster1armUpper_bone_placer_L_upvec.ip[0].ig"
		;
connectAttr "armUpper_bone_placer_L_up_vec_curveShapeOrig.l" "cluster1armUpper_bone_placer_L_upvec.orggeom[0]"
		;
connectAttr "cluster1armUpper_bone_placer_L_upvecHandle.wm" "cluster1armUpper_bone_placer_L_upvec.ma"
		;
connectAttr "cluster1armUpper_bone_placer_L_upvecHandleShape.x" "cluster1armUpper_bone_placer_L_upvec.x"
		;
connectAttr "cluster1armUpper_bone_placer_L_upvec.og[0]" "cluster2armUpper_bone_placer_L_upvec.ip[0].ig"
		;
connectAttr "armUpper_bone_placer_L_up_vec_curveShapeOrig.l" "cluster2armUpper_bone_placer_L_upvec.orggeom[0]"
		;
connectAttr "cluster2armUpper_bone_placer_L_upvecHandle.wm" "cluster2armUpper_bone_placer_L_upvec.ma"
		;
connectAttr "cluster2armUpper_bone_placer_L_upvecHandleShape.x" "cluster2armUpper_bone_placer_L_upvec.x"
		;
connectAttr "armLower_bone_placer_L_up_vec_curveShapeOrig.ws" "cluster1armLower_bone_placer_L_upvec.ip[0].ig"
		;
connectAttr "armLower_bone_placer_L_up_vec_curveShapeOrig.l" "cluster1armLower_bone_placer_L_upvec.orggeom[0]"
		;
connectAttr "cluster1armLower_bone_placer_L_upvecHandle.wm" "cluster1armLower_bone_placer_L_upvec.ma"
		;
connectAttr "cluster1armLower_bone_placer_L_upvecHandleShape.x" "cluster1armLower_bone_placer_L_upvec.x"
		;
connectAttr "cluster1armLower_bone_placer_L_upvec.og[0]" "cluster2armLower_bone_placer_L_upvec.ip[0].ig"
		;
connectAttr "armLower_bone_placer_L_up_vec_curveShapeOrig.l" "cluster2armLower_bone_placer_L_upvec.orggeom[0]"
		;
connectAttr "cluster2armLower_bone_placer_L_upvecHandle.wm" "cluster2armLower_bone_placer_L_upvec.ma"
		;
connectAttr "cluster2armLower_bone_placer_L_upvecHandleShape.x" "cluster2armLower_bone_placer_L_upvec.x"
		;
connectAttr "hand_bone_placer_L_up_vec_curveShapeOrig.ws" "cluster1hand_bone_placer_L_upvec.ip[0].ig"
		;
connectAttr "hand_bone_placer_L_up_vec_curveShapeOrig.l" "cluster1hand_bone_placer_L_upvec.orggeom[0]"
		;
connectAttr "cluster1hand_bone_placer_L_upvecHandle.wm" "cluster1hand_bone_placer_L_upvec.ma"
		;
connectAttr "cluster1hand_bone_placer_L_upvecHandleShape.x" "cluster1hand_bone_placer_L_upvec.x"
		;
connectAttr "cluster1hand_bone_placer_L_upvec.og[0]" "cluster2hand_bone_placer_L_upvec.ip[0].ig"
		;
connectAttr "hand_bone_placer_L_up_vec_curveShapeOrig.l" "cluster2hand_bone_placer_L_upvec.orggeom[0]"
		;
connectAttr "cluster2hand_bone_placer_L_upvecHandle.wm" "cluster2hand_bone_placer_L_upvec.ma"
		;
connectAttr "cluster2hand_bone_placer_L_upvecHandleShape.x" "cluster2hand_bone_placer_L_upvec.x"
		;
connectAttr "proxy_curve_arm_LShapeOrig.ws" "placercluster0_arm_L.ip[0].ig";
connectAttr "proxy_curve_arm_LShapeOrig.l" "placercluster0_arm_L.orggeom[0]";
connectAttr "placercluster0_arm_LHandle.wm" "placercluster0_arm_L.ma";
connectAttr "placercluster0_arm_LHandleShape.x" "placercluster0_arm_L.x";
connectAttr "placercluster0_arm_L.og[0]" "placercluster1_arm_L.ip[0].ig";
connectAttr "proxy_curve_arm_LShapeOrig.l" "placercluster1_arm_L.orggeom[0]";
connectAttr "placercluster1_arm_LHandle.wm" "placercluster1_arm_L.ma";
connectAttr "placercluster1_arm_LHandleShape.x" "placercluster1_arm_L.x";
connectAttr "placercluster1_arm_L.og[0]" "placercluster2_arm_L.ip[0].ig";
connectAttr "proxy_curve_arm_LShapeOrig.l" "placercluster2_arm_L.orggeom[0]";
connectAttr "placercluster2_arm_LHandle.wm" "placercluster2_arm_L.ma";
connectAttr "placercluster2_arm_LHandleShape.x" "placercluster2_arm_L.x";
connectAttr "placercluster2_arm_L.og[0]" "placercluster3_arm_L.ip[0].ig";
connectAttr "proxy_curve_arm_LShapeOrig.l" "placercluster3_arm_L.orggeom[0]";
connectAttr "placercluster3_arm_LHandle.wm" "placercluster3_arm_L.ma";
connectAttr "placercluster3_arm_LHandleShape.x" "placercluster3_arm_L.x";
connectAttr "clavicle_bone_placer_L.wm" "clavicle_bone_placer_L_decomposeMatrix.imat"
		;
connectAttr "armUpper_bone_placer_L.wm" "armUpper_bone_placer_L_decomposeMatrix.imat"
		;
connectAttr "armLower_bone_placer_L.wm" "armLower_bone_placer_L_decomposeMatrix.imat"
		;
connectAttr "hand_bone_placer_L.wm" "hand_bone_placer_L_decomposeMatrix.imat";
connectAttr "armUpper_bone_placer_L_decomposeMatrix.ot" "clavVec_L.i3[0]";
connectAttr "clavicle_bone_placer_L_decomposeMatrix.ot" "clavVec_L.i3[1]";
connectAttr "hand_bone_placer_L_decomposeMatrix.ot" "wholeArmVec_L.i3[0]";
connectAttr "armUpper_bone_placer_L_decomposeMatrix.ot" "wholeArmVec_L.i3[1]";
connectAttr "armLower_bone_placer_L_decomposeMatrix.ot" "upperArmVec_L.i3[0]";
connectAttr "armUpper_bone_placer_L_decomposeMatrix.ot" "upperArmVec_L.i3[1]";
connectAttr "wholeArmVec_L.o3" "armZupVec_L.i1";
connectAttr "upperArmVec_L.o3" "armZupVec_L.i2";
connectAttr "armZupVec_L.o" "armZupVec_norm_L.i";
connectAttr "clavVec_L.o3" "clavZupVec_L.i1";
connectAttr "clavZupVec_L.o" "clavZupVec_norm_L.i";
connectAttr "clavicle_bone_placer_L_decomposeMatrix.ot" "clavUpVec_L.i3[0]";
connectAttr "clavZupVec_norm_L.o" "clavUpVec_L.i3[1]";
connectAttr "armUpper_bone_placer_L_decomposeMatrix.ot" "shoulderUpVec_L.i3[0]";
connectAttr "armZupVec_norm_L.o" "shoulderUpVec_L.i3[1]";
connectAttr "armLower_bone_placer_L_decomposeMatrix.ot" "elbowUpVec_L.i3[0]";
connectAttr "armZupVec_norm_L.o" "elbowUpVec_L.i3[1]";
connectAttr "hand_bone_placer_L_decomposeMatrix.ot" "wristUpVec_L.i3[0]";
connectAttr "armZupVec_norm_L.o" "wristUpVec_L.i3[1]";
connectAttr "clavicle_bone_placer_R_up_vec_curveShapeOrig.ws" "cluster1clavicle_bone_placer_R_upvec.ip[0].ig"
		;
connectAttr "clavicle_bone_placer_R_up_vec_curveShapeOrig.l" "cluster1clavicle_bone_placer_R_upvec.orggeom[0]"
		;
connectAttr "cluster1clavicle_bone_placer_R_upvecHandle.wm" "cluster1clavicle_bone_placer_R_upvec.ma"
		;
connectAttr "cluster1clavicle_bone_placer_R_upvecHandleShape.x" "cluster1clavicle_bone_placer_R_upvec.x"
		;
connectAttr "cluster1clavicle_bone_placer_R_upvec.og[0]" "cluster2clavicle_bone_placer_R_upvec.ip[0].ig"
		;
connectAttr "clavicle_bone_placer_R_up_vec_curveShapeOrig.l" "cluster2clavicle_bone_placer_R_upvec.orggeom[0]"
		;
connectAttr "cluster2clavicle_bone_placer_R_upvecHandle.wm" "cluster2clavicle_bone_placer_R_upvec.ma"
		;
connectAttr "cluster2clavicle_bone_placer_R_upvecHandleShape.x" "cluster2clavicle_bone_placer_R_upvec.x"
		;
connectAttr "armUpper_bone_placer_R_up_vec_curveShapeOrig.ws" "cluster1armUpper_bone_placer_R_upvec.ip[0].ig"
		;
connectAttr "armUpper_bone_placer_R_up_vec_curveShapeOrig.l" "cluster1armUpper_bone_placer_R_upvec.orggeom[0]"
		;
connectAttr "cluster1armUpper_bone_placer_R_upvecHandle.wm" "cluster1armUpper_bone_placer_R_upvec.ma"
		;
connectAttr "cluster1armUpper_bone_placer_R_upvecHandleShape.x" "cluster1armUpper_bone_placer_R_upvec.x"
		;
connectAttr "cluster1armUpper_bone_placer_R_upvec.og[0]" "cluster2armUpper_bone_placer_R_upvec.ip[0].ig"
		;
connectAttr "armUpper_bone_placer_R_up_vec_curveShapeOrig.l" "cluster2armUpper_bone_placer_R_upvec.orggeom[0]"
		;
connectAttr "cluster2armUpper_bone_placer_R_upvecHandle.wm" "cluster2armUpper_bone_placer_R_upvec.ma"
		;
connectAttr "cluster2armUpper_bone_placer_R_upvecHandleShape.x" "cluster2armUpper_bone_placer_R_upvec.x"
		;
connectAttr "armLower_bone_placer_R_up_vec_curveShapeOrig.ws" "cluster1armLower_bone_placer_R_upvec.ip[0].ig"
		;
connectAttr "armLower_bone_placer_R_up_vec_curveShapeOrig.l" "cluster1armLower_bone_placer_R_upvec.orggeom[0]"
		;
connectAttr "cluster1armLower_bone_placer_R_upvecHandle.wm" "cluster1armLower_bone_placer_R_upvec.ma"
		;
connectAttr "cluster1armLower_bone_placer_R_upvecHandleShape.x" "cluster1armLower_bone_placer_R_upvec.x"
		;
connectAttr "cluster1armLower_bone_placer_R_upvec.og[0]" "cluster2armLower_bone_placer_R_upvec.ip[0].ig"
		;
connectAttr "armLower_bone_placer_R_up_vec_curveShapeOrig.l" "cluster2armLower_bone_placer_R_upvec.orggeom[0]"
		;
connectAttr "cluster2armLower_bone_placer_R_upvecHandle.wm" "cluster2armLower_bone_placer_R_upvec.ma"
		;
connectAttr "cluster2armLower_bone_placer_R_upvecHandleShape.x" "cluster2armLower_bone_placer_R_upvec.x"
		;
connectAttr "hand_bone_placer_R_up_vec_curveShapeOrig.ws" "cluster1hand_bone_placer_R_upvec.ip[0].ig"
		;
connectAttr "hand_bone_placer_R_up_vec_curveShapeOrig.l" "cluster1hand_bone_placer_R_upvec.orggeom[0]"
		;
connectAttr "cluster1hand_bone_placer_R_upvecHandle.wm" "cluster1hand_bone_placer_R_upvec.ma"
		;
connectAttr "cluster1hand_bone_placer_R_upvecHandleShape.x" "cluster1hand_bone_placer_R_upvec.x"
		;
connectAttr "cluster1hand_bone_placer_R_upvec.og[0]" "cluster2hand_bone_placer_R_upvec.ip[0].ig"
		;
connectAttr "hand_bone_placer_R_up_vec_curveShapeOrig.l" "cluster2hand_bone_placer_R_upvec.orggeom[0]"
		;
connectAttr "cluster2hand_bone_placer_R_upvecHandle.wm" "cluster2hand_bone_placer_R_upvec.ma"
		;
connectAttr "cluster2hand_bone_placer_R_upvecHandleShape.x" "cluster2hand_bone_placer_R_upvec.x"
		;
connectAttr "proxy_curve_arm_RShapeOrig.ws" "placercluster0_arm_R.ip[0].ig";
connectAttr "proxy_curve_arm_RShapeOrig.l" "placercluster0_arm_R.orggeom[0]";
connectAttr "placercluster0_arm_RHandle.wm" "placercluster0_arm_R.ma";
connectAttr "placercluster0_arm_RHandleShape.x" "placercluster0_arm_R.x";
connectAttr "placercluster0_arm_R.og[0]" "placercluster1_arm_R.ip[0].ig";
connectAttr "proxy_curve_arm_RShapeOrig.l" "placercluster1_arm_R.orggeom[0]";
connectAttr "placercluster1_arm_RHandle.wm" "placercluster1_arm_R.ma";
connectAttr "placercluster1_arm_RHandleShape.x" "placercluster1_arm_R.x";
connectAttr "placercluster1_arm_R.og[0]" "placercluster2_arm_R.ip[0].ig";
connectAttr "proxy_curve_arm_RShapeOrig.l" "placercluster2_arm_R.orggeom[0]";
connectAttr "placercluster2_arm_RHandle.wm" "placercluster2_arm_R.ma";
connectAttr "placercluster2_arm_RHandleShape.x" "placercluster2_arm_R.x";
connectAttr "placercluster2_arm_R.og[0]" "placercluster3_arm_R.ip[0].ig";
connectAttr "proxy_curve_arm_RShapeOrig.l" "placercluster3_arm_R.orggeom[0]";
connectAttr "placercluster3_arm_RHandle.wm" "placercluster3_arm_R.ma";
connectAttr "placercluster3_arm_RHandleShape.x" "placercluster3_arm_R.x";
connectAttr "clavicle_bone_placer_R.wm" "clavicle_bone_placer_R_decomposeMatrix.imat"
		;
connectAttr "armUpper_bone_placer_R.wm" "armUpper_bone_placer_R_decomposeMatrix.imat"
		;
connectAttr "armLower_bone_placer_R.wm" "armLower_bone_placer_R_decomposeMatrix.imat"
		;
connectAttr "hand_bone_placer_R.wm" "hand_bone_placer_R_decomposeMatrix.imat";
connectAttr "armUpper_bone_placer_R_decomposeMatrix.ot" "clavVec_R.i3[0]";
connectAttr "clavicle_bone_placer_R_decomposeMatrix.ot" "clavVec_R.i3[1]";
connectAttr "hand_bone_placer_R_decomposeMatrix.ot" "wholeArmVec_R.i3[0]";
connectAttr "armUpper_bone_placer_R_decomposeMatrix.ot" "wholeArmVec_R.i3[1]";
connectAttr "armLower_bone_placer_R_decomposeMatrix.ot" "upperArmVec_R.i3[0]";
connectAttr "armUpper_bone_placer_R_decomposeMatrix.ot" "upperArmVec_R.i3[1]";
connectAttr "wholeArmVec_R.o3" "armZupVec_R.i1";
connectAttr "upperArmVec_R.o3" "armZupVec_R.i2";
connectAttr "armZupVec_R.o" "armZupVec_norm_R.i";
connectAttr "clavVec_R.o3" "clavZupVec_R.i1";
connectAttr "clavZupVec_R.o" "clavZupVec_norm_R.i";
connectAttr "clavicle_bone_placer_R_decomposeMatrix.ot" "clavUpVec_R.i3[0]";
connectAttr "clavZupVec_norm_R.o" "clavUpVec_R.i3[1]";
connectAttr "armUpper_bone_placer_R_decomposeMatrix.ot" "shoulderUpVec_R.i3[0]";
connectAttr "armZupVec_norm_R.o" "shoulderUpVec_R.i3[1]";
connectAttr "armLower_bone_placer_R_decomposeMatrix.ot" "elbowUpVec_R.i3[0]";
connectAttr "armZupVec_norm_R.o" "elbowUpVec_R.i3[1]";
connectAttr "hand_bone_placer_R_decomposeMatrix.ot" "wristUpVec_R.i3[0]";
connectAttr "armZupVec_norm_R.o" "wristUpVec_R.i3[1]";
connectAttr "legUpper_bone_placer_L_up_vec_curveShapeOrig.ws" "cluster1legUpper_bone_placer_L_upvec.ip[0].ig"
		;
connectAttr "legUpper_bone_placer_L_up_vec_curveShapeOrig.l" "cluster1legUpper_bone_placer_L_upvec.orggeom[0]"
		;
connectAttr "cluster1legUpper_bone_placer_L_upvecHandle.wm" "cluster1legUpper_bone_placer_L_upvec.ma"
		;
connectAttr "cluster1legUpper_bone_placer_L_upvecHandleShape.x" "cluster1legUpper_bone_placer_L_upvec.x"
		;
connectAttr "cluster1legUpper_bone_placer_L_upvec.og[0]" "cluster2legUpper_bone_placer_L_upvec.ip[0].ig"
		;
connectAttr "legUpper_bone_placer_L_up_vec_curveShapeOrig.l" "cluster2legUpper_bone_placer_L_upvec.orggeom[0]"
		;
connectAttr "cluster2legUpper_bone_placer_L_upvecHandle.wm" "cluster2legUpper_bone_placer_L_upvec.ma"
		;
connectAttr "cluster2legUpper_bone_placer_L_upvecHandleShape.x" "cluster2legUpper_bone_placer_L_upvec.x"
		;
connectAttr "legLower_bone_placer_L_up_vec_curveShapeOrig.ws" "cluster1legLower_bone_placer_L_upvec.ip[0].ig"
		;
connectAttr "legLower_bone_placer_L_up_vec_curveShapeOrig.l" "cluster1legLower_bone_placer_L_upvec.orggeom[0]"
		;
connectAttr "cluster1legLower_bone_placer_L_upvecHandle.wm" "cluster1legLower_bone_placer_L_upvec.ma"
		;
connectAttr "cluster1legLower_bone_placer_L_upvecHandleShape.x" "cluster1legLower_bone_placer_L_upvec.x"
		;
connectAttr "cluster1legLower_bone_placer_L_upvec.og[0]" "cluster2legLower_bone_placer_L_upvec.ip[0].ig"
		;
connectAttr "legLower_bone_placer_L_up_vec_curveShapeOrig.l" "cluster2legLower_bone_placer_L_upvec.orggeom[0]"
		;
connectAttr "cluster2legLower_bone_placer_L_upvecHandle.wm" "cluster2legLower_bone_placer_L_upvec.ma"
		;
connectAttr "cluster2legLower_bone_placer_L_upvecHandleShape.x" "cluster2legLower_bone_placer_L_upvec.x"
		;
connectAttr "foot_bone_placer_L_up_vec_curveShapeOrig.ws" "cluster1foot_bone_placer_L_upvec.ip[0].ig"
		;
connectAttr "foot_bone_placer_L_up_vec_curveShapeOrig.l" "cluster1foot_bone_placer_L_upvec.orggeom[0]"
		;
connectAttr "cluster1foot_bone_placer_L_upvecHandle.wm" "cluster1foot_bone_placer_L_upvec.ma"
		;
connectAttr "cluster1foot_bone_placer_L_upvecHandleShape.x" "cluster1foot_bone_placer_L_upvec.x"
		;
connectAttr "cluster1foot_bone_placer_L_upvec.og[0]" "cluster2foot_bone_placer_L_upvec.ip[0].ig"
		;
connectAttr "foot_bone_placer_L_up_vec_curveShapeOrig.l" "cluster2foot_bone_placer_L_upvec.orggeom[0]"
		;
connectAttr "cluster2foot_bone_placer_L_upvecHandle.wm" "cluster2foot_bone_placer_L_upvec.ma"
		;
connectAttr "cluster2foot_bone_placer_L_upvecHandleShape.x" "cluster2foot_bone_placer_L_upvec.x"
		;
connectAttr "ball_bone_placer_L_up_vec_curveShapeOrig.ws" "cluster1ball_bone_placer_L_upvec.ip[0].ig"
		;
connectAttr "ball_bone_placer_L_up_vec_curveShapeOrig.l" "cluster1ball_bone_placer_L_upvec.orggeom[0]"
		;
connectAttr "cluster1ball_bone_placer_L_upvecHandle.wm" "cluster1ball_bone_placer_L_upvec.ma"
		;
connectAttr "cluster1ball_bone_placer_L_upvecHandleShape.x" "cluster1ball_bone_placer_L_upvec.x"
		;
connectAttr "cluster1ball_bone_placer_L_upvec.og[0]" "cluster2ball_bone_placer_L_upvec.ip[0].ig"
		;
connectAttr "ball_bone_placer_L_up_vec_curveShapeOrig.l" "cluster2ball_bone_placer_L_upvec.orggeom[0]"
		;
connectAttr "cluster2ball_bone_placer_L_upvecHandle.wm" "cluster2ball_bone_placer_L_upvec.ma"
		;
connectAttr "cluster2ball_bone_placer_L_upvecHandleShape.x" "cluster2ball_bone_placer_L_upvec.x"
		;
connectAttr "toeTip_bone_placer_L_up_vec_curveShapeOrig.ws" "cluster1toeTip_bone_placer_L_upvec.ip[0].ig"
		;
connectAttr "toeTip_bone_placer_L_up_vec_curveShapeOrig.l" "cluster1toeTip_bone_placer_L_upvec.orggeom[0]"
		;
connectAttr "cluster1toeTip_bone_placer_L_upvecHandle.wm" "cluster1toeTip_bone_placer_L_upvec.ma"
		;
connectAttr "cluster1toeTip_bone_placer_L_upvecHandleShape.x" "cluster1toeTip_bone_placer_L_upvec.x"
		;
connectAttr "cluster1toeTip_bone_placer_L_upvec.og[0]" "cluster2toeTip_bone_placer_L_upvec.ip[0].ig"
		;
connectAttr "toeTip_bone_placer_L_up_vec_curveShapeOrig.l" "cluster2toeTip_bone_placer_L_upvec.orggeom[0]"
		;
connectAttr "cluster2toeTip_bone_placer_L_upvecHandle.wm" "cluster2toeTip_bone_placer_L_upvec.ma"
		;
connectAttr "cluster2toeTip_bone_placer_L_upvecHandleShape.x" "cluster2toeTip_bone_placer_L_upvec.x"
		;
connectAttr "leg_proxy_curve_leg_LShapeOrig.ws" "_L_placercluster_0.ip[0].ig";
connectAttr "leg_proxy_curve_leg_LShapeOrig.l" "_L_placercluster_0.orggeom[0]";
connectAttr "_L_placercluster_0Handle.wm" "_L_placercluster_0.ma";
connectAttr "_L_placercluster_0HandleShape.x" "_L_placercluster_0.x";
connectAttr "_L_placercluster_0.og[0]" "_L_placercluster_1.ip[0].ig";
connectAttr "leg_proxy_curve_leg_LShapeOrig.l" "_L_placercluster_1.orggeom[0]";
connectAttr "_L_placercluster_1Handle.wm" "_L_placercluster_1.ma";
connectAttr "_L_placercluster_1HandleShape.x" "_L_placercluster_1.x";
connectAttr "_L_placercluster_1.og[0]" "_L_placercluster_2.ip[0].ig";
connectAttr "leg_proxy_curve_leg_LShapeOrig.l" "_L_placercluster_2.orggeom[0]";
connectAttr "_L_placercluster_2Handle.wm" "_L_placercluster_2.ma";
connectAttr "_L_placercluster_2HandleShape.x" "_L_placercluster_2.x";
connectAttr "_L_placercluster_2.og[0]" "_L_placercluster_3.ip[0].ig";
connectAttr "leg_proxy_curve_leg_LShapeOrig.l" "_L_placercluster_3.orggeom[0]";
connectAttr "_L_placercluster_3Handle.wm" "_L_placercluster_3.ma";
connectAttr "_L_placercluster_3HandleShape.x" "_L_placercluster_3.x";
connectAttr "_L_placercluster_3.og[0]" "_L_placercluster_4.ip[0].ig";
connectAttr "leg_proxy_curve_leg_LShapeOrig.l" "_L_placercluster_4.orggeom[0]";
connectAttr "_L_placercluster_4Handle.wm" "_L_placercluster_4.ma";
connectAttr "_L_placercluster_4HandleShape.x" "_L_placercluster_4.x";
connectAttr "legUpper_bone_placer_L.wm" "legUpper_bone_placer_L_decomposeMatrix.imat"
		;
connectAttr "legLower_bone_placer_L.wm" "legLower_bone_placer_L_decomposeMatrix.imat"
		;
connectAttr "foot_bone_placer_L.wm" "foot_bone_placer_L_decomposeMatrix.imat";
connectAttr "foot_Zpos_loc_L.wm" "foot_bone_placer_L_Zpos_loc_decomposeMatrix.imat"
		;
connectAttr "ball_bone_placer_L.wm" "ball_bone_placer_L_decomposeMatrix.imat";
connectAttr "toeTip_bone_placer_L.wm" "toeTip_bone_placer_L_decomposeMatrix.imat"
		;
connectAttr "foot_bone_placer_L_decomposeMatrix.ot" "wholeLeg_Xvec_L.i3[0]";
connectAttr "legUpper_bone_placer_L_decomposeMatrix.ot" "wholeLeg_Xvec_L.i3[1]";
connectAttr "legLower_bone_placer_L_decomposeMatrix.ot" "legUpper_Xvec_L.i3[0]";
connectAttr "legUpper_bone_placer_L_decomposeMatrix.ot" "legUpper_Xvec_L.i3[1]";
connectAttr "legLower_bone_placer_L_decomposeMatrix.ot" "legLower_Xvec_L.i3[0]";
connectAttr "foot_bone_placer_L_decomposeMatrix.ot" "legLower_Xvec_L.i3[1]";
connectAttr "toeTip_bone_placer_L_decomposeMatrix.ot" "ballXvec_L.i3[0]";
connectAttr "ball_bone_placer_L_decomposeMatrix.ot" "ballXvec_L.i3[1]";
connectAttr "foot_bone_placer_L_decomposeMatrix.ot" "footXvec_L.i3[0]";
connectAttr "foot_bone_placer_L_Zpos_loc_decomposeMatrix.ot" "footXvec_L.i3[1]";
connectAttr "wholeLeg_Xvec_L.o3" "leg_Zvec_L.i1";
connectAttr "legUpper_Xvec_L.o3" "leg_Zvec_L.i2";
connectAttr "leg_Zvec_L.o" "leg_Zvec_norm_L.i";
connectAttr "footXvec_L.o3" "foot_Zvec_L.i2";
connectAttr "foot_Zvec_L.o" "foot_Zvec_norm_L.i";
connectAttr "ballXvec_L.o3" "ball_Zvec_L.i1";
connectAttr "ball_Zvec_L.o" "ball_Zvec_norm_L.i";
connectAttr "legUpper_bone_placer_L_decomposeMatrix.ot" "legUpper_Zpos_L.i3[0]";
connectAttr "leg_Zvec_norm_L.o" "legUpper_Zpos_L.i3[1]";
connectAttr "legLower_bone_placer_L_decomposeMatrix.ot" "legLower_Zpos_L.i3[0]";
connectAttr "leg_Zvec_norm_L.o" "legLower_Zpos_L.i3[1]";
connectAttr "foot_bone_placer_L_decomposeMatrix.ot" "foot_Zpos_L.i3[0]";
connectAttr "foot_Zvec_norm_L.o" "foot_Zpos_L.i3[1]";
connectAttr "ball_bone_placer_L_decomposeMatrix.ot" "ball_Zpos_L.i3[0]";
connectAttr "ball_Zvec_norm_L.o" "ball_Zpos_L.i3[1]";
connectAttr "toeTip_bone_placer_L_decomposeMatrix.ot" "toeTip_Zpos_L.i3[0]";
connectAttr "ball_Zvec_norm_L.o" "toeTip_Zpos_L.i3[1]";
connectAttr "legUpper_bone_placer_R_up_vec_curveShapeOrig.ws" "cluster1legUpper_bone_placer_R_upvec.ip[0].ig"
		;
connectAttr "legUpper_bone_placer_R_up_vec_curveShapeOrig.l" "cluster1legUpper_bone_placer_R_upvec.orggeom[0]"
		;
connectAttr "cluster1legUpper_bone_placer_R_upvecHandle.wm" "cluster1legUpper_bone_placer_R_upvec.ma"
		;
connectAttr "cluster1legUpper_bone_placer_R_upvecHandleShape.x" "cluster1legUpper_bone_placer_R_upvec.x"
		;
connectAttr "cluster1legUpper_bone_placer_R_upvec.og[0]" "cluster2legUpper_bone_placer_R_upvec.ip[0].ig"
		;
connectAttr "legUpper_bone_placer_R_up_vec_curveShapeOrig.l" "cluster2legUpper_bone_placer_R_upvec.orggeom[0]"
		;
connectAttr "cluster2legUpper_bone_placer_R_upvecHandle.wm" "cluster2legUpper_bone_placer_R_upvec.ma"
		;
connectAttr "cluster2legUpper_bone_placer_R_upvecHandleShape.x" "cluster2legUpper_bone_placer_R_upvec.x"
		;
connectAttr "legLower_bone_placer_R_up_vec_curveShapeOrig.ws" "cluster1legLower_bone_placer_R_upvec.ip[0].ig"
		;
connectAttr "legLower_bone_placer_R_up_vec_curveShapeOrig.l" "cluster1legLower_bone_placer_R_upvec.orggeom[0]"
		;
connectAttr "cluster1legLower_bone_placer_R_upvecHandle.wm" "cluster1legLower_bone_placer_R_upvec.ma"
		;
connectAttr "cluster1legLower_bone_placer_R_upvecHandleShape.x" "cluster1legLower_bone_placer_R_upvec.x"
		;
connectAttr "cluster1legLower_bone_placer_R_upvec.og[0]" "cluster2legLower_bone_placer_R_upvec.ip[0].ig"
		;
connectAttr "legLower_bone_placer_R_up_vec_curveShapeOrig.l" "cluster2legLower_bone_placer_R_upvec.orggeom[0]"
		;
connectAttr "cluster2legLower_bone_placer_R_upvecHandle.wm" "cluster2legLower_bone_placer_R_upvec.ma"
		;
connectAttr "cluster2legLower_bone_placer_R_upvecHandleShape.x" "cluster2legLower_bone_placer_R_upvec.x"
		;
connectAttr "foot_bone_placer_R_up_vec_curveShapeOrig.ws" "cluster1foot_bone_placer_R_upvec.ip[0].ig"
		;
connectAttr "foot_bone_placer_R_up_vec_curveShapeOrig.l" "cluster1foot_bone_placer_R_upvec.orggeom[0]"
		;
connectAttr "cluster1foot_bone_placer_R_upvecHandle.wm" "cluster1foot_bone_placer_R_upvec.ma"
		;
connectAttr "cluster1foot_bone_placer_R_upvecHandleShape.x" "cluster1foot_bone_placer_R_upvec.x"
		;
connectAttr "cluster1foot_bone_placer_R_upvec.og[0]" "cluster2foot_bone_placer_R_upvec.ip[0].ig"
		;
connectAttr "foot_bone_placer_R_up_vec_curveShapeOrig.l" "cluster2foot_bone_placer_R_upvec.orggeom[0]"
		;
connectAttr "cluster2foot_bone_placer_R_upvecHandle.wm" "cluster2foot_bone_placer_R_upvec.ma"
		;
connectAttr "cluster2foot_bone_placer_R_upvecHandleShape.x" "cluster2foot_bone_placer_R_upvec.x"
		;
connectAttr "ball_bone_placer_R_up_vec_curveShapeOrig.ws" "cluster1ball_bone_placer_R_upvec.ip[0].ig"
		;
connectAttr "ball_bone_placer_R_up_vec_curveShapeOrig.l" "cluster1ball_bone_placer_R_upvec.orggeom[0]"
		;
connectAttr "cluster1ball_bone_placer_R_upvecHandle.wm" "cluster1ball_bone_placer_R_upvec.ma"
		;
connectAttr "cluster1ball_bone_placer_R_upvecHandleShape.x" "cluster1ball_bone_placer_R_upvec.x"
		;
connectAttr "cluster1ball_bone_placer_R_upvec.og[0]" "cluster2ball_bone_placer_R_upvec.ip[0].ig"
		;
connectAttr "ball_bone_placer_R_up_vec_curveShapeOrig.l" "cluster2ball_bone_placer_R_upvec.orggeom[0]"
		;
connectAttr "cluster2ball_bone_placer_R_upvecHandle.wm" "cluster2ball_bone_placer_R_upvec.ma"
		;
connectAttr "cluster2ball_bone_placer_R_upvecHandleShape.x" "cluster2ball_bone_placer_R_upvec.x"
		;
connectAttr "toeTip_bone_placer_R_up_vec_curveShapeOrig.ws" "cluster1toeTip_bone_placer_R_upvec.ip[0].ig"
		;
connectAttr "toeTip_bone_placer_R_up_vec_curveShapeOrig.l" "cluster1toeTip_bone_placer_R_upvec.orggeom[0]"
		;
connectAttr "cluster1toeTip_bone_placer_R_upvecHandle.wm" "cluster1toeTip_bone_placer_R_upvec.ma"
		;
connectAttr "cluster1toeTip_bone_placer_R_upvecHandleShape.x" "cluster1toeTip_bone_placer_R_upvec.x"
		;
connectAttr "cluster1toeTip_bone_placer_R_upvec.og[0]" "cluster2toeTip_bone_placer_R_upvec.ip[0].ig"
		;
connectAttr "toeTip_bone_placer_R_up_vec_curveShapeOrig.l" "cluster2toeTip_bone_placer_R_upvec.orggeom[0]"
		;
connectAttr "cluster2toeTip_bone_placer_R_upvecHandle.wm" "cluster2toeTip_bone_placer_R_upvec.ma"
		;
connectAttr "cluster2toeTip_bone_placer_R_upvecHandleShape.x" "cluster2toeTip_bone_placer_R_upvec.x"
		;
connectAttr "leg_proxy_curve_leg_RShapeOrig.ws" "_R_placercluster_0.ip[0].ig";
connectAttr "leg_proxy_curve_leg_RShapeOrig.l" "_R_placercluster_0.orggeom[0]";
connectAttr "_R_placercluster_0Handle.wm" "_R_placercluster_0.ma";
connectAttr "_R_placercluster_0HandleShape.x" "_R_placercluster_0.x";
connectAttr "_R_placercluster_0.og[0]" "_R_placercluster_1.ip[0].ig";
connectAttr "leg_proxy_curve_leg_RShapeOrig.l" "_R_placercluster_1.orggeom[0]";
connectAttr "_R_placercluster_1Handle.wm" "_R_placercluster_1.ma";
connectAttr "_R_placercluster_1HandleShape.x" "_R_placercluster_1.x";
connectAttr "_R_placercluster_1.og[0]" "_R_placercluster_2.ip[0].ig";
connectAttr "leg_proxy_curve_leg_RShapeOrig.l" "_R_placercluster_2.orggeom[0]";
connectAttr "_R_placercluster_2Handle.wm" "_R_placercluster_2.ma";
connectAttr "_R_placercluster_2HandleShape.x" "_R_placercluster_2.x";
connectAttr "_R_placercluster_2.og[0]" "_R_placercluster_3.ip[0].ig";
connectAttr "leg_proxy_curve_leg_RShapeOrig.l" "_R_placercluster_3.orggeom[0]";
connectAttr "_R_placercluster_3Handle.wm" "_R_placercluster_3.ma";
connectAttr "_R_placercluster_3HandleShape.x" "_R_placercluster_3.x";
connectAttr "_R_placercluster_3.og[0]" "_R_placercluster_4.ip[0].ig";
connectAttr "leg_proxy_curve_leg_RShapeOrig.l" "_R_placercluster_4.orggeom[0]";
connectAttr "_R_placercluster_4Handle.wm" "_R_placercluster_4.ma";
connectAttr "_R_placercluster_4HandleShape.x" "_R_placercluster_4.x";
connectAttr "legUpper_bone_placer_R.wm" "legUpper_bone_placer_R_decomposeMatrix.imat"
		;
connectAttr "legLower_bone_placer_R.wm" "legLower_bone_placer_R_decomposeMatrix.imat"
		;
connectAttr "foot_bone_placer_R.wm" "foot_bone_placer_R_decomposeMatrix.imat";
connectAttr "foot_Zpos_loc_R.wm" "foot_bone_placer_R_Zpos_loc_decomposeMatrix.imat"
		;
connectAttr "ball_bone_placer_R.wm" "ball_bone_placer_R_decomposeMatrix.imat";
connectAttr "toeTip_bone_placer_R.wm" "toeTip_bone_placer_R_decomposeMatrix.imat"
		;
connectAttr "foot_bone_placer_R_decomposeMatrix.ot" "wholeLeg_Xvec_R.i3[0]";
connectAttr "legUpper_bone_placer_R_decomposeMatrix.ot" "wholeLeg_Xvec_R.i3[1]";
connectAttr "legLower_bone_placer_R_decomposeMatrix.ot" "legUpper_Xvec_R.i3[0]";
connectAttr "legUpper_bone_placer_R_decomposeMatrix.ot" "legUpper_Xvec_R.i3[1]";
connectAttr "legLower_bone_placer_R_decomposeMatrix.ot" "legLower_Xvec_R.i3[0]";
connectAttr "foot_bone_placer_R_decomposeMatrix.ot" "legLower_Xvec_R.i3[1]";
connectAttr "toeTip_bone_placer_R_decomposeMatrix.ot" "ballXvec_R.i3[0]";
connectAttr "ball_bone_placer_R_decomposeMatrix.ot" "ballXvec_R.i3[1]";
connectAttr "foot_bone_placer_R_decomposeMatrix.ot" "footXvec_R.i3[0]";
connectAttr "foot_bone_placer_R_Zpos_loc_decomposeMatrix.ot" "footXvec_R.i3[1]";
connectAttr "wholeLeg_Xvec_R.o3" "leg_Zvec_R.i1";
connectAttr "legUpper_Xvec_R.o3" "leg_Zvec_R.i2";
connectAttr "leg_Zvec_R.o" "leg_Zvec_norm_R.i";
connectAttr "footXvec_R.o3" "foot_Zvec_R.i2";
connectAttr "foot_Zvec_R.o" "foot_Zvec_norm_R.i";
connectAttr "ballXvec_R.o3" "ball_Zvec_R.i1";
connectAttr "ball_Zvec_R.o" "ball_Zvec_norm_R.i";
connectAttr "legUpper_bone_placer_R_decomposeMatrix.ot" "legUpper_Zpos_R.i3[0]";
connectAttr "leg_Zvec_norm_R.o" "legUpper_Zpos_R.i3[1]";
connectAttr "legLower_bone_placer_R_decomposeMatrix.ot" "legLower_Zpos_R.i3[0]";
connectAttr "leg_Zvec_norm_R.o" "legLower_Zpos_R.i3[1]";
connectAttr "foot_bone_placer_R_decomposeMatrix.ot" "foot_Zpos_R.i3[0]";
connectAttr "foot_Zvec_norm_R.o" "foot_Zpos_R.i3[1]";
connectAttr "ball_bone_placer_R_decomposeMatrix.ot" "ball_Zpos_R.i3[0]";
connectAttr "ball_Zvec_norm_R.o" "ball_Zpos_R.i3[1]";
connectAttr "toeTip_bone_placer_R_decomposeMatrix.ot" "toeTip_Zpos_R.i3[0]";
connectAttr "ball_Zvec_norm_R.o" "toeTip_Zpos_R.i3[1]";
connectAttr "root_bone_placer_up_vec_curveShapeOrig.ws" "cluster1root_bone_placer_upvec.ip[0].ig"
		;
connectAttr "root_bone_placer_up_vec_curveShapeOrig.l" "cluster1root_bone_placer_upvec.orggeom[0]"
		;
connectAttr "cluster1root_bone_placer_upvecHandle.wm" "cluster1root_bone_placer_upvec.ma"
		;
connectAttr "cluster1root_bone_placer_upvecHandleShape.x" "cluster1root_bone_placer_upvec.x"
		;
connectAttr "cluster1root_bone_placer_upvec.og[0]" "cluster2root_bone_placer_upvec.ip[0].ig"
		;
connectAttr "root_bone_placer_up_vec_curveShapeOrig.l" "cluster2root_bone_placer_upvec.orggeom[0]"
		;
connectAttr "cluster2root_bone_placer_upvecHandle.wm" "cluster2root_bone_placer_upvec.ma"
		;
connectAttr "cluster2root_bone_placer_upvecHandleShape.x" "cluster2root_bone_placer_upvec.x"
		;
connectAttr "pelvis_bone_placer_up_vec_curveShapeOrig.ws" "cluster1pelvis_bone_placer_upvec.ip[0].ig"
		;
connectAttr "pelvis_bone_placer_up_vec_curveShapeOrig.l" "cluster1pelvis_bone_placer_upvec.orggeom[0]"
		;
connectAttr "cluster1pelvis_bone_placer_upvecHandle.wm" "cluster1pelvis_bone_placer_upvec.ma"
		;
connectAttr "cluster1pelvis_bone_placer_upvecHandleShape.x" "cluster1pelvis_bone_placer_upvec.x"
		;
connectAttr "cluster1pelvis_bone_placer_upvec.og[0]" "cluster2pelvis_bone_placer_upvec.ip[0].ig"
		;
connectAttr "pelvis_bone_placer_up_vec_curveShapeOrig.l" "cluster2pelvis_bone_placer_upvec.orggeom[0]"
		;
connectAttr "cluster2pelvis_bone_placer_upvecHandle.wm" "cluster2pelvis_bone_placer_upvec.ma"
		;
connectAttr "cluster2pelvis_bone_placer_upvecHandleShape.x" "cluster2pelvis_bone_placer_upvec.x"
		;
connectAttr "spine1_bone_placer_up_vec_curveShapeOrig.ws" "cluster1spine1_bone_placer_upvec.ip[0].ig"
		;
connectAttr "spine1_bone_placer_up_vec_curveShapeOrig.l" "cluster1spine1_bone_placer_upvec.orggeom[0]"
		;
connectAttr "cluster1spine1_bone_placer_upvecHandle.wm" "cluster1spine1_bone_placer_upvec.ma"
		;
connectAttr "cluster1spine1_bone_placer_upvecHandleShape.x" "cluster1spine1_bone_placer_upvec.x"
		;
connectAttr "cluster1spine1_bone_placer_upvec.og[0]" "cluster2spine1_bone_placer_upvec.ip[0].ig"
		;
connectAttr "spine1_bone_placer_up_vec_curveShapeOrig.l" "cluster2spine1_bone_placer_upvec.orggeom[0]"
		;
connectAttr "cluster2spine1_bone_placer_upvecHandle.wm" "cluster2spine1_bone_placer_upvec.ma"
		;
connectAttr "cluster2spine1_bone_placer_upvecHandleShape.x" "cluster2spine1_bone_placer_upvec.x"
		;
connectAttr "spine2_bone_placer_up_vec_curveShapeOrig.ws" "cluster1spine2_bone_placer_upvec.ip[0].ig"
		;
connectAttr "spine2_bone_placer_up_vec_curveShapeOrig.l" "cluster1spine2_bone_placer_upvec.orggeom[0]"
		;
connectAttr "cluster1spine2_bone_placer_upvecHandle.wm" "cluster1spine2_bone_placer_upvec.ma"
		;
connectAttr "cluster1spine2_bone_placer_upvecHandleShape.x" "cluster1spine2_bone_placer_upvec.x"
		;
connectAttr "cluster1spine2_bone_placer_upvec.og[0]" "cluster2spine2_bone_placer_upvec.ip[0].ig"
		;
connectAttr "spine2_bone_placer_up_vec_curveShapeOrig.l" "cluster2spine2_bone_placer_upvec.orggeom[0]"
		;
connectAttr "cluster2spine2_bone_placer_upvecHandle.wm" "cluster2spine2_bone_placer_upvec.ma"
		;
connectAttr "cluster2spine2_bone_placer_upvecHandleShape.x" "cluster2spine2_bone_placer_upvec.x"
		;
connectAttr "spine3_bone_placer_up_vec_curveShapeOrig.ws" "cluster1spine3_bone_placer_upvec.ip[0].ig"
		;
connectAttr "spine3_bone_placer_up_vec_curveShapeOrig.l" "cluster1spine3_bone_placer_upvec.orggeom[0]"
		;
connectAttr "cluster1spine3_bone_placer_upvecHandle.wm" "cluster1spine3_bone_placer_upvec.ma"
		;
connectAttr "cluster1spine3_bone_placer_upvecHandleShape.x" "cluster1spine3_bone_placer_upvec.x"
		;
connectAttr "cluster1spine3_bone_placer_upvec.og[0]" "cluster2spine3_bone_placer_upvec.ip[0].ig"
		;
connectAttr "spine3_bone_placer_up_vec_curveShapeOrig.l" "cluster2spine3_bone_placer_upvec.orggeom[0]"
		;
connectAttr "cluster2spine3_bone_placer_upvecHandle.wm" "cluster2spine3_bone_placer_upvec.ma"
		;
connectAttr "cluster2spine3_bone_placer_upvecHandleShape.x" "cluster2spine3_bone_placer_upvec.x"
		;
connectAttr "spine4_bone_placer_up_vec_curveShapeOrig.ws" "cluster1spine4_bone_placer_upvec.ip[0].ig"
		;
connectAttr "spine4_bone_placer_up_vec_curveShapeOrig.l" "cluster1spine4_bone_placer_upvec.orggeom[0]"
		;
connectAttr "cluster1spine4_bone_placer_upvecHandle.wm" "cluster1spine4_bone_placer_upvec.ma"
		;
connectAttr "cluster1spine4_bone_placer_upvecHandleShape.x" "cluster1spine4_bone_placer_upvec.x"
		;
connectAttr "cluster1spine4_bone_placer_upvec.og[0]" "cluster2spine4_bone_placer_upvec.ip[0].ig"
		;
connectAttr "spine4_bone_placer_up_vec_curveShapeOrig.l" "cluster2spine4_bone_placer_upvec.orggeom[0]"
		;
connectAttr "cluster2spine4_bone_placer_upvecHandle.wm" "cluster2spine4_bone_placer_upvec.ma"
		;
connectAttr "cluster2spine4_bone_placer_upvecHandleShape.x" "cluster2spine4_bone_placer_upvec.x"
		;
connectAttr "spine5_bone_placer_up_vec_curveShapeOrig.ws" "cluster1spine5_bone_placer_upvec.ip[0].ig"
		;
connectAttr "spine5_bone_placer_up_vec_curveShapeOrig.l" "cluster1spine5_bone_placer_upvec.orggeom[0]"
		;
connectAttr "cluster1spine5_bone_placer_upvecHandle.wm" "cluster1spine5_bone_placer_upvec.ma"
		;
connectAttr "cluster1spine5_bone_placer_upvecHandleShape.x" "cluster1spine5_bone_placer_upvec.x"
		;
connectAttr "cluster1spine5_bone_placer_upvec.og[0]" "cluster2spine5_bone_placer_upvec.ip[0].ig"
		;
connectAttr "spine5_bone_placer_up_vec_curveShapeOrig.l" "cluster2spine5_bone_placer_upvec.orggeom[0]"
		;
connectAttr "cluster2spine5_bone_placer_upvecHandle.wm" "cluster2spine5_bone_placer_upvec.ma"
		;
connectAttr "cluster2spine5_bone_placer_upvecHandleShape.x" "cluster2spine5_bone_placer_upvec.x"
		;
connectAttr "neck1_bone_placer_up_vec_curveShapeOrig.ws" "cluster1neck1_bone_placer_upvec.ip[0].ig"
		;
connectAttr "neck1_bone_placer_up_vec_curveShapeOrig.l" "cluster1neck1_bone_placer_upvec.orggeom[0]"
		;
connectAttr "cluster1neck1_bone_placer_upvecHandle.wm" "cluster1neck1_bone_placer_upvec.ma"
		;
connectAttr "cluster1neck1_bone_placer_upvecHandleShape.x" "cluster1neck1_bone_placer_upvec.x"
		;
connectAttr "cluster1neck1_bone_placer_upvec.og[0]" "cluster2neck1_bone_placer_upvec.ip[0].ig"
		;
connectAttr "neck1_bone_placer_up_vec_curveShapeOrig.l" "cluster2neck1_bone_placer_upvec.orggeom[0]"
		;
connectAttr "cluster2neck1_bone_placer_upvecHandle.wm" "cluster2neck1_bone_placer_upvec.ma"
		;
connectAttr "cluster2neck1_bone_placer_upvecHandleShape.x" "cluster2neck1_bone_placer_upvec.x"
		;
connectAttr "neck2_bone_placer_up_vec_curveShapeOrig.ws" "cluster1neck2_bone_placer_upvec.ip[0].ig"
		;
connectAttr "neck2_bone_placer_up_vec_curveShapeOrig.l" "cluster1neck2_bone_placer_upvec.orggeom[0]"
		;
connectAttr "cluster1neck2_bone_placer_upvecHandle.wm" "cluster1neck2_bone_placer_upvec.ma"
		;
connectAttr "cluster1neck2_bone_placer_upvecHandleShape.x" "cluster1neck2_bone_placer_upvec.x"
		;
connectAttr "cluster1neck2_bone_placer_upvec.og[0]" "cluster2neck2_bone_placer_upvec.ip[0].ig"
		;
connectAttr "neck2_bone_placer_up_vec_curveShapeOrig.l" "cluster2neck2_bone_placer_upvec.orggeom[0]"
		;
connectAttr "cluster2neck2_bone_placer_upvecHandle.wm" "cluster2neck2_bone_placer_upvec.ma"
		;
connectAttr "cluster2neck2_bone_placer_upvecHandleShape.x" "cluster2neck2_bone_placer_upvec.x"
		;
connectAttr "head_bone_placer_up_vec_curveShapeOrig.ws" "cluster1head_bone_placer_upvec.ip[0].ig"
		;
connectAttr "head_bone_placer_up_vec_curveShapeOrig.l" "cluster1head_bone_placer_upvec.orggeom[0]"
		;
connectAttr "cluster1head_bone_placer_upvecHandle.wm" "cluster1head_bone_placer_upvec.ma"
		;
connectAttr "cluster1head_bone_placer_upvecHandleShape.x" "cluster1head_bone_placer_upvec.x"
		;
connectAttr "cluster1head_bone_placer_upvec.og[0]" "cluster2head_bone_placer_upvec.ip[0].ig"
		;
connectAttr "head_bone_placer_up_vec_curveShapeOrig.l" "cluster2head_bone_placer_upvec.orggeom[0]"
		;
connectAttr "cluster2head_bone_placer_upvecHandle.wm" "cluster2head_bone_placer_upvec.ma"
		;
connectAttr "cluster2head_bone_placer_upvecHandleShape.x" "cluster2head_bone_placer_upvec.x"
		;
connectAttr "spine_proxy_curveShapeOrig.ws" "spine_placercluster_0.ip[0].ig";
connectAttr "spine_proxy_curveShapeOrig.l" "spine_placercluster_0.orggeom[0]";
connectAttr "spine_placercluster_0Handle.wm" "spine_placercluster_0.ma";
connectAttr "spine_placercluster_0HandleShape.x" "spine_placercluster_0.x";
connectAttr "spine_placercluster_0.og[0]" "spine_placercluster_1.ip[0].ig";
connectAttr "spine_proxy_curveShapeOrig.l" "spine_placercluster_1.orggeom[0]";
connectAttr "spine_placercluster_1Handle.wm" "spine_placercluster_1.ma";
connectAttr "spine_placercluster_1HandleShape.x" "spine_placercluster_1.x";
connectAttr "spine_placercluster_1.og[0]" "spine_placercluster_2.ip[0].ig";
connectAttr "spine_proxy_curveShapeOrig.l" "spine_placercluster_2.orggeom[0]";
connectAttr "spine_placercluster_2Handle.wm" "spine_placercluster_2.ma";
connectAttr "spine_placercluster_2HandleShape.x" "spine_placercluster_2.x";
connectAttr "spine_placercluster_2.og[0]" "spine_placercluster_3.ip[0].ig";
connectAttr "spine_proxy_curveShapeOrig.l" "spine_placercluster_3.orggeom[0]";
connectAttr "spine_placercluster_3Handle.wm" "spine_placercluster_3.ma";
connectAttr "spine_placercluster_3HandleShape.x" "spine_placercluster_3.x";
connectAttr "spine_placercluster_3.og[0]" "spine_placercluster_4.ip[0].ig";
connectAttr "spine_proxy_curveShapeOrig.l" "spine_placercluster_4.orggeom[0]";
connectAttr "spine_placercluster_4Handle.wm" "spine_placercluster_4.ma";
connectAttr "spine_placercluster_4HandleShape.x" "spine_placercluster_4.x";
connectAttr "spine_placercluster_4.og[0]" "spine_placercluster_5.ip[0].ig";
connectAttr "spine_proxy_curveShapeOrig.l" "spine_placercluster_5.orggeom[0]";
connectAttr "spine_placercluster_5Handle.wm" "spine_placercluster_5.ma";
connectAttr "spine_placercluster_5HandleShape.x" "spine_placercluster_5.x";
connectAttr "spine_placercluster_5.og[0]" "spine_placercluster_6.ip[0].ig";
connectAttr "spine_proxy_curveShapeOrig.l" "spine_placercluster_6.orggeom[0]";
connectAttr "spine_placercluster_6Handle.wm" "spine_placercluster_6.ma";
connectAttr "spine_placercluster_6HandleShape.x" "spine_placercluster_6.x";
connectAttr "spine_placercluster_6.og[0]" "spine_placercluster_7.ip[0].ig";
connectAttr "spine_proxy_curveShapeOrig.l" "spine_placercluster_7.orggeom[0]";
connectAttr "spine_placercluster_7Handle.wm" "spine_placercluster_7.ma";
connectAttr "spine_placercluster_7HandleShape.x" "spine_placercluster_7.x";
connectAttr "spine_placercluster_7.og[0]" "spine_placercluster_8.ip[0].ig";
connectAttr "spine_proxy_curveShapeOrig.l" "spine_placercluster_8.orggeom[0]";
connectAttr "spine_placercluster_8Handle.wm" "spine_placercluster_8.ma";
connectAttr "spine_placercluster_8HandleShape.x" "spine_placercluster_8.x";
connectAttr "spine_placercluster_8.og[0]" "spine_placercluster_9.ip[0].ig";
connectAttr "spine_proxy_curveShapeOrig.l" "spine_placercluster_9.orggeom[0]";
connectAttr "spine_placercluster_9Handle.wm" "spine_placercluster_9.ma";
connectAttr "spine_placercluster_9HandleShape.x" "spine_placercluster_9.x";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "spine_placercluster_8Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "spine_placercluster_7Handle_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "spine_placercluster_8HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "spine_placercluster_7HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "spine_placercluster_8.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "spine_placercluster_7Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "spine_placercluster_8Handle_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "spine_placercluster_9.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "spine_placercluster_9Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "spine_placercluster_9HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "spine_placercluster_9Handle_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "spine_placercluster_5HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "spine_placercluster_6.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "spine_placercluster_4Handle_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "spine_placercluster_5Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "spine_placercluster_5Handle_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "spine_placercluster_6Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "spine_placercluster_6Handle_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "spine_placercluster_6HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "spine_placercluster_5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "spine_placercluster_7.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "spine2_bone_placer_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "spine1_bone_placer.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "spine1_bone_placer_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "cluster1spine1_bone_placer_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "spine1_bone_placerShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "cluster1spine1_bone_placer_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "cluster2spine1_bone_placer_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "cluster2spine1_bone_placer_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "root_bone_placer_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "spine2_bone_placer_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "cluster1spine1_bone_placer_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "spine3_bone_placer.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "spine1_bone_placer_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "spine2_bone_placerShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "pelvis_bone_placer_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "spine1_bone_placer_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "cluster2spine1_bone_placer_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "cluster2spine1_bone_placer_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "spine1_bone_placer_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "cluster1spine1_bone_placer_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "spine2_bone_placer.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "spine2_bone_placer_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "spine1_bone_placer_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "root_bone_placer_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "spine2_bone_placer_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "spine1_bone_placer_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "cluster1spine2_bone_placer_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "spine2_bone_placer_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "cluster1spine2_bone_placer_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "cluster1spine2_bone_placer_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "spine2_bone_placer_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "cluster2spine2_bone_placer_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "cluster2spine2_bone_placer_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "cluster1spine2_bone_placer_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "cluster2spine2_bone_placer_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "cluster2spine2_bone_placer_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "pelvis_bone_placer_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "spine3_bone_placer_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "spine4_bone_placerShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "spine3_bone_placer_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "spine4_bone_placer_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "spine4_bone_placer_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "spine4_bone_placer_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "spine4_bone_placer_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "cluster1spine4_bone_placer_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "spine3_bone_placer_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "spine3_bone_placer_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "spine4_bone_placer_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "cluster2spine3_bone_placer_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "spine4_bone_placer_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "cluster1spine4_bone_placer_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "spine1_bone_placer_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "spine3_bone_placerShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "cluster2spine3_bone_placer_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "spine1_bone_placer_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "cluster1spine3_bone_placer_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "spine4_bone_placer.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "cluster1spine3_bone_placer_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn"
		;
connectAttr "spine3_bone_placer_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "cluster1spine3_bone_placer_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "cluster1spine3_bone_placer_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "cluster2spine3_bone_placer_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "spine3_bone_placer_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "cluster2spine3_bone_placer_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "cluster2spine4_bone_placer_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "cluster2spine4_bone_placer_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "cluster1spine4_bone_placer_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "spine2_bone_placer_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "spine5_bone_placer.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "spine5_bone_placerShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "cluster1spine4_bone_placer_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "cluster2spine4_bone_placer_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "spine2_bone_placer_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "cluster2spine4_bone_placer_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "cluster1spine5_bone_placer_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "neck1_bone_placer.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "neck1_bone_placerShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn"
		;
connectAttr "neck1_bone_placer_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "cluster2spine5_bone_placer_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn"
		;
connectAttr "cluster1spine5_bone_placer_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "spine5_bone_placer_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn"
		;
connectAttr "spine5_bone_placer_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "cluster1spine5_bone_placer_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn"
		;
connectAttr "cluster2spine5_bone_placer_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn"
		;
connectAttr "spine3_bone_placer_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn"
		;
connectAttr "spine5_bone_placer_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "neck1_bone_placer_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "neck1_bone_placer_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "spine5_bone_placer_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "cluster2spine5_bone_placer_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn"
		;
connectAttr "cluster1spine5_bone_placer_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "cluster2spine5_bone_placer_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn"
		;
connectAttr "spine5_bone_placer_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn"
		;
connectAttr "spine5_bone_placer_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "spine3_bone_placer_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn"
		;
connectAttr "neck1_bone_placer_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn"
		;
connectAttr "neck1_bone_placer_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
		;
connectAttr "cluster1neck1_bone_placer_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn"
		;
connectAttr "cluster2neck1_bone_placer_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn"
		;
connectAttr "neck2_bone_placer_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "cluster1neck1_bone_placer_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "cluster2neck1_bone_placer_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn"
		;
connectAttr "neck2_bone_placer_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "cluster1neck1_bone_placer_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn"
		;
connectAttr "neck1_bone_placer_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn"
		;
connectAttr "neck2_bone_placer_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn"
		;
connectAttr "neck2_bone_placer_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn"
		;
connectAttr "cluster2neck1_bone_placer_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "neck2_bone_placer.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn"
		;
connectAttr "neck2_bone_placerShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn"
		;
connectAttr "cluster1neck2_bone_placer_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn"
		;
connectAttr "cluster1neck2_bone_placer_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn"
		;
connectAttr "cluster2neck2_bone_placer_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "cluster2neck2_bone_placer_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "cluster1neck1_bone_placer_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "cluster1neck2_bone_placer_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "cluster1neck2_bone_placer_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "cluster2neck2_bone_placer_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn"
		;
connectAttr "cluster2neck1_bone_placer_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn"
		;
connectAttr "neck2_bone_placer_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn"
		;
connectAttr "cluster2neck2_bone_placer_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn"
		;
connectAttr "spine4_bone_placer_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn"
		;
connectAttr "neck2_bone_placer_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn"
		;
connectAttr "head_bone_placer_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn"
		;
connectAttr "head_bone_placer_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn"
		;
connectAttr "spine4_bone_placer_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn"
		;
connectAttr "neck1_bone_placer_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn"
		;
connectAttr "neck1_bone_placer_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn"
		;
connectAttr "spine5_bone_placer_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn"
		;
connectAttr "head_bone_placer.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn"
		;
connectAttr "head_bone_placer_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[151].dn"
		;
connectAttr "spine5_bone_placer_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn"
		;
connectAttr "head_bone_placerShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn"
		;
connectAttr "spine_placercluster_0Handle_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn"
		;
connectAttr "spine_placercluster_1HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[155].dn"
		;
connectAttr "spine_placercluster_2HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn"
		;
connectAttr "head_bone_placer_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[157].dn"
		;
connectAttr "cluster2head_bone_placer_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[158].dn"
		;
connectAttr "cluster1head_bone_placer_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[159].dn"
		;
connectAttr "spine_proxy_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[160].dn"
		;
connectAttr "spine_placercluster_1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[161].dn"
		;
connectAttr "spine_placercluster_2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[162].dn"
		;
connectAttr "spine_placercluster_0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[163].dn"
		;
connectAttr "head_bone_placer_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[164].dn"
		;
connectAttr "cluster2head_bone_placer_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[165].dn"
		;
connectAttr "spine_placercluster_1Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[166].dn"
		;
connectAttr "cluster2head_bone_placer_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[167].dn"
		;
connectAttr "neck2_bone_placer_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[168].dn"
		;
connectAttr "cluster1head_bone_placer_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[169].dn"
		;
connectAttr "cluster2head_bone_placer_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[170].dn"
		;
connectAttr "cluster1head_bone_placer_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[171].dn"
		;
connectAttr "head_bone_placer_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[172].dn"
		;
connectAttr "cluster1head_bone_placer_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[173].dn"
		;
connectAttr "spine_proxy_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[174].dn"
		;
connectAttr "spine_proxy_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[175].dn"
		;
connectAttr "spine_placercluster_0Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[176].dn"
		;
connectAttr "spine_placercluster_0HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[177].dn"
		;
connectAttr "neck2_bone_placer_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[178].dn"
		;
connectAttr "spine_placercluster_1Handle_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[179].dn"
		;
connectAttr "spine_placercluster_2Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[180].dn"
		;
connectAttr "spine_placercluster_2Handle_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[181].dn"
		;
connectAttr "spine_placercluster_3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[182].dn"
		;
connectAttr "spine_placercluster_3Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[183].dn"
		;
connectAttr "spine_placercluster_3HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[184].dn"
		;
connectAttr "spine_placercluster_3Handle_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[185].dn"
		;
connectAttr "spine_placercluster_4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[186].dn"
		;
connectAttr "spine_placercluster_4Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[187].dn"
		;
connectAttr "spine_placercluster_4HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[188].dn"
		;
connectAttr "cluster2toeTip_bone_placer_R_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[189].dn"
		;
connectAttr "leg_proxy_curve_leg_RShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[190].dn"
		;
connectAttr "_R_placercluster_0Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[191].dn"
		;
connectAttr "cluster2toeTip_bone_placer_R_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[192].dn"
		;
connectAttr "_R_placercluster_0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[193].dn"
		;
connectAttr "_R_placercluster_3Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[194].dn"
		;
connectAttr "LEG_R_MAIN.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[195].dn";
connectAttr "cluster2toeTip_bone_placer_R_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[196].dn"
		;
connectAttr "cluster1toeTip_bone_placer_R_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[197].dn"
		;
connectAttr "leg_proxy_curve_leg_RShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[198].dn"
		;
connectAttr "leg_proxy_curve_leg_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[199].dn"
		;
connectAttr "_R_placercluster_0HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[200].dn"
		;
connectAttr "_R_placercluster_0Handle_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[201].dn"
		;
connectAttr "_R_placercluster_1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[202].dn"
		;
connectAttr "cluster2toeTip_bone_placer_R_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[203].dn"
		;
connectAttr "_R_placercluster_2Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[204].dn"
		;
connectAttr "_R_placercluster_2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[205].dn"
		;
connectAttr "_R_placercluster_1Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[206].dn"
		;
connectAttr "_R_placercluster_2HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[207].dn"
		;
connectAttr "_R_placercluster_2Handle_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[208].dn"
		;
connectAttr "_R_placercluster_3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[209].dn"
		;
connectAttr "_R_placercluster_1Handle_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[210].dn"
		;
connectAttr "_R_placercluster_3Handle_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[211].dn"
		;
connectAttr "_R_placercluster_4HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[212].dn"
		;
connectAttr "_R_placercluster_1HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[213].dn"
		;
connectAttr "legLower_bone_placer_R_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[214].dn"
		;
connectAttr "toeTip_bone_placer_R_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[215].dn"
		;
connectAttr "_R_placercluster_3HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[216].dn"
		;
connectAttr "legLower_Xvec_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[217].dn"
		;
connectAttr "legUpper_bone_placer_R_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[218].dn"
		;
connectAttr "ballXvec_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[219].dn";
connectAttr "_R_placercluster_4Handle_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[220].dn"
		;
connectAttr "foot_bone_placer_R_Zpos_loc_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[221].dn"
		;
connectAttr "footXvec_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[222].dn";
connectAttr "foot_bone_placer_R_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[223].dn"
		;
connectAttr "legUpper_Xvec_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[224].dn"
		;
connectAttr "leg_Zvec_norm_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[225].dn"
		;
connectAttr "foot_Zvec_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[226].dn";
connectAttr "foot_Zvec_norm_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[227].dn"
		;
connectAttr "_R_placercluster_4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[228].dn"
		;
connectAttr "_R_placercluster_4Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[229].dn"
		;
connectAttr "ball_bone_placer_R_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[230].dn"
		;
connectAttr "wholeLeg_Xvec_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[231].dn"
		;
connectAttr "leg_Zvec_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[232].dn";
connectAttr "footOut_placer_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[233].dn"
		;
connectAttr "root_bone_placerShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[234].dn"
		;
connectAttr "root_bone_placer_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[235].dn"
		;
connectAttr "footIn_placer_RShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[236].dn"
		;
connectAttr "ball_Zvec_norm_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[237].dn"
		;
connectAttr "root_bone_placer_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[238].dn"
		;
connectAttr "footOut_placer_RShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[239].dn"
		;
connectAttr "root_bone_placer_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[240].dn"
		;
connectAttr "SPINE_z_vec_LOCS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[241].dn"
		;
connectAttr "footIn_placer_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[242].dn"
		;
connectAttr "root_bone_placer.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[243].dn"
		;
connectAttr "ball_Zvec_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[244].dn";
connectAttr "legLower_Zpos_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[245].dn"
		;
connectAttr "ball_Zpos_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[246].dn";
connectAttr "legUpper_bone_placer_R_upVector_grp_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[247].dn"
		;
connectAttr "foot_Zpos_loc_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[248].dn"
		;
connectAttr "legLower_bone_placer_R_upVector_grp_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[249].dn"
		;
connectAttr "toeTip_Zpos_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[250].dn";
connectAttr "foot_bone_placer_R_upVector_grp_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[251].dn"
		;
connectAttr "ball_bone_placer_R_upVector_grp_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[252].dn"
		;
connectAttr "toeTip_bone_placer_R_upVector_grp_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[253].dn"
		;
connectAttr "heel_placer_RShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[254].dn"
		;
connectAttr "SPINE_RIG_PLACER.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[255].dn"
		;
connectAttr "legUpper_Zpos_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[256].dn"
		;
connectAttr "foot_Zpos_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[257].dn";
connectAttr "foot_Zpos_loc_RShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[258].dn"
		;
connectAttr "heel_placer_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[259].dn";
connectAttr "root_bone_placer_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[260].dn"
		;
connectAttr "root_bone_placer_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[261].dn"
		;
connectAttr "cluster1root_bone_placer_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[262].dn"
		;
connectAttr "root_bone_placer_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[263].dn"
		;
connectAttr "cluster1root_bone_placer_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[264].dn"
		;
connectAttr "cluster1root_bone_placer_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[265].dn"
		;
connectAttr "cluster2root_bone_placer_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[266].dn"
		;
connectAttr "cluster1root_bone_placer_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[267].dn"
		;
connectAttr "cluster2pelvis_bone_placer_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[268].dn"
		;
connectAttr "cluster1pelvis_bone_placer_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[269].dn"
		;
connectAttr "world_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[270].dn";
connectAttr "cluster1pelvis_bone_placer_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[271].dn"
		;
connectAttr "cluster2root_bone_placer_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[272].dn"
		;
connectAttr "world_ctrl_ptr1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[273].dn"
		;
connectAttr "pelvis_bone_placer_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[274].dn"
		;
connectAttr "pelvis_bone_placer.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[275].dn"
		;
connectAttr "pelvis_bone_placer_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[276].dn"
		;
connectAttr "cluster1pelvis_bone_placer_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[277].dn"
		;
connectAttr "worldSpace_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[278].dn"
		;
connectAttr "cluster2root_bone_placer_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[279].dn"
		;
connectAttr "pelvis_bone_placer_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[280].dn"
		;
connectAttr "cluster1pelvis_bone_placer_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[281].dn"
		;
connectAttr "cluster2pelvis_bone_placer_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[282].dn"
		;
connectAttr "cluster2root_bone_placer_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[283].dn"
		;
connectAttr "pelvis_bone_placer_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[284].dn"
		;
connectAttr "cluster2pelvis_bone_placer_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[285].dn"
		;
connectAttr "world_ctrlShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[286].dn"
		;
connectAttr "worldSpace_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[287].dn"
		;
connectAttr "pelvis_bone_placerShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[288].dn"
		;
connectAttr "Rig_Controls.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[289].dn";
connectAttr "pelvis_bone_placer_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[290].dn"
		;
connectAttr "cluster2pelvis_bone_placer_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[291].dn"
		;
connectAttr "pelvis_bone_placer_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[292].dn"
		;
connectAttr "armLower_bone_placer_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[293].dn"
		;
connectAttr "armUpper_bone_placer_L_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[294].dn"
		;
connectAttr "cluster1armUpper_bone_placer_L_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[295].dn"
		;
connectAttr "armUpper_bone_placer_L_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[296].dn"
		;
connectAttr "armLower_bone_placer_L_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[297].dn"
		;
connectAttr "armLower_bone_placer_L_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[298].dn"
		;
connectAttr "armLower_bone_placer_L_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[299].dn"
		;
connectAttr "cluster1armLower_bone_placer_L_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[300].dn"
		;
connectAttr "armLower_bone_placer_L_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[301].dn"
		;
connectAttr "armLower_bone_placer_L_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[302].dn"
		;
connectAttr "cluster2armUpper_bone_placer_L_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[303].dn"
		;
connectAttr "cluster1armLower_bone_placer_L_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[304].dn"
		;
connectAttr "cluster1armLower_bone_placer_L_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[305].dn"
		;
connectAttr "armUpper_bone_placer_L_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[306].dn"
		;
connectAttr "cluster1armUpper_bone_placer_L_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[307].dn"
		;
connectAttr "armUpper_bone_placer_L_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[308].dn"
		;
connectAttr "armUpper_bone_placer_L_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[309].dn"
		;
connectAttr "armUpper_bone_placer_L_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[310].dn"
		;
connectAttr "cluster1armUpper_bone_placer_L_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[311].dn"
		;
connectAttr "armUpper_bone_placer_L_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[312].dn"
		;
connectAttr "armUpper_bone_placer_L_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[313].dn"
		;
connectAttr "cluster1armUpper_bone_placer_L_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[314].dn"
		;
connectAttr "cluster2armUpper_bone_placer_L_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[315].dn"
		;
connectAttr "cluster2armUpper_bone_placer_L_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[316].dn"
		;
connectAttr "cluster2armUpper_bone_placer_L_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[317].dn"
		;
connectAttr "armLower_bone_placer_LShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[318].dn"
		;
connectAttr "armLower_bone_placer_L_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[319].dn"
		;
connectAttr "armLower_bone_placer_L_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[320].dn"
		;
connectAttr "armLower_bone_placer_L_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[321].dn"
		;
connectAttr "cluster2armLower_bone_placer_L_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[322].dn"
		;
connectAttr "hand_bone_placer_L_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[323].dn"
		;
connectAttr "hand_bone_placer_L_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[324].dn"
		;
connectAttr "cluster1hand_bone_placer_L_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[325].dn"
		;
connectAttr "cluster2armLower_bone_placer_L_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[326].dn"
		;
connectAttr "cluster1armLower_bone_placer_L_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[327].dn"
		;
connectAttr "cluster2armLower_bone_placer_L_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[328].dn"
		;
connectAttr "cluster2armLower_bone_placer_L_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[329].dn"
		;
connectAttr "hand_bone_placer_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[330].dn"
		;
connectAttr "hand_bone_placer_LShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[331].dn"
		;
connectAttr "hand_bone_placer_L_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[332].dn"
		;
connectAttr "hand_bone_placer_L_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[333].dn"
		;
connectAttr "hand_bone_placer_L_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[334].dn"
		;
connectAttr "hand_bone_placer_L_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[335].dn"
		;
connectAttr "hand_bone_placer_L_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[336].dn"
		;
connectAttr "hand_bone_placer_L_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[337].dn"
		;
connectAttr "cluster1hand_bone_placer_L_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[338].dn"
		;
connectAttr "cluster1hand_bone_placer_L_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[339].dn"
		;
connectAttr "placercluster1_arm_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[340].dn"
		;
connectAttr "placercluster2_arm_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[341].dn"
		;
connectAttr "ARM_L_MAIN.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[342].dn";
connectAttr "cluster2hand_bone_placer_L_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[343].dn"
		;
connectAttr "armUpper_bone_placer_L_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[344].dn"
		;
connectAttr "hand_bone_placer_L_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[345].dn"
		;
connectAttr "upperArmVec_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[346].dn";
connectAttr "placercluster2_arm_LHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[347].dn"
		;
connectAttr "placercluster1_arm_LHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[348].dn"
		;
connectAttr "proxy_curve_arm_LShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[349].dn"
		;
connectAttr "placercluster0_arm_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[350].dn"
		;
connectAttr "proxy_curve_arm_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[351].dn"
		;
connectAttr "cluster2hand_bone_placer_L_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[352].dn"
		;
connectAttr "placercluster1_arm_LHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[353].dn"
		;
connectAttr "proxy_curve_arm_LShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[354].dn"
		;
connectAttr "placercluster2_arm_LHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[355].dn"
		;
connectAttr "cluster2hand_bone_placer_L_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[356].dn"
		;
connectAttr "placercluster2_arm_LHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[357].dn"
		;
connectAttr "cluster2hand_bone_placer_L_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[358].dn"
		;
connectAttr "placercluster3_arm_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[359].dn"
		;
connectAttr "cluster1hand_bone_placer_L_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[360].dn"
		;
connectAttr "placercluster0_arm_LHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[361].dn"
		;
connectAttr "placercluster3_arm_LHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[362].dn"
		;
connectAttr "placercluster0_arm_LHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[363].dn"
		;
connectAttr "placercluster0_arm_LHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[364].dn"
		;
connectAttr "placercluster1_arm_LHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[365].dn"
		;
connectAttr "placercluster3_arm_LHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[366].dn"
		;
connectAttr "placercluster3_arm_LHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[367].dn"
		;
connectAttr "clavicle_bone_placer_L_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[368].dn"
		;
connectAttr "armLower_bone_placer_L_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[369].dn"
		;
connectAttr "clavVec_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[370].dn";
connectAttr "wholeArmVec_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[371].dn";
connectAttr "clavUpVec_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[372].dn";
connectAttr "clavicle_bone_placer_R_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[373].dn"
		;
connectAttr "cluster1clavicle_bone_placer_R_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[374].dn"
		;
connectAttr "|ARM_R_MAIN|ARM_R_RIG_PLACER|grp_shapeShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[375].dn"
		;
connectAttr "armLower_bone_placer_L_upVector_grp_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[376].dn"
		;
connectAttr "elbowUpVec_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[377].dn";
connectAttr "ARM_R_RIG_PLACER.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[378].dn"
		;
connectAttr "clavicle_bone_placer_RShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[379].dn"
		;
connectAttr "clavicle_bone_placer_R_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[380].dn"
		;
connectAttr "clavicle_bone_placer_R_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[381].dn"
		;
connectAttr "ARM_R_z_vec_LOCS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[382].dn"
		;
connectAttr "clavicle_bone_placer_R_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[383].dn"
		;
connectAttr "cluster1clavicle_bone_placer_R_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[384].dn"
		;
connectAttr "clavicle_bone_placer_R_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[385].dn"
		;
connectAttr "clavicle_bone_placer_R_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[386].dn"
		;
connectAttr "clavicle_bone_placer_R_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[387].dn"
		;
connectAttr "clavicle_bone_placer_R_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[388].dn"
		;
connectAttr "clavicle_bone_placer_L_upVector_grp_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[389].dn"
		;
connectAttr "armZupVec_norm_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[390].dn"
		;
connectAttr "clavZupVec_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[391].dn";
connectAttr "wristUpVec_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[392].dn";
connectAttr "armUpper_bone_placer_L_upVector_grp_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[393].dn"
		;
connectAttr "clavicle_bone_placer_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[394].dn"
		;
connectAttr "shoulderUpVec_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[395].dn"
		;
connectAttr "armZupVec_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[396].dn";
connectAttr "clavZupVec_norm_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[397].dn"
		;
connectAttr "hand_bone_placer_L_upVector_grp_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[398].dn"
		;
connectAttr "cluster1clavicle_bone_placer_R_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[399].dn"
		;
connectAttr "cluster2clavicle_bone_placer_R_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[400].dn"
		;
connectAttr "cluster2clavicle_bone_placer_R_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[401].dn"
		;
connectAttr "cluster2clavicle_bone_placer_R_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[402].dn"
		;
connectAttr "cluster1clavicle_bone_placer_L_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[403].dn"
		;
connectAttr "clavicle_bone_placer_L_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[404].dn"
		;
connectAttr "clavicle_bone_placer_L_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[405].dn"
		;
connectAttr "cluster1clavicle_bone_placer_L_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[406].dn"
		;
connectAttr "clavicle_bone_placer_L_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[407].dn"
		;
connectAttr "armUpper_bone_placer_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[408].dn"
		;
connectAttr "clavicle_bone_placer_L_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[409].dn"
		;
connectAttr "cluster2clavicle_bone_placer_L_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[410].dn"
		;
connectAttr "ARM_L_RIG_PLACER.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[411].dn"
		;
connectAttr "armUpper_bone_placer_LShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[412].dn"
		;
connectAttr "ARM_L_z_vec_LOCS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[413].dn"
		;
connectAttr "clavicle_bone_placer_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[414].dn"
		;
connectAttr "clavicle_bone_placer_L_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[415].dn"
		;
connectAttr "|ARM_L_MAIN|ARM_L_RIG_PLACER|grp_shapeShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[416].dn"
		;
connectAttr "clavicle_bone_placer_L_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[417].dn"
		;
connectAttr "clavicle_bone_placer_L_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[418].dn"
		;
connectAttr "cluster1clavicle_bone_placer_L_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[420].dn"
		;
connectAttr "clavicle_bone_placer_LShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[421].dn"
		;
connectAttr "spaces_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[422].dn";
connectAttr "clavicle_bone_placer_L_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[423].dn"
		;
connectAttr "cluster1clavicle_bone_placer_L_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[424].dn"
		;
connectAttr "cluster2clavicle_bone_placer_L_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[425].dn"
		;
connectAttr "cluster2clavicle_bone_placer_L_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[426].dn"
		;
connectAttr "cluster2clavicle_bone_placer_L_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[427].dn"
		;
connectAttr "cluster1legLower_bone_placer_L_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[428].dn"
		;
connectAttr "foot_bone_placer_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[429].dn"
		;
connectAttr "cluster2legLower_bone_placer_L_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[430].dn"
		;
connectAttr "cluster2legLower_bone_placer_L_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[431].dn"
		;
connectAttr "foot_bone_placer_LShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[432].dn"
		;
connectAttr "foot_bone_placer_L_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[433].dn"
		;
connectAttr "foot_bone_placer_L_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[434].dn"
		;
connectAttr "foot_bone_placer_L_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[435].dn"
		;
connectAttr "foot_bone_placer_L_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[436].dn"
		;
connectAttr "foot_bone_placer_L_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[437].dn"
		;
connectAttr "cluster2legLower_bone_placer_L_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[438].dn"
		;
connectAttr "foot_bone_placer_L_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[439].dn"
		;
connectAttr "foot_bone_placer_L_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[440].dn"
		;
connectAttr "ball_bone_placer_L_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[441].dn"
		;
connectAttr "cluster2ball_bone_placer_L_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[442].dn"
		;
connectAttr "toeTip_bone_placer_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[443].dn"
		;
connectAttr "ball_bone_placer_L_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[444].dn"
		;
connectAttr "cluster2foot_bone_placer_L_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[445].dn"
		;
connectAttr "cluster1foot_bone_placer_L_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[446].dn"
		;
connectAttr "ball_bone_placer_L_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[447].dn"
		;
connectAttr "ball_bone_placer_L_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[448].dn"
		;
connectAttr "cluster2foot_bone_placer_L_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[449].dn"
		;
connectAttr "ball_bone_placer_L_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[450].dn"
		;
connectAttr "cluster1ball_bone_placer_L_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[451].dn"
		;
connectAttr "cluster2ball_bone_placer_L_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[452].dn"
		;
connectAttr "cluster2foot_bone_placer_L_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[453].dn"
		;
connectAttr "ball_bone_placer_L_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[454].dn"
		;
connectAttr "cluster2foot_bone_placer_L_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[455].dn"
		;
connectAttr "cluster1ball_bone_placer_L_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[456].dn"
		;
connectAttr "cluster1foot_bone_placer_L_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[457].dn"
		;
connectAttr "ball_bone_placer_L_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[458].dn"
		;
connectAttr "cluster2ball_bone_placer_L_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[459].dn"
		;
connectAttr "cluster1ball_bone_placer_L_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[460].dn"
		;
connectAttr "ball_bone_placer_LShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[461].dn"
		;
connectAttr "cluster1foot_bone_placer_L_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[462].dn"
		;
connectAttr "cluster1ball_bone_placer_L_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[463].dn"
		;
connectAttr "foot_bone_placer_L_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[464].dn"
		;
connectAttr "cluster1foot_bone_placer_L_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[465].dn"
		;
connectAttr "ball_bone_placer_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[466].dn"
		;
connectAttr "ball_bone_placer_L_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[467].dn"
		;
connectAttr "cluster2ball_bone_placer_L_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[468].dn"
		;
connectAttr "toeTip_bone_placer_L_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[469].dn"
		;
connectAttr "cluster2toeTip_bone_placer_L_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[470].dn"
		;
connectAttr "toeTip_bone_placer_LShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[471].dn"
		;
connectAttr "toeTip_bone_placer_L_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[472].dn"
		;
connectAttr "_L_placercluster_0HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[473].dn"
		;
connectAttr "_L_placercluster_1Handle_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[474].dn"
		;
connectAttr "_L_placercluster_2Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[475].dn"
		;
connectAttr "cluster1toeTip_bone_placer_L_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[476].dn"
		;
connectAttr "toeTip_bone_placer_L_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[477].dn"
		;
connectAttr "cluster2toeTip_bone_placer_L_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[478].dn"
		;
connectAttr "leg_proxy_curve_leg_LShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[479].dn"
		;
connectAttr "_L_placercluster_1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[480].dn"
		;
connectAttr "leg_proxy_curve_leg_LShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[481].dn"
		;
connectAttr "_L_placercluster_2HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[482].dn"
		;
connectAttr "cluster2toeTip_bone_placer_L_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[483].dn"
		;
connectAttr "toeTip_bone_placer_L_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[484].dn"
		;
connectAttr "toeTip_bone_placer_L_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[485].dn"
		;
connectAttr "leg_proxy_curve_leg_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[486].dn"
		;
connectAttr "toeTip_bone_placer_L_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[487].dn"
		;
connectAttr "cluster1toeTip_bone_placer_L_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[488].dn"
		;
connectAttr "_L_placercluster_0Handle_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[489].dn"
		;
connectAttr "_L_placercluster_0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[490].dn"
		;
connectAttr "cluster2toeTip_bone_placer_L_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[491].dn"
		;
connectAttr "_L_placercluster_1Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[492].dn"
		;
connectAttr "toeTip_bone_placer_L_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[493].dn"
		;
connectAttr "toeTip_bone_placer_L_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[494].dn"
		;
connectAttr "cluster1toeTip_bone_placer_L_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[495].dn"
		;
connectAttr "cluster1toeTip_bone_placer_L_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[496].dn"
		;
connectAttr "LEG_L_MAIN.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[497].dn";
connectAttr "_L_placercluster_0Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[498].dn"
		;
connectAttr "_L_placercluster_1HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[499].dn"
		;
connectAttr "_L_placercluster_2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[500].dn"
		;
connectAttr "_L_placercluster_2Handle_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[501].dn"
		;
connectAttr "_L_placercluster_3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[502].dn"
		;
connectAttr "_L_placercluster_3HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[503].dn"
		;
connectAttr "_L_placercluster_3Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[504].dn"
		;
connectAttr "toeTip_bone_placer_L_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[505].dn"
		;
connectAttr "leg_Zvec_norm_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[506].dn"
		;
connectAttr "ball_Zvec_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[507].dn";
connectAttr "legUpper_Zpos_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[508].dn"
		;
connectAttr "foot_Zpos_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[509].dn";
connectAttr "toeTip_Zpos_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[510].dn";
connectAttr "foot_Zvec_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[511].dn";
connectAttr "legLower_bone_placer_L_upVector_grp_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[512].dn"
		;
connectAttr "ball_bone_placer_L_upVector_grp_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[513].dn"
		;
connectAttr "ball_bone_placer_L_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[514].dn"
		;
connectAttr "wholeLeg_Xvec_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[515].dn"
		;
connectAttr "legLower_Xvec_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[516].dn"
		;
connectAttr "foot_Zpos_loc_LShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[517].dn"
		;
connectAttr "heel_placer_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[518].dn";
connectAttr "_L_placercluster_4Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[519].dn"
		;
connectAttr "_L_placercluster_3Handle_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[520].dn"
		;
connectAttr "legUpper_bone_placer_L_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[521].dn"
		;
connectAttr "legLower_bone_placer_L_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[522].dn"
		;
connectAttr "foot_bone_placer_L_Zpos_loc_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[523].dn"
		;
connectAttr "foot_bone_placer_L_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[524].dn"
		;
connectAttr "_L_placercluster_4Handle_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[525].dn"
		;
connectAttr "legUpper_Xvec_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[526].dn"
		;
connectAttr "ballXvec_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[527].dn";
connectAttr "_L_placercluster_4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[528].dn"
		;
connectAttr "_L_placercluster_4HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[529].dn"
		;
connectAttr "footXvec_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[530].dn";
connectAttr "leg_Zvec_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[531].dn";
connectAttr "foot_Zvec_norm_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[532].dn"
		;
connectAttr "ball_Zvec_norm_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[533].dn"
		;
connectAttr "legLower_Zpos_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[534].dn"
		;
connectAttr "ball_Zpos_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[535].dn";
connectAttr "foot_Zpos_loc_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[536].dn"
		;
connectAttr "legUpper_bone_placer_L_upVector_grp_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[537].dn"
		;
connectAttr "foot_bone_placer_L_upVector_grp_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[538].dn"
		;
connectAttr "toeTip_bone_placer_L_upVector_grp_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[539].dn"
		;
connectAttr "footIn_placer_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[540].dn"
		;
connectAttr "footIn_placer_LShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[541].dn"
		;
connectAttr "footOut_placer_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[542].dn"
		;
connectAttr "footOut_placer_LShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[543].dn"
		;
connectAttr "LEG_R_RIG_PLACER.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[544].dn"
		;
connectAttr "legUpper_bone_placer_R_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[545].dn"
		;
connectAttr "legUpper_bone_placer_R_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[546].dn"
		;
connectAttr "legUpper_bone_placer_R_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[547].dn"
		;
connectAttr "legUpper_bone_placer_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[548].dn"
		;
connectAttr "cluster2legUpper_bone_placer_R_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[549].dn"
		;
connectAttr "|LEG_R_MAIN|LEG_R_RIG_PLACER|grp_shapeShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[550].dn"
		;
connectAttr "LEG_R_z_vec_LOCS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[551].dn"
		;
connectAttr "legUpper_bone_placer_RShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[552].dn"
		;
connectAttr "cluster2legUpper_bone_placer_R_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[553].dn"
		;
connectAttr "cluster1legUpper_bone_placer_R_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[554].dn"
		;
connectAttr "cluster2legUpper_bone_placer_R_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[555].dn"
		;
connectAttr "cluster1legUpper_bone_placer_R_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[556].dn"
		;
connectAttr "cluster1legUpper_bone_placer_R_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[557].dn"
		;
connectAttr "legLower_bone_placer_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[558].dn"
		;
connectAttr "cluster1legUpper_bone_placer_R_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[559].dn"
		;
connectAttr "legLower_bone_placer_RShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[560].dn"
		;
connectAttr "legLower_bone_placer_R_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[561].dn"
		;
connectAttr "legUpper_bone_placer_R_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[562].dn"
		;
connectAttr "legUpper_bone_placer_R_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[563].dn"
		;
connectAttr "cluster2legUpper_bone_placer_R_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[564].dn"
		;
connectAttr "legUpper_bone_placer_R_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[565].dn"
		;
connectAttr "heel_placer_LShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[566].dn"
		;
connectAttr "legUpper_bone_placer_R_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[567].dn"
		;
connectAttr "legUpper_bone_placer_R_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[568].dn"
		;
connectAttr "cluster1foot_bone_placer_R_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[569].dn"
		;
connectAttr "foot_bone_placer_R_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[570].dn"
		;
connectAttr "cluster1foot_bone_placer_R_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[571].dn"
		;
connectAttr "cluster2legLower_bone_placer_R_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[572].dn"
		;
connectAttr "foot_bone_placer_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[573].dn"
		;
connectAttr "foot_bone_placer_RShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[574].dn"
		;
connectAttr "legLower_bone_placer_R_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[575].dn"
		;
connectAttr "cluster1legLower_bone_placer_R_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[576].dn"
		;
connectAttr "foot_bone_placer_R_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[577].dn"
		;
connectAttr "legLower_bone_placer_R_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[578].dn"
		;
connectAttr "foot_bone_placer_R_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[579].dn"
		;
connectAttr "legLower_bone_placer_R_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[580].dn"
		;
connectAttr "cluster1legLower_bone_placer_R_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[581].dn"
		;
connectAttr "legLower_bone_placer_R_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[582].dn"
		;
connectAttr "cluster1legLower_bone_placer_R_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[583].dn"
		;
connectAttr "legLower_bone_placer_R_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[584].dn"
		;
connectAttr "cluster2legLower_bone_placer_R_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[585].dn"
		;
connectAttr "legLower_bone_placer_R_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[586].dn"
		;
connectAttr "cluster1legLower_bone_placer_R_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[587].dn"
		;
connectAttr "cluster2legLower_bone_placer_R_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[588].dn"
		;
connectAttr "foot_bone_placer_R_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[589].dn"
		;
connectAttr "cluster2legLower_bone_placer_R_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[590].dn"
		;
connectAttr "foot_bone_placer_R_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[591].dn"
		;
connectAttr "foot_bone_placer_R_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[592].dn"
		;
connectAttr "legLower_bone_placer_R_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[593].dn"
		;
connectAttr "foot_bone_placer_R_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[594].dn"
		;
connectAttr "foot_bone_placer_R_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[595].dn"
		;
connectAttr "cluster1foot_bone_placer_R_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[596].dn"
		;
connectAttr "cluster2foot_bone_placer_R_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[597].dn"
		;
connectAttr "cluster2ball_bone_placer_R_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[598].dn"
		;
connectAttr "ball_bone_placer_R_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[599].dn"
		;
connectAttr "cluster2ball_bone_placer_R_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[600].dn"
		;
connectAttr "toeTip_bone_placer_R_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[601].dn"
		;
connectAttr "cluster1ball_bone_placer_R_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[602].dn"
		;
connectAttr "cluster2foot_bone_placer_R_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[603].dn"
		;
connectAttr "cluster1ball_bone_placer_R_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[604].dn"
		;
connectAttr "ball_bone_placer_R_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[605].dn"
		;
connectAttr "toeTip_bone_placer_R_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[606].dn"
		;
connectAttr "ball_bone_placer_RShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[607].dn"
		;
connectAttr "toeTip_bone_placer_R_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[608].dn"
		;
connectAttr "toeTip_bone_placer_R_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[609].dn"
		;
connectAttr "cluster1foot_bone_placer_R_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[610].dn"
		;
connectAttr "ball_bone_placer_R_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[611].dn"
		;
connectAttr "ball_bone_placer_R_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[612].dn"
		;
connectAttr "ball_bone_placer_R_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[613].dn"
		;
connectAttr "ball_bone_placer_R_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[614].dn"
		;
connectAttr "ball_bone_placer_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[615].dn"
		;
connectAttr "cluster2foot_bone_placer_R_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[616].dn"
		;
connectAttr "ball_bone_placer_R_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[617].dn"
		;
connectAttr "cluster1ball_bone_placer_R_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[618].dn"
		;
connectAttr "cluster1ball_bone_placer_R_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[619].dn"
		;
connectAttr "cluster2ball_bone_placer_R_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[620].dn"
		;
connectAttr "cluster2foot_bone_placer_R_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[621].dn"
		;
connectAttr "ball_bone_placer_R_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[622].dn"
		;
connectAttr "cluster2ball_bone_placer_R_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[623].dn"
		;
connectAttr "toeTip_bone_placer_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[624].dn"
		;
connectAttr "toeTip_bone_placer_RShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[625].dn"
		;
connectAttr "toeTip_bone_placer_R_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[626].dn"
		;
connectAttr "toeTip_bone_placer_R_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[627].dn"
		;
connectAttr "toeTip_bone_placer_R_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[628].dn"
		;
connectAttr "cluster1toeTip_bone_placer_R_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[629].dn"
		;
connectAttr "toeTip_bone_placer_R_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[630].dn"
		;
connectAttr "cluster1toeTip_bone_placer_R_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[631].dn"
		;
connectAttr "cluster1toeTip_bone_placer_R_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[632].dn"
		;
connectAttr "cluster1armUpper_bone_placer_R_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[633].dn"
		;
connectAttr "cluster1armUpper_bone_placer_R_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[634].dn"
		;
connectAttr "armLower_bone_placer_R_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[635].dn"
		;
connectAttr "armLower_bone_placer_R_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[636].dn"
		;
connectAttr "armLower_bone_placer_R_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[637].dn"
		;
connectAttr "armLower_bone_placer_R_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[638].dn"
		;
connectAttr "armLower_bone_placer_R_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[639].dn"
		;
connectAttr "cluster2armUpper_bone_placer_R_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[640].dn"
		;
connectAttr "armLower_bone_placer_RShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[641].dn"
		;
connectAttr "armUpper_bone_placer_RShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[642].dn"
		;
connectAttr "cluster2armUpper_bone_placer_R_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[643].dn"
		;
connectAttr "armUpper_bone_placer_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[644].dn"
		;
connectAttr "armUpper_bone_placer_R_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[645].dn"
		;
connectAttr "cluster1clavicle_bone_placer_R_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[646].dn"
		;
connectAttr "armUpper_bone_placer_R_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[647].dn"
		;
connectAttr "cluster1armUpper_bone_placer_R_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[648].dn"
		;
connectAttr "cluster2clavicle_bone_placer_R_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[649].dn"
		;
connectAttr "armUpper_bone_placer_R_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[650].dn"
		;
connectAttr "armUpper_bone_placer_R_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[651].dn"
		;
connectAttr "armUpper_bone_placer_R_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[652].dn"
		;
connectAttr "armUpper_bone_placer_R_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[653].dn"
		;
connectAttr "armUpper_bone_placer_R_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[654].dn"
		;
connectAttr "armUpper_bone_placer_R_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[655].dn"
		;
connectAttr "cluster1armUpper_bone_placer_R_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[656].dn"
		;
connectAttr "cluster2armUpper_bone_placer_R_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[657].dn"
		;
connectAttr "cluster2armUpper_bone_placer_R_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[658].dn"
		;
connectAttr "armLower_bone_placer_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[659].dn"
		;
connectAttr "armLower_bone_placer_R_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[660].dn"
		;
connectAttr "armLower_bone_placer_R_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[661].dn"
		;
connectAttr "armLower_bone_placer_R_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[662].dn"
		;
connectAttr "cluster1armLower_bone_placer_R_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[663].dn"
		;
connectAttr "cluster2hand_bone_placer_R_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[664].dn"
		;
connectAttr "hand_bone_placer_RShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[665].dn"
		;
connectAttr "cluster1armLower_bone_placer_R_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[666].dn"
		;
connectAttr "hand_bone_placer_R_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[667].dn"
		;
connectAttr "cluster1armLower_bone_placer_R_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[668].dn"
		;
connectAttr "hand_bone_placer_R_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[669].dn"
		;
connectAttr "cluster1hand_bone_placer_R_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[670].dn"
		;
connectAttr "hand_bone_placer_R_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[671].dn"
		;
connectAttr "cluster1hand_bone_placer_R_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[672].dn"
		;
connectAttr "cluster2armLower_bone_placer_R_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[673].dn"
		;
connectAttr "cluster1hand_bone_placer_R_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[674].dn"
		;
connectAttr "cluster2hand_bone_placer_R_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[675].dn"
		;
connectAttr "cluster1armLower_bone_placer_R_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[676].dn"
		;
connectAttr "hand_bone_placer_R_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[677].dn"
		;
connectAttr "hand_bone_placer_R_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[678].dn"
		;
connectAttr "hand_bone_placer_R_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[679].dn"
		;
connectAttr "hand_bone_placer_R_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[680].dn"
		;
connectAttr "cluster1hand_bone_placer_R_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[681].dn"
		;
connectAttr "cluster2hand_bone_placer_R_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[682].dn"
		;
connectAttr "cluster2armLower_bone_placer_R_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[683].dn"
		;
connectAttr "proxy_curve_arm_RShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[684].dn"
		;
connectAttr "cluster2armLower_bone_placer_R_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[685].dn"
		;
connectAttr "hand_bone_placer_R_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[686].dn"
		;
connectAttr "hand_bone_placer_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[687].dn"
		;
connectAttr "cluster2armLower_bone_placer_R_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[688].dn"
		;
connectAttr "cluster2hand_bone_placer_R_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[689].dn"
		;
connectAttr "ARM_R_MAIN.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[690].dn";
connectAttr "proxy_curve_arm_RShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[691].dn"
		;
connectAttr "placercluster0_arm_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[692].dn"
		;
connectAttr "proxy_curve_arm_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[693].dn"
		;
connectAttr "placercluster0_arm_RHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[694].dn"
		;
connectAttr "placercluster0_arm_RHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[695].dn"
		;
connectAttr "placercluster0_arm_RHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[696].dn"
		;
connectAttr "armZupVec_norm_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[697].dn"
		;
connectAttr "placercluster1_arm_RHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[698].dn"
		;
connectAttr "placercluster3_arm_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[699].dn"
		;
connectAttr "placercluster1_arm_RHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[700].dn"
		;
connectAttr "clavicle_bone_placer_R_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[701].dn"
		;
connectAttr "armUpper_bone_placer_R_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[702].dn"
		;
connectAttr "clavVec_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[703].dn";
connectAttr "placercluster2_arm_RHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[704].dn"
		;
connectAttr "wholeArmVec_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[705].dn";
connectAttr "armZupVec_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[706].dn";
connectAttr "armLower_bone_placer_R_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[707].dn"
		;
connectAttr "LEG_L_z_vec_LOCS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[708].dn"
		;
connectAttr "clavicle_bone_placer_R_upVector_grp_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[709].dn"
		;
connectAttr "legUpper_bone_placer_L_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[710].dn"
		;
connectAttr "legUpper_bone_placer_L_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[711].dn"
		;
connectAttr "legUpper_bone_placer_L_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[712].dn"
		;
connectAttr "placercluster1_arm_RHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[713].dn"
		;
connectAttr "placercluster2_arm_RHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[714].dn"
		;
connectAttr "placercluster2_arm_RHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[715].dn"
		;
connectAttr "placercluster2_arm_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[716].dn"
		;
connectAttr "placercluster3_arm_RHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[717].dn"
		;
connectAttr "hand_bone_placer_R_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[718].dn"
		;
connectAttr "placercluster1_arm_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[719].dn"
		;
connectAttr "upperArmVec_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[720].dn";
connectAttr "placercluster3_arm_RHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[721].dn"
		;
connectAttr "placercluster3_arm_RHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[722].dn"
		;
connectAttr "elbowUpVec_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[723].dn";
connectAttr "shoulderUpVec_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[724].dn"
		;
connectAttr "clavUpVec_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[725].dn";
connectAttr "wristUpVec_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[726].dn";
connectAttr "clavZupVec_norm_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[727].dn"
		;
connectAttr "armUpper_bone_placer_R_upVector_grp_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[728].dn"
		;
connectAttr "armLower_bone_placer_R_upVector_grp_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[729].dn"
		;
connectAttr "clavZupVec_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[730].dn";
connectAttr "hand_bone_placer_R_upVector_grp_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[731].dn"
		;
connectAttr "LEG_L_RIG_PLACER.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[732].dn"
		;
connectAttr "|LEG_L_MAIN|LEG_L_RIG_PLACER|grp_shapeShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[733].dn"
		;
connectAttr "legUpper_bone_placer_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[734].dn"
		;
connectAttr "legUpper_bone_placer_LShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[735].dn"
		;
connectAttr "legUpper_bone_placer_L_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[736].dn"
		;
connectAttr "legUpper_bone_placer_L_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[737].dn"
		;
connectAttr "cluster1legUpper_bone_placer_L_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[738].dn"
		;
connectAttr "cluster2legUpper_bone_placer_L_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[739].dn"
		;
connectAttr "legLower_bone_placer_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[740].dn"
		;
connectAttr "legLower_bone_placer_L_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[741].dn"
		;
connectAttr "cluster1legUpper_bone_placer_L_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[742].dn"
		;
connectAttr "legLower_bone_placer_L_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[743].dn"
		;
connectAttr "legLower_bone_placer_LShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[744].dn"
		;
connectAttr "legLower_bone_placer_L_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[745].dn"
		;
connectAttr "cluster2legUpper_bone_placer_L_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[746].dn"
		;
connectAttr "legUpper_bone_placer_L_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[747].dn"
		;
connectAttr "cluster2legUpper_bone_placer_L_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[748].dn"
		;
connectAttr "cluster2legUpper_bone_placer_L_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[749].dn"
		;
connectAttr "cluster1legUpper_bone_placer_L_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[750].dn"
		;
connectAttr "legUpper_bone_placer_L_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[751].dn"
		;
connectAttr "legLower_bone_placer_L_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[752].dn"
		;
connectAttr "legLower_bone_placer_L_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[753].dn"
		;
connectAttr "legLower_bone_placer_L_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[754].dn"
		;
connectAttr "legLower_bone_placer_L_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[755].dn"
		;
connectAttr "cluster1legLower_bone_placer_L_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[756].dn"
		;
connectAttr "legLower_bone_placer_L_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[757].dn"
		;
connectAttr "cluster1legLower_bone_placer_L_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[758].dn"
		;
connectAttr "legUpper_bone_placer_L_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[759].dn"
		;
connectAttr "cluster1legUpper_bone_placer_L_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[760].dn"
		;
connectAttr "cluster2legLower_bone_placer_L_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[761].dn"
		;
connectAttr "cluster1legLower_bone_placer_L_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[762].dn"
		;
connectAttr ":defaultArnoldRenderOptions.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[763].dn"
		;
connectAttr ":defaultArnoldFilter.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[764].dn"
		;
connectAttr ":defaultArnoldDriver.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[765].dn"
		;
connectAttr ":defaultArnoldDisplayDriver.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[766].dn"
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of autorig_placers.ma
