//Maya ASCII 2024 scene
//Name: autorig_placers_built.ma
//Last modified: Tue, Jan 27, 2026 02:39:06 PM
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
fileInfo "UUID" "BA9B9397-4950-A06B-3AB0-32977B38E419";
createNode transform -s -n "persp";
	rename -uid "2AF092B5-47BB-C9D5-227B-CABB56CFBDB6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 184.14887275639023 -203.26403426735186 174.16159306866501 ;
	setAttr ".r" -type "double3" 75.261647270397972 0 40.200000000000465 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "65333836-42B3-C12E-0072-4D862A29B1BE";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 320.69859914726891;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "D523F88C-4720-0CBE-446B-9C9CA6C61E28";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "8F3D3EAE-4AD2-B93E-BF8D-E89A797C29A0";
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
	rename -uid "4B24B575-4509-13E2-D724-F3B14709E4C3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.9893607469140182 -1012.9233305748634 123.5246265953505 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "4051EEE1-4C01-8823-A945-F5B171A2D11D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1012.9233305748634;
	setAttr ".ow" 314.00266118964919;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 0 0 73.56459048632712 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "3B4DF905-4D61-24CA-B453-809F26AEDD8F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 90 0 90 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "91825D99-46C9-CF61-0A69-EEAD38EB34F7";
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
createNode joint -n "root";
	rename -uid "EACA3E37-49CC-F268-D2BC-ABB2739F00AF";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "Rig_Controls";
	rename -uid "5ECF90CF-4E54-D3DE-DBA9-EAB8B85D2C27";
	addAttr -ci true -sn "pretransformLevel" -ln "pretransformLevel" -min 0 -max 255 
		-at "byte";
createNode transform -n "world_ctrl_ptr1" -p "Rig_Controls";
	rename -uid "6CEB8883-49E3-D484-D923-3DBEC6A6FDD4";
	addAttr -ci true -sn "pretransformLevel" -ln "pretransformLevel" -min 0 -max 255 
		-at "byte";
	setAttr ".pretransformLevel" 1;
createNode transform -n "world_ctrl" -p "world_ctrl_ptr1";
	rename -uid "8645A317-4154-E55E-0912-7E81B81B48FC";
	addAttr -ci true -sn "spaces_GRP" -ln "spaces_GRP" -dt "string";
	setAttr ".spaces_GRP" -type "string" "spaces_GRP";
createNode nurbsCurve -n "world_ctrlShape1" -p "world_ctrl";
	rename -uid "0D231057-4769-A72C-D470-C893BFEC6968";
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
	rename -uid "54ADADE6-4D36-7A8A-EC0D-029475629CEE";
	setAttr ".v" no;
createNode locator -n "worldSpace_locShape" -p "worldSpace_loc";
	rename -uid "E4A2AABF-443E-2604-D5DC-4291BE08111C";
	setAttr -k off ".v";
createNode transform -n "spaces_GRP" -p "Rig_Controls";
	rename -uid "BD70B3B7-4B0E-22E9-365C-F793E34BC801";
createNode transform -n "ARM_L_RIG_PLACER";
	rename -uid "8449FC74-471F-F566-9BB5-10BF2EBBA3BF";
	addAttr -ci true -m -sn "placers" -ln "placers" -dt "string";
	addAttr -ci true -sn "placertype" -ln "placertype" -dt "string";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 30 0 140 ;
	setAttr -s 4 ".placers";
	setAttr ".placers[0]" -type "string" "clavicle_bone_placer_L";
	setAttr ".placers[1]" -type "string" "shoulder_bone_placer_L";
	setAttr ".placers[2]" -type "string" "elbow_bone_placer_L";
	setAttr ".placers[3]" -type "string" "wrist_bone_placer_L";
	setAttr ".placertype" -type "string" "arm";
	setAttr ".connector" -type "string" "spine3";
	setAttr ".stretchy" yes;
createNode transform -n "ARM_L_UP_VEC_LOCS" -p "ARM_L_RIG_PLACER";
	rename -uid "6BB371DE-467A-A8D2-111D-37945120EDE7";
	setAttr ".t" -type "double3" -30 0 -140 ;
createNode transform -n "clavicle_bone_placer_L_loc" -p "ARM_L_UP_VEC_LOCS";
	rename -uid "044D7BB4-4DCB-4CE6-F077-E587876EDD06";
	setAttr ".v" no;
	setAttr ".it" no;
createNode locator -n "clavicle_bone_placer_L_locShape" -p "clavicle_bone_placer_L_loc";
	rename -uid "5D7E3F2F-4819-72D2-8799-85973F3B346C";
	setAttr -k off ".v";
createNode transform -n "shoulder_bone_placer_L_loc" -p "ARM_L_UP_VEC_LOCS";
	rename -uid "C0C0569D-46ED-0011-7D17-B3AFBB52BA2D";
	setAttr ".v" no;
	setAttr ".it" no;
createNode locator -n "shoulder_bone_placer_L_locShape" -p "shoulder_bone_placer_L_loc";
	rename -uid "F14EF75D-454E-8C20-5AE0-40A9B5B31BF0";
	setAttr -k off ".v";
createNode transform -n "elbow_bone_placer_L_loc" -p "ARM_L_UP_VEC_LOCS";
	rename -uid "1A465505-4B31-5A62-A76E-83BBB254F45F";
	setAttr ".v" no;
	setAttr ".it" no;
createNode locator -n "elbow_bone_placer_L_locShape" -p "elbow_bone_placer_L_loc";
	rename -uid "E715F9CD-4EB6-2822-2EFA-AC9291FBB708";
	setAttr -k off ".v";
createNode transform -n "wrist_bone_placer_L_loc" -p "ARM_L_UP_VEC_LOCS";
	rename -uid "4827BF8D-4F24-DF3B-209B-A782B26E55CD";
	setAttr ".v" no;
	setAttr ".it" no;
createNode locator -n "wrist_bone_placer_L_locShape" -p "wrist_bone_placer_L_loc";
	rename -uid "7F057EA3-4A8E-887C-20E4-E4BB4BC0D887";
	setAttr -k off ".v";
createNode transform -n "placer_cluster0_arm_LHandle" -p "ARM_L_RIG_PLACER";
	rename -uid "CFCAEDF1-474F-245F-8356-8F818C053D03";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "placer_cluster0_arm_LHandleShape" -p "placer_cluster0_arm_LHandle";
	rename -uid "88E58693-411D-B69E-6468-FF97F53730DF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "placer_cluster0_arm_LHandle_parentConstraint1" -p
		 "placer_cluster0_arm_LHandle";
	rename -uid "2AF77BEC-473D-7BF2-F15D-0F810EDFE7AF";
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
createNode transform -n "placer_cluster1_arm_LHandle" -p "ARM_L_RIG_PLACER";
	rename -uid "0329EDB8-467C-0461-3B90-D6ACBBCFC3B6";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "placer_cluster1_arm_LHandleShape" -p "placer_cluster1_arm_LHandle";
	rename -uid "98B21DC9-4EEE-E4FF-A575-0488B9003B2D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "placer_cluster1_arm_LHandle_parentConstraint1" -p
		 "placer_cluster1_arm_LHandle";
	rename -uid "9B216E98-4A05-7BAB-9A60-588554A9AD01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "shoulder_bone_placer_LW0" -dv 1 -min 
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
createNode transform -n "placer_cluster2_arm_LHandle" -p "ARM_L_RIG_PLACER";
	rename -uid "DD77C8FC-43FA-44B4-B43E-8FBD04DFE3D4";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 5 0 1 ;
	setAttr ".sp" -type "double3" 5 0 1 ;
createNode clusterHandle -n "placer_cluster2_arm_LHandleShape" -p "placer_cluster2_arm_LHandle";
	rename -uid "94F7B3A7-4770-6444-86CD-89B2957BF83C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 5 0 1 ;
createNode parentConstraint -n "placer_cluster2_arm_LHandle_parentConstraint1" -p
		 "placer_cluster2_arm_LHandle";
	rename -uid "F464FEFA-4FB9-089F-582B-EA95088880A4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "elbow_bone_placer_LW0" -dv 1 -min 
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
createNode transform -n "placer_cluster3_arm_LHandle" -p "ARM_L_RIG_PLACER";
	rename -uid "0515FDAE-47FB-D4BF-6EBB-3DAAEDBA2F1E";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 7 0 1 ;
	setAttr ".sp" -type "double3" 7 0 1 ;
createNode clusterHandle -n "placer_cluster3_arm_LHandleShape" -p "placer_cluster3_arm_LHandle";
	rename -uid "040110A0-4BE9-6EFA-5EC8-2B8AF512DA60";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 7 0 1 ;
createNode parentConstraint -n "placer_cluster3_arm_LHandle_parentConstraint1" -p
		 "placer_cluster3_arm_LHandle";
	rename -uid "0482D54B-4506-094B-24E2-03AACD58F9A4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "wrist_bone_placer_LW0" -dv 1 -min 
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
	rename -uid "61BD694F-4D62-33A5-C577-BFAB9B69B4A5";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "proxy_curve_arm_LShape" -p "proxy_curve_arm_L";
	rename -uid "7E4EDE13-4BAD-892E-2606-3E8D11A58A46";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "proxy_curve_arm_LShapeOrig" -p "proxy_curve_arm_L";
	rename -uid "537E5102-4623-1069-89D3-A4BBB272B917";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr -s 4 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "placer_cluster0_arm_L";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "placer_cluster1_arm_L";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".gtag[2].gtagnm" -type "string" "placer_cluster2_arm_L";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "cv[2]";
	setAttr ".gtag[3].gtagnm" -type "string" "placer_cluster3_arm_L";
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
		"placer_cluster0_arm_L" 1 "cv[0]"
		"placer_cluster1_arm_L" 1 "cv[1]"
		"placer_cluster2_arm_L" 1 "cv[2]"
		"placer_cluster3_arm_L" 1 "cv[3]";
createNode transform -n "clavicle_bone_placer_L" -p "ARM_L_RIG_PLACER";
	rename -uid "D8346A72-48BE-04F4-C7CA-AFA20C95B73A";
	setAttr ".t" -type "double3" -20 0 0 ;
createNode nurbsCurve -n "clavicle_bone_placer_LShape1" -p "clavicle_bone_placer_L";
	rename -uid "56446D38-4A29-EB76-64F4-E3B6E2FE1D23";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 2;
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
createNode transform -n "clavicle_bone_placer_L_upVector_grp" -p "clavicle_bone_placer_L";
	rename -uid "37565FCE-4C6C-CD1D-A124-FEBC897372A3";
createNode transform -n "clavicle_bone_placer_L_upVector" -p "clavicle_bone_placer_L_upVector_grp";
	rename -uid "7975121B-4C87-6951-7C6B-D5A8F9BC9958";
	setAttr ".rp" -type "double3" 0 0 7 ;
	setAttr ".sp" -type "double3" 0 0 7 ;
createNode nurbsCurve -n "clavicle_bone_placer_L_upVectorShape1" -p "clavicle_bone_placer_L_upVector";
	rename -uid "D88147D3-4704-8AFA-FFCF-C1A82EEDEC28";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0 0.24326645998214921 6.0048190273457536
		0 0.24326645998214921 7.11057566362825
		0 0.66345398176949788 7.11057566362825
		0 0 7.9951809726542464
		0 -0.66345398176949788 7.11057566362825
		0 -0.24326645998214921 7.11057566362825
		0 -0.24326645998214921 6.0048190273457536
		0 0.24326645998214921 6.0048190273457536
		;
createNode transform -n "cluster1clavicle_bone_placer_L_upvecHandle" -p "clavicle_bone_placer_L_upVector_grp";
	rename -uid "72DEC200-4B7D-AED5-1D28-25A69C8F7DE9";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1clavicle_bone_placer_L_upvecHandleShape" -p "cluster1clavicle_bone_placer_L_upvecHandle";
	rename -uid "A0F60845-42D3-1679-9FDB-A8AC7EDE2EFE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1clavicle_bone_placer_L_upvecHandle_parentConstraint1" 
		-p "cluster1clavicle_bone_placer_L_upvecHandle";
	rename -uid "B60CB116-489F-37D7-9778-CBA9847F4A93";
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
	setAttr ".lr" -type "double3" 0 -11.806197386239269 0 ;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2clavicle_bone_placer_L_upvecHandle" -p "clavicle_bone_placer_L_upVector_grp";
	rename -uid "5FF02F0F-4141-D99B-0A1E-9B87B215F6D3";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2clavicle_bone_placer_L_upvecHandleShape" -p "cluster2clavicle_bone_placer_L_upvecHandle";
	rename -uid "6A719532-4AD3-AB1A-9A8F-FA88B84E4F3C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2clavicle_bone_placer_L_upvecHandle_parentConstraint1" 
		-p "cluster2clavicle_bone_placer_L_upvecHandle";
	rename -uid "AD2B8F64-4FE6-637F-C6EA-86A8D95A084C";
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
	rename -uid "9688BD24-469F-6BAF-3465-5EA5C04EC629";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "clavicle_bone_placer_L_up_vec_curveShape" -p "clavicle_bone_placer_L_up_vec_curve";
	rename -uid "50B09582-4227-52D6-CC0F-4A859B305480";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "clavicle_bone_placer_L_up_vec_curveShapeOrig" -p "clavicle_bone_placer_L_up_vec_curve";
	rename -uid "25058608-4AA4-837B-2C3E-1C95DAFE6AC8";
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
	rename -uid "6E2D36EB-4CEC-F91D-2419-C5B2B5CEB3DF";
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
createNode transform -n "shoulder_bone_placer_L" -p "ARM_L_RIG_PLACER";
	rename -uid "BC1B1EA7-4AD6-E534-A2AD-A4A7C7EF4C12";
	setAttr ".t" -type "double3" 0 0 -4.1805088028207535 ;
createNode nurbsCurve -n "shoulder_bone_placer_LShape1" -p "shoulder_bone_placer_L";
	rename -uid "F44430AC-44C0-2CDA-A380-93A188310082";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 2;
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
createNode transform -n "shoulder_bone_placer_L_upVector_grp" -p "shoulder_bone_placer_L";
	rename -uid "BCA155E1-42E5-FE08-BE43-269669C57EAC";
createNode transform -n "shoulder_bone_placer_L_upVector" -p "shoulder_bone_placer_L_upVector_grp";
	rename -uid "16252EB2-4FF0-3DAB-1450-C4AB64C51A27";
	setAttr ".rp" -type "double3" 0 0 7 ;
	setAttr ".sp" -type "double3" 0 0 7 ;
createNode nurbsCurve -n "shoulder_bone_placer_L_upVectorShape1" -p "shoulder_bone_placer_L_upVector";
	rename -uid "033E06F9-4BBC-46C7-C490-C2AE151BEB3B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0 0.24326645998214921 6.0048190273457536
		0 0.24326645998214921 7.11057566362825
		0 0.66345398176949788 7.11057566362825
		0 0 7.9951809726542464
		0 -0.66345398176949788 7.11057566362825
		0 -0.24326645998214921 7.11057566362825
		0 -0.24326645998214921 6.0048190273457536
		0 0.24326645998214921 6.0048190273457536
		;
createNode transform -n "cluster1shoulder_bone_placer_L_upvecHandle" -p "shoulder_bone_placer_L_upVector_grp";
	rename -uid "49D77D5C-438C-7D19-2073-3DAA9144A2DF";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1shoulder_bone_placer_L_upvecHandleShape" -p "cluster1shoulder_bone_placer_L_upvecHandle";
	rename -uid "11C13FF1-4CF0-425C-FA8F-CE9FC72B7FC8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1shoulder_bone_placer_L_upvecHandle_parentConstraint1" 
		-p "cluster1shoulder_bone_placer_L_upvecHandle";
	rename -uid "61F6B5DD-4551-BB66-68B0-9392CB36259C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "shoulder_bone_placer_LW0" -dv 1 -min 
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
	setAttr ".lr" -type "double3" -1.539022053642632 -37.280457323752245 0.51916905843932359 ;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2shoulder_bone_placer_L_upvecHandle" -p "shoulder_bone_placer_L_upVector_grp";
	rename -uid "A03671F3-4334-282E-3A5D-15B2847EAE3A";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2shoulder_bone_placer_L_upvecHandleShape" -p "cluster2shoulder_bone_placer_L_upvecHandle";
	rename -uid "0E5A79B4-4642-D01A-86C0-DDA807E54C71";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2shoulder_bone_placer_L_upvecHandle_parentConstraint1" 
		-p "cluster2shoulder_bone_placer_L_upvecHandle";
	rename -uid "6B0558E3-4182-7258-CF84-A4B38AF46600";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "shoulder_bone_placer_L_upVectorW0" 
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
createNode transform -n "shoulder_bone_placer_L_up_vec_curve" -p "shoulder_bone_placer_L_upVector_grp";
	rename -uid "2574E0F7-4C47-0458-AB70-5C93590361FE";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "shoulder_bone_placer_L_up_vec_curveShape" -p "shoulder_bone_placer_L_up_vec_curve";
	rename -uid "D3E8A26A-4750-9C89-6C12-AF8C62CEBB74";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_bone_placer_L_up_vec_curveShapeOrig" -p "shoulder_bone_placer_L_up_vec_curve";
	rename -uid "680AB9FB-44F6-D52F-9BFF-13A0DF7A7852";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1shoulder_bone_placer_L_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2shoulder_bone_placer_L_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1shoulder_bone_placer_L_upvec" 1 "cv[0]"
		"cluster2shoulder_bone_placer_L_upvec" 1 "cv[1]";
createNode aimConstraint -n "shoulder_bone_placer_L_upVector_grp_aimConstraint1" 
		-p "shoulder_bone_placer_L_upVector_grp";
	rename -uid "D1C67BEE-48E1-1342-D61F-A8890E8664FA";
	addAttr -dcb 0 -ci true -sn "w0" -ln "shoulder_bone_placer_L_locW0" -dv 1 -at "double";
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
createNode transform -n "elbow_bone_placer_L" -p "ARM_L_RIG_PLACER";
	rename -uid "F2881F0C-48B5-1377-4EA0-9794BABD0808";
	setAttr ".t" -type "double3" 20 5 -19.276790590784671 ;
createNode nurbsCurve -n "elbow_bone_placer_LShape1" -p "elbow_bone_placer_L";
	rename -uid "EC91D323-45B6-84C2-D9ED-9C8821403B95";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 2;
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
createNode transform -n "elbow_bone_placer_L_upVector_grp" -p "elbow_bone_placer_L";
	rename -uid "8DC82369-4918-E724-8354-7DB95232546F";
createNode transform -n "elbow_bone_placer_L_upVector" -p "elbow_bone_placer_L_upVector_grp";
	rename -uid "F6EA1C72-427B-4197-4172-5FB12C0417EE";
	setAttr ".rp" -type "double3" 0 0 7 ;
	setAttr ".sp" -type "double3" 0 0 7 ;
createNode nurbsCurve -n "elbow_bone_placer_L_upVectorShape1" -p "elbow_bone_placer_L_upVector";
	rename -uid "7E5AF721-49AC-5920-01A7-2EA8E1B7FE78";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0 0.24326645998214921 6.0048190273457536
		0 0.24326645998214921 7.11057566362825
		0 0.66345398176949788 7.11057566362825
		0 0 7.9951809726542464
		0 -0.66345398176949788 7.11057566362825
		0 -0.24326645998214921 7.11057566362825
		0 -0.24326645998214921 6.0048190273457536
		0 0.24326645998214921 6.0048190273457536
		;
createNode transform -n "cluster1elbow_bone_placer_L_upvecHandle" -p "elbow_bone_placer_L_upVector_grp";
	rename -uid "F422C99A-4DDC-3A35-322E-1E94C37987FF";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1elbow_bone_placer_L_upvecHandleShape" -p "cluster1elbow_bone_placer_L_upvecHandle";
	rename -uid "3E7BCE5B-475F-CC49-5084-51870CFA6657";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1elbow_bone_placer_L_upvecHandle_parentConstraint1" 
		-p "cluster1elbow_bone_placer_L_upvecHandle";
	rename -uid "8A7B1A6F-481A-6C1B-4589-66B15811BD47";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "elbow_bone_placer_LW0" -dv 1 -min 
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
	setAttr ".lr" -type "double3" -1.539017843482031 -37.280396241712815 0.51916672430495425 ;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2elbow_bone_placer_L_upvecHandle" -p "elbow_bone_placer_L_upVector_grp";
	rename -uid "BCDC370A-4266-87F2-F857-F382913FB262";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2elbow_bone_placer_L_upvecHandleShape" -p "cluster2elbow_bone_placer_L_upvecHandle";
	rename -uid "AD35910F-42A9-B4E6-3688-729DA430E7E9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2elbow_bone_placer_L_upvecHandle_parentConstraint1" 
		-p "cluster2elbow_bone_placer_L_upvecHandle";
	rename -uid "61B0A0EC-4035-54B2-01B7-74B009B52248";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "elbow_bone_placer_L_upVectorW0" -dv 
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
createNode transform -n "elbow_bone_placer_L_up_vec_curve" -p "elbow_bone_placer_L_upVector_grp";
	rename -uid "2CCAB034-42E8-CBFE-08ED-6FBCA07AAA41";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "elbow_bone_placer_L_up_vec_curveShape" -p "elbow_bone_placer_L_up_vec_curve";
	rename -uid "8C75F950-4BD7-7D45-F538-0584543B2542";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "elbow_bone_placer_L_up_vec_curveShapeOrig" -p "elbow_bone_placer_L_up_vec_curve";
	rename -uid "1DD2A141-4A3E-1FFD-AE0D-0794BF61EDC2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1elbow_bone_placer_L_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2elbow_bone_placer_L_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1elbow_bone_placer_L_upvec" 1 "cv[0]"
		"cluster2elbow_bone_placer_L_upvec" 1 "cv[1]";
createNode aimConstraint -n "elbow_bone_placer_L_upVector_grp_aimConstraint1" -p "elbow_bone_placer_L_upVector_grp";
	rename -uid "9EF5FBBC-47D3-7C5F-694A-BD9A03113DF0";
	addAttr -dcb 0 -ci true -sn "w0" -ln "elbow_bone_placer_L_locW0" -dv 1 -at "double";
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
createNode transform -n "wrist_bone_placer_L" -p "ARM_L_RIG_PLACER";
	rename -uid "9F84F4FD-4D54-8221-ACB6-A2848769FAB2";
	setAttr ".t" -type "double3" 40 -7.7176735461726995 -34.849091330759904 ;
createNode nurbsCurve -n "wrist_bone_placer_LShape1" -p "wrist_bone_placer_L";
	rename -uid "E6F2033B-46E8-0BDA-A72A-4E8359300263";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 2;
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
createNode transform -n "wrist_bone_placer_L_upVector_grp" -p "wrist_bone_placer_L";
	rename -uid "926A1C71-403F-F3A1-4427-C59963320DE4";
createNode transform -n "wrist_bone_placer_L_upVector" -p "wrist_bone_placer_L_upVector_grp";
	rename -uid "2884ABEC-47CC-F6BB-52C6-9FBF836CAB34";
	setAttr ".rp" -type "double3" 0 0 7 ;
	setAttr ".sp" -type "double3" 0 0 7 ;
createNode nurbsCurve -n "wrist_bone_placer_L_upVectorShape1" -p "wrist_bone_placer_L_upVector";
	rename -uid "F702D69D-45A2-3A18-D9A6-25971B91CE52";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0 0.24326645998214921 6.0048190273457536
		0 0.24326645998214921 7.11057566362825
		0 0.66345398176949788 7.11057566362825
		0 0 7.9951809726542464
		0 -0.66345398176949788 7.11057566362825
		0 -0.24326645998214921 7.11057566362825
		0 -0.24326645998214921 6.0048190273457536
		0 0.24326645998214921 6.0048190273457536
		;
createNode transform -n "cluster1wrist_bone_placer_L_upvecHandle" -p "wrist_bone_placer_L_upVector_grp";
	rename -uid "7D7C305D-405E-632C-2279-9AB5F33C9497";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1wrist_bone_placer_L_upvecHandleShape" -p "cluster1wrist_bone_placer_L_upvecHandle";
	rename -uid "9212393E-406C-BF24-0C88-34860A5E938F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1wrist_bone_placer_L_upvecHandle_parentConstraint1" 
		-p "cluster1wrist_bone_placer_L_upvecHandle";
	rename -uid "FAE66069-4AE6-3DC0-12F2-10AB5669F0F0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "wrist_bone_placer_LW0" -dv 1 -min 
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
	setAttr ".lr" -type "double3" -1.5390206672033284 -37.280409363064784 0.51916787323604496 ;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2wrist_bone_placer_L_upvecHandle" -p "wrist_bone_placer_L_upVector_grp";
	rename -uid "8A2D68FF-4ECC-6AC8-8D5C-CAA81CD4C38A";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2wrist_bone_placer_L_upvecHandleShape" -p "cluster2wrist_bone_placer_L_upvecHandle";
	rename -uid "055BF652-410D-13B0-0B72-32BAD58E0CF5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2wrist_bone_placer_L_upvecHandle_parentConstraint1" 
		-p "cluster2wrist_bone_placer_L_upvecHandle";
	rename -uid "6CED8E78-418F-72D4-6F3A-AA9A293896BC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "wrist_bone_placer_L_upVectorW0" -dv 
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
createNode transform -n "wrist_bone_placer_L_up_vec_curve" -p "wrist_bone_placer_L_upVector_grp";
	rename -uid "28C32DD7-47EB-52A5-7121-649BB40940B5";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "wrist_bone_placer_L_up_vec_curveShape" -p "wrist_bone_placer_L_up_vec_curve";
	rename -uid "EEBFB228-4D3D-0265-D41B-A0B1AFB40B18";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "wrist_bone_placer_L_up_vec_curveShapeOrig" -p "wrist_bone_placer_L_up_vec_curve";
	rename -uid "ACABBB97-4B7E-9ED4-E4DC-5486996521A2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1wrist_bone_placer_L_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2wrist_bone_placer_L_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1wrist_bone_placer_L_upvec" 1 "cv[0]"
		"cluster2wrist_bone_placer_L_upvec" 1 "cv[1]";
createNode aimConstraint -n "wrist_bone_placer_L_upVector_grp_aimConstraint1" -p "wrist_bone_placer_L_upVector_grp";
	rename -uid "E4A0A488-47C0-4AE7-247C-9F8D7D539ED2";
	addAttr -dcb 0 -ci true -sn "w0" -ln "wrist_bone_placer_L_locW0" -dv 1 -at "double";
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
createNode transform -n "ARM_R_RIG_PLACER";
	rename -uid "5B4AC252-4598-B80B-74C7-5097AB792169";
	addAttr -ci true -m -sn "placers" -ln "placers" -dt "string";
	addAttr -ci true -sn "placertype" -ln "placertype" -dt "string";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -30 0 140 ;
	setAttr -s 4 ".placers";
	setAttr ".placers[0]" -type "string" "clavicle_bone_placer_R";
	setAttr ".placers[1]" -type "string" "shoulder_bone_placer_R";
	setAttr ".placers[2]" -type "string" "elbow_bone_placer_R";
	setAttr ".placers[3]" -type "string" "wrist_bone_placer_R";
	setAttr ".placertype" -type "string" "arm";
	setAttr ".connector" -type "string" "spine3";
	setAttr ".stretchy" yes;
createNode transform -n "ARM_R_UP_VEC_LOCS" -p "ARM_R_RIG_PLACER";
	rename -uid "70442608-4734-72C4-C52C-7D98BEBB650F";
	setAttr ".t" -type "double3" 30 0 -140 ;
createNode transform -n "clavicle_bone_placer_R_loc" -p "ARM_R_UP_VEC_LOCS";
	rename -uid "48137DC1-417C-930F-C3C0-DF9FA1FD6435";
	setAttr ".v" no;
	setAttr ".it" no;
createNode locator -n "clavicle_bone_placer_R_locShape" -p "clavicle_bone_placer_R_loc";
	rename -uid "C2B9C724-478C-A40C-AE51-FFA9704E834A";
	setAttr -k off ".v";
createNode transform -n "shoulder_bone_placer_R_loc" -p "ARM_R_UP_VEC_LOCS";
	rename -uid "B434AE02-4DB2-4776-E2BE-DF8FB00DEB40";
	setAttr ".v" no;
	setAttr ".it" no;
createNode locator -n "shoulder_bone_placer_R_locShape" -p "shoulder_bone_placer_R_loc";
	rename -uid "4DB63E37-43D5-EA31-99C5-91B13FA89410";
	setAttr -k off ".v";
createNode transform -n "elbow_bone_placer_R_loc" -p "ARM_R_UP_VEC_LOCS";
	rename -uid "ADAF965E-4D1D-198A-9D3E-F7848AFA0D6A";
	setAttr ".v" no;
	setAttr ".it" no;
createNode locator -n "elbow_bone_placer_R_locShape" -p "elbow_bone_placer_R_loc";
	rename -uid "8F14BEFF-488E-E005-979A-7A9AE39EC447";
	setAttr -k off ".v";
createNode transform -n "wrist_bone_placer_R_loc" -p "ARM_R_UP_VEC_LOCS";
	rename -uid "DAA386AD-4580-3519-302B-F180AC0AF3EF";
	setAttr ".v" no;
	setAttr ".it" no;
createNode locator -n "wrist_bone_placer_R_locShape" -p "wrist_bone_placer_R_loc";
	rename -uid "0C144291-40BD-3303-D514-FD9BACDB227D";
	setAttr -k off ".v";
createNode transform -n "placer_cluster0_arm_RHandle" -p "ARM_R_RIG_PLACER";
	rename -uid "D3DE1A4F-4A85-CA82-DAC1-F6AFFF207BD5";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "placer_cluster0_arm_RHandleShape" -p "placer_cluster0_arm_RHandle";
	rename -uid "DF4FCAA5-4153-AE27-2BD5-0A9F4AD89B22";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "placer_cluster0_arm_RHandle_parentConstraint1" -p
		 "placer_cluster0_arm_RHandle";
	rename -uid "4A54A040-49CE-7B30-C504-C29DCA0A5831";
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
	setAttr ".rst" -type "double3" -11 0 139 ;
	setAttr -k on ".w0";
createNode transform -n "placer_cluster1_arm_RHandle" -p "ARM_R_RIG_PLACER";
	rename -uid "0DE579E5-4083-9DEF-B332-2EA15FC63C01";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "placer_cluster1_arm_RHandleShape" -p "placer_cluster1_arm_RHandle";
	rename -uid "D7A4F83E-40BA-AE2C-8F86-96945C6C0BCD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "placer_cluster1_arm_RHandle_parentConstraint1" -p
		 "placer_cluster1_arm_RHandle";
	rename -uid "8F23E3E6-488C-C7EF-F3BD-00BEF0025F49";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "shoulder_bone_placer_RW0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" -33 0 139 ;
	setAttr -k on ".w0";
createNode transform -n "placer_cluster2_arm_RHandle" -p "ARM_R_RIG_PLACER";
	rename -uid "EEFF78B0-48B7-9339-83B6-97B1AEA190FB";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 5 0 1 ;
	setAttr ".sp" -type "double3" 5 0 1 ;
createNode clusterHandle -n "placer_cluster2_arm_RHandleShape" -p "placer_cluster2_arm_RHandle";
	rename -uid "96A1AF4B-40C6-CD5F-E7F8-5E93D7629BDC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 5 0 1 ;
createNode parentConstraint -n "placer_cluster2_arm_RHandle_parentConstraint1" -p
		 "placer_cluster2_arm_RHandle";
	rename -uid "4C9E0130-4A51-19C0-1CC7-90A69D037D5E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "elbow_bone_placer_RW0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" -55 5 139 ;
	setAttr -k on ".w0";
createNode transform -n "placer_cluster3_arm_RHandle" -p "ARM_R_RIG_PLACER";
	rename -uid "D0280F70-4625-87EF-BF66-8F95F7D976AD";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 7 0 1 ;
	setAttr ".sp" -type "double3" 7 0 1 ;
createNode clusterHandle -n "placer_cluster3_arm_RHandleShape" -p "placer_cluster3_arm_RHandle";
	rename -uid "6580227E-4A7F-FABF-7EE8-DB8C6590C4E8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 7 0 1 ;
createNode parentConstraint -n "placer_cluster3_arm_RHandle_parentConstraint1" -p
		 "placer_cluster3_arm_RHandle";
	rename -uid "8D2AF2D3-4F6F-72FA-CBCB-2CAB667A0F87";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "wrist_bone_placer_RW0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" -77 0 139 ;
	setAttr -k on ".w0";
createNode transform -n "proxy_curve_arm_R" -p "ARM_R_RIG_PLACER";
	rename -uid "BD4E5D6E-48ED-B951-8038-33B275ED49A6";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "proxy_curve_arm_RShape" -p "proxy_curve_arm_R";
	rename -uid "9A7B50F0-494F-4761-CE49-79B4FE5FFC23";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "proxy_curve_arm_RShapeOrig" -p "proxy_curve_arm_R";
	rename -uid "68AC8012-4E99-911A-9C26-B490D69E711F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr -s 4 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "placer_cluster0_arm_R";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "placer_cluster1_arm_R";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".gtag[2].gtagnm" -type "string" "placer_cluster2_arm_R";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "cv[2]";
	setAttr ".gtag[3].gtagnm" -type "string" "placer_cluster3_arm_R";
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
		"placer_cluster0_arm_R" 1 "cv[0]"
		"placer_cluster1_arm_R" 1 "cv[1]"
		"placer_cluster2_arm_R" 1 "cv[2]"
		"placer_cluster3_arm_R" 1 "cv[3]";
createNode transform -n "clavicle_bone_placer_R" -p "ARM_R_RIG_PLACER";
	rename -uid "F0CE7478-4A1B-4EC3-C34B-1F86E8F0C19C";
	setAttr ".t" -type "double3" 20 0 0 ;
createNode nurbsCurve -n "clavicle_bone_placer_RShape1" -p "clavicle_bone_placer_R";
	rename -uid "536B0985-49FB-D14A-D7FA-FE904EE7871B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 2;
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
createNode transform -n "clavicle_bone_placer_R_upVector_grp" -p "clavicle_bone_placer_R";
	rename -uid "055ED190-4148-DA8B-B8C7-70A241971669";
createNode transform -n "clavicle_bone_placer_R_upVector" -p "clavicle_bone_placer_R_upVector_grp";
	rename -uid "CD2A52ED-4324-953D-3192-93949BEC1008";
	setAttr ".rp" -type "double3" 0 0 7 ;
	setAttr ".sp" -type "double3" 0 0 7 ;
createNode nurbsCurve -n "clavicle_bone_placer_R_upVectorShape1" -p "clavicle_bone_placer_R_upVector";
	rename -uid "887EE12F-444B-0358-4CF2-38A11485E6A6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0 0.24326645998214921 6.0048190273457536
		0 0.24326645998214921 7.11057566362825
		0 0.66345398176949788 7.11057566362825
		0 0 7.9951809726542464
		0 -0.66345398176949788 7.11057566362825
		0 -0.24326645998214921 7.11057566362825
		0 -0.24326645998214921 6.0048190273457536
		0 0.24326645998214921 6.0048190273457536
		;
createNode transform -n "cluster1clavicle_bone_placer_R_upvecHandle" -p "clavicle_bone_placer_R_upVector_grp";
	rename -uid "5B6235DD-4848-62C5-0810-78928A83C367";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1clavicle_bone_placer_R_upvecHandleShape" -p "cluster1clavicle_bone_placer_R_upvecHandle";
	rename -uid "B1DACD2D-4943-05E1-C2C5-198E726DE972";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1clavicle_bone_placer_R_upvecHandle_parentConstraint1" 
		-p "cluster1clavicle_bone_placer_R_upvecHandle";
	rename -uid "16833BF7-447C-86F2-7854-64A334F8A70E";
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
	setAttr ".lr" -type "double3" 0 -168.19380261376074 0 ;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2clavicle_bone_placer_R_upvecHandle" -p "clavicle_bone_placer_R_upVector_grp";
	rename -uid "636EC590-4E16-1C93-E360-1DBFFED5234B";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2clavicle_bone_placer_R_upvecHandleShape" -p "cluster2clavicle_bone_placer_R_upvecHandle";
	rename -uid "7B3BCCC0-4BD8-8E60-D97F-1C96F1DC9181";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2clavicle_bone_placer_R_upvecHandle_parentConstraint1" 
		-p "cluster2clavicle_bone_placer_R_upvecHandle";
	rename -uid "177B6EBA-4E88-3158-D65E-AC8CCE09B099";
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
	rename -uid "369BF031-4079-EA7B-F701-858FD16D8EA4";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "clavicle_bone_placer_R_up_vec_curveShape" -p "clavicle_bone_placer_R_up_vec_curve";
	rename -uid "C1219D59-4DD2-7846-068B-B4AAA57F8DD4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "clavicle_bone_placer_R_up_vec_curveShapeOrig" -p "clavicle_bone_placer_R_up_vec_curve";
	rename -uid "546F8D70-4B96-D55C-A888-3AABF0BA318C";
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
	rename -uid "96187A04-463C-5918-A355-44AA2A7C1525";
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
createNode transform -n "shoulder_bone_placer_R" -p "ARM_R_RIG_PLACER";
	rename -uid "88D9D6B8-4B3E-E5BD-28C7-F6B03119FC77";
	setAttr ".t" -type "double3" 0 0 -4.1805088028207535 ;
createNode nurbsCurve -n "shoulder_bone_placer_RShape1" -p "shoulder_bone_placer_R";
	rename -uid "F9CBB44F-4856-1640-C24F-22BB9875A4A1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 2;
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
createNode transform -n "shoulder_bone_placer_R_upVector_grp" -p "shoulder_bone_placer_R";
	rename -uid "8A6DEDDA-4EC2-018E-2FFF-C09A0E1033E2";
createNode transform -n "shoulder_bone_placer_R_upVector" -p "shoulder_bone_placer_R_upVector_grp";
	rename -uid "DA9DB6EE-4254-6EC4-FF08-FC8EBBAEC6FA";
	setAttr ".rp" -type "double3" 0 0 7 ;
	setAttr ".sp" -type "double3" 0 0 7 ;
createNode nurbsCurve -n "shoulder_bone_placer_R_upVectorShape1" -p "shoulder_bone_placer_R_upVector";
	rename -uid "C946F26B-4A4C-26A5-486D-AD92FEFEDFAC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0 0.24326645998214921 6.0048190273457536
		0 0.24326645998214921 7.11057566362825
		0 0.66345398176949788 7.11057566362825
		0 0 7.9951809726542464
		0 -0.66345398176949788 7.11057566362825
		0 -0.24326645998214921 7.11057566362825
		0 -0.24326645998214921 6.0048190273457536
		0 0.24326645998214921 6.0048190273457536
		;
createNode transform -n "cluster1shoulder_bone_placer_R_upvecHandle" -p "shoulder_bone_placer_R_upVector_grp";
	rename -uid "1D6B5961-44BE-DD3E-3CD6-31A58B4F946E";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1shoulder_bone_placer_R_upvecHandleShape" -p "cluster1shoulder_bone_placer_R_upvecHandle";
	rename -uid "BA05A675-4436-8854-DFDD-75955D288745";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1shoulder_bone_placer_R_upvecHandle_parentConstraint1" 
		-p "cluster1shoulder_bone_placer_R_upvecHandle";
	rename -uid "1DF3CF17-4690-816A-C0D4-048B2C12BEA4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "shoulder_bone_placer_RW0" -dv 1 -min 
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
	setAttr ".lr" -type "double3" -1.5390207618402461 -142.71957671830896 4.5603779874639985 ;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2shoulder_bone_placer_R_upvecHandle" -p "shoulder_bone_placer_R_upVector_grp";
	rename -uid "EEEC4AD1-4FC1-758B-EFC6-98A250B8C2A2";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2shoulder_bone_placer_R_upvecHandleShape" -p "cluster2shoulder_bone_placer_R_upvecHandle";
	rename -uid "D3A8701B-4FF1-16D5-29F4-7F88824C1752";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2shoulder_bone_placer_R_upvecHandle_parentConstraint1" 
		-p "cluster2shoulder_bone_placer_R_upvecHandle";
	rename -uid "4F0B4667-4CD7-4E59-B412-5CB032B970EC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "shoulder_bone_placer_R_upVectorW0" 
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
createNode transform -n "shoulder_bone_placer_R_up_vec_curve" -p "shoulder_bone_placer_R_upVector_grp";
	rename -uid "623C3E56-4046-4D6D-F25A-94AC476672FA";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "shoulder_bone_placer_R_up_vec_curveShape" -p "shoulder_bone_placer_R_up_vec_curve";
	rename -uid "C7AE3D2E-4DDC-21EE-FA4D-5389CF45A6CA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_bone_placer_R_up_vec_curveShapeOrig" -p "shoulder_bone_placer_R_up_vec_curve";
	rename -uid "B5BD05C3-4CCF-EAF9-3A48-34A098EF20A7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1shoulder_bone_placer_R_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2shoulder_bone_placer_R_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1shoulder_bone_placer_R_upvec" 1 "cv[0]"
		"cluster2shoulder_bone_placer_R_upvec" 1 "cv[1]";
createNode aimConstraint -n "shoulder_bone_placer_R_upVector_grp_aimConstraint1" 
		-p "shoulder_bone_placer_R_upVector_grp";
	rename -uid "3CADF1DF-4B37-3EBE-6752-C68EBF725C40";
	addAttr -dcb 0 -ci true -sn "w0" -ln "shoulder_bone_placer_R_locW0" -dv 1 -at "double";
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
createNode transform -n "elbow_bone_placer_R" -p "ARM_R_RIG_PLACER";
	rename -uid "75005194-4981-CA49-AAA1-9E9DA840F0F3";
	setAttr ".t" -type "double3" -20 5 -19.276790590784671 ;
createNode nurbsCurve -n "elbow_bone_placer_RShape1" -p "elbow_bone_placer_R";
	rename -uid "6C07EF2D-466A-ACF0-2F19-B8BEB75091F8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 2;
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
createNode transform -n "elbow_bone_placer_R_upVector_grp" -p "elbow_bone_placer_R";
	rename -uid "71DE5D15-4359-8F4A-ECBF-9FA21706ECE5";
createNode transform -n "elbow_bone_placer_R_upVector" -p "elbow_bone_placer_R_upVector_grp";
	rename -uid "6AC31260-45BD-02A6-84E0-22BA74564B3B";
	setAttr ".rp" -type "double3" 0 0 7 ;
	setAttr ".sp" -type "double3" 0 0 7 ;
createNode nurbsCurve -n "elbow_bone_placer_R_upVectorShape1" -p "elbow_bone_placer_R_upVector";
	rename -uid "D8E9E5F5-432E-6822-910C-D1BC7DD64194";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0 0.24326645998214921 6.0048190273457536
		0 0.24326645998214921 7.11057566362825
		0 0.66345398176949788 7.11057566362825
		0 0 7.9951809726542464
		0 -0.66345398176949788 7.11057566362825
		0 -0.24326645998214921 7.11057566362825
		0 -0.24326645998214921 6.0048190273457536
		0 0.24326645998214921 6.0048190273457536
		;
createNode transform -n "cluster1elbow_bone_placer_R_upvecHandle" -p "elbow_bone_placer_R_upVector_grp";
	rename -uid "AE19B1CD-4842-C6CA-3068-669A335B1413";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1elbow_bone_placer_R_upvecHandleShape" -p "cluster1elbow_bone_placer_R_upvecHandle";
	rename -uid "0FCF490A-4010-B073-EAC1-1596D25F3854";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1elbow_bone_placer_R_upvecHandle_parentConstraint1" 
		-p "cluster1elbow_bone_placer_R_upvecHandle";
	rename -uid "B2C8A150-448F-E6A8-022B-3F928B6C05DE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "elbow_bone_placer_RW0" -dv 1 -min 
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
	setAttr ".lr" -type "double3" -1.5390196742802589 -142.71957091679695 4.5603740063180309 ;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2elbow_bone_placer_R_upvecHandle" -p "elbow_bone_placer_R_upVector_grp";
	rename -uid "A1AEA366-492E-6A61-7CAA-EA89BC7478F3";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2elbow_bone_placer_R_upvecHandleShape" -p "cluster2elbow_bone_placer_R_upvecHandle";
	rename -uid "27AA6045-4742-18B7-BD7F-8F93887E6179";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2elbow_bone_placer_R_upvecHandle_parentConstraint1" 
		-p "cluster2elbow_bone_placer_R_upvecHandle";
	rename -uid "8F3D931C-4D81-122B-474E-8EAA99B67B76";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "elbow_bone_placer_R_upVectorW0" -dv 
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
createNode transform -n "elbow_bone_placer_R_up_vec_curve" -p "elbow_bone_placer_R_upVector_grp";
	rename -uid "BCBA70B7-4F57-97BB-B3E7-96939B46A6A4";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "elbow_bone_placer_R_up_vec_curveShape" -p "elbow_bone_placer_R_up_vec_curve";
	rename -uid "24725022-4E4F-D8AE-ED00-03913B9EEFE9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "elbow_bone_placer_R_up_vec_curveShapeOrig" -p "elbow_bone_placer_R_up_vec_curve";
	rename -uid "DD122145-4F0D-393A-C30A-E9A46153566F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1elbow_bone_placer_R_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2elbow_bone_placer_R_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1elbow_bone_placer_R_upvec" 1 "cv[0]"
		"cluster2elbow_bone_placer_R_upvec" 1 "cv[1]";
createNode aimConstraint -n "elbow_bone_placer_R_upVector_grp_aimConstraint1" -p "elbow_bone_placer_R_upVector_grp";
	rename -uid "079A9AFA-4583-2056-27E0-9A8F9B24E300";
	addAttr -dcb 0 -ci true -sn "w0" -ln "elbow_bone_placer_R_locW0" -dv 1 -at "double";
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
createNode transform -n "wrist_bone_placer_R" -p "ARM_R_RIG_PLACER";
	rename -uid "E0810446-4922-4730-6674-868F6A3ABFEB";
	setAttr ".t" -type "double3" -40 -7.7176735461726995 -34.849091330759904 ;
createNode nurbsCurve -n "wrist_bone_placer_RShape1" -p "wrist_bone_placer_R";
	rename -uid "9C07AC0B-4C1D-97A1-3D7B-51BC1B59E11B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.12941177 0.39215687 0.13725491 ;
	setAttr ".ls" 2;
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
createNode transform -n "wrist_bone_placer_R_upVector_grp" -p "wrist_bone_placer_R";
	rename -uid "1C896F70-48F2-C13F-42FF-8081B34B37F2";
createNode transform -n "wrist_bone_placer_R_upVector" -p "wrist_bone_placer_R_upVector_grp";
	rename -uid "EAF47957-4B1B-125E-9E61-95BF8009174F";
	setAttr ".rp" -type "double3" 0 0 7 ;
	setAttr ".sp" -type "double3" 0 0 7 ;
createNode nurbsCurve -n "wrist_bone_placer_R_upVectorShape1" -p "wrist_bone_placer_R_upVector";
	rename -uid "A440EFD2-47CE-C63C-54AB-DD92A56A846F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0 0.24326645998214921 6.0048190273457536
		0 0.24326645998214921 7.11057566362825
		0 0.66345398176949788 7.11057566362825
		0 0 7.9951809726542464
		0 -0.66345398176949788 7.11057566362825
		0 -0.24326645998214921 7.11057566362825
		0 -0.24326645998214921 6.0048190273457536
		0 0.24326645998214921 6.0048190273457536
		;
createNode transform -n "cluster1wrist_bone_placer_R_upvecHandle" -p "wrist_bone_placer_R_upVector_grp";
	rename -uid "5390DA35-400C-D233-662D-5C97D35F5938";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode clusterHandle -n "cluster1wrist_bone_placer_R_upvecHandleShape" -p "cluster1wrist_bone_placer_R_upvecHandle";
	rename -uid "4CC65B87-47AA-BD87-D451-2F9A6B05C655";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 1 ;
createNode parentConstraint -n "cluster1wrist_bone_placer_R_upvecHandle_parentConstraint1" 
		-p "cluster1wrist_bone_placer_R_upvecHandle";
	rename -uid "43AD51E1-4DDC-E66C-8E51-64B480C3F37C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "wrist_bone_placer_RW0" -dv 1 -min 
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
	setAttr ".lr" -type "double3" -1.5390168505574522 -142.71958403816086 4.5603673693552169 ;
	setAttr ".rst" -type "double3" -1 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2wrist_bone_placer_R_upvecHandle" -p "wrist_bone_placer_R_upVector_grp";
	rename -uid "17B7963F-4E2D-48FA-C027-048A2F6DAEF1";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode clusterHandle -n "cluster2wrist_bone_placer_R_upvecHandleShape" -p "cluster2wrist_bone_placer_R_upvecHandle";
	rename -uid "2ADC840B-4622-D7A9-5C68-49BD5CA9B904";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3 0 1 ;
createNode parentConstraint -n "cluster2wrist_bone_placer_R_upvecHandle_parentConstraint1" 
		-p "cluster2wrist_bone_placer_R_upvecHandle";
	rename -uid "604F11C4-46A0-34F0-5B1C-69BC66FEC026";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "wrist_bone_placer_R_upVectorW0" -dv 
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
createNode transform -n "wrist_bone_placer_R_up_vec_curve" -p "wrist_bone_placer_R_upVector_grp";
	rename -uid "0AE478E7-483B-C4AE-FF8E-6B8F31857504";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".it" no;
createNode nurbsCurve -n "wrist_bone_placer_R_up_vec_curveShape" -p "wrist_bone_placer_R_up_vec_curve";
	rename -uid "F2291B59-4D14-1B71-2D6C-FD8263791481";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.11764706 0.35294119 0.82352942 ;
	setAttr ".tw" yes;
createNode nurbsCurve -n "wrist_bone_placer_R_up_vec_curveShapeOrig" -p "wrist_bone_placer_R_up_vec_curve";
	rename -uid "0B4626EA-4E5E-E3F7-782B-85BD5F3FA784";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1wrist_bone_placer_R_upvec";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2wrist_bone_placer_R_upvec";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1 0 1
		3 0 1
		

		"gtag" 2
		"cluster1wrist_bone_placer_R_upvec" 1 "cv[0]"
		"cluster2wrist_bone_placer_R_upvec" 1 "cv[1]";
createNode aimConstraint -n "wrist_bone_placer_R_upVector_grp_aimConstraint1" -p "wrist_bone_placer_R_upVector_grp";
	rename -uid "65088A29-46CE-EF64-2F95-06B24000883C";
	addAttr -dcb 0 -ci true -sn "w0" -ln "wrist_bone_placer_R_locW0" -dv 1 -at "double";
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "5786358E-42A2-FAE5-C01C-0E9DF5708B15";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "34988118-4AEA-0834-C354-38A41DD92DF5";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "89641ADD-4EAD-4D93-8FD1-9B96B6280F15";
createNode displayLayerManager -n "layerManager";
	rename -uid "E324216E-4151-A8BF-3E73-329490781333";
createNode displayLayer -n "defaultLayer";
	rename -uid "F01DE793-4ADE-5A00-93F5-6ABB1CE3C9E7";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "68418E0C-4A95-C7C4-EA4B-FFAA75923F62";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "3532D99E-4F57-BD98-FB7F-7F91A6F8C907";
	setAttr ".g" yes;
createNode cluster -n "cluster1clavicle_bone_placer_L_upvec";
	rename -uid "BCBFD76F-4B4D-56A0-A5C1-6CAC5BC06D7A";
	setAttr ".ip[0].gtg" -type "string" "cluster1clavicle_bone_placer_L_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2clavicle_bone_placer_L_upvec";
	rename -uid "CE457068-4657-C758-33D7-A7A7C9F59355";
	setAttr ".ip[0].gtg" -type "string" "cluster2clavicle_bone_placer_L_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1shoulder_bone_placer_L_upvec";
	rename -uid "4886503B-4BFC-E996-562B-D19A2B546A68";
	setAttr ".ip[0].gtg" -type "string" "cluster1shoulder_bone_placer_L_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2shoulder_bone_placer_L_upvec";
	rename -uid "7669AF69-4123-8DE7-1A0D-418E6239D815";
	setAttr ".ip[0].gtg" -type "string" "cluster2shoulder_bone_placer_L_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1elbow_bone_placer_L_upvec";
	rename -uid "51F3EE71-42D1-77A2-D19F-888D8529FDBF";
	setAttr ".ip[0].gtg" -type "string" "cluster1elbow_bone_placer_L_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2elbow_bone_placer_L_upvec";
	rename -uid "86B1EFD3-4488-61C9-0F78-0989F9DB837D";
	setAttr ".ip[0].gtg" -type "string" "cluster2elbow_bone_placer_L_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1wrist_bone_placer_L_upvec";
	rename -uid "E9875E58-4524-6029-32C9-4491BA0202A2";
	setAttr ".ip[0].gtg" -type "string" "cluster1wrist_bone_placer_L_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2wrist_bone_placer_L_upvec";
	rename -uid "FD5A3EA0-47A9-C44F-BAB8-C68F0790517B";
	setAttr ".ip[0].gtg" -type "string" "cluster2wrist_bone_placer_L_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "placer_cluster0_arm_L";
	rename -uid "20FF15E2-4B65-17D0-947D-C587CB683E97";
	setAttr ".ip[0].gtg" -type "string" "placer_cluster0_arm_L";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "placer_cluster1_arm_L";
	rename -uid "F8173D80-4E0D-BCCD-E1DC-5EA6EF320E59";
	setAttr ".ip[0].gtg" -type "string" "placer_cluster1_arm_L";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "placer_cluster2_arm_L";
	rename -uid "112E1617-49FD-24CE-2E63-898A3F8F00CD";
	setAttr ".ip[0].gtg" -type "string" "placer_cluster2_arm_L";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "placer_cluster3_arm_L";
	rename -uid "7C35BB21-49A4-493E-102F-FEAD8189AC9A";
	setAttr ".ip[0].gtg" -type "string" "placer_cluster3_arm_L";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode decomposeMatrix -n "clavicle_bone_placer_L_decomposeMatrix";
	rename -uid "8A7F6519-4AB2-6A40-91AE-74A1DD7057BF";
createNode decomposeMatrix -n "shoulder_bone_placer_L_decomposeMatrix";
	rename -uid "C1668F39-48FC-27BB-3F42-7CA8F411D1D5";
createNode decomposeMatrix -n "elbow_bone_placer_L_decomposeMatrix";
	rename -uid "7F8E4571-43F2-F76E-0635-B194DECF79C6";
createNode decomposeMatrix -n "wrist_bone_placer_L_decomposeMatrix";
	rename -uid "BD7E762E-4450-FF28-E7C8-E59E873EB739";
createNode plusMinusAverage -n "clavVec_L";
	rename -uid "47EA9827-4123-1365-875B-15B0ED4D6E02";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "wholeArmVec_L";
	rename -uid "F98B69CC-4092-4754-322C-3FA2433CFF42";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "upperArmVec_L";
	rename -uid "18CB979C-4761-F447-448F-D0975BF60B87";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode crossProduct -n "armZupVec_L";
	rename -uid "D007EBDB-4435-21CF-4CA5-C0BF54ED11DC";
createNode normalize -n "armZupVec_norm_L";
	rename -uid "E48D4038-4191-BE43-4882-F2B306564DC2";
createNode multiplyDivide -n "armZupVecScale_L";
	rename -uid "8534A309-4682-D275-1520-28A74C7314E1";
	setAttr ".i2" -type "float3" 8 8 8 ;
createNode crossProduct -n "clavZupVec_L";
	rename -uid "C59AAFEB-4ED2-FB4B-CA29-EAAA6CF7C0E2";
	setAttr ".i2" -type "double3" 0 1 0 ;
createNode normalize -n "clavZupVec_norm_L";
	rename -uid "1B411A0F-4CA7-77B2-D5CB-27912B8E4498";
createNode plusMinusAverage -n "clavUpVec_L";
	rename -uid "F3F680DB-4A6E-6E7C-7F64-8B848E00BE05";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "shoulderUpVec_L";
	rename -uid "DCD5F181-42BD-7708-4A34-4CB48644CAB4";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "elbowUpVec_L";
	rename -uid "707D8CB7-4E78-7A51-D480-E5B8896692C1";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "wristUpVec_L";
	rename -uid "BDE6B083-417A-F6F0-BC25-C6A0302CA551";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode cluster -n "cluster1clavicle_bone_placer_R_upvec";
	rename -uid "28C8C5F1-4AFD-3E88-F1FB-10906BA6CFD4";
	setAttr ".ip[0].gtg" -type "string" "cluster1clavicle_bone_placer_R_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2clavicle_bone_placer_R_upvec";
	rename -uid "0A571B47-494C-D222-A41F-C9A9E44F7E35";
	setAttr ".ip[0].gtg" -type "string" "cluster2clavicle_bone_placer_R_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1shoulder_bone_placer_R_upvec";
	rename -uid "230ED42B-4DFA-9B14-3393-16982B379BE0";
	setAttr ".ip[0].gtg" -type "string" "cluster1shoulder_bone_placer_R_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2shoulder_bone_placer_R_upvec";
	rename -uid "545B5ACE-4930-BA71-6806-6EB86D07013C";
	setAttr ".ip[0].gtg" -type "string" "cluster2shoulder_bone_placer_R_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1elbow_bone_placer_R_upvec";
	rename -uid "2C677479-4B06-5D36-3C34-7191BDB6B256";
	setAttr ".ip[0].gtg" -type "string" "cluster1elbow_bone_placer_R_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2elbow_bone_placer_R_upvec";
	rename -uid "6FEFCAD9-42FB-5550-3D94-E8AF4E44251B";
	setAttr ".ip[0].gtg" -type "string" "cluster2elbow_bone_placer_R_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster1wrist_bone_placer_R_upvec";
	rename -uid "B29E80F1-4BD1-9F64-298F-839F9DE9188C";
	setAttr ".ip[0].gtg" -type "string" "cluster1wrist_bone_placer_R_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2wrist_bone_placer_R_upvec";
	rename -uid "F5E8CD7B-4819-67C1-02A8-F487D2C74B02";
	setAttr ".ip[0].gtg" -type "string" "cluster2wrist_bone_placer_R_upvec";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "placer_cluster0_arm_R";
	rename -uid "823EFB66-4A54-9C47-F397-0BA2E70938F0";
	setAttr ".ip[0].gtg" -type "string" "placer_cluster0_arm_R";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "placer_cluster1_arm_R";
	rename -uid "93595C3C-43F9-8BA8-4B76-59826D12FBF6";
	setAttr ".ip[0].gtg" -type "string" "placer_cluster1_arm_R";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "placer_cluster2_arm_R";
	rename -uid "BE6F45FA-41E6-32C3-5F71-C5A578BA2C0F";
	setAttr ".ip[0].gtg" -type "string" "placer_cluster2_arm_R";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "placer_cluster3_arm_R";
	rename -uid "269EC579-4AAB-9E7A-FE3D-9EB4A9B64C1C";
	setAttr ".ip[0].gtg" -type "string" "placer_cluster3_arm_R";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode decomposeMatrix -n "clavicle_bone_placer_R_decomposeMatrix";
	rename -uid "C1B17CC2-4CDD-97C5-C483-8784AE498A35";
createNode decomposeMatrix -n "shoulder_bone_placer_R_decomposeMatrix";
	rename -uid "35BE6B70-4E9F-DE7F-EFFB-39BE6FB6464F";
createNode decomposeMatrix -n "elbow_bone_placer_R_decomposeMatrix";
	rename -uid "41704FEA-4A77-4A86-88D3-B296B7F43975";
createNode decomposeMatrix -n "wrist_bone_placer_R_decomposeMatrix";
	rename -uid "1F7E299D-45AD-86E0-CC90-C48FCB304A69";
createNode plusMinusAverage -n "clavVec_R";
	rename -uid "0EEA65A6-43BA-24EB-638B-2488EFA9E078";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "wholeArmVec_R";
	rename -uid "BC75D4B4-4ECE-5B9A-1E6A-CE83AC995BFB";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "upperArmVec_R";
	rename -uid "42D1E9CE-48D1-8727-2B4A-30809E8686AB";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode crossProduct -n "armZupVec_R";
	rename -uid "9E87D701-4B12-8BD3-4E55-A398BAF81AFF";
createNode normalize -n "armZupVec_norm_R";
	rename -uid "B3DBB1B2-4C07-C1F0-C7F8-278CDA828DBD";
createNode multiplyDivide -n "armZupVecScale_R";
	rename -uid "44249BD6-4779-355B-ECEB-FEA8C2E9E3CC";
	setAttr ".i2" -type "float3" 8 8 8 ;
createNode crossProduct -n "clavZupVec_R";
	rename -uid "290DC024-4208-B4F7-1C04-EFB0301BBFB5";
	setAttr ".i2" -type "double3" 0 1 0 ;
createNode normalize -n "clavZupVec_norm_R";
	rename -uid "9970B42C-4596-3AA5-3115-638049E5FED6";
createNode plusMinusAverage -n "clavUpVec_R";
	rename -uid "BE448992-4FAB-E709-1295-A7AB7B916CF7";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "shoulderUpVec_R";
	rename -uid "4945D427-4096-D430-7B76-E6A73B619470";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "elbowUpVec_R";
	rename -uid "827F9AC4-4789-2B25-2AFA-80B46D852772";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "wristUpVec_R";
	rename -uid "49DD5289-46E7-F296-D8B1-2EBA3EB40C64";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "5054C90D-43E0-1D3B-A6C5-3B924226C22C";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "32A86443-4108-50FC-7BFF-C38B9C77F820";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "EE8B265C-4275-6264-9D07-28AE269D5127";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "4FF65647-485E-4D63-6927-4FA83582C331";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "9129E186-4B79-AE61-2880-618ADEBD2222";
	setAttr ".sst" -type "string" "";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "24965986-4B70-B104-B026-A198F72931C5";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n"
		+ "            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n"
		+ "            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n"
		+ "            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n"
		+ "            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n"
		+ "            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1351\n            -height 886\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
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
	rename -uid "5129A794-488A-5656-42C0-4491C67EE933";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 60 -ast 0 -aet 60 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "98A3BE0A-4F4D-14E3-6BEB-12B2C41C7B3C";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -620.23807059204864 -252.38094235223474 ;
	setAttr ".tgi[0].vh" -type "double2" 620.23807059204864 530.95235985422983 ;
	setAttr -s 239 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 234.28572082519531;
	setAttr ".tgi[0].ni[0].y" 5704.28564453125;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 1182.857177734375;
	setAttr ".tgi[0].ni[1].y" 5061.4287109375;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 1182.857177734375;
	setAttr ".tgi[0].ni[2].y" 4440;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 234.28572082519531;
	setAttr ".tgi[0].ni[3].y" 4552.85693359375;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 234.28572082519531;
	setAttr ".tgi[0].ni[4].y" 4958.5712890625;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 1182.857177734375;
	setAttr ".tgi[0].ni[5].y" 3977.142822265625;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 1182.857177734375;
	setAttr ".tgi[0].ni[6].y" 5704.28564453125;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 234.28572082519531;
	setAttr ".tgi[0].ni[7].y" 4147.14306640625;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 1867.142822265625;
	setAttr ".tgi[0].ni[8].y" -5641.4287109375;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 1867.142822265625;
	setAttr ".tgi[0].ni[9].y" -5511.4287109375;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 1867.142822265625;
	setAttr ".tgi[0].ni[10].y" -5381.4287109375;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 1867.142822265625;
	setAttr ".tgi[0].ni[11].y" -5251.4287109375;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 1867.142822265625;
	setAttr ".tgi[0].ni[12].y" -5121.4287109375;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" -1734.2857666015625;
	setAttr ".tgi[0].ni[13].y" 2370;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 1867.142822265625;
	setAttr ".tgi[0].ni[14].y" -4991.4287109375;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 1867.142822265625;
	setAttr ".tgi[0].ni[15].y" -4861.4287109375;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 1867.142822265625;
	setAttr ".tgi[0].ni[16].y" -4731.4287109375;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 1867.142822265625;
	setAttr ".tgi[0].ni[17].y" -4601.4287109375;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 1867.142822265625;
	setAttr ".tgi[0].ni[18].y" -4471.4287109375;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" -2041.4285888671875;
	setAttr ".tgi[0].ni[19].y" 1951.4285888671875;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 238.57142639160156;
	setAttr ".tgi[0].ni[20].y" 2975.71435546875;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 1854.2857666015625;
	setAttr ".tgi[0].ni[21].y" -3171.428466796875;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 1785.7142333984375;
	setAttr ".tgi[0].ni[22].y" -51.428569793701172;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 1867.142822265625;
	setAttr ".tgi[0].ni[23].y" -4341.4287109375;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 1184.2857666015625;
	setAttr ".tgi[0].ni[24].y" 2631.428466796875;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[25].y" 2891.428466796875;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 711.4285888671875;
	setAttr ".tgi[0].ni[26].y" 3031.428466796875;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 238.57142639160156;
	setAttr ".tgi[0].ni[27].y" 2874.28564453125;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 711.4285888671875;
	setAttr ".tgi[0].ni[28].y" 2771.428466796875;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 1184.2857666015625;
	setAttr ".tgi[0].ni[29].y" 2891.428466796875;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 1837.142822265625;
	setAttr ".tgi[0].ni[30].y" -2131.428466796875;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 711.4285888671875;
	setAttr ".tgi[0].ni[31].y" 2670;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 711.4285888671875;
	setAttr ".tgi[0].ni[32].y" 2872.857177734375;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 238.57142639160156;
	setAttr ".tgi[0].ni[33].y" 3077.142822265625;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[34].y" 2790;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 1808.5714111328125;
	setAttr ".tgi[0].ni[35].y" -1091.4285888671875;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" -261.42855834960938;
	setAttr ".tgi[0].ni[36].y" 2958.571533203125;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[37].y" 2660;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 1862.857177734375;
	setAttr ".tgi[0].ni[38].y" -3431.428466796875;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 1794.2857666015625;
	setAttr ".tgi[0].ni[39].y" -311.42855834960938;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[40].y" 2530;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 238.57142639160156;
	setAttr ".tgi[0].ni[41].y" 2445.71435546875;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 238.57142639160156;
	setAttr ".tgi[0].ni[42].y" 1938.5714111328125;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 238.57142639160156;
	setAttr ".tgi[0].ni[43].y" 2242.857177734375;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 238.57142639160156;
	setAttr ".tgi[0].ni[44].y" 1837.142822265625;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 1184.2857666015625;
	setAttr ".tgi[0].ni[45].y" 2010;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 711.4285888671875;
	setAttr ".tgi[0].ni[46].y" 2547.142822265625;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 238.57142639160156;
	setAttr ".tgi[0].ni[47].y" 2040;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 1184.2857666015625;
	setAttr ".tgi[0].ni[48].y" 1750;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[49].y" 2270;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 1775.7142333984375;
	setAttr ".tgi[0].ni[50].y" 208.57142639160156;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[51].y" -1871.4285888671875;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 1184.2857666015625;
	setAttr ".tgi[0].ni[52].y" 1908.5714111328125;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[53].y" 2168.571533203125;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 711.4285888671875;
	setAttr ".tgi[0].ni[54].y" 1931.4285888671875;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 711.4285888671875;
	setAttr ".tgi[0].ni[55].y" 1830;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 1844.2857666015625;
	setAttr ".tgi[0].ni[56].y" -2651.428466796875;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 1797.142822265625;
	setAttr ".tgi[0].ni[57].y" -571.4285888671875;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 711.4285888671875;
	setAttr ".tgi[0].ni[58].y" 1671.4285888671875;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" -261.42855834960938;
	setAttr ".tgi[0].ni[59].y" 2092.857177734375;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 711.4285888671875;
	setAttr ".tgi[0].ni[60].y" 2134.28564453125;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[61].y" 2038.5714111328125;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[62].y" 1908.5714111328125;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" -2041.4285888671875;
	setAttr ".tgi[0].ni[63].y" 2061.428466796875;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" 1844.2857666015625;
	setAttr ".tgi[0].ni[64].y" -2521.428466796875;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 1815.7142333984375;
	setAttr ".tgi[0].ni[65].y" -1351.4285888671875;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" 711.4285888671875;
	setAttr ".tgi[0].ni[66].y" 2394.28564453125;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" 238.57142639160156;
	setAttr ".tgi[0].ni[67].y" 2344.28564453125;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" 1184.2857666015625;
	setAttr ".tgi[0].ni[68].y" 2270;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" 711.4285888671875;
	setAttr ".tgi[0].ni[69].y" 2235.71435546875;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" -261.42855834960938;
	setAttr ".tgi[0].ni[70].y" 2418.571533203125;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" -2041.4285888671875;
	setAttr ".tgi[0].ni[71].y" 1718.5714111328125;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 1867.142822265625;
	setAttr ".tgi[0].ni[72].y" -4211.4287109375;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[73].y" 1778.5714111328125;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" 1854.2857666015625;
	setAttr ".tgi[0].ni[74].y" -3041.428466796875;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" 711.4285888671875;
	setAttr ".tgi[0].ni[75].y" 2032.857177734375;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 1184.2857666015625;
	setAttr ".tgi[0].ni[76].y" 870;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 711.4285888671875;
	setAttr ".tgi[0].ni[77].y" 1435.7142333984375;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" 711.4285888671875;
	setAttr ".tgi[0].ni[78].y" 1175.7142333984375;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" 1802.857177734375;
	setAttr ".tgi[0].ni[79].y" -831.4285888671875;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" 238.57142639160156;
	setAttr ".tgi[0].ni[80].y" 1101.4285888671875;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" 711.4285888671875;
	setAttr ".tgi[0].ni[81].y" 814.28570556640625;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[82].y" 1541.4285888671875;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" -617.14288330078125;
	setAttr ".tgi[0].ni[83].y" 1604.2857666015625;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[84].y" 1232.857177734375;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" 238.57142639160156;
	setAttr ".tgi[0].ni[85].y" 898.5714111328125;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" -261.42855834960938;
	setAttr ".tgi[0].ni[86].y" 1114.2857666015625;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[87].y" 1131.4285888671875;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[88].y" 971.4285888671875;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[89].y" -1741.4285888671875;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 711.4285888671875;
	setAttr ".tgi[0].ni[90].y" 915.71429443359375;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" -261.42855834960938;
	setAttr ".tgi[0].ni[91].y" 1748.5714111328125;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" -617.14288330078125;
	setAttr ".tgi[0].ni[92].y" 1907.142822265625;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 1867.142822265625;
	setAttr ".tgi[0].ni[93].y" -4081.428466796875;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" -617.14288330078125;
	setAttr ".tgi[0].ni[94].y" 1748.5714111328125;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" -261.42855834960938;
	setAttr ".tgi[0].ni[95].y" 1272.857177734375;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[96].y" 818.5714111328125;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" 238.57142639160156;
	setAttr ".tgi[0].ni[97].y" 1621.4285888671875;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" -261.42855834960938;
	setAttr ".tgi[0].ni[98].y" 1590;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[99].y" 582.85711669921875;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" 238.57142639160156;
	setAttr ".tgi[0].ni[100].y" 1000;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" 1184.2857666015625;
	setAttr ".tgi[0].ni[101].y" 971.4285888671875;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" 711.4285888671875;
	setAttr ".tgi[0].ni[102].y" 1074.2857666015625;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" -924.28570556640625;
	setAttr ".tgi[0].ni[103].y" 2538.571533203125;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" 1184.2857666015625;
	setAttr ".tgi[0].ni[104].y" 1232.857177734375;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" -261.42855834960938;
	setAttr ".tgi[0].ni[105].y" 1431.4285888671875;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" 711.4285888671875;
	setAttr ".tgi[0].ni[106].y" 712.85711669921875;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" -1734.2857666015625;
	setAttr ".tgi[0].ni[107].y" 2208.571533203125;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" 1867.142822265625;
	setAttr ".tgi[0].ni[108].y" -3951.428466796875;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" 1852.857177734375;
	setAttr ".tgi[0].ni[109].y" -2911.428466796875;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" 708.5714111328125;
	setAttr ".tgi[0].ni[110].y" 5704.28564453125;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" -1324.2857666015625;
	setAttr ".tgi[0].ni[111].y" 2160;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" 238.57142639160156;
	setAttr ".tgi[0].ni[112].y" 2725.71435546875;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" 1184.2857666015625;
	setAttr ".tgi[0].ni[113].y" 2530;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" -617.14288330078125;
	setAttr ".tgi[0].ni[114].y" 2034.2857666015625;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" -1734.2857666015625;
	setAttr ".tgi[0].ni[115].y" 1912.857177734375;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" 238.57142639160156;
	setAttr ".tgi[0].ni[116].y" 2547.142822265625;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" 711.4285888671875;
	setAttr ".tgi[0].ni[117].y" 1277.142822265625;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[118].y" 468.57144165039062;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" 238.57142639160156;
	setAttr ".tgi[0].ni[119].y" 1202.857177734375;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" -261.42855834960938;
	setAttr ".tgi[0].ni[120].y" 1991.4285888671875;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" 238.57142639160156;
	setAttr ".tgi[0].ni[121].y" 1361.4285888671875;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 1184.2857666015625;
	setAttr ".tgi[0].ni[122].y" 2168.571533203125;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" 1184.2857666015625;
	setAttr ".tgi[0].ni[123].y" 1131.4285888671875;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" 1867.142822265625;
	setAttr ".tgi[0].ni[124].y" -3821.428466796875;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" -1324.2857666015625;
	setAttr ".tgi[0].ni[125].y" 2547.142822265625;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" -1734.2857666015625;
	setAttr ".tgi[0].ni[126].y" 2107.142822265625;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" -1324.2857666015625;
	setAttr ".tgi[0].ni[127].y" 2058.571533203125;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" 238.57142639160156;
	setAttr ".tgi[0].ni[128].y" 1462.857177734375;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" -924.28570556640625;
	setAttr ".tgi[0].ni[129].y" 2070;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" -261.42855834960938;
	setAttr ".tgi[0].ni[130].y" 2645.71435546875;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" -617.14288330078125;
	setAttr ".tgi[0].ni[131].y" 2598.571533203125;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" 238.57142639160156;
	setAttr ".tgi[0].ni[132].y" 2141.428466796875;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" 1184.2857666015625;
	setAttr ".tgi[0].ni[133].y" 2790;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" -1744.2857666015625;
	setAttr ".tgi[0].ni[134].y" 5478.5712890625;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" 1834.2857666015625;
	setAttr ".tgi[0].ni[135].y" -2001.4285888671875;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" 1182.857177734375;
	setAttr ".tgi[0].ni[136].y" 4960;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" 1784.2857666015625;
	setAttr ".tgi[0].ni[137].y" 78.571426391601562;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[138].y" 5704.28564453125;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[139].y" 5304.28564453125;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" 234.28572082519531;
	setAttr ".tgi[0].ni[140].y" 5298.5712890625;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" 1182.857177734375;
	setAttr ".tgi[0].ni[141].y" 5162.85693359375;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" 708.5714111328125;
	setAttr ".tgi[0].ni[142].y" 5105.71435546875;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[143].y" 5162.85693359375;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" -2051.428466796875;
	setAttr ".tgi[0].ni[144].y" 5110;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" 1842.857177734375;
	setAttr ".tgi[0].ni[145].y" -2391.428466796875;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[0].ni[146].x" -265.71429443359375;
	setAttr ".tgi[0].ni[146].y" 5561.4287109375;
	setAttr ".tgi[0].ni[146].nvs" 18304;
	setAttr ".tgi[0].ni[147].x" 1842.857177734375;
	setAttr ".tgi[0].ni[147].y" -2261.428466796875;
	setAttr ".tgi[0].ni[147].nvs" 18304;
	setAttr ".tgi[0].ni[148].x" 1772.857177734375;
	setAttr ".tgi[0].ni[148].y" 338.57144165039062;
	setAttr ".tgi[0].ni[148].nvs" 18304;
	setAttr ".tgi[0].ni[149].x" 1805.7142333984375;
	setAttr ".tgi[0].ni[149].y" -961.4285888671875;
	setAttr ".tgi[0].ni[149].nvs" 18304;
	setAttr ".tgi[0].ni[150].x" 708.5714111328125;
	setAttr ".tgi[0].ni[150].y" 5524.28564453125;
	setAttr ".tgi[0].ni[150].nvs" 18304;
	setAttr ".tgi[0].ni[151].x" 708.5714111328125;
	setAttr ".tgi[0].ni[151].y" 5365.71435546875;
	setAttr ".tgi[0].ni[151].nvs" 18304;
	setAttr ".tgi[0].ni[152].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[152].y" 5061.4287109375;
	setAttr ".tgi[0].ni[152].nvs" 18304;
	setAttr ".tgi[0].ni[153].x" 708.5714111328125;
	setAttr ".tgi[0].ni[153].y" 5264.28564453125;
	setAttr ".tgi[0].ni[153].nvs" 18304;
	setAttr ".tgi[0].ni[154].x" 708.5714111328125;
	setAttr ".tgi[0].ni[154].y" 4902.85693359375;
	setAttr ".tgi[0].ni[154].nvs" 18304;
	setAttr ".tgi[0].ni[155].x" 708.5714111328125;
	setAttr ".tgi[0].ni[155].y" 5004.28564453125;
	setAttr ".tgi[0].ni[155].nvs" 18304;
	setAttr ".tgi[0].ni[156].x" -2051.428466796875;
	setAttr ".tgi[0].ni[156].y" 5271.4287109375;
	setAttr ".tgi[0].ni[156].nvs" 18304;
	setAttr ".tgi[0].ni[157].x" 1824.2857666015625;
	setAttr ".tgi[0].ni[157].y" -1611.4285888671875;
	setAttr ".tgi[0].ni[157].nvs" 18304;
	setAttr ".tgi[0].ni[158].x" 1182.857177734375;
	setAttr ".tgi[0].ni[158].y" 5304.28564453125;
	setAttr ".tgi[0].ni[158].nvs" 18304;
	setAttr ".tgi[0].ni[159].x" 234.28572082519531;
	setAttr ".tgi[0].ni[159].y" 5400;
	setAttr ".tgi[0].ni[159].nvs" 18304;
	setAttr ".tgi[0].ni[160].x" 234.28572082519531;
	setAttr ".tgi[0].ni[160].y" 5602.85693359375;
	setAttr ".tgi[0].ni[160].nvs" 18304;
	setAttr ".tgi[0].ni[161].x" 234.28572082519531;
	setAttr ".tgi[0].ni[161].y" 5501.4287109375;
	setAttr ".tgi[0].ni[161].nvs" 18304;
	setAttr ".tgi[0].ni[162].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[162].y" 4910;
	setAttr ".tgi[0].ni[162].nvs" 18304;
	setAttr ".tgi[0].ni[163].x" 1182.857177734375;
	setAttr ".tgi[0].ni[163].y" 4744.28564453125;
	setAttr ".tgi[0].ni[163].nvs" 18304;
	setAttr ".tgi[0].ni[164].x" 1795.7142333984375;
	setAttr ".tgi[0].ni[164].y" -441.42855834960938;
	setAttr ".tgi[0].ni[164].nvs" 18304;
	setAttr ".tgi[0].ni[165].x" 234.28572082519531;
	setAttr ".tgi[0].ni[165].y" 5095.71435546875;
	setAttr ".tgi[0].ni[165].nvs" 18304;
	setAttr ".tgi[0].ni[166].x" 234.28572082519531;
	setAttr ".tgi[0].ni[166].y" 5197.14306640625;
	setAttr ".tgi[0].ni[166].nvs" 18304;
	setAttr ".tgi[0].ni[167].x" 708.5714111328125;
	setAttr ".tgi[0].ni[167].y" 4801.4287109375;
	setAttr ".tgi[0].ni[167].nvs" 18304;
	setAttr ".tgi[0].ni[168].x" -265.71429443359375;
	setAttr ".tgi[0].ni[168].y" 5350;
	setAttr ".tgi[0].ni[168].nvs" 18304;
	setAttr ".tgi[0].ni[169].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[169].y" 4772.85693359375;
	setAttr ".tgi[0].ni[169].nvs" 18304;
	setAttr ".tgi[0].ni[170].x" 1861.4285888671875;
	setAttr ".tgi[0].ni[170].y" -3301.428466796875;
	setAttr ".tgi[0].ni[170].nvs" 18304;
	setAttr ".tgi[0].ni[171].x" 708.5714111328125;
	setAttr ".tgi[0].ni[171].y" 3977.142822265625;
	setAttr ".tgi[0].ni[171].nvs" 18304;
	setAttr ".tgi[0].ni[172].x" 1182.857177734375;
	setAttr ".tgi[0].ni[172].y" 3818.571533203125;
	setAttr ".tgi[0].ni[172].nvs" 18304;
	setAttr ".tgi[0].ni[173].x" 708.5714111328125;
	setAttr ".tgi[0].ni[173].y" 4237.14306640625;
	setAttr ".tgi[0].ni[173].nvs" 18304;
	setAttr ".tgi[0].ni[174].x" 234.28572082519531;
	setAttr ".tgi[0].ni[174].y" 4451.4287109375;
	setAttr ".tgi[0].ni[174].nvs" 18304;
	setAttr ".tgi[0].ni[175].x" 708.5714111328125;
	setAttr ".tgi[0].ni[175].y" 3875.71435546875;
	setAttr ".tgi[0].ni[175].nvs" 18304;
	setAttr ".tgi[0].ni[176].x" 234.28572082519531;
	setAttr ".tgi[0].ni[176].y" 4350;
	setAttr ".tgi[0].ni[176].nvs" 18304;
	setAttr ".tgi[0].ni[177].x" 234.28572082519531;
	setAttr ".tgi[0].ni[177].y" 4755.71435546875;
	setAttr ".tgi[0].ni[177].nvs" 18304;
	setAttr ".tgi[0].ni[178].x" 1182.857177734375;
	setAttr ".tgi[0].ni[178].y" 4281.4287109375;
	setAttr ".tgi[0].ni[178].nvs" 18304;
	setAttr ".tgi[0].ni[179].x" -2051.428466796875;
	setAttr ".tgi[0].ni[179].y" 5008.5712890625;
	setAttr ".tgi[0].ni[179].nvs" 18304;
	setAttr ".tgi[0].ni[180].x" 1867.142822265625;
	setAttr ".tgi[0].ni[180].y" -3691.428466796875;
	setAttr ".tgi[0].ni[180].nvs" 18304;
	setAttr ".tgi[0].ni[181].x" 708.5714111328125;
	setAttr ".tgi[0].ni[181].y" 4338.5712890625;
	setAttr ".tgi[0].ni[181].nvs" 18304;
	setAttr ".tgi[0].ni[182].x" -265.71429443359375;
	setAttr ".tgi[0].ni[182].y" 4970;
	setAttr ".tgi[0].ni[182].nvs" 18304;
	setAttr ".tgi[0].ni[183].x" 1791.4285888671875;
	setAttr ".tgi[0].ni[183].y" -181.42857360839844;
	setAttr ".tgi[0].ni[183].nvs" 18304;
	setAttr ".tgi[0].ni[184].x" 234.28572082519531;
	setAttr ".tgi[0].ni[184].y" 4654.28564453125;
	setAttr ".tgi[0].ni[184].nvs" 18304;
	setAttr ".tgi[0].ni[185].x" 708.5714111328125;
	setAttr ".tgi[0].ni[185].y" 4440;
	setAttr ".tgi[0].ni[185].nvs" 18304;
	setAttr ".tgi[0].ni[186].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[186].y" 4545.71435546875;
	setAttr ".tgi[0].ni[186].nvs" 18304;
	setAttr ".tgi[0].ni[187].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[187].y" 4440;
	setAttr ".tgi[0].ni[187].nvs" 18304;
	setAttr ".tgi[0].ni[188].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[188].y" 4310;
	setAttr ".tgi[0].ni[188].nvs" 18304;
	setAttr ".tgi[0].ni[189].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[189].y" 4082.857177734375;
	setAttr ".tgi[0].ni[189].nvs" 18304;
	setAttr ".tgi[0].ni[190].x" 1822.857177734375;
	setAttr ".tgi[0].ni[190].y" -1481.4285888671875;
	setAttr ".tgi[0].ni[190].nvs" 18304;
	setAttr ".tgi[0].ni[191].x" 708.5714111328125;
	setAttr ".tgi[0].ni[191].y" 4700;
	setAttr ".tgi[0].ni[191].nvs" 18304;
	setAttr ".tgi[0].ni[192].x" 1182.857177734375;
	setAttr ".tgi[0].ni[192].y" 4545.71435546875;
	setAttr ".tgi[0].ni[192].nvs" 18304;
	setAttr ".tgi[0].ni[193].x" 708.5714111328125;
	setAttr ".tgi[0].ni[193].y" 4541.4287109375;
	setAttr ".tgi[0].ni[193].nvs" 18304;
	setAttr ".tgi[0].ni[194].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[194].y" 3977.142822265625;
	setAttr ".tgi[0].ni[194].nvs" 18304;
	setAttr ".tgi[0].ni[195].x" 1814.2857666015625;
	setAttr ".tgi[0].ni[195].y" -1221.4285888671875;
	setAttr ".tgi[0].ni[195].nvs" 18304;
	setAttr ".tgi[0].ni[196].x" 234.28572082519531;
	setAttr ".tgi[0].ni[196].y" 4857.14306640625;
	setAttr ".tgi[0].ni[196].nvs" 18304;
	setAttr ".tgi[0].ni[197].x" 1851.4285888671875;
	setAttr ".tgi[0].ni[197].y" -2781.428466796875;
	setAttr ".tgi[0].ni[197].nvs" 18304;
	setAttr ".tgi[0].ni[198].x" 1801.4285888671875;
	setAttr ".tgi[0].ni[198].y" -701.4285888671875;
	setAttr ".tgi[0].ni[198].nvs" 18304;
	setAttr ".tgi[0].ni[199].x" 234.28572082519531;
	setAttr ".tgi[0].ni[199].y" 4248.5712890625;
	setAttr ".tgi[0].ni[199].nvs" 18304;
	setAttr ".tgi[0].ni[200].x" 1182.857177734375;
	setAttr ".tgi[0].ni[200].y" 4082.857177734375;
	setAttr ".tgi[0].ni[200].nvs" 18304;
	setAttr ".tgi[0].ni[201].x" 708.5714111328125;
	setAttr ".tgi[0].ni[201].y" 4078.571533203125;
	setAttr ".tgi[0].ni[201].nvs" 18304;
	setAttr ".tgi[0].ni[202].x" -265.71429443359375;
	setAttr ".tgi[0].ni[202].y" 4584.28564453125;
	setAttr ".tgi[0].ni[202].nvs" 18304;
	setAttr ".tgi[0].ni[203].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[203].y" 3847.142822265625;
	setAttr ".tgi[0].ni[203].nvs" 18304;
	setAttr ".tgi[0].ni[204].x" -265.71429443359375;
	setAttr ".tgi[0].ni[204].y" 4187.14306640625;
	setAttr ".tgi[0].ni[204].nvs" 18304;
	setAttr ".tgi[0].ni[205].x" -1332.857177734375;
	setAttr ".tgi[0].ni[205].y" 5084.28564453125;
	setAttr ".tgi[0].ni[205].nvs" 18304;
	setAttr ".tgi[0].ni[206].x" -624.28570556640625;
	setAttr ".tgi[0].ni[206].y" 4381.4287109375;
	setAttr ".tgi[0].ni[206].nvs" 18304;
	setAttr ".tgi[0].ni[207].x" -265.71429443359375;
	setAttr ".tgi[0].ni[207].y" 4685.71435546875;
	setAttr ".tgi[0].ni[207].nvs" 18304;
	setAttr ".tgi[0].ni[208].x" -624.28570556640625;
	setAttr ".tgi[0].ni[208].y" 4280;
	setAttr ".tgi[0].ni[208].nvs" 18304;
	setAttr ".tgi[0].ni[209].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[209].y" 3601.428466796875;
	setAttr ".tgi[0].ni[209].nvs" 18304;
	setAttr ".tgi[0].ni[210].x" 234.28572082519531;
	setAttr ".tgi[0].ni[210].y" 4045.71435546875;
	setAttr ".tgi[0].ni[210].nvs" 18304;
	setAttr ".tgi[0].ni[211].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[211].y" 3471.428466796875;
	setAttr ".tgi[0].ni[211].nvs" 18304;
	setAttr ".tgi[0].ni[212].x" -265.71429443359375;
	setAttr ".tgi[0].ni[212].y" 3927.142822265625;
	setAttr ".tgi[0].ni[212].nvs" 18304;
	setAttr ".tgi[0].ni[213].x" 234.28572082519531;
	setAttr ".tgi[0].ni[213].y" 3887.142822265625;
	setAttr ".tgi[0].ni[213].nvs" 18304;
	setAttr ".tgi[0].ni[214].x" 234.28572082519531;
	setAttr ".tgi[0].ni[214].y" 3785.71435546875;
	setAttr ".tgi[0].ni[214].nvs" 18304;
	setAttr ".tgi[0].ni[215].x" -265.71429443359375;
	setAttr ".tgi[0].ni[215].y" 4028.571533203125;
	setAttr ".tgi[0].ni[215].nvs" 18304;
	setAttr ".tgi[0].ni[216].x" -265.71429443359375;
	setAttr ".tgi[0].ni[216].y" 4345.71435546875;
	setAttr ".tgi[0].ni[216].nvs" 18304;
	setAttr ".tgi[0].ni[217].x" -624.28570556640625;
	setAttr ".tgi[0].ni[217].y" 4121.4287109375;
	setAttr ".tgi[0].ni[217].nvs" 18304;
	setAttr ".tgi[0].ni[218].x" 1182.857177734375;
	setAttr ".tgi[0].ni[218].y" 3601.428466796875;
	setAttr ".tgi[0].ni[218].nvs" 18304;
	setAttr ".tgi[0].ni[219].x" 1867.142822265625;
	setAttr ".tgi[0].ni[219].y" -3561.428466796875;
	setAttr ".tgi[0].ni[219].nvs" 18304;
	setAttr ".tgi[0].ni[220].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[220].y" 3328.571533203125;
	setAttr ".tgi[0].ni[220].nvs" 18304;
	setAttr ".tgi[0].ni[221].x" 708.5714111328125;
	setAttr ".tgi[0].ni[221].y" 3342.857177734375;
	setAttr ".tgi[0].ni[221].nvs" 18304;
	setAttr ".tgi[0].ni[222].x" 708.5714111328125;
	setAttr ".tgi[0].ni[222].y" 3615.71435546875;
	setAttr ".tgi[0].ni[222].nvs" 18304;
	setAttr ".tgi[0].ni[223].x" 1674.2857666015625;
	setAttr ".tgi[0].ni[223].y" 3207.142822265625;
	setAttr ".tgi[0].ni[223].nvs" 18304;
	setAttr ".tgi[0].ni[224].x" -1744.2857666015625;
	setAttr ".tgi[0].ni[224].y" 5377.14306640625;
	setAttr ".tgi[0].ni[224].nvs" 18304;
	setAttr ".tgi[0].ni[225].x" -1744.2857666015625;
	setAttr ".tgi[0].ni[225].y" 5060;
	setAttr ".tgi[0].ni[225].nvs" 18304;
	setAttr ".tgi[0].ni[226].x" 708.5714111328125;
	setAttr ".tgi[0].ni[226].y" 3774.28564453125;
	setAttr ".tgi[0].ni[226].nvs" 18304;
	setAttr ".tgi[0].ni[227].x" -1332.857177734375;
	setAttr ".tgi[0].ni[227].y" 5630;
	setAttr ".tgi[0].ni[227].nvs" 18304;
	setAttr ".tgi[0].ni[228].x" -931.4285888671875;
	setAttr ".tgi[0].ni[228].y" 5605.71435546875;
	setAttr ".tgi[0].ni[228].nvs" 18304;
	setAttr ".tgi[0].ni[229].x" -1332.857177734375;
	setAttr ".tgi[0].ni[229].y" 5185.71435546875;
	setAttr ".tgi[0].ni[229].nvs" 18304;
	setAttr ".tgi[0].ni[230].x" -1744.2857666015625;
	setAttr ".tgi[0].ni[230].y" 5218.5712890625;
	setAttr ".tgi[0].ni[230].nvs" 18304;
	setAttr ".tgi[0].ni[231].x" -931.4285888671875;
	setAttr ".tgi[0].ni[231].y" 4987.14306640625;
	setAttr ".tgi[0].ni[231].nvs" 18304;
	setAttr ".tgi[0].ni[232].x" -624.28570556640625;
	setAttr ".tgi[0].ni[232].y" 4832.85693359375;
	setAttr ".tgi[0].ni[232].nvs" 18304;
	setAttr ".tgi[0].ni[233].x" -624.28570556640625;
	setAttr ".tgi[0].ni[233].y" 5632.85693359375;
	setAttr ".tgi[0].ni[233].nvs" 18304;
	setAttr ".tgi[0].ni[234].x" -265.71429443359375;
	setAttr ".tgi[0].ni[234].y" 5662.85693359375;
	setAttr ".tgi[0].ni[234].nvs" 18304;
	setAttr ".tgi[0].ni[235].x" 58.571430206298828;
	setAttr ".tgi[0].ni[235].y" 31.428571701049805;
	setAttr ".tgi[0].ni[235].nvs" 18304;
	setAttr ".tgi[0].ni[236].x" -248.57142639160156;
	setAttr ".tgi[0].ni[236].y" 31.428571701049805;
	setAttr ".tgi[0].ni[236].nvs" 18304;
	setAttr ".tgi[0].ni[237].x" -248.57142639160156;
	setAttr ".tgi[0].ni[237].y" -70;
	setAttr ".tgi[0].ni[237].nvs" 18304;
	setAttr ".tgi[0].ni[238].x" -248.57142639160156;
	setAttr ".tgi[0].ni[238].y" 132.85714721679688;
	setAttr ".tgi[0].ni[238].nvs" 18304;
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
connectAttr "shoulderUpVec_L.o3" "shoulder_bone_placer_L_loc.t";
connectAttr "elbowUpVec_L.o3" "elbow_bone_placer_L_loc.t";
connectAttr "wristUpVec_L.o3" "wrist_bone_placer_L_loc.t";
connectAttr "placer_cluster0_arm_LHandle_parentConstraint1.ctx" "placer_cluster0_arm_LHandle.tx"
		;
connectAttr "placer_cluster0_arm_LHandle_parentConstraint1.cty" "placer_cluster0_arm_LHandle.ty"
		;
connectAttr "placer_cluster0_arm_LHandle_parentConstraint1.ctz" "placer_cluster0_arm_LHandle.tz"
		;
connectAttr "placer_cluster0_arm_LHandle_parentConstraint1.crx" "placer_cluster0_arm_LHandle.rx"
		;
connectAttr "placer_cluster0_arm_LHandle_parentConstraint1.cry" "placer_cluster0_arm_LHandle.ry"
		;
connectAttr "placer_cluster0_arm_LHandle_parentConstraint1.crz" "placer_cluster0_arm_LHandle.rz"
		;
connectAttr "placer_cluster0_arm_LHandle.ro" "placer_cluster0_arm_LHandle_parentConstraint1.cro"
		;
connectAttr "placer_cluster0_arm_LHandle.pim" "placer_cluster0_arm_LHandle_parentConstraint1.cpim"
		;
connectAttr "placer_cluster0_arm_LHandle.rp" "placer_cluster0_arm_LHandle_parentConstraint1.crp"
		;
connectAttr "placer_cluster0_arm_LHandle.rpt" "placer_cluster0_arm_LHandle_parentConstraint1.crt"
		;
connectAttr "clavicle_bone_placer_L.t" "placer_cluster0_arm_LHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "clavicle_bone_placer_L.rp" "placer_cluster0_arm_LHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "clavicle_bone_placer_L.rpt" "placer_cluster0_arm_LHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "clavicle_bone_placer_L.r" "placer_cluster0_arm_LHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "clavicle_bone_placer_L.ro" "placer_cluster0_arm_LHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "clavicle_bone_placer_L.s" "placer_cluster0_arm_LHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "clavicle_bone_placer_L.pm" "placer_cluster0_arm_LHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "placer_cluster0_arm_LHandle_parentConstraint1.w0" "placer_cluster0_arm_LHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "placer_cluster1_arm_LHandle_parentConstraint1.ctx" "placer_cluster1_arm_LHandle.tx"
		;
connectAttr "placer_cluster1_arm_LHandle_parentConstraint1.cty" "placer_cluster1_arm_LHandle.ty"
		;
connectAttr "placer_cluster1_arm_LHandle_parentConstraint1.ctz" "placer_cluster1_arm_LHandle.tz"
		;
connectAttr "placer_cluster1_arm_LHandle_parentConstraint1.crx" "placer_cluster1_arm_LHandle.rx"
		;
connectAttr "placer_cluster1_arm_LHandle_parentConstraint1.cry" "placer_cluster1_arm_LHandle.ry"
		;
connectAttr "placer_cluster1_arm_LHandle_parentConstraint1.crz" "placer_cluster1_arm_LHandle.rz"
		;
connectAttr "placer_cluster1_arm_LHandle.ro" "placer_cluster1_arm_LHandle_parentConstraint1.cro"
		;
connectAttr "placer_cluster1_arm_LHandle.pim" "placer_cluster1_arm_LHandle_parentConstraint1.cpim"
		;
connectAttr "placer_cluster1_arm_LHandle.rp" "placer_cluster1_arm_LHandle_parentConstraint1.crp"
		;
connectAttr "placer_cluster1_arm_LHandle.rpt" "placer_cluster1_arm_LHandle_parentConstraint1.crt"
		;
connectAttr "shoulder_bone_placer_L.t" "placer_cluster1_arm_LHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "shoulder_bone_placer_L.rp" "placer_cluster1_arm_LHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "shoulder_bone_placer_L.rpt" "placer_cluster1_arm_LHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "shoulder_bone_placer_L.r" "placer_cluster1_arm_LHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "shoulder_bone_placer_L.ro" "placer_cluster1_arm_LHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "shoulder_bone_placer_L.s" "placer_cluster1_arm_LHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "shoulder_bone_placer_L.pm" "placer_cluster1_arm_LHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "placer_cluster1_arm_LHandle_parentConstraint1.w0" "placer_cluster1_arm_LHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "placer_cluster2_arm_LHandle_parentConstraint1.ctx" "placer_cluster2_arm_LHandle.tx"
		;
connectAttr "placer_cluster2_arm_LHandle_parentConstraint1.cty" "placer_cluster2_arm_LHandle.ty"
		;
connectAttr "placer_cluster2_arm_LHandle_parentConstraint1.ctz" "placer_cluster2_arm_LHandle.tz"
		;
connectAttr "placer_cluster2_arm_LHandle_parentConstraint1.crx" "placer_cluster2_arm_LHandle.rx"
		;
connectAttr "placer_cluster2_arm_LHandle_parentConstraint1.cry" "placer_cluster2_arm_LHandle.ry"
		;
connectAttr "placer_cluster2_arm_LHandle_parentConstraint1.crz" "placer_cluster2_arm_LHandle.rz"
		;
connectAttr "placer_cluster2_arm_LHandle.ro" "placer_cluster2_arm_LHandle_parentConstraint1.cro"
		;
connectAttr "placer_cluster2_arm_LHandle.pim" "placer_cluster2_arm_LHandle_parentConstraint1.cpim"
		;
connectAttr "placer_cluster2_arm_LHandle.rp" "placer_cluster2_arm_LHandle_parentConstraint1.crp"
		;
connectAttr "placer_cluster2_arm_LHandle.rpt" "placer_cluster2_arm_LHandle_parentConstraint1.crt"
		;
connectAttr "elbow_bone_placer_L.t" "placer_cluster2_arm_LHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "elbow_bone_placer_L.rp" "placer_cluster2_arm_LHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "elbow_bone_placer_L.rpt" "placer_cluster2_arm_LHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "elbow_bone_placer_L.r" "placer_cluster2_arm_LHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "elbow_bone_placer_L.ro" "placer_cluster2_arm_LHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "elbow_bone_placer_L.s" "placer_cluster2_arm_LHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "elbow_bone_placer_L.pm" "placer_cluster2_arm_LHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "placer_cluster2_arm_LHandle_parentConstraint1.w0" "placer_cluster2_arm_LHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "placer_cluster3_arm_LHandle_parentConstraint1.ctx" "placer_cluster3_arm_LHandle.tx"
		;
connectAttr "placer_cluster3_arm_LHandle_parentConstraint1.cty" "placer_cluster3_arm_LHandle.ty"
		;
connectAttr "placer_cluster3_arm_LHandle_parentConstraint1.ctz" "placer_cluster3_arm_LHandle.tz"
		;
connectAttr "placer_cluster3_arm_LHandle_parentConstraint1.crx" "placer_cluster3_arm_LHandle.rx"
		;
connectAttr "placer_cluster3_arm_LHandle_parentConstraint1.cry" "placer_cluster3_arm_LHandle.ry"
		;
connectAttr "placer_cluster3_arm_LHandle_parentConstraint1.crz" "placer_cluster3_arm_LHandle.rz"
		;
connectAttr "placer_cluster3_arm_LHandle.ro" "placer_cluster3_arm_LHandle_parentConstraint1.cro"
		;
connectAttr "placer_cluster3_arm_LHandle.pim" "placer_cluster3_arm_LHandle_parentConstraint1.cpim"
		;
connectAttr "placer_cluster3_arm_LHandle.rp" "placer_cluster3_arm_LHandle_parentConstraint1.crp"
		;
connectAttr "placer_cluster3_arm_LHandle.rpt" "placer_cluster3_arm_LHandle_parentConstraint1.crt"
		;
connectAttr "wrist_bone_placer_L.t" "placer_cluster3_arm_LHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "wrist_bone_placer_L.rp" "placer_cluster3_arm_LHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "wrist_bone_placer_L.rpt" "placer_cluster3_arm_LHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "wrist_bone_placer_L.r" "placer_cluster3_arm_LHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "wrist_bone_placer_L.ro" "placer_cluster3_arm_LHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "wrist_bone_placer_L.s" "placer_cluster3_arm_LHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "wrist_bone_placer_L.pm" "placer_cluster3_arm_LHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "placer_cluster3_arm_LHandle_parentConstraint1.w0" "placer_cluster3_arm_LHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "placer_cluster3_arm_L.og[0]" "proxy_curve_arm_LShape.cr";
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
connectAttr "shoulder_bone_placer_L_upVector_grp_aimConstraint1.crx" "shoulder_bone_placer_L_upVector_grp.rx"
		;
connectAttr "shoulder_bone_placer_L_upVector_grp_aimConstraint1.cry" "shoulder_bone_placer_L_upVector_grp.ry"
		;
connectAttr "shoulder_bone_placer_L_upVector_grp_aimConstraint1.crz" "shoulder_bone_placer_L_upVector_grp.rz"
		;
connectAttr "cluster1shoulder_bone_placer_L_upvecHandle_parentConstraint1.ctx" "cluster1shoulder_bone_placer_L_upvecHandle.tx"
		;
connectAttr "cluster1shoulder_bone_placer_L_upvecHandle_parentConstraint1.cty" "cluster1shoulder_bone_placer_L_upvecHandle.ty"
		;
connectAttr "cluster1shoulder_bone_placer_L_upvecHandle_parentConstraint1.ctz" "cluster1shoulder_bone_placer_L_upvecHandle.tz"
		;
connectAttr "cluster1shoulder_bone_placer_L_upvecHandle_parentConstraint1.crx" "cluster1shoulder_bone_placer_L_upvecHandle.rx"
		;
connectAttr "cluster1shoulder_bone_placer_L_upvecHandle_parentConstraint1.cry" "cluster1shoulder_bone_placer_L_upvecHandle.ry"
		;
connectAttr "cluster1shoulder_bone_placer_L_upvecHandle_parentConstraint1.crz" "cluster1shoulder_bone_placer_L_upvecHandle.rz"
		;
connectAttr "cluster1shoulder_bone_placer_L_upvecHandle.ro" "cluster1shoulder_bone_placer_L_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1shoulder_bone_placer_L_upvecHandle.pim" "cluster1shoulder_bone_placer_L_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1shoulder_bone_placer_L_upvecHandle.rp" "cluster1shoulder_bone_placer_L_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1shoulder_bone_placer_L_upvecHandle.rpt" "cluster1shoulder_bone_placer_L_upvecHandle_parentConstraint1.crt"
		;
connectAttr "shoulder_bone_placer_L.t" "cluster1shoulder_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "shoulder_bone_placer_L.rp" "cluster1shoulder_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "shoulder_bone_placer_L.rpt" "cluster1shoulder_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "shoulder_bone_placer_L.r" "cluster1shoulder_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "shoulder_bone_placer_L.ro" "cluster1shoulder_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "shoulder_bone_placer_L.s" "cluster1shoulder_bone_placer_L_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "shoulder_bone_placer_L.pm" "cluster1shoulder_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1shoulder_bone_placer_L_upvecHandle_parentConstraint1.w0" "cluster1shoulder_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2shoulder_bone_placer_L_upvecHandle_parentConstraint1.ctx" "cluster2shoulder_bone_placer_L_upvecHandle.tx"
		;
connectAttr "cluster2shoulder_bone_placer_L_upvecHandle_parentConstraint1.cty" "cluster2shoulder_bone_placer_L_upvecHandle.ty"
		;
connectAttr "cluster2shoulder_bone_placer_L_upvecHandle_parentConstraint1.ctz" "cluster2shoulder_bone_placer_L_upvecHandle.tz"
		;
connectAttr "cluster2shoulder_bone_placer_L_upvecHandle_parentConstraint1.crx" "cluster2shoulder_bone_placer_L_upvecHandle.rx"
		;
connectAttr "cluster2shoulder_bone_placer_L_upvecHandle_parentConstraint1.cry" "cluster2shoulder_bone_placer_L_upvecHandle.ry"
		;
connectAttr "cluster2shoulder_bone_placer_L_upvecHandle_parentConstraint1.crz" "cluster2shoulder_bone_placer_L_upvecHandle.rz"
		;
connectAttr "cluster2shoulder_bone_placer_L_upvecHandle.ro" "cluster2shoulder_bone_placer_L_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2shoulder_bone_placer_L_upvecHandle.pim" "cluster2shoulder_bone_placer_L_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2shoulder_bone_placer_L_upvecHandle.rp" "cluster2shoulder_bone_placer_L_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2shoulder_bone_placer_L_upvecHandle.rpt" "cluster2shoulder_bone_placer_L_upvecHandle_parentConstraint1.crt"
		;
connectAttr "shoulder_bone_placer_L_upVector.t" "cluster2shoulder_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "shoulder_bone_placer_L_upVector.rp" "cluster2shoulder_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "shoulder_bone_placer_L_upVector.rpt" "cluster2shoulder_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "shoulder_bone_placer_L_upVector.r" "cluster2shoulder_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "shoulder_bone_placer_L_upVector.ro" "cluster2shoulder_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "shoulder_bone_placer_L_upVector.s" "cluster2shoulder_bone_placer_L_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "shoulder_bone_placer_L_upVector.pm" "cluster2shoulder_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2shoulder_bone_placer_L_upvecHandle_parentConstraint1.w0" "cluster2shoulder_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2shoulder_bone_placer_L_upvec.og[0]" "shoulder_bone_placer_L_up_vec_curveShape.cr"
		;
connectAttr "shoulder_bone_placer_L_upVector_grp.pim" "shoulder_bone_placer_L_upVector_grp_aimConstraint1.cpim"
		;
connectAttr "shoulder_bone_placer_L_upVector_grp.t" "shoulder_bone_placer_L_upVector_grp_aimConstraint1.ct"
		;
connectAttr "shoulder_bone_placer_L_upVector_grp.rp" "shoulder_bone_placer_L_upVector_grp_aimConstraint1.crp"
		;
connectAttr "shoulder_bone_placer_L_upVector_grp.rpt" "shoulder_bone_placer_L_upVector_grp_aimConstraint1.crt"
		;
connectAttr "shoulder_bone_placer_L_upVector_grp.ro" "shoulder_bone_placer_L_upVector_grp_aimConstraint1.cro"
		;
connectAttr "shoulder_bone_placer_L_loc.t" "shoulder_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tt"
		;
connectAttr "shoulder_bone_placer_L_loc.rp" "shoulder_bone_placer_L_upVector_grp_aimConstraint1.tg[0].trp"
		;
connectAttr "shoulder_bone_placer_L_loc.rpt" "shoulder_bone_placer_L_upVector_grp_aimConstraint1.tg[0].trt"
		;
connectAttr "shoulder_bone_placer_L_loc.pm" "shoulder_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tpm"
		;
connectAttr "shoulder_bone_placer_L_upVector_grp_aimConstraint1.w0" "shoulder_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tw"
		;
connectAttr "elbow_bone_placer_L_upVector_grp_aimConstraint1.crx" "elbow_bone_placer_L_upVector_grp.rx"
		;
connectAttr "elbow_bone_placer_L_upVector_grp_aimConstraint1.cry" "elbow_bone_placer_L_upVector_grp.ry"
		;
connectAttr "elbow_bone_placer_L_upVector_grp_aimConstraint1.crz" "elbow_bone_placer_L_upVector_grp.rz"
		;
connectAttr "cluster1elbow_bone_placer_L_upvecHandle_parentConstraint1.ctx" "cluster1elbow_bone_placer_L_upvecHandle.tx"
		;
connectAttr "cluster1elbow_bone_placer_L_upvecHandle_parentConstraint1.cty" "cluster1elbow_bone_placer_L_upvecHandle.ty"
		;
connectAttr "cluster1elbow_bone_placer_L_upvecHandle_parentConstraint1.ctz" "cluster1elbow_bone_placer_L_upvecHandle.tz"
		;
connectAttr "cluster1elbow_bone_placer_L_upvecHandle_parentConstraint1.crx" "cluster1elbow_bone_placer_L_upvecHandle.rx"
		;
connectAttr "cluster1elbow_bone_placer_L_upvecHandle_parentConstraint1.cry" "cluster1elbow_bone_placer_L_upvecHandle.ry"
		;
connectAttr "cluster1elbow_bone_placer_L_upvecHandle_parentConstraint1.crz" "cluster1elbow_bone_placer_L_upvecHandle.rz"
		;
connectAttr "cluster1elbow_bone_placer_L_upvecHandle.ro" "cluster1elbow_bone_placer_L_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1elbow_bone_placer_L_upvecHandle.pim" "cluster1elbow_bone_placer_L_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1elbow_bone_placer_L_upvecHandle.rp" "cluster1elbow_bone_placer_L_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1elbow_bone_placer_L_upvecHandle.rpt" "cluster1elbow_bone_placer_L_upvecHandle_parentConstraint1.crt"
		;
connectAttr "elbow_bone_placer_L.t" "cluster1elbow_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "elbow_bone_placer_L.rp" "cluster1elbow_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "elbow_bone_placer_L.rpt" "cluster1elbow_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "elbow_bone_placer_L.r" "cluster1elbow_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "elbow_bone_placer_L.ro" "cluster1elbow_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "elbow_bone_placer_L.s" "cluster1elbow_bone_placer_L_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "elbow_bone_placer_L.pm" "cluster1elbow_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1elbow_bone_placer_L_upvecHandle_parentConstraint1.w0" "cluster1elbow_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2elbow_bone_placer_L_upvecHandle_parentConstraint1.ctx" "cluster2elbow_bone_placer_L_upvecHandle.tx"
		;
connectAttr "cluster2elbow_bone_placer_L_upvecHandle_parentConstraint1.cty" "cluster2elbow_bone_placer_L_upvecHandle.ty"
		;
connectAttr "cluster2elbow_bone_placer_L_upvecHandle_parentConstraint1.ctz" "cluster2elbow_bone_placer_L_upvecHandle.tz"
		;
connectAttr "cluster2elbow_bone_placer_L_upvecHandle_parentConstraint1.crx" "cluster2elbow_bone_placer_L_upvecHandle.rx"
		;
connectAttr "cluster2elbow_bone_placer_L_upvecHandle_parentConstraint1.cry" "cluster2elbow_bone_placer_L_upvecHandle.ry"
		;
connectAttr "cluster2elbow_bone_placer_L_upvecHandle_parentConstraint1.crz" "cluster2elbow_bone_placer_L_upvecHandle.rz"
		;
connectAttr "cluster2elbow_bone_placer_L_upvecHandle.ro" "cluster2elbow_bone_placer_L_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2elbow_bone_placer_L_upvecHandle.pim" "cluster2elbow_bone_placer_L_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2elbow_bone_placer_L_upvecHandle.rp" "cluster2elbow_bone_placer_L_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2elbow_bone_placer_L_upvecHandle.rpt" "cluster2elbow_bone_placer_L_upvecHandle_parentConstraint1.crt"
		;
connectAttr "elbow_bone_placer_L_upVector.t" "cluster2elbow_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "elbow_bone_placer_L_upVector.rp" "cluster2elbow_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "elbow_bone_placer_L_upVector.rpt" "cluster2elbow_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "elbow_bone_placer_L_upVector.r" "cluster2elbow_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "elbow_bone_placer_L_upVector.ro" "cluster2elbow_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "elbow_bone_placer_L_upVector.s" "cluster2elbow_bone_placer_L_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "elbow_bone_placer_L_upVector.pm" "cluster2elbow_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2elbow_bone_placer_L_upvecHandle_parentConstraint1.w0" "cluster2elbow_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2elbow_bone_placer_L_upvec.og[0]" "elbow_bone_placer_L_up_vec_curveShape.cr"
		;
connectAttr "elbow_bone_placer_L_upVector_grp.pim" "elbow_bone_placer_L_upVector_grp_aimConstraint1.cpim"
		;
connectAttr "elbow_bone_placer_L_upVector_grp.t" "elbow_bone_placer_L_upVector_grp_aimConstraint1.ct"
		;
connectAttr "elbow_bone_placer_L_upVector_grp.rp" "elbow_bone_placer_L_upVector_grp_aimConstraint1.crp"
		;
connectAttr "elbow_bone_placer_L_upVector_grp.rpt" "elbow_bone_placer_L_upVector_grp_aimConstraint1.crt"
		;
connectAttr "elbow_bone_placer_L_upVector_grp.ro" "elbow_bone_placer_L_upVector_grp_aimConstraint1.cro"
		;
connectAttr "elbow_bone_placer_L_loc.t" "elbow_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tt"
		;
connectAttr "elbow_bone_placer_L_loc.rp" "elbow_bone_placer_L_upVector_grp_aimConstraint1.tg[0].trp"
		;
connectAttr "elbow_bone_placer_L_loc.rpt" "elbow_bone_placer_L_upVector_grp_aimConstraint1.tg[0].trt"
		;
connectAttr "elbow_bone_placer_L_loc.pm" "elbow_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tpm"
		;
connectAttr "elbow_bone_placer_L_upVector_grp_aimConstraint1.w0" "elbow_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tw"
		;
connectAttr "wrist_bone_placer_L_upVector_grp_aimConstraint1.crx" "wrist_bone_placer_L_upVector_grp.rx"
		;
connectAttr "wrist_bone_placer_L_upVector_grp_aimConstraint1.cry" "wrist_bone_placer_L_upVector_grp.ry"
		;
connectAttr "wrist_bone_placer_L_upVector_grp_aimConstraint1.crz" "wrist_bone_placer_L_upVector_grp.rz"
		;
connectAttr "cluster1wrist_bone_placer_L_upvecHandle_parentConstraint1.ctx" "cluster1wrist_bone_placer_L_upvecHandle.tx"
		;
connectAttr "cluster1wrist_bone_placer_L_upvecHandle_parentConstraint1.cty" "cluster1wrist_bone_placer_L_upvecHandle.ty"
		;
connectAttr "cluster1wrist_bone_placer_L_upvecHandle_parentConstraint1.ctz" "cluster1wrist_bone_placer_L_upvecHandle.tz"
		;
connectAttr "cluster1wrist_bone_placer_L_upvecHandle_parentConstraint1.crx" "cluster1wrist_bone_placer_L_upvecHandle.rx"
		;
connectAttr "cluster1wrist_bone_placer_L_upvecHandle_parentConstraint1.cry" "cluster1wrist_bone_placer_L_upvecHandle.ry"
		;
connectAttr "cluster1wrist_bone_placer_L_upvecHandle_parentConstraint1.crz" "cluster1wrist_bone_placer_L_upvecHandle.rz"
		;
connectAttr "cluster1wrist_bone_placer_L_upvecHandle.ro" "cluster1wrist_bone_placer_L_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1wrist_bone_placer_L_upvecHandle.pim" "cluster1wrist_bone_placer_L_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1wrist_bone_placer_L_upvecHandle.rp" "cluster1wrist_bone_placer_L_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1wrist_bone_placer_L_upvecHandle.rpt" "cluster1wrist_bone_placer_L_upvecHandle_parentConstraint1.crt"
		;
connectAttr "wrist_bone_placer_L.t" "cluster1wrist_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "wrist_bone_placer_L.rp" "cluster1wrist_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "wrist_bone_placer_L.rpt" "cluster1wrist_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "wrist_bone_placer_L.r" "cluster1wrist_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "wrist_bone_placer_L.ro" "cluster1wrist_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "wrist_bone_placer_L.s" "cluster1wrist_bone_placer_L_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "wrist_bone_placer_L.pm" "cluster1wrist_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1wrist_bone_placer_L_upvecHandle_parentConstraint1.w0" "cluster1wrist_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2wrist_bone_placer_L_upvecHandle_parentConstraint1.ctx" "cluster2wrist_bone_placer_L_upvecHandle.tx"
		;
connectAttr "cluster2wrist_bone_placer_L_upvecHandle_parentConstraint1.cty" "cluster2wrist_bone_placer_L_upvecHandle.ty"
		;
connectAttr "cluster2wrist_bone_placer_L_upvecHandle_parentConstraint1.ctz" "cluster2wrist_bone_placer_L_upvecHandle.tz"
		;
connectAttr "cluster2wrist_bone_placer_L_upvecHandle_parentConstraint1.crx" "cluster2wrist_bone_placer_L_upvecHandle.rx"
		;
connectAttr "cluster2wrist_bone_placer_L_upvecHandle_parentConstraint1.cry" "cluster2wrist_bone_placer_L_upvecHandle.ry"
		;
connectAttr "cluster2wrist_bone_placer_L_upvecHandle_parentConstraint1.crz" "cluster2wrist_bone_placer_L_upvecHandle.rz"
		;
connectAttr "cluster2wrist_bone_placer_L_upvecHandle.ro" "cluster2wrist_bone_placer_L_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2wrist_bone_placer_L_upvecHandle.pim" "cluster2wrist_bone_placer_L_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2wrist_bone_placer_L_upvecHandle.rp" "cluster2wrist_bone_placer_L_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2wrist_bone_placer_L_upvecHandle.rpt" "cluster2wrist_bone_placer_L_upvecHandle_parentConstraint1.crt"
		;
connectAttr "wrist_bone_placer_L_upVector.t" "cluster2wrist_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "wrist_bone_placer_L_upVector.rp" "cluster2wrist_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "wrist_bone_placer_L_upVector.rpt" "cluster2wrist_bone_placer_L_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "wrist_bone_placer_L_upVector.r" "cluster2wrist_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "wrist_bone_placer_L_upVector.ro" "cluster2wrist_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "wrist_bone_placer_L_upVector.s" "cluster2wrist_bone_placer_L_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "wrist_bone_placer_L_upVector.pm" "cluster2wrist_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2wrist_bone_placer_L_upvecHandle_parentConstraint1.w0" "cluster2wrist_bone_placer_L_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2wrist_bone_placer_L_upvec.og[0]" "wrist_bone_placer_L_up_vec_curveShape.cr"
		;
connectAttr "wrist_bone_placer_L_upVector_grp.pim" "wrist_bone_placer_L_upVector_grp_aimConstraint1.cpim"
		;
connectAttr "wrist_bone_placer_L_upVector_grp.t" "wrist_bone_placer_L_upVector_grp_aimConstraint1.ct"
		;
connectAttr "wrist_bone_placer_L_upVector_grp.rp" "wrist_bone_placer_L_upVector_grp_aimConstraint1.crp"
		;
connectAttr "wrist_bone_placer_L_upVector_grp.rpt" "wrist_bone_placer_L_upVector_grp_aimConstraint1.crt"
		;
connectAttr "wrist_bone_placer_L_upVector_grp.ro" "wrist_bone_placer_L_upVector_grp_aimConstraint1.cro"
		;
connectAttr "wrist_bone_placer_L_loc.t" "wrist_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tt"
		;
connectAttr "wrist_bone_placer_L_loc.rp" "wrist_bone_placer_L_upVector_grp_aimConstraint1.tg[0].trp"
		;
connectAttr "wrist_bone_placer_L_loc.rpt" "wrist_bone_placer_L_upVector_grp_aimConstraint1.tg[0].trt"
		;
connectAttr "wrist_bone_placer_L_loc.pm" "wrist_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tpm"
		;
connectAttr "wrist_bone_placer_L_upVector_grp_aimConstraint1.w0" "wrist_bone_placer_L_upVector_grp_aimConstraint1.tg[0].tw"
		;
connectAttr "clavUpVec_R.o3" "clavicle_bone_placer_R_loc.t";
connectAttr "shoulderUpVec_R.o3" "shoulder_bone_placer_R_loc.t";
connectAttr "elbowUpVec_R.o3" "elbow_bone_placer_R_loc.t";
connectAttr "wristUpVec_R.o3" "wrist_bone_placer_R_loc.t";
connectAttr "placer_cluster0_arm_RHandle_parentConstraint1.ctx" "placer_cluster0_arm_RHandle.tx"
		;
connectAttr "placer_cluster0_arm_RHandle_parentConstraint1.cty" "placer_cluster0_arm_RHandle.ty"
		;
connectAttr "placer_cluster0_arm_RHandle_parentConstraint1.ctz" "placer_cluster0_arm_RHandle.tz"
		;
connectAttr "placer_cluster0_arm_RHandle_parentConstraint1.crx" "placer_cluster0_arm_RHandle.rx"
		;
connectAttr "placer_cluster0_arm_RHandle_parentConstraint1.cry" "placer_cluster0_arm_RHandle.ry"
		;
connectAttr "placer_cluster0_arm_RHandle_parentConstraint1.crz" "placer_cluster0_arm_RHandle.rz"
		;
connectAttr "placer_cluster0_arm_RHandle.ro" "placer_cluster0_arm_RHandle_parentConstraint1.cro"
		;
connectAttr "placer_cluster0_arm_RHandle.pim" "placer_cluster0_arm_RHandle_parentConstraint1.cpim"
		;
connectAttr "placer_cluster0_arm_RHandle.rp" "placer_cluster0_arm_RHandle_parentConstraint1.crp"
		;
connectAttr "placer_cluster0_arm_RHandle.rpt" "placer_cluster0_arm_RHandle_parentConstraint1.crt"
		;
connectAttr "clavicle_bone_placer_R.t" "placer_cluster0_arm_RHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "clavicle_bone_placer_R.rp" "placer_cluster0_arm_RHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "clavicle_bone_placer_R.rpt" "placer_cluster0_arm_RHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "clavicle_bone_placer_R.r" "placer_cluster0_arm_RHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "clavicle_bone_placer_R.ro" "placer_cluster0_arm_RHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "clavicle_bone_placer_R.s" "placer_cluster0_arm_RHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "clavicle_bone_placer_R.pm" "placer_cluster0_arm_RHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "placer_cluster0_arm_RHandle_parentConstraint1.w0" "placer_cluster0_arm_RHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "placer_cluster1_arm_RHandle_parentConstraint1.ctx" "placer_cluster1_arm_RHandle.tx"
		;
connectAttr "placer_cluster1_arm_RHandle_parentConstraint1.cty" "placer_cluster1_arm_RHandle.ty"
		;
connectAttr "placer_cluster1_arm_RHandle_parentConstraint1.ctz" "placer_cluster1_arm_RHandle.tz"
		;
connectAttr "placer_cluster1_arm_RHandle_parentConstraint1.crx" "placer_cluster1_arm_RHandle.rx"
		;
connectAttr "placer_cluster1_arm_RHandle_parentConstraint1.cry" "placer_cluster1_arm_RHandle.ry"
		;
connectAttr "placer_cluster1_arm_RHandle_parentConstraint1.crz" "placer_cluster1_arm_RHandle.rz"
		;
connectAttr "placer_cluster1_arm_RHandle.ro" "placer_cluster1_arm_RHandle_parentConstraint1.cro"
		;
connectAttr "placer_cluster1_arm_RHandle.pim" "placer_cluster1_arm_RHandle_parentConstraint1.cpim"
		;
connectAttr "placer_cluster1_arm_RHandle.rp" "placer_cluster1_arm_RHandle_parentConstraint1.crp"
		;
connectAttr "placer_cluster1_arm_RHandle.rpt" "placer_cluster1_arm_RHandle_parentConstraint1.crt"
		;
connectAttr "shoulder_bone_placer_R.t" "placer_cluster1_arm_RHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "shoulder_bone_placer_R.rp" "placer_cluster1_arm_RHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "shoulder_bone_placer_R.rpt" "placer_cluster1_arm_RHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "shoulder_bone_placer_R.r" "placer_cluster1_arm_RHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "shoulder_bone_placer_R.ro" "placer_cluster1_arm_RHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "shoulder_bone_placer_R.s" "placer_cluster1_arm_RHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "shoulder_bone_placer_R.pm" "placer_cluster1_arm_RHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "placer_cluster1_arm_RHandle_parentConstraint1.w0" "placer_cluster1_arm_RHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "placer_cluster2_arm_RHandle_parentConstraint1.ctx" "placer_cluster2_arm_RHandle.tx"
		;
connectAttr "placer_cluster2_arm_RHandle_parentConstraint1.cty" "placer_cluster2_arm_RHandle.ty"
		;
connectAttr "placer_cluster2_arm_RHandle_parentConstraint1.ctz" "placer_cluster2_arm_RHandle.tz"
		;
connectAttr "placer_cluster2_arm_RHandle_parentConstraint1.crx" "placer_cluster2_arm_RHandle.rx"
		;
connectAttr "placer_cluster2_arm_RHandle_parentConstraint1.cry" "placer_cluster2_arm_RHandle.ry"
		;
connectAttr "placer_cluster2_arm_RHandle_parentConstraint1.crz" "placer_cluster2_arm_RHandle.rz"
		;
connectAttr "placer_cluster2_arm_RHandle.ro" "placer_cluster2_arm_RHandle_parentConstraint1.cro"
		;
connectAttr "placer_cluster2_arm_RHandle.pim" "placer_cluster2_arm_RHandle_parentConstraint1.cpim"
		;
connectAttr "placer_cluster2_arm_RHandle.rp" "placer_cluster2_arm_RHandle_parentConstraint1.crp"
		;
connectAttr "placer_cluster2_arm_RHandle.rpt" "placer_cluster2_arm_RHandle_parentConstraint1.crt"
		;
connectAttr "elbow_bone_placer_R.t" "placer_cluster2_arm_RHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "elbow_bone_placer_R.rp" "placer_cluster2_arm_RHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "elbow_bone_placer_R.rpt" "placer_cluster2_arm_RHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "elbow_bone_placer_R.r" "placer_cluster2_arm_RHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "elbow_bone_placer_R.ro" "placer_cluster2_arm_RHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "elbow_bone_placer_R.s" "placer_cluster2_arm_RHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "elbow_bone_placer_R.pm" "placer_cluster2_arm_RHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "placer_cluster2_arm_RHandle_parentConstraint1.w0" "placer_cluster2_arm_RHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "placer_cluster3_arm_RHandle_parentConstraint1.ctx" "placer_cluster3_arm_RHandle.tx"
		;
connectAttr "placer_cluster3_arm_RHandle_parentConstraint1.cty" "placer_cluster3_arm_RHandle.ty"
		;
connectAttr "placer_cluster3_arm_RHandle_parentConstraint1.ctz" "placer_cluster3_arm_RHandle.tz"
		;
connectAttr "placer_cluster3_arm_RHandle_parentConstraint1.crx" "placer_cluster3_arm_RHandle.rx"
		;
connectAttr "placer_cluster3_arm_RHandle_parentConstraint1.cry" "placer_cluster3_arm_RHandle.ry"
		;
connectAttr "placer_cluster3_arm_RHandle_parentConstraint1.crz" "placer_cluster3_arm_RHandle.rz"
		;
connectAttr "placer_cluster3_arm_RHandle.ro" "placer_cluster3_arm_RHandle_parentConstraint1.cro"
		;
connectAttr "placer_cluster3_arm_RHandle.pim" "placer_cluster3_arm_RHandle_parentConstraint1.cpim"
		;
connectAttr "placer_cluster3_arm_RHandle.rp" "placer_cluster3_arm_RHandle_parentConstraint1.crp"
		;
connectAttr "placer_cluster3_arm_RHandle.rpt" "placer_cluster3_arm_RHandle_parentConstraint1.crt"
		;
connectAttr "wrist_bone_placer_R.t" "placer_cluster3_arm_RHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "wrist_bone_placer_R.rp" "placer_cluster3_arm_RHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "wrist_bone_placer_R.rpt" "placer_cluster3_arm_RHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "wrist_bone_placer_R.r" "placer_cluster3_arm_RHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "wrist_bone_placer_R.ro" "placer_cluster3_arm_RHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "wrist_bone_placer_R.s" "placer_cluster3_arm_RHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "wrist_bone_placer_R.pm" "placer_cluster3_arm_RHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "placer_cluster3_arm_RHandle_parentConstraint1.w0" "placer_cluster3_arm_RHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "placer_cluster3_arm_R.og[0]" "proxy_curve_arm_RShape.cr";
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
connectAttr "shoulder_bone_placer_R_upVector_grp_aimConstraint1.crx" "shoulder_bone_placer_R_upVector_grp.rx"
		;
connectAttr "shoulder_bone_placer_R_upVector_grp_aimConstraint1.cry" "shoulder_bone_placer_R_upVector_grp.ry"
		;
connectAttr "shoulder_bone_placer_R_upVector_grp_aimConstraint1.crz" "shoulder_bone_placer_R_upVector_grp.rz"
		;
connectAttr "cluster1shoulder_bone_placer_R_upvecHandle_parentConstraint1.ctx" "cluster1shoulder_bone_placer_R_upvecHandle.tx"
		;
connectAttr "cluster1shoulder_bone_placer_R_upvecHandle_parentConstraint1.cty" "cluster1shoulder_bone_placer_R_upvecHandle.ty"
		;
connectAttr "cluster1shoulder_bone_placer_R_upvecHandle_parentConstraint1.ctz" "cluster1shoulder_bone_placer_R_upvecHandle.tz"
		;
connectAttr "cluster1shoulder_bone_placer_R_upvecHandle_parentConstraint1.crx" "cluster1shoulder_bone_placer_R_upvecHandle.rx"
		;
connectAttr "cluster1shoulder_bone_placer_R_upvecHandle_parentConstraint1.cry" "cluster1shoulder_bone_placer_R_upvecHandle.ry"
		;
connectAttr "cluster1shoulder_bone_placer_R_upvecHandle_parentConstraint1.crz" "cluster1shoulder_bone_placer_R_upvecHandle.rz"
		;
connectAttr "cluster1shoulder_bone_placer_R_upvecHandle.ro" "cluster1shoulder_bone_placer_R_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1shoulder_bone_placer_R_upvecHandle.pim" "cluster1shoulder_bone_placer_R_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1shoulder_bone_placer_R_upvecHandle.rp" "cluster1shoulder_bone_placer_R_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1shoulder_bone_placer_R_upvecHandle.rpt" "cluster1shoulder_bone_placer_R_upvecHandle_parentConstraint1.crt"
		;
connectAttr "shoulder_bone_placer_R.t" "cluster1shoulder_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "shoulder_bone_placer_R.rp" "cluster1shoulder_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "shoulder_bone_placer_R.rpt" "cluster1shoulder_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "shoulder_bone_placer_R.r" "cluster1shoulder_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "shoulder_bone_placer_R.ro" "cluster1shoulder_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "shoulder_bone_placer_R.s" "cluster1shoulder_bone_placer_R_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "shoulder_bone_placer_R.pm" "cluster1shoulder_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1shoulder_bone_placer_R_upvecHandle_parentConstraint1.w0" "cluster1shoulder_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2shoulder_bone_placer_R_upvecHandle_parentConstraint1.ctx" "cluster2shoulder_bone_placer_R_upvecHandle.tx"
		;
connectAttr "cluster2shoulder_bone_placer_R_upvecHandle_parentConstraint1.cty" "cluster2shoulder_bone_placer_R_upvecHandle.ty"
		;
connectAttr "cluster2shoulder_bone_placer_R_upvecHandle_parentConstraint1.ctz" "cluster2shoulder_bone_placer_R_upvecHandle.tz"
		;
connectAttr "cluster2shoulder_bone_placer_R_upvecHandle_parentConstraint1.crx" "cluster2shoulder_bone_placer_R_upvecHandle.rx"
		;
connectAttr "cluster2shoulder_bone_placer_R_upvecHandle_parentConstraint1.cry" "cluster2shoulder_bone_placer_R_upvecHandle.ry"
		;
connectAttr "cluster2shoulder_bone_placer_R_upvecHandle_parentConstraint1.crz" "cluster2shoulder_bone_placer_R_upvecHandle.rz"
		;
connectAttr "cluster2shoulder_bone_placer_R_upvecHandle.ro" "cluster2shoulder_bone_placer_R_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2shoulder_bone_placer_R_upvecHandle.pim" "cluster2shoulder_bone_placer_R_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2shoulder_bone_placer_R_upvecHandle.rp" "cluster2shoulder_bone_placer_R_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2shoulder_bone_placer_R_upvecHandle.rpt" "cluster2shoulder_bone_placer_R_upvecHandle_parentConstraint1.crt"
		;
connectAttr "shoulder_bone_placer_R_upVector.t" "cluster2shoulder_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "shoulder_bone_placer_R_upVector.rp" "cluster2shoulder_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "shoulder_bone_placer_R_upVector.rpt" "cluster2shoulder_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "shoulder_bone_placer_R_upVector.r" "cluster2shoulder_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "shoulder_bone_placer_R_upVector.ro" "cluster2shoulder_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "shoulder_bone_placer_R_upVector.s" "cluster2shoulder_bone_placer_R_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "shoulder_bone_placer_R_upVector.pm" "cluster2shoulder_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2shoulder_bone_placer_R_upvecHandle_parentConstraint1.w0" "cluster2shoulder_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2shoulder_bone_placer_R_upvec.og[0]" "shoulder_bone_placer_R_up_vec_curveShape.cr"
		;
connectAttr "shoulder_bone_placer_R_upVector_grp.pim" "shoulder_bone_placer_R_upVector_grp_aimConstraint1.cpim"
		;
connectAttr "shoulder_bone_placer_R_upVector_grp.t" "shoulder_bone_placer_R_upVector_grp_aimConstraint1.ct"
		;
connectAttr "shoulder_bone_placer_R_upVector_grp.rp" "shoulder_bone_placer_R_upVector_grp_aimConstraint1.crp"
		;
connectAttr "shoulder_bone_placer_R_upVector_grp.rpt" "shoulder_bone_placer_R_upVector_grp_aimConstraint1.crt"
		;
connectAttr "shoulder_bone_placer_R_upVector_grp.ro" "shoulder_bone_placer_R_upVector_grp_aimConstraint1.cro"
		;
connectAttr "shoulder_bone_placer_R_loc.t" "shoulder_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tt"
		;
connectAttr "shoulder_bone_placer_R_loc.rp" "shoulder_bone_placer_R_upVector_grp_aimConstraint1.tg[0].trp"
		;
connectAttr "shoulder_bone_placer_R_loc.rpt" "shoulder_bone_placer_R_upVector_grp_aimConstraint1.tg[0].trt"
		;
connectAttr "shoulder_bone_placer_R_loc.pm" "shoulder_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tpm"
		;
connectAttr "shoulder_bone_placer_R_upVector_grp_aimConstraint1.w0" "shoulder_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tw"
		;
connectAttr "elbow_bone_placer_R_upVector_grp_aimConstraint1.crx" "elbow_bone_placer_R_upVector_grp.rx"
		;
connectAttr "elbow_bone_placer_R_upVector_grp_aimConstraint1.cry" "elbow_bone_placer_R_upVector_grp.ry"
		;
connectAttr "elbow_bone_placer_R_upVector_grp_aimConstraint1.crz" "elbow_bone_placer_R_upVector_grp.rz"
		;
connectAttr "cluster1elbow_bone_placer_R_upvecHandle_parentConstraint1.ctx" "cluster1elbow_bone_placer_R_upvecHandle.tx"
		;
connectAttr "cluster1elbow_bone_placer_R_upvecHandle_parentConstraint1.cty" "cluster1elbow_bone_placer_R_upvecHandle.ty"
		;
connectAttr "cluster1elbow_bone_placer_R_upvecHandle_parentConstraint1.ctz" "cluster1elbow_bone_placer_R_upvecHandle.tz"
		;
connectAttr "cluster1elbow_bone_placer_R_upvecHandle_parentConstraint1.crx" "cluster1elbow_bone_placer_R_upvecHandle.rx"
		;
connectAttr "cluster1elbow_bone_placer_R_upvecHandle_parentConstraint1.cry" "cluster1elbow_bone_placer_R_upvecHandle.ry"
		;
connectAttr "cluster1elbow_bone_placer_R_upvecHandle_parentConstraint1.crz" "cluster1elbow_bone_placer_R_upvecHandle.rz"
		;
connectAttr "cluster1elbow_bone_placer_R_upvecHandle.ro" "cluster1elbow_bone_placer_R_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1elbow_bone_placer_R_upvecHandle.pim" "cluster1elbow_bone_placer_R_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1elbow_bone_placer_R_upvecHandle.rp" "cluster1elbow_bone_placer_R_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1elbow_bone_placer_R_upvecHandle.rpt" "cluster1elbow_bone_placer_R_upvecHandle_parentConstraint1.crt"
		;
connectAttr "elbow_bone_placer_R.t" "cluster1elbow_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "elbow_bone_placer_R.rp" "cluster1elbow_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "elbow_bone_placer_R.rpt" "cluster1elbow_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "elbow_bone_placer_R.r" "cluster1elbow_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "elbow_bone_placer_R.ro" "cluster1elbow_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "elbow_bone_placer_R.s" "cluster1elbow_bone_placer_R_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "elbow_bone_placer_R.pm" "cluster1elbow_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1elbow_bone_placer_R_upvecHandle_parentConstraint1.w0" "cluster1elbow_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2elbow_bone_placer_R_upvecHandle_parentConstraint1.ctx" "cluster2elbow_bone_placer_R_upvecHandle.tx"
		;
connectAttr "cluster2elbow_bone_placer_R_upvecHandle_parentConstraint1.cty" "cluster2elbow_bone_placer_R_upvecHandle.ty"
		;
connectAttr "cluster2elbow_bone_placer_R_upvecHandle_parentConstraint1.ctz" "cluster2elbow_bone_placer_R_upvecHandle.tz"
		;
connectAttr "cluster2elbow_bone_placer_R_upvecHandle_parentConstraint1.crx" "cluster2elbow_bone_placer_R_upvecHandle.rx"
		;
connectAttr "cluster2elbow_bone_placer_R_upvecHandle_parentConstraint1.cry" "cluster2elbow_bone_placer_R_upvecHandle.ry"
		;
connectAttr "cluster2elbow_bone_placer_R_upvecHandle_parentConstraint1.crz" "cluster2elbow_bone_placer_R_upvecHandle.rz"
		;
connectAttr "cluster2elbow_bone_placer_R_upvecHandle.ro" "cluster2elbow_bone_placer_R_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2elbow_bone_placer_R_upvecHandle.pim" "cluster2elbow_bone_placer_R_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2elbow_bone_placer_R_upvecHandle.rp" "cluster2elbow_bone_placer_R_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2elbow_bone_placer_R_upvecHandle.rpt" "cluster2elbow_bone_placer_R_upvecHandle_parentConstraint1.crt"
		;
connectAttr "elbow_bone_placer_R_upVector.t" "cluster2elbow_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "elbow_bone_placer_R_upVector.rp" "cluster2elbow_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "elbow_bone_placer_R_upVector.rpt" "cluster2elbow_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "elbow_bone_placer_R_upVector.r" "cluster2elbow_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "elbow_bone_placer_R_upVector.ro" "cluster2elbow_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "elbow_bone_placer_R_upVector.s" "cluster2elbow_bone_placer_R_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "elbow_bone_placer_R_upVector.pm" "cluster2elbow_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2elbow_bone_placer_R_upvecHandle_parentConstraint1.w0" "cluster2elbow_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2elbow_bone_placer_R_upvec.og[0]" "elbow_bone_placer_R_up_vec_curveShape.cr"
		;
connectAttr "elbow_bone_placer_R_upVector_grp.pim" "elbow_bone_placer_R_upVector_grp_aimConstraint1.cpim"
		;
connectAttr "elbow_bone_placer_R_upVector_grp.t" "elbow_bone_placer_R_upVector_grp_aimConstraint1.ct"
		;
connectAttr "elbow_bone_placer_R_upVector_grp.rp" "elbow_bone_placer_R_upVector_grp_aimConstraint1.crp"
		;
connectAttr "elbow_bone_placer_R_upVector_grp.rpt" "elbow_bone_placer_R_upVector_grp_aimConstraint1.crt"
		;
connectAttr "elbow_bone_placer_R_upVector_grp.ro" "elbow_bone_placer_R_upVector_grp_aimConstraint1.cro"
		;
connectAttr "elbow_bone_placer_R_loc.t" "elbow_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tt"
		;
connectAttr "elbow_bone_placer_R_loc.rp" "elbow_bone_placer_R_upVector_grp_aimConstraint1.tg[0].trp"
		;
connectAttr "elbow_bone_placer_R_loc.rpt" "elbow_bone_placer_R_upVector_grp_aimConstraint1.tg[0].trt"
		;
connectAttr "elbow_bone_placer_R_loc.pm" "elbow_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tpm"
		;
connectAttr "elbow_bone_placer_R_upVector_grp_aimConstraint1.w0" "elbow_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tw"
		;
connectAttr "wrist_bone_placer_R_upVector_grp_aimConstraint1.crx" "wrist_bone_placer_R_upVector_grp.rx"
		;
connectAttr "wrist_bone_placer_R_upVector_grp_aimConstraint1.cry" "wrist_bone_placer_R_upVector_grp.ry"
		;
connectAttr "wrist_bone_placer_R_upVector_grp_aimConstraint1.crz" "wrist_bone_placer_R_upVector_grp.rz"
		;
connectAttr "cluster1wrist_bone_placer_R_upvecHandle_parentConstraint1.ctx" "cluster1wrist_bone_placer_R_upvecHandle.tx"
		;
connectAttr "cluster1wrist_bone_placer_R_upvecHandle_parentConstraint1.cty" "cluster1wrist_bone_placer_R_upvecHandle.ty"
		;
connectAttr "cluster1wrist_bone_placer_R_upvecHandle_parentConstraint1.ctz" "cluster1wrist_bone_placer_R_upvecHandle.tz"
		;
connectAttr "cluster1wrist_bone_placer_R_upvecHandle_parentConstraint1.crx" "cluster1wrist_bone_placer_R_upvecHandle.rx"
		;
connectAttr "cluster1wrist_bone_placer_R_upvecHandle_parentConstraint1.cry" "cluster1wrist_bone_placer_R_upvecHandle.ry"
		;
connectAttr "cluster1wrist_bone_placer_R_upvecHandle_parentConstraint1.crz" "cluster1wrist_bone_placer_R_upvecHandle.rz"
		;
connectAttr "cluster1wrist_bone_placer_R_upvecHandle.ro" "cluster1wrist_bone_placer_R_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster1wrist_bone_placer_R_upvecHandle.pim" "cluster1wrist_bone_placer_R_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster1wrist_bone_placer_R_upvecHandle.rp" "cluster1wrist_bone_placer_R_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster1wrist_bone_placer_R_upvecHandle.rpt" "cluster1wrist_bone_placer_R_upvecHandle_parentConstraint1.crt"
		;
connectAttr "wrist_bone_placer_R.t" "cluster1wrist_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "wrist_bone_placer_R.rp" "cluster1wrist_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "wrist_bone_placer_R.rpt" "cluster1wrist_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "wrist_bone_placer_R.r" "cluster1wrist_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "wrist_bone_placer_R.ro" "cluster1wrist_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "wrist_bone_placer_R.s" "cluster1wrist_bone_placer_R_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "wrist_bone_placer_R.pm" "cluster1wrist_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster1wrist_bone_placer_R_upvecHandle_parentConstraint1.w0" "cluster1wrist_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2wrist_bone_placer_R_upvecHandle_parentConstraint1.ctx" "cluster2wrist_bone_placer_R_upvecHandle.tx"
		;
connectAttr "cluster2wrist_bone_placer_R_upvecHandle_parentConstraint1.cty" "cluster2wrist_bone_placer_R_upvecHandle.ty"
		;
connectAttr "cluster2wrist_bone_placer_R_upvecHandle_parentConstraint1.ctz" "cluster2wrist_bone_placer_R_upvecHandle.tz"
		;
connectAttr "cluster2wrist_bone_placer_R_upvecHandle_parentConstraint1.crx" "cluster2wrist_bone_placer_R_upvecHandle.rx"
		;
connectAttr "cluster2wrist_bone_placer_R_upvecHandle_parentConstraint1.cry" "cluster2wrist_bone_placer_R_upvecHandle.ry"
		;
connectAttr "cluster2wrist_bone_placer_R_upvecHandle_parentConstraint1.crz" "cluster2wrist_bone_placer_R_upvecHandle.rz"
		;
connectAttr "cluster2wrist_bone_placer_R_upvecHandle.ro" "cluster2wrist_bone_placer_R_upvecHandle_parentConstraint1.cro"
		;
connectAttr "cluster2wrist_bone_placer_R_upvecHandle.pim" "cluster2wrist_bone_placer_R_upvecHandle_parentConstraint1.cpim"
		;
connectAttr "cluster2wrist_bone_placer_R_upvecHandle.rp" "cluster2wrist_bone_placer_R_upvecHandle_parentConstraint1.crp"
		;
connectAttr "cluster2wrist_bone_placer_R_upvecHandle.rpt" "cluster2wrist_bone_placer_R_upvecHandle_parentConstraint1.crt"
		;
connectAttr "wrist_bone_placer_R_upVector.t" "cluster2wrist_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "wrist_bone_placer_R_upVector.rp" "cluster2wrist_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "wrist_bone_placer_R_upVector.rpt" "cluster2wrist_bone_placer_R_upvecHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "wrist_bone_placer_R_upVector.r" "cluster2wrist_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "wrist_bone_placer_R_upVector.ro" "cluster2wrist_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "wrist_bone_placer_R_upVector.s" "cluster2wrist_bone_placer_R_upvecHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "wrist_bone_placer_R_upVector.pm" "cluster2wrist_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster2wrist_bone_placer_R_upvecHandle_parentConstraint1.w0" "cluster2wrist_bone_placer_R_upvecHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2wrist_bone_placer_R_upvec.og[0]" "wrist_bone_placer_R_up_vec_curveShape.cr"
		;
connectAttr "wrist_bone_placer_R_upVector_grp.pim" "wrist_bone_placer_R_upVector_grp_aimConstraint1.cpim"
		;
connectAttr "wrist_bone_placer_R_upVector_grp.t" "wrist_bone_placer_R_upVector_grp_aimConstraint1.ct"
		;
connectAttr "wrist_bone_placer_R_upVector_grp.rp" "wrist_bone_placer_R_upVector_grp_aimConstraint1.crp"
		;
connectAttr "wrist_bone_placer_R_upVector_grp.rpt" "wrist_bone_placer_R_upVector_grp_aimConstraint1.crt"
		;
connectAttr "wrist_bone_placer_R_upVector_grp.ro" "wrist_bone_placer_R_upVector_grp_aimConstraint1.cro"
		;
connectAttr "wrist_bone_placer_R_loc.t" "wrist_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tt"
		;
connectAttr "wrist_bone_placer_R_loc.rp" "wrist_bone_placer_R_upVector_grp_aimConstraint1.tg[0].trp"
		;
connectAttr "wrist_bone_placer_R_loc.rpt" "wrist_bone_placer_R_upVector_grp_aimConstraint1.tg[0].trt"
		;
connectAttr "wrist_bone_placer_R_loc.pm" "wrist_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tpm"
		;
connectAttr "wrist_bone_placer_R_upVector_grp_aimConstraint1.w0" "wrist_bone_placer_R_upVector_grp_aimConstraint1.tg[0].tw"
		;
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
connectAttr "shoulder_bone_placer_L_up_vec_curveShapeOrig.ws" "cluster1shoulder_bone_placer_L_upvec.ip[0].ig"
		;
connectAttr "shoulder_bone_placer_L_up_vec_curveShapeOrig.l" "cluster1shoulder_bone_placer_L_upvec.orggeom[0]"
		;
connectAttr "cluster1shoulder_bone_placer_L_upvecHandle.wm" "cluster1shoulder_bone_placer_L_upvec.ma"
		;
connectAttr "cluster1shoulder_bone_placer_L_upvecHandleShape.x" "cluster1shoulder_bone_placer_L_upvec.x"
		;
connectAttr "cluster1shoulder_bone_placer_L_upvec.og[0]" "cluster2shoulder_bone_placer_L_upvec.ip[0].ig"
		;
connectAttr "shoulder_bone_placer_L_up_vec_curveShapeOrig.l" "cluster2shoulder_bone_placer_L_upvec.orggeom[0]"
		;
connectAttr "cluster2shoulder_bone_placer_L_upvecHandle.wm" "cluster2shoulder_bone_placer_L_upvec.ma"
		;
connectAttr "cluster2shoulder_bone_placer_L_upvecHandleShape.x" "cluster2shoulder_bone_placer_L_upvec.x"
		;
connectAttr "elbow_bone_placer_L_up_vec_curveShapeOrig.ws" "cluster1elbow_bone_placer_L_upvec.ip[0].ig"
		;
connectAttr "elbow_bone_placer_L_up_vec_curveShapeOrig.l" "cluster1elbow_bone_placer_L_upvec.orggeom[0]"
		;
connectAttr "cluster1elbow_bone_placer_L_upvecHandle.wm" "cluster1elbow_bone_placer_L_upvec.ma"
		;
connectAttr "cluster1elbow_bone_placer_L_upvecHandleShape.x" "cluster1elbow_bone_placer_L_upvec.x"
		;
connectAttr "cluster1elbow_bone_placer_L_upvec.og[0]" "cluster2elbow_bone_placer_L_upvec.ip[0].ig"
		;
connectAttr "elbow_bone_placer_L_up_vec_curveShapeOrig.l" "cluster2elbow_bone_placer_L_upvec.orggeom[0]"
		;
connectAttr "cluster2elbow_bone_placer_L_upvecHandle.wm" "cluster2elbow_bone_placer_L_upvec.ma"
		;
connectAttr "cluster2elbow_bone_placer_L_upvecHandleShape.x" "cluster2elbow_bone_placer_L_upvec.x"
		;
connectAttr "wrist_bone_placer_L_up_vec_curveShapeOrig.ws" "cluster1wrist_bone_placer_L_upvec.ip[0].ig"
		;
connectAttr "wrist_bone_placer_L_up_vec_curveShapeOrig.l" "cluster1wrist_bone_placer_L_upvec.orggeom[0]"
		;
connectAttr "cluster1wrist_bone_placer_L_upvecHandle.wm" "cluster1wrist_bone_placer_L_upvec.ma"
		;
connectAttr "cluster1wrist_bone_placer_L_upvecHandleShape.x" "cluster1wrist_bone_placer_L_upvec.x"
		;
connectAttr "cluster1wrist_bone_placer_L_upvec.og[0]" "cluster2wrist_bone_placer_L_upvec.ip[0].ig"
		;
connectAttr "wrist_bone_placer_L_up_vec_curveShapeOrig.l" "cluster2wrist_bone_placer_L_upvec.orggeom[0]"
		;
connectAttr "cluster2wrist_bone_placer_L_upvecHandle.wm" "cluster2wrist_bone_placer_L_upvec.ma"
		;
connectAttr "cluster2wrist_bone_placer_L_upvecHandleShape.x" "cluster2wrist_bone_placer_L_upvec.x"
		;
connectAttr "proxy_curve_arm_LShapeOrig.ws" "placer_cluster0_arm_L.ip[0].ig";
connectAttr "proxy_curve_arm_LShapeOrig.l" "placer_cluster0_arm_L.orggeom[0]";
connectAttr "placer_cluster0_arm_LHandle.wm" "placer_cluster0_arm_L.ma";
connectAttr "placer_cluster0_arm_LHandleShape.x" "placer_cluster0_arm_L.x";
connectAttr "placer_cluster0_arm_L.og[0]" "placer_cluster1_arm_L.ip[0].ig";
connectAttr "proxy_curve_arm_LShapeOrig.l" "placer_cluster1_arm_L.orggeom[0]";
connectAttr "placer_cluster1_arm_LHandle.wm" "placer_cluster1_arm_L.ma";
connectAttr "placer_cluster1_arm_LHandleShape.x" "placer_cluster1_arm_L.x";
connectAttr "placer_cluster1_arm_L.og[0]" "placer_cluster2_arm_L.ip[0].ig";
connectAttr "proxy_curve_arm_LShapeOrig.l" "placer_cluster2_arm_L.orggeom[0]";
connectAttr "placer_cluster2_arm_LHandle.wm" "placer_cluster2_arm_L.ma";
connectAttr "placer_cluster2_arm_LHandleShape.x" "placer_cluster2_arm_L.x";
connectAttr "placer_cluster2_arm_L.og[0]" "placer_cluster3_arm_L.ip[0].ig";
connectAttr "proxy_curve_arm_LShapeOrig.l" "placer_cluster3_arm_L.orggeom[0]";
connectAttr "placer_cluster3_arm_LHandle.wm" "placer_cluster3_arm_L.ma";
connectAttr "placer_cluster3_arm_LHandleShape.x" "placer_cluster3_arm_L.x";
connectAttr "clavicle_bone_placer_L.wm" "clavicle_bone_placer_L_decomposeMatrix.imat"
		;
connectAttr "shoulder_bone_placer_L.wm" "shoulder_bone_placer_L_decomposeMatrix.imat"
		;
connectAttr "elbow_bone_placer_L.wm" "elbow_bone_placer_L_decomposeMatrix.imat";
connectAttr "wrist_bone_placer_L.wm" "wrist_bone_placer_L_decomposeMatrix.imat";
connectAttr "shoulder_bone_placer_L_decomposeMatrix.ot" "clavVec_L.i3[0]";
connectAttr "clavicle_bone_placer_L_decomposeMatrix.ot" "clavVec_L.i3[1]";
connectAttr "wrist_bone_placer_L_decomposeMatrix.ot" "wholeArmVec_L.i3[0]";
connectAttr "shoulder_bone_placer_L_decomposeMatrix.ot" "wholeArmVec_L.i3[1]";
connectAttr "elbow_bone_placer_L_decomposeMatrix.ot" "upperArmVec_L.i3[0]";
connectAttr "shoulder_bone_placer_L_decomposeMatrix.ot" "upperArmVec_L.i3[1]";
connectAttr "wholeArmVec_L.o3" "armZupVec_L.i1";
connectAttr "upperArmVec_L.o3" "armZupVec_L.i2";
connectAttr "armZupVec_L.o" "armZupVec_norm_L.i";
connectAttr "armZupVec_norm_L.o" "armZupVecScale_L.i1";
connectAttr "clavVec_L.o3" "clavZupVec_L.i1";
connectAttr "clavZupVec_L.o" "clavZupVec_norm_L.i";
connectAttr "clavicle_bone_placer_L_decomposeMatrix.ot" "clavUpVec_L.i3[0]";
connectAttr "clavZupVec_norm_L.o" "clavUpVec_L.i3[1]";
connectAttr "shoulder_bone_placer_L_decomposeMatrix.ot" "shoulderUpVec_L.i3[0]";
connectAttr "armZupVecScale_L.o" "shoulderUpVec_L.i3[1]";
connectAttr "elbow_bone_placer_L_decomposeMatrix.ot" "elbowUpVec_L.i3[0]";
connectAttr "armZupVecScale_L.o" "elbowUpVec_L.i3[1]";
connectAttr "wrist_bone_placer_L_decomposeMatrix.ot" "wristUpVec_L.i3[0]";
connectAttr "armZupVecScale_L.o" "wristUpVec_L.i3[1]";
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
connectAttr "shoulder_bone_placer_R_up_vec_curveShapeOrig.ws" "cluster1shoulder_bone_placer_R_upvec.ip[0].ig"
		;
connectAttr "shoulder_bone_placer_R_up_vec_curveShapeOrig.l" "cluster1shoulder_bone_placer_R_upvec.orggeom[0]"
		;
connectAttr "cluster1shoulder_bone_placer_R_upvecHandle.wm" "cluster1shoulder_bone_placer_R_upvec.ma"
		;
connectAttr "cluster1shoulder_bone_placer_R_upvecHandleShape.x" "cluster1shoulder_bone_placer_R_upvec.x"
		;
connectAttr "cluster1shoulder_bone_placer_R_upvec.og[0]" "cluster2shoulder_bone_placer_R_upvec.ip[0].ig"
		;
connectAttr "shoulder_bone_placer_R_up_vec_curveShapeOrig.l" "cluster2shoulder_bone_placer_R_upvec.orggeom[0]"
		;
connectAttr "cluster2shoulder_bone_placer_R_upvecHandle.wm" "cluster2shoulder_bone_placer_R_upvec.ma"
		;
connectAttr "cluster2shoulder_bone_placer_R_upvecHandleShape.x" "cluster2shoulder_bone_placer_R_upvec.x"
		;
connectAttr "elbow_bone_placer_R_up_vec_curveShapeOrig.ws" "cluster1elbow_bone_placer_R_upvec.ip[0].ig"
		;
connectAttr "elbow_bone_placer_R_up_vec_curveShapeOrig.l" "cluster1elbow_bone_placer_R_upvec.orggeom[0]"
		;
connectAttr "cluster1elbow_bone_placer_R_upvecHandle.wm" "cluster1elbow_bone_placer_R_upvec.ma"
		;
connectAttr "cluster1elbow_bone_placer_R_upvecHandleShape.x" "cluster1elbow_bone_placer_R_upvec.x"
		;
connectAttr "cluster1elbow_bone_placer_R_upvec.og[0]" "cluster2elbow_bone_placer_R_upvec.ip[0].ig"
		;
connectAttr "elbow_bone_placer_R_up_vec_curveShapeOrig.l" "cluster2elbow_bone_placer_R_upvec.orggeom[0]"
		;
connectAttr "cluster2elbow_bone_placer_R_upvecHandle.wm" "cluster2elbow_bone_placer_R_upvec.ma"
		;
connectAttr "cluster2elbow_bone_placer_R_upvecHandleShape.x" "cluster2elbow_bone_placer_R_upvec.x"
		;
connectAttr "wrist_bone_placer_R_up_vec_curveShapeOrig.ws" "cluster1wrist_bone_placer_R_upvec.ip[0].ig"
		;
connectAttr "wrist_bone_placer_R_up_vec_curveShapeOrig.l" "cluster1wrist_bone_placer_R_upvec.orggeom[0]"
		;
connectAttr "cluster1wrist_bone_placer_R_upvecHandle.wm" "cluster1wrist_bone_placer_R_upvec.ma"
		;
connectAttr "cluster1wrist_bone_placer_R_upvecHandleShape.x" "cluster1wrist_bone_placer_R_upvec.x"
		;
connectAttr "cluster1wrist_bone_placer_R_upvec.og[0]" "cluster2wrist_bone_placer_R_upvec.ip[0].ig"
		;
connectAttr "wrist_bone_placer_R_up_vec_curveShapeOrig.l" "cluster2wrist_bone_placer_R_upvec.orggeom[0]"
		;
connectAttr "cluster2wrist_bone_placer_R_upvecHandle.wm" "cluster2wrist_bone_placer_R_upvec.ma"
		;
connectAttr "cluster2wrist_bone_placer_R_upvecHandleShape.x" "cluster2wrist_bone_placer_R_upvec.x"
		;
connectAttr "proxy_curve_arm_RShapeOrig.ws" "placer_cluster0_arm_R.ip[0].ig";
connectAttr "proxy_curve_arm_RShapeOrig.l" "placer_cluster0_arm_R.orggeom[0]";
connectAttr "placer_cluster0_arm_RHandle.wm" "placer_cluster0_arm_R.ma";
connectAttr "placer_cluster0_arm_RHandleShape.x" "placer_cluster0_arm_R.x";
connectAttr "placer_cluster0_arm_R.og[0]" "placer_cluster1_arm_R.ip[0].ig";
connectAttr "proxy_curve_arm_RShapeOrig.l" "placer_cluster1_arm_R.orggeom[0]";
connectAttr "placer_cluster1_arm_RHandle.wm" "placer_cluster1_arm_R.ma";
connectAttr "placer_cluster1_arm_RHandleShape.x" "placer_cluster1_arm_R.x";
connectAttr "placer_cluster1_arm_R.og[0]" "placer_cluster2_arm_R.ip[0].ig";
connectAttr "proxy_curve_arm_RShapeOrig.l" "placer_cluster2_arm_R.orggeom[0]";
connectAttr "placer_cluster2_arm_RHandle.wm" "placer_cluster2_arm_R.ma";
connectAttr "placer_cluster2_arm_RHandleShape.x" "placer_cluster2_arm_R.x";
connectAttr "placer_cluster2_arm_R.og[0]" "placer_cluster3_arm_R.ip[0].ig";
connectAttr "proxy_curve_arm_RShapeOrig.l" "placer_cluster3_arm_R.orggeom[0]";
connectAttr "placer_cluster3_arm_RHandle.wm" "placer_cluster3_arm_R.ma";
connectAttr "placer_cluster3_arm_RHandleShape.x" "placer_cluster3_arm_R.x";
connectAttr "clavicle_bone_placer_R.wm" "clavicle_bone_placer_R_decomposeMatrix.imat"
		;
connectAttr "shoulder_bone_placer_R.wm" "shoulder_bone_placer_R_decomposeMatrix.imat"
		;
connectAttr "elbow_bone_placer_R.wm" "elbow_bone_placer_R_decomposeMatrix.imat";
connectAttr "wrist_bone_placer_R.wm" "wrist_bone_placer_R_decomposeMatrix.imat";
connectAttr "shoulder_bone_placer_R_decomposeMatrix.ot" "clavVec_R.i3[0]";
connectAttr "clavicle_bone_placer_R_decomposeMatrix.ot" "clavVec_R.i3[1]";
connectAttr "wrist_bone_placer_R_decomposeMatrix.ot" "wholeArmVec_R.i3[0]";
connectAttr "shoulder_bone_placer_R_decomposeMatrix.ot" "wholeArmVec_R.i3[1]";
connectAttr "elbow_bone_placer_R_decomposeMatrix.ot" "upperArmVec_R.i3[0]";
connectAttr "shoulder_bone_placer_R_decomposeMatrix.ot" "upperArmVec_R.i3[1]";
connectAttr "wholeArmVec_R.o3" "armZupVec_R.i1";
connectAttr "upperArmVec_R.o3" "armZupVec_R.i2";
connectAttr "armZupVec_R.o" "armZupVec_norm_R.i";
connectAttr "armZupVec_norm_R.o" "armZupVecScale_R.i1";
connectAttr "clavVec_R.o3" "clavZupVec_R.i1";
connectAttr "clavZupVec_R.o" "clavZupVec_norm_R.i";
connectAttr "clavicle_bone_placer_R_decomposeMatrix.ot" "clavUpVec_R.i3[0]";
connectAttr "clavZupVec_norm_R.o" "clavUpVec_R.i3[1]";
connectAttr "shoulder_bone_placer_R_decomposeMatrix.ot" "shoulderUpVec_R.i3[0]";
connectAttr "armZupVecScale_R.o" "shoulderUpVec_R.i3[1]";
connectAttr "elbow_bone_placer_R_decomposeMatrix.ot" "elbowUpVec_R.i3[0]";
connectAttr "armZupVecScale_R.o" "elbowUpVec_R.i3[1]";
connectAttr "wrist_bone_placer_R_decomposeMatrix.ot" "wristUpVec_R.i3[0]";
connectAttr "armZupVecScale_R.o" "wristUpVec_R.i3[1]";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "clavUpVec_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "shoulder_bone_placer_R_upVector_grp_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "wrist_bone_placer_R_upVector_grp_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "wristUpVec_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "shoulderUpVec_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "elbow_bone_placer_R_upVector_grp_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "clavicle_bone_placer_R_upVector_grp_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "elbowUpVec_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "world_ctrlShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "root.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "world_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn";
connectAttr "ARM_L_RIG_PLACER.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "ARM_L_UP_VEC_LOCS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "clavicle_bone_placer_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "world_ctrl_ptr1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "worldSpace_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn";
connectAttr "Rig_Controls.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn";
connectAttr "worldSpace_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "spaces_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn";
connectAttr "shoulder_bone_placer_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "cluster1clavicle_bone_placer_L_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "clavicle_bone_placer_LShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "clavicle_bone_placer_L_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "clavicle_bone_placer_L_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "clavicle_bone_placer_L_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "cluster1clavicle_bone_placer_L_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "clavicle_bone_placer_L_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "clavicle_bone_placer_L_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "cluster2clavicle_bone_placer_L_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "clavicle_bone_placer_L_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "cluster2clavicle_bone_placer_L_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "cluster2clavicle_bone_placer_L_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "cluster1clavicle_bone_placer_L_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "clavicle_bone_placer_L_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "clavicle_bone_placer_L_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "cluster1clavicle_bone_placer_L_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "cluster2clavicle_bone_placer_L_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "elbow_bone_placer_LShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "elbow_bone_placer_L_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "elbow_bone_placer_L_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "cluster1elbow_bone_placer_L_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "cluster1shoulder_bone_placer_L_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "elbow_bone_placer_L_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "shoulder_bone_placer_L_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "shoulder_bone_placer_L_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "elbow_bone_placer_L_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "cluster1shoulder_bone_placer_L_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "elbow_bone_placer_L_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "elbow_bone_placer_L_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "shoulder_bone_placer_L_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "shoulder_bone_placer_L_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "cluster2shoulder_bone_placer_L_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "shoulder_bone_placer_L_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "cluster2shoulder_bone_placer_L_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "cluster1shoulder_bone_placer_L_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "shoulder_bone_placer_LShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "shoulder_bone_placer_L_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "cluster2shoulder_bone_placer_L_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "cluster1shoulder_bone_placer_L_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "shoulder_bone_placer_L_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "cluster2shoulder_bone_placer_L_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "shoulder_bone_placer_L_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "elbow_bone_placer_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "elbow_bone_placer_L_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "elbow_bone_placer_L_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "cluster1elbow_bone_placer_L_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "cluster1elbow_bone_placer_L_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "cluster2elbow_bone_placer_L_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "cluster2elbow_bone_placer_L_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "cluster1elbow_bone_placer_L_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "wrist_bone_placer_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "wrist_bone_placer_LShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "cluster2elbow_bone_placer_L_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "wrist_bone_placer_L_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "cluster2elbow_bone_placer_L_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "wrist_bone_placer_L_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "placer_cluster2_arm_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "wrist_bone_placer_L_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn"
		;
connectAttr "wrist_bone_placer_L_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "cluster1wrist_bone_placer_L_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "cluster2wrist_bone_placer_L_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "placer_cluster0_arm_LHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "proxy_curve_arm_LShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "proxy_curve_arm_LShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "wrist_bone_placer_L_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "cluster1wrist_bone_placer_L_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "wrist_bone_placer_L_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "wrist_bone_placer_L_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "wrist_bone_placer_L_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "cluster2wrist_bone_placer_L_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "placer_cluster0_arm_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "placer_cluster0_arm_LHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "proxy_curve_arm_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "placer_cluster0_arm_LHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "placer_cluster1_arm_LHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "cluster2wrist_bone_placer_L_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "placer_cluster1_arm_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn"
		;
connectAttr "placer_cluster1_arm_LHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "placer_cluster1_arm_LHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn"
		;
connectAttr "cluster1wrist_bone_placer_L_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "cluster2wrist_bone_placer_L_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn"
		;
connectAttr "cluster1wrist_bone_placer_L_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "clavVec_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn";
connectAttr "placer_cluster3_arm_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn"
		;
connectAttr "placer_cluster2_arm_LHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn"
		;
connectAttr "placer_cluster3_arm_LHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "shoulder_bone_placer_L_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "ARM_R_UP_VEC_LOCS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "clavicle_bone_placer_RShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "clavicle_bone_placer_R_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn"
		;
connectAttr "wholeArmVec_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn";
connectAttr "clavUpVec_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn";
connectAttr "elbow_bone_placer_L_upVector_grp_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn"
		;
connectAttr "armZupVec_norm_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "wrist_bone_placer_L_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn"
		;
connectAttr "elbowUpVec_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn";
connectAttr "placer_cluster3_arm_LHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
		;
connectAttr "placer_cluster3_arm_LHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn"
		;
connectAttr "wristUpVec_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn";
connectAttr "armZupVecScale_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "placer_cluster2_arm_LHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "shoulder_bone_placer_L_upVector_grp_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn"
		;
connectAttr "wrist_bone_placer_L_upVector_grp_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "ARM_R_RIG_PLACER.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn"
		;
connectAttr "clavicle_bone_placer_L_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn"
		;
connectAttr "elbow_bone_placer_L_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn"
		;
connectAttr "upperArmVec_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn";
connectAttr "placer_cluster2_arm_LHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "armZupVec_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn";
connectAttr "clavZupVec_norm_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn"
		;
connectAttr "clavZupVec_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn";
connectAttr "shoulderUpVec_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn"
		;
connectAttr "clavicle_bone_placer_L_upVector_grp_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "clavicle_bone_placer_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "clavicle_bone_placer_R_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "clavicle_bone_placer_R_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "clavicle_bone_placer_R_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "clavicle_bone_placer_R_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn"
		;
connectAttr "clavicle_bone_placer_R_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn"
		;
connectAttr "cluster1shoulder_bone_placer_R_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn"
		;
connectAttr "cluster2shoulder_bone_placer_R_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn"
		;
connectAttr "cluster2shoulder_bone_placer_R_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn"
		;
connectAttr "shoulder_bone_placer_R_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn"
		;
connectAttr "elbow_bone_placer_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn"
		;
connectAttr "elbow_bone_placer_R_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn"
		;
connectAttr "cluster1clavicle_bone_placer_R_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn"
		;
connectAttr "shoulder_bone_placer_RShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn"
		;
connectAttr "shoulder_bone_placer_R_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn"
		;
connectAttr "clavicle_bone_placer_R_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn"
		;
connectAttr "cluster1clavicle_bone_placer_R_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn"
		;
connectAttr "cluster2clavicle_bone_placer_R_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[151].dn"
		;
connectAttr "shoulder_bone_placer_R_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn"
		;
connectAttr "cluster1shoulder_bone_placer_R_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn"
		;
connectAttr "cluster2clavicle_bone_placer_R_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn"
		;
connectAttr "shoulder_bone_placer_R_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[155].dn"
		;
connectAttr "shoulder_bone_placer_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn"
		;
connectAttr "shoulder_bone_placer_R_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[157].dn"
		;
connectAttr "cluster2clavicle_bone_placer_R_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[158].dn"
		;
connectAttr "clavicle_bone_placer_R_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[159].dn"
		;
connectAttr "cluster1clavicle_bone_placer_R_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[160].dn"
		;
connectAttr "cluster1clavicle_bone_placer_R_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[161].dn"
		;
connectAttr "cluster2clavicle_bone_placer_R_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[162].dn"
		;
connectAttr "shoulder_bone_placer_R_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[163].dn"
		;
connectAttr "shoulder_bone_placer_R_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[164].dn"
		;
connectAttr "shoulder_bone_placer_R_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[165].dn"
		;
connectAttr "cluster1shoulder_bone_placer_R_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[166].dn"
		;
connectAttr "cluster2shoulder_bone_placer_R_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[167].dn"
		;
connectAttr "cluster1shoulder_bone_placer_R_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[168].dn"
		;
connectAttr "cluster2shoulder_bone_placer_R_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[169].dn"
		;
connectAttr "elbow_bone_placer_RShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[170].dn"
		;
connectAttr "elbow_bone_placer_R_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[171].dn"
		;
connectAttr "wrist_bone_placer_R_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[172].dn"
		;
connectAttr "cluster1wrist_bone_placer_R_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[173].dn"
		;
connectAttr "cluster1wrist_bone_placer_R_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[174].dn"
		;
connectAttr "cluster2wrist_bone_placer_R_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[175].dn"
		;
connectAttr "cluster1wrist_bone_placer_R_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[176].dn"
		;
connectAttr "cluster1elbow_bone_placer_R_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[177].dn"
		;
connectAttr "elbow_bone_placer_R_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[178].dn"
		;
connectAttr "wrist_bone_placer_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[179].dn"
		;
connectAttr "wrist_bone_placer_RShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[180].dn"
		;
connectAttr "cluster2elbow_bone_placer_R_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[181].dn"
		;
connectAttr "cluster1elbow_bone_placer_R_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[182].dn"
		;
connectAttr "elbow_bone_placer_R_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[183].dn"
		;
connectAttr "elbow_bone_placer_R_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[184].dn"
		;
connectAttr "wrist_bone_placer_R_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[185].dn"
		;
connectAttr "elbow_bone_placer_R_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[186].dn"
		;
connectAttr "wrist_bone_placer_R_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[187].dn"
		;
connectAttr "cluster2elbow_bone_placer_R_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[188].dn"
		;
connectAttr "wrist_bone_placer_R_up_vec_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[189].dn"
		;
connectAttr "wrist_bone_placer_R_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[190].dn"
		;
connectAttr "cluster1elbow_bone_placer_R_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[191].dn"
		;
connectAttr "cluster2elbow_bone_placer_R_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[192].dn"
		;
connectAttr "cluster2elbow_bone_placer_R_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[193].dn"
		;
connectAttr "elbow_bone_placer_R_upVector_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[194].dn"
		;
connectAttr "elbow_bone_placer_R_up_vec_curve.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[195].dn"
		;
connectAttr "cluster1elbow_bone_placer_R_upvecHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[196].dn"
		;
connectAttr "wrist_bone_placer_R_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[197].dn"
		;
connectAttr "wrist_bone_placer_R_upVectorShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[198].dn"
		;
connectAttr "wrist_bone_placer_R_up_vec_curveShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[199].dn"
		;
connectAttr "cluster2wrist_bone_placer_R_upvec.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[200].dn"
		;
connectAttr "cluster2wrist_bone_placer_R_upvecHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[201].dn"
		;
connectAttr "cluster1wrist_bone_placer_R_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[202].dn"
		;
connectAttr "cluster2wrist_bone_placer_R_upvecHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[203].dn"
		;
connectAttr "placer_cluster1_arm_RHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[204].dn"
		;
connectAttr "upperArmVec_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[205].dn";
connectAttr "placer_cluster0_arm_RHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[206].dn"
		;
connectAttr "armZupVecScale_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[207].dn"
		;
connectAttr "proxy_curve_arm_RShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[208].dn"
		;
connectAttr "proxy_curve_arm_RShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[209].dn"
		;
connectAttr "placer_cluster1_arm_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[210].dn"
		;
connectAttr "placer_cluster1_arm_RHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[211].dn"
		;
connectAttr "placer_cluster1_arm_RHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[212].dn"
		;
connectAttr "placer_cluster2_arm_RHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[213].dn"
		;
connectAttr "placer_cluster2_arm_RHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[214].dn"
		;
connectAttr "placer_cluster2_arm_RHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[215].dn"
		;
connectAttr "placer_cluster0_arm_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[216].dn"
		;
connectAttr "placer_cluster0_arm_RHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[217].dn"
		;
connectAttr "placer_cluster3_arm_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[218].dn"
		;
connectAttr "proxy_curve_arm_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[219].dn"
		;
connectAttr "placer_cluster0_arm_RHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[220].dn"
		;
connectAttr "placer_cluster3_arm_RHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[221].dn"
		;
connectAttr "placer_cluster3_arm_RHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[222].dn"
		;
connectAttr "placer_cluster3_arm_RHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[223].dn"
		;
connectAttr "shoulder_bone_placer_R_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[224].dn"
		;
connectAttr "elbow_bone_placer_R_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[225].dn"
		;
connectAttr "placer_cluster2_arm_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[226].dn"
		;
connectAttr "clavicle_bone_placer_R_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[227].dn"
		;
connectAttr "clavVec_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[228].dn";
connectAttr "wholeArmVec_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[229].dn";
connectAttr "wrist_bone_placer_R_decomposeMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[230].dn"
		;
connectAttr "armZupVec_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[231].dn";
connectAttr "armZupVec_norm_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[232].dn"
		;
connectAttr "clavZupVec_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[233].dn";
connectAttr "clavZupVec_norm_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[234].dn"
		;
connectAttr ":defaultArnoldRenderOptions.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[235].dn"
		;
connectAttr ":defaultArnoldFilter.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[236].dn"
		;
connectAttr ":defaultArnoldDriver.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[237].dn"
		;
connectAttr ":defaultArnoldDisplayDriver.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[238].dn"
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of autorig_placers_built.ma
