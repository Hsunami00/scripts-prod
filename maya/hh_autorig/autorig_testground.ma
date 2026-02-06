//Maya ASCII 2024 scene
//Name: autorig_testground.ma
//Last modified: Mon, Jan 19, 2026 04:31:22 PM
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
fileInfo "UUID" "6BCF9D1C-4E46-50F7-93DD-4AA7D011FF0E";
createNode transform -s -n "persp";
	rename -uid "A4FBB937-164A-7E03-E9AF-94B81484FCCA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 403.62927776535275 -1794.4243922684618 468.54848396766147 ;
	setAttr ".r" -type "double3" 76.461647270416933 0 29.800000000000061 ;
	setAttr ".rp" -type "double3" -6.6613381477509392e-15 -1.5543122344752192e-14 1.4210854715202004e-14 ;
	setAttr ".rpt" -type "double3" 0.88137652172115011 1090.0353931534526 -186.47054716235795 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "276A13EC-1C4C-DB4C-46CF-C7BB5FB9278D";
	setAttr -k off ".v" no;
	setAttr ".fl" 100;
	setAttr ".ncp" 0.5;
	setAttr ".fcp" 150000;
	setAttr ".coi" 837.21068670403179;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -4.9182403920156048e-05 1.9265053492483517 86.090098245182901 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "A7A104CB-F54F-4532-928E-E58717D82EF5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 2000.1999999999998 ;
	setAttr ".rpt" -type "double3" 0 -1000.1 -1000.0999999999998 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "7A54027C-2749-62F0-ADD6-4BA532866590";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 181.87978581504365;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "404024F3-8242-2F53-C78D-8781B7F55780";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.9182403920156048e-05 -2003.90514044626 1086.3497880119789 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".rp" -type "double3" 0 -1.1368683772161603e-13 -2.5243548967072378e-29 ;
	setAttr ".rpt" -type "double3" 0 1000.1000000000004 -1000.1000000000003 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "E6281C52-E840-8527-9D13-18AFC7F38E5C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1005.7316457955078;
	setAttr ".ow" 258.00647472379444;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -4.9182403920156048e-05 1.9265053492483801 86.249788011978652 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "13D50C68-B143-4B06-1457-05BAE88FF00C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1007.5319242790404 85.459657397036068 101.70679345699412 ;
	setAttr ".r" -type "double3" 90 1.2722218725854067e-14 89.999999999999986 ;
	setAttr ".rp" -type "double3" -2.2566139588644694e-14 5.1653572594994312e-15 0 ;
	setAttr ".rpt" -type "double3" 2.4993981503187675e-13 -94.919712220546586 -100.3999533140418 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "CE5DC2DD-DA4B-6C9E-C6C8-73AEBE79BACC";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 998.533670232144;
	setAttr ".ow" 6.4065410649801064;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 8.998254046896637 -9.4600548235101698 1.3068401429523138 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "foot_roll_locs";
	rename -uid "D49432C5-C446-6AE0-4918-DDA286F5E925";
createNode transform -n "foot_roll_L" -p "foot_roll_locs";
	rename -uid "2E3D21E7-DF43-1801-3C6A-929997A74C69";
	setAttr ".t" -type "double3" -8.130665905635869 -3.5527136788005009e-15 0 ;
	setAttr ".r" -type "double3" -1.3318572728628472e-13 4.9199205228888343e-15 -3.6576378836830435e-14 ;
createNode transform -n "footOut_L" -p "foot_roll_L";
	rename -uid "78349BF1-9C4F-A61E-F3FC-8FB733CD9B26";
	setAttr ".rp" -type "double3" 24 -8.5057268142700195 0 ;
	setAttr ".sp" -type "double3" 24 -8.5057268142700195 0 ;
createNode locator -n "footOut_LShape" -p "footOut_L";
	rename -uid "07E9A643-6444-C61E-D264-5F9117C28BC6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".lp" -type "double3" 24 -8.5057268142700195 0 ;
	setAttr ".los" -type "double3" 5 5 5 ;
createNode transform -n "footIn_L" -p "foot_roll_L";
	rename -uid "233D1215-2543-4D71-99DA-66A2F782D5E4";
	setAttr ".rp" -type "double3" 10 -8.5057268142700195 0 ;
	setAttr ".sp" -type "double3" 10 -8.5057268142700195 0 ;
createNode locator -n "footIn_LShape" -p "footIn_L";
	rename -uid "814DF361-CE47-D972-907D-37A07DB13AD6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".lp" -type "double3" 10 -8.5057268142700195 0 ;
	setAttr ".los" -type "double3" 5 5 5 ;
createNode transform -n "toeTip_L" -p "foot_roll_L";
	rename -uid "E34B75CD-4243-FA16-C3C8-05B5A1D7707D";
	setAttr ".rp" -type "double3" 17.128919952532506 -17.360095013452455 0 ;
	setAttr ".sp" -type "double3" 17.128919952532506 -17.360095013452455 0 ;
createNode locator -n "toeTip_LShape" -p "toeTip_L";
	rename -uid "B923FBB0-AD4D-1D73-F957-FBA088AB8EFC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".lp" -type "double3" 17.128919952532506 -17.360095013452455 0 ;
	setAttr ".los" -type "double3" 5 5 5 ;
createNode transform -n "heel_L" -p "foot_roll_L";
	rename -uid "0B63D084-164D-C7FB-D2A4-A59BBC81E882";
	setAttr ".t" -type "double3" 0.12891995253316324 -9.4635883924710278 0 ;
	setAttr ".rp" -type "double3" 17 14 0 ;
	setAttr ".rpt" -type "double3" 0 0 4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" 17 14 0 ;
createNode locator -n "heel_LShape" -p "heel_L";
	rename -uid "34D49B04-8B40-0866-E4F3-F2898FDF6464";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".lp" -type "double3" 17 14 0 ;
	setAttr ".los" -type "double3" 5 5 5 ;
createNode transform -n "foot_roll_R" -p "foot_roll_locs";
	rename -uid "369C3D42-5646-AD2C-82B3-128299D3C7A6";
	setAttr ".t" -type "double3" 8.131 0 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 1.9878466759147003e-15 1.2722218725854067e-14 2.1866313435061677e-14 ;
	setAttr ".s" -type "double3" -1 1 1 ;
createNode transform -n "footOut_R" -p "foot_roll_R";
	rename -uid "BD6A0940-944B-1D2C-456C-13B3DC951949";
	setAttr ".rp" -type "double3" 24 -8.5057268142700195 0 ;
	setAttr ".sp" -type "double3" 24 -8.5057268142700195 0 ;
createNode locator -n "footOut_RShape" -p "footOut_R";
	rename -uid "3B34B060-5441-E597-1A54-A984B2BDB0C9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".lp" -type "double3" 24 -8.5057268142700195 0 ;
	setAttr ".los" -type "double3" 5 5 5 ;
createNode transform -n "footIn_R" -p "foot_roll_R";
	rename -uid "5B445926-3040-F69C-1AB8-6BBA0548C245";
	setAttr ".rp" -type "double3" 10 -8.5057268142700195 0 ;
	setAttr ".sp" -type "double3" 10 -8.5057268142700195 0 ;
createNode locator -n "footIn_RShape" -p "footIn_R";
	rename -uid "0D90D0FC-AD47-8CD0-6042-FCA67053418D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".lp" -type "double3" 10 -8.5057268142700195 0 ;
	setAttr ".los" -type "double3" 5 5 5 ;
createNode transform -n "toeTip_R" -p "foot_roll_R";
	rename -uid "86A1BC99-AF45-8E09-F29A-07BF16932F8A";
	setAttr ".rp" -type "double3" 17.129249999999981 -17.360090189942291 0 ;
	setAttr ".sp" -type "double3" 17.129249999999981 -17.360090189942291 0 ;
createNode locator -n "toeTip_RShape" -p "toeTip_R";
	rename -uid "D538D0C1-8944-C51D-4066-ADA6489DCA43";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".lp" -type "double3" 17.129249999999981 -17.360090189942291 0 ;
	setAttr ".los" -type "double3" 5 5 5 ;
createNode transform -n "heel_R" -p "foot_roll_R";
	rename -uid "6796B505-5245-82E5-F700-B290A24E0C1E";
	setAttr ".t" -type "double3" 0.12924999999998121 -9.4635899999999928 0 ;
	setAttr ".rp" -type "double3" 17 14 0 ;
	setAttr ".rpt" -type "double3" 0 0 4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" 17 14 0 ;
createNode locator -n "heel_RShape" -p "heel_R";
	rename -uid "DB0DB914-CE4C-57B1-8B35-9F84FE8BA328";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".lp" -type "double3" 17 14 0 ;
	setAttr ".los" -type "double3" 5 5 5 ;
createNode joint -n "root";
	rename -uid "1945E947-C149-95BF-6F7C-24B25A5C09DE";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "skeletonType" -ln "skeletonType" -dt "string";
	addAttr -ci true -sn "hasFace" -ln "hasFace" -dt "string";
	addAttr -ci true -sn "hasWings" -ln "hasWings" -dt "string";
	addAttr -ci true -sn "hasClaws" -ln "hasClaws" -dt "string";
	addAttr -ci true -sn "hasTail" -ln "hasTail" -dt "string";
	setAttr ".ssc" no;
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".skeletonType" -type "string" "biped";
	setAttr ".hasFace" -type "string" "False";
	setAttr ".hasWings" -type "string" "False";
	setAttr ".hasClaws" -type "string" "False";
	setAttr ".hasTail" -type "string" "False";
createNode joint -n "pelvis" -p "root";
	rename -uid "BC2D5DEB-2246-7E56-C816-389327C86734";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 0 1.06 96.75 ;
	setAttr ".jo" -type "double3" 89.999999999960053 -85.287832344700746 -89.999999999960124 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "spine_01" -p "pelvis";
	rename -uid "4EC27025-7F4F-8386-9EB5-4E8C74078BE9";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 10 0 -8.0779356694631609e-28 ;
	setAttr ".ro" 3;
	setAttr ".jo" -type "double3" 0 0 8.7360961860833246 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "spine_02" -p "spine_01";
	rename -uid "A9AB20F2-4B4B-E95C-ED5F-33A8490B7254";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 9.9999999999999858 8.8817841970012523e-16 -8.0779356694631609e-28 ;
	setAttr ".ro" 3;
	setAttr ".jo" -type "double3" 0 0 4.4733348582279699 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "spine_03" -p "spine_02";
	rename -uid "0D2028FA-854E-7690-208D-2FB121564C5F";
	setAttr ".t" -type "double3" 10 0 8.0779356694631609e-28 ;
	setAttr ".ro" 3;
	setAttr ".jo" -type "double3" 1.9517065051117973e-17 2.5381457676377444e-12 0.00088115148479439229 ;
createNode joint -n "spine_04" -p "spine_03";
	rename -uid "ED7CD4D8-2C4A-4075-E9BF-FA950797BB78";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 10.000000000000014 0 -8.0779356694631609e-28 ;
	setAttr ".ro" 3;
	setAttr ".jo" -type "double3" 0 0 0.98267864976627273 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "clavicle_L" -p "spine_04";
	rename -uid "B83CB369-EC4A-5A50-740C-14ABDE1CC6AB";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 11.879999999999995 -2.7300000000000004 -3.7799999999999994 ;
	setAttr ".jo" -type "double3" 108.71916703486171 61.853591522765775 101.5409215939477 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "upperArm_L" -p "clavicle_L";
	rename -uid "B5DC7468-9743-5773-ADD0-11A755227E8F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 15.780000000000006 -8.8817841970012523e-16 -2.8421709430404007e-14 ;
	setAttr ".ro" 3;
	setAttr ".jo" -type "double3" 5.0690411196006409 31.167746224952459 -23.577149798611465 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "lowerArm_L" -p "upperArm_L";
	rename -uid "35748028-CC41-0B9F-1F08-AEAD4A963992";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 30.339999999999975 0 2.8421709430404007e-14 ;
	setAttr ".jo" -type "double3" -2.2263882770244617e-14 -9.5416640443905503e-15 -29.999999999999996 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "hand_L" -p "lowerArm_L";
	rename -uid "97D404C6-564F-F300-5AAB-71A76C95CD88";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 26.98 -1.0658141036401503e-14 -1.4210854715202004e-14 ;
	setAttr ".ro" 3;
	setAttr ".jo" -type "double3" 90.000000000000028 0 0 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "index_01_L" -p "hand_L";
	rename -uid "EE49707D-8F4C-6970-14DA-319960C38735";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 12.070000000000025 -1.7599999999999767 2.1099999999999994 ;
	setAttr ".jo" -type "double3" -165.13304562414436 3.7637887772156855 -25.536944058224599 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "index_02_L" -p "index_01_L";
	rename -uid "508DA001-D54B-6E18-608D-87A39B4BEC0E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 4.289999999999992 1.4210854715202004e-14 -5.3290705182007514e-15 ;
	setAttr ".jo" -type "double3" 1.3378198006313204 -0.47529037533623653 11.986132811074098 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "index_03_L" -p "index_02_L";
	rename -uid "501D9EDC-D144-D3CD-93AD-109D94F55885";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 3.3900000000000148 0 7.1054273576010019e-15 ;
	setAttr ".jo" -type "double3" 1.1373673015359234 0.99727096842914764 -9.4963214964408298 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "middle_01_L" -p "hand_L";
	rename -uid "34FF7200-1A47-8909-D46F-E3AAC5FBE331";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 12.240000000000027 -1.289999999999992 -0.57000000000000028 ;
	setAttr ".jo" -type "double3" -178.08214875132714 7.0405642508583108 -22.82587344225044 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "middle_02_L" -p "middle_01_L";
	rename -uid "9CFFCAA4-3E46-78E9-8993-18A6FE918D66";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 4.6400000000000006 0 1.4210854715202004e-14 ;
	setAttr ".jo" -type "double3" -2.0249527735559343 1.1368396931237927 12.280697400253459 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "middle_03_L" -p "middle_02_L";
	rename -uid "14E4105E-B54A-154A-3CA2-EE8F57803ED7";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 3.6500000000000057 0 0 ;
	setAttr ".jo" -type "double3" 0.78144752533596351 -4.3899529519487368 -15.39973943675488 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "pinky_01_L" -p "hand_L";
	rename -uid "8350D31F-5743-8448-9E0C-F3ABD0E925EB";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 10.140000000000033 -2.2599999999999625 -4.6400000000000077 ;
	setAttr ".jo" -type "double3" 161.27540377764578 18.93397240705232 -20.185872846291588 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "pinky_02_L" -p "pinky_01_L";
	rename -uid "73DAAEE9-E348-6E5E-9924-C0BFB948F335";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 3.5699999999999861 2.8421709430404007e-14 1.4210854715202004e-14 ;
	setAttr ".jo" -type "double3" 1.0638338081160568 -1.3156856390610143 11.20804725281579 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "pinky_03_L" -p "pinky_02_L";
	rename -uid "8C47C6EF-934F-7423-8042-C38F492057E7";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 2.9900000000000233 1.4210854715202004e-14 3.5527136788005009e-15 ;
	setAttr ".jo" -type "double3" 0.44569914829467877 3.8696655763394698 1.0389992227603808 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "ring_01_L" -p "hand_L";
	rename -uid "4066D447-4A41-1685-45D2-449B52C38232";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 11.500000000000018 -1.7499999999999716 -2.8499999999999979 ;
	setAttr ".jo" -type "double3" 166.4897449713919 10.989255524469437 -23.292107639313532 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "ring_02_L" -p "ring_01_L";
	rename -uid "873FE71C-844E-68D5-EA76-5D98F83DCAD6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 4.430000000000021 1.4210854715202004e-14 1.4210854715202004e-14 ;
	setAttr ".jo" -type "double3" 0.30135612250897625 -1.6697468016709665 13.315438286084046 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "ring_03_L" -p "ring_02_L";
	rename -uid "578B0D21-A64C-3F02-45A1-D5A0996EC078";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 3.4799999999999756 -1.4210854715202004e-14 1.0658141036401503e-14 ;
	setAttr ".jo" -type "double3" -0.36076434018733194 2.9876677503565667 -12.899657753144698 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "thumb_01_L" -p "hand_L";
	rename -uid "8C345AC8-6440-BC68-77F7-888E077CE12E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 4.7600000000000158 -2.3699999999999761 2.5400000000000063 ;
	setAttr ".jo" -type "double3" -84.930858940381455 -36.918979806946801 -27.056193219200512 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "thumb_02_L" -p "thumb_01_L";
	rename -uid "6A184FD4-3F4C-2C83-528B-37B3ECAF793E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 3.8699999999999832 2.1316282072803006e-14 -1.4210854715202004e-14 ;
	setAttr ".jo" -type "double3" 1.6131408118722605 9.8332461922657455 15.151309542783739 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "thumb_03_L" -p "thumb_02_L";
	rename -uid "58B2A423-2443-C6FD-F588-DAA4BD709F1C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 4.0600000000000023 -2.1316282072803006e-14 0 ;
	setAttr ".jo" -type "double3" 2.4147643568454407 0.47919329163291596 -12.38563841567713 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "thumb_base_L" -p "hand_L";
	rename -uid "79E4D846-9640-97E6-A5EA-0494CADF0ECD";
	setAttr ".t" -type "double3" 3.2100000000000186 -1.0399999999999636 1.5100000000000051 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -84.930858940381455 -36.918979806946858 -27.056193219197276 ;
createNode joint -n "index_base_L" -p "hand_L";
	rename -uid "557BB18D-4945-50B3-A6F6-7D8DB02032BB";
	setAttr ".t" -type "double3" 3.320000000000018 -0.58999999999997499 1.1800000000000104 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -164.71402190678742 -1.1142055526688748 -7.5778484877777421 ;
createNode joint -n "middle_base_L" -p "hand_L";
	rename -uid "579B5DE2-1847-EBDF-C222-8A9CC84EB2D0";
	setAttr ".t" -type "double3" 3.3600000000000243 -0.23000000000000398 0.41000000000000369 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -176.0782968765333 6.1570020256805407 -5.5198700107535554 ;
createNode joint -n "ring_base_L" -p "hand_L";
	rename -uid "C0B84708-B54D-2597-F589-718E5F78DE09";
	setAttr ".t" -type "double3" 3.0800000000000161 2.8421709430404007e-14 -0.7900000000000027 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 168.93690176508366 13.450231089049366 -11.770352416529942 ;
createNode joint -n "pinky_base_L" -p "hand_L";
	rename -uid "5BA888F1-4443-D645-2FB2-FE87DAD48470";
	setAttr ".t" -type "double3" 2.6100000000000172 -0.73999999999998067 -1.620000000000001 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 164.06621065038047 21.310795968051867 -12.087339518353494 ;
createNode joint -n "neck_01" -p "spine_04";
	rename -uid "11718B34-0645-0F94-2B7F-A7A369B99C57";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 16.560000000000002 -0.36000000000000298 1.6155871338926322e-27 ;
	setAttr ".ro" 3;
	setAttr ".jo" -type "double3" 0 0 -23.508075620144954 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "head" -p "neck_01";
	rename -uid "CF549A4F-6243-EBD3-724E-4F82DC3A90E4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 9.2800000000000011 0.35999999999999943 0 ;
	setAttr ".ro" 3;
	setAttr ".jo" -type "double3" -4.7708320221952752e-15 -1.2722218725854067e-14 15.348634405894936 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "clavicle_R" -p "spine_04";
	rename -uid "9E33BFDF-CB41-1242-5CE0-73A4116BBA5E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 11.879614680637246 -2.72993383151735 3.7800000000029703 ;
	setAttr ".jo" -type "double3" 108.71916703487463 61.853591522763331 -78.459078406040916 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "upperArm_R" -p "clavicle_R";
	rename -uid "0F17802B-7E4A-1DF1-55DD-0DBBCC76F88B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -15.779934460328136 -4.3114851894454631e-05 -0.00026360931232716212 ;
	setAttr ".ro" 3;
	setAttr ".jo" -type "double3" 5.0690411196005014 31.167746224952459 -23.577149798611448 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "lowerArm_R" -p "upperArm_R";
	rename -uid "7865D43C-B044-8D28-B0A0-E3AFCF411849";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -30.339895702189551 -1.7763568394002505e-15 -0.00014233710803068789 ;
	setAttr ".jo" -type "double3" -2.0453449401148217e-14 7.6333312355124377e-14 -29.999999999999996 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "hand_R" -p "lowerArm_R";
	rename -uid "0CEF491C-B845-BA5B-FF0C-279D6E88A872";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -26.980027642862645 1.8681401975584322e-05 3.034418428171648e-05 ;
	setAttr ".ro" 3;
	setAttr ".jo" -type "double3" 90.000000000000185 7.9513867036588162e-14 -9.2236085762441964e-14 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "index_01_R" -p "hand_R";
	rename -uid "7E43D318-2B48-1E7E-534B-5CAFA44CD109";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -12.069968417373207 1.7598671746277006 -2.1099678870023375 ;
	setAttr ".jo" -type "double3" -165.13304562414439 3.7637887772156784 -25.536944058224684 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "index_02_R" -p "index_01_R";
	rename -uid "6938786C-8341-569F-8558-15A755C8DB0D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -4.2897071629054579 0.000146868062898875 7.0336667647552531e-05 ;
	setAttr ".jo" -type "double3" 1.3378198006296234 -0.47529037533623886 11.986132811074061 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "index_03_R" -p "index_02_R";
	rename -uid "928A1877-7642-7E3B-29FC-8585568E29D6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -3.3904879458085446 -0.00013885261982693464 -6.8456255419846457e-06 ;
	setAttr ".jo" -type "double3" 1.1373673015361054 0.99727096842942797 -9.4963214964407729 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "middle_01_R" -p "hand_R";
	rename -uid "6C0741F0-7947-D127-487D-F88DD7CD7533";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -12.239972498808019 1.2899798808853262 0.56997894893955348 ;
	setAttr ".jo" -type "double3" -178.08214875132762 7.0405642508582931 -22.825873442250511 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "middle_02_R" -p "middle_01_R";
	rename -uid "62071291-5644-56D5-C537-9597582598C3";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -4.6401329786479621 2.0590250443319746e-05 -6.2714216921833099e-06 ;
	setAttr ".jo" -type "double3" -2.0249527735550457 1.1368396931236857 12.280697400253484 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "middle_03_R" -p "middle_02_R";
	rename -uid "F409F58E-FA43-D7DF-395D-C497DAA63176";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -3.6499284676015833 -3.6445255773287499e-05 7.973574835062891e-06 ;
	setAttr ".jo" -type "double3" 0.78144752532748896 -4.3899529519488505 -15.399739436754832 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "pinky_01_R" -p "hand_R";
	rename -uid "A58A1FDA-BF4C-924D-A20C-5DB04FAB7867";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -10.139946226848839 2.2598349686697787 4.639971409458358 ;
	setAttr ".jo" -type "double3" 161.27540377764586 18.933972407052298 -20.185872846291669 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "pinky_02_R" -p "pinky_01_R";
	rename -uid "417F5B1D-3D4B-4610-85F8-1F892438FEB5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -3.5701144447871798 -0.00010152640648186662 -3.4845395649796274e-05 ;
	setAttr ".jo" -type "double3" 1.0638338081159384 -1.3156856390609954 11.20804725281578 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "pinky_03_R" -p "pinky_02_R";
	rename -uid "A80F6D7C-0F47-4D0C-D0A6-08BAED38C119";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -2.9900026865731348 -2.6137446880625248e-05 1.4280714566439201e-06 ;
	setAttr ".jo" -type "double3" 0.44569914829361446 3.8696655763393997 1.0389992227603633 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "ring_01_R" -p "hand_R";
	rename -uid "73AACA97-D04C-994B-57F0-FBABF562C6BC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -11.499859666793665 1.7497981053445386 2.849916206397058 ;
	setAttr ".jo" -type "double3" 166.4897449713921 10.989255524469424 -23.292107639313631 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "ring_02_R" -p "ring_01_R";
	rename -uid "AA5C9362-5246-51B2-DA8C-26BB73436FB5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -4.4302714087686113 -5.5587345570984326e-05 -8.4600824727942836e-05 ;
	setAttr ".jo" -type "double3" 0.3013561225058477 -1.669746801670918 13.315438286084046 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "ring_03_R" -p "ring_02_R";
	rename -uid "D7CD5177-ED41-548F-BDB6-5CA130A9D62C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -3.4799551950685697 -8.6910439307530396e-06 1.5485753827704229e-05 ;
	setAttr ".jo" -type "double3" -0.36076434008819303 2.9876677503572298 -12.899657753144597 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "thumb_01_R" -p "hand_R";
	rename -uid "D1AD1BBD-4548-FDAA-54AA-3B9A10625452";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -4.7600599548858646 2.3700278903723841 -2.5399717063087301 ;
	setAttr ".jo" -type "double3" -84.930858940381498 -36.918979806946822 -27.05619321920058 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "thumb_02_R" -p "thumb_01_R";
	rename -uid "9A7C277F-8646-7E47-D804-F9BEE3107484";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -3.8700446385008291 -0.00017839648938178243 6.1527075800427156e-05 ;
	setAttr ".jo" -type "double3" 1.6131408118647932 9.8332461922657544 15.15130954278378 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "thumb_03_R" -p "thumb_02_R";
	rename -uid "546934D9-5845-3650-56DE-4D894A243D9F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -4.0601498398531817 -5.5864452413345589e-05 6.942133428822217e-05 ;
	setAttr ".jo" -type "double3" 2.4147643568526935 0.47919329163451202 -12.385638415677045 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "thumb_base_R" -p "hand_R";
	rename -uid "F95040E2-4C4B-35EC-E80D-00A39FD799E1";
	setAttr ".t" -type "double3" -3.2098399896257881 1.0397726185932044 -1.5100942760711682 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -84.930858940381498 -36.918979806946872 -27.056193219197361 ;
createNode joint -n "index_base_R" -p "hand_R";
	rename -uid "FD53E98D-9647-CB7E-11A6-E7B2B0223D98";
	setAttr ".t" -type "double3" -3.3201247254328514 0.59005244730731476 -1.179928016912914 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -164.71402190678748 -1.1142055526688874 -7.577848487777862 ;
createNode joint -n "middle_base_R" -p "hand_R";
	rename -uid "3F128F3A-434C-9C9C-CFFC-E084D064EC44";
	setAttr ".t" -type "double3" -3.360099933585257 0.23012319001385606 -0.4099418234799721 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -176.07829687653359 6.1570020256805105 -5.5198700107536247 ;
createNode joint -n "ring_base_R" -p "hand_R";
	rename -uid "23A872FA-354D-181C-D16E-A4A025EBC097";
	setAttr ".t" -type "double3" -3.0797501266870917 -0.00033998950567593056 0.78985565591308315 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 168.93690176508377 13.450231089049369 -11.770352416530036 ;
createNode joint -n "pinky_base_R" -p "hand_R";
	rename -uid "766B44D1-DD45-A651-228C-3F945AB47E40";
	setAttr ".t" -type "double3" -2.6097927463793162 0.73962621470622025 1.6198790093908642 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 164.06621065038058 21.310795968051856 -12.087339518353577 ;
createNode joint -n "hip_L" -p "pelvis";
	rename -uid "768E7AC5-2A40-899E-09E4-7C8ABF28F161";
	setAttr ".t" -type "double3" -0.32999999999999829 -0.060000000000000497 -1.7800000000000002 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 24.109457072099275 99.564119556552981 28.524002738145423 ;
createNode joint -n "thigh_L" -p "hip_L";
	rename -uid "381AD2E3-F140-3375-CB30-0B86684D61B3";
	setAttr ".t" -type "double3" 7.3199999999999985 8.8817841970012523e-16 0 ;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 167.8065169356384 81.074056931763522 -8.401159399180818 ;
createNode joint -n "calf_L" -p "thigh_L";
	rename -uid "8E095602-A443-2CD2-6810-42B34068774C";
	setAttr ".t" -type "double3" 44.010000000000012 1.1768364061026659e-14 7.1054273576010019e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 -8.6077122058896514 ;
createNode joint -n "foot_L" -p "calf_L";
	rename -uid "1D31F4B2-8B4D-B88B-F98D-B7AD93FFBF6B";
	setAttr ".t" -type "double3" 39.32 -6.2172489379008766e-15 -1.7763568394002505e-15 ;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 59.148532945941774 ;
createNode joint -n "ball_L" -p "foot_L";
	rename -uid "593F6782-BC4C-31E5-1306-7A96EBAD151C";
	setAttr ".t" -type "double3" 17.800000000000004 -2.6645352591003757e-15 3.5527136788005009e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" -8.7829994561793879e-13 1.401509450892996e-13 38.157226587368996 ;
createNode joint -n "hip_R" -p "pelvis";
	rename -uid "DCD5A72A-8742-6569-9E4A-0BAADBDB898D";
	setAttr ".t" -type "double3" -0.32998625511406487 -0.060001229452913307 1.7799999999999807 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -155.89054292792113 80.435880443441107 28.524002738129013 ;
createNode joint -n "thigh_R" -p "hip_R";
	rename -uid "3E213981-A748-4FCC-F0DD-9CBF9AFD7D6E";
	setAttr ".t" -type "double3" -7.3199962304214559 -2.321197761334659e-06 3.2128905189665602e-06 ;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 167.80651693566222 81.074056931764062 -8.4011593991573204 ;
createNode joint -n "calf_R" -p "thigh_R";
	rename -uid "D4B9C935-E64B-80C3-DF19-F5A93CDF872F";
	setAttr ".t" -type "double3" -44.009961826397451 -8.1797057172039445e-07 2.4726887204451486e-12 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 3.0932770751714422e-16 -4.1102269519836226e-15 -8.6077122058896514 ;
createNode joint -n "foot_R" -p "calf_R";
	rename -uid "AB86A82B-F542-ABD8-E9AC-77903003035E";
	setAttr ".t" -type "double3" -39.32001259727403 -3.5351679299466809e-06 2.1849189124623081e-12 ;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 1.7208877946062797e-14 3.0324808072013581e-14 59.148532945941774 ;
createNode joint -n "ball_R" -p "foot_R";
	rename -uid "5E224193-9C41-23AD-16B5-71B4A3FEB2BB";
	setAttr ".t" -type "double3" -17.800017416793136 3.2576045492227479e-05 6.5192296005989192e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" 1.3140791808770272e-14 3.7994202891195241e-14 38.157226587368989 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "BE915AD4-4774-DF67-31F3-5FBA50D82835";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A1B45088-41B4-092B-C6B1-B89E2158F712";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "2CBD3007-4D84-4E38-7FD5-8FAAE093DB74";
createNode displayLayerManager -n "layerManager";
	rename -uid "E7D76F2A-4839-FF20-A561-189CE9921F65";
createNode displayLayer -n "defaultLayer";
	rename -uid "A3A2C843-5749-26B5-9FBE-F996D77E2645";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "0DAE3D75-426F-F25E-3B7A-C7B4EB49305A";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "81B6C2AE-934F-8F8C-0CDE-3F86EB985032";
	setAttr ".g" yes;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "02E4D351-CA4E-0B1B-1628-75ABDC3365E5";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 60 -ast 1 -aet 60 ";
	setAttr ".st" 6;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "53306871-CC40-EA5D-8C17-BA9BD9D4D6A9";
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
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1089\n            -height 906\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
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
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -image \"P:/003_Glumpers_Maya/Concept/GL_E042_El_MetodoDefinitivo/02_2D_Designs/Backgrounds/E042_B002_Parque_Fuente/FinalVersion/E042_B002_Parque_Fuente.jpg\" \n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n"
		+ "                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n"
		+ "                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n"
		+ "                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n"
		+ "                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n"
		+ "                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n"
		+ "            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n"
		+ "            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n"
		+ "\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2004\\n    -height 847\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2004\\n    -height 847\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 100 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "6992D8BD-7A45-2BAF-42E8-ADBAAB2B3B75";
	setAttr ".version" -type "string" "5.3.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "19270852-2F43-A8A9-4519-2BB902E7F7BF";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "5535A27B-B849-CF08-22E1-8494F28D8596";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "6E3A8C6C-BD43-EEF5-4D22-559196BFE811";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode network -n "hhutilsAutoRigNode";
	rename -uid "28DB5A54-084C-EBE0-4072-1BA6BCD120C4";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "5020ED29-4C4A-5781-2AB6-F5887401C71E";
	setAttr ".pee" yes;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -57.142854872204104 -15.476189861221945 ;
	setAttr ".tgi[0].vh" -type "double2" 57.142854872204104 15.476189861221945 ;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "2FA27358-2B46-4F37-149B-89B8DD302503";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1057.1428151357754 -286.30951243260591 ;
	setAttr ".tgi[0].vh" -type "double2" 1057.1428151357759 286.30951243260591 ;
	setAttr -s 57 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -51.428569793701172;
	setAttr ".tgi[0].ni[0].y" -191.42857360839844;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -665.71429443359375;
	setAttr ".tgi[0].ni[1].y" -191.42857360839844;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 408.57144165039062;
	setAttr ".tgi[0].ni[2].y" -8.5714282989501953;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 101.42857360839844;
	setAttr ".tgi[0].ni[3].y" -8.5714282989501953;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -205.71427917480469;
	setAttr ".tgi[0].ni[4].y" -8.5714282989501953;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -512.85711669921875;
	setAttr ".tgi[0].ni[5].y" -8.5714282989501953;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 562.85711669921875;
	setAttr ".tgi[0].ni[6].y" -191.42857360839844;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -358.57144165039062;
	setAttr ".tgi[0].ni[7].y" -191.42857360839844;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 255.71427917480469;
	setAttr ".tgi[0].ni[8].y" -191.42857360839844;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" -972.85711669921875;
	setAttr ".tgi[0].ni[9].y" -10;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -665.71429443359375;
	setAttr ".tgi[0].ni[10].y" -10;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" -358.57144165039062;
	setAttr ".tgi[0].ni[11].y" -10;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" -51.428569793701172;
	setAttr ".tgi[0].ni[12].y" -10;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 255.71427917480469;
	setAttr ".tgi[0].ni[13].y" -38.571430206298828;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 562.85711669921875;
	setAttr ".tgi[0].ni[14].y" -47.142856597900391;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 870;
	setAttr ".tgi[0].ni[15].y" -58.571430206298828;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 255.71427917480469;
	setAttr ".tgi[0].ni[16].y" -350;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 562.85711669921875;
	setAttr ".tgi[0].ni[17].y" -397.14285278320312;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 870;
	setAttr ".tgi[0].ni[18].y" -452.85714721679688;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 255.71427917480469;
	setAttr ".tgi[0].ni[19].y" -251.42857360839844;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 562.85711669921875;
	setAttr ".tgi[0].ni[20].y" -298.57144165039062;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 870;
	setAttr ".tgi[0].ni[21].y" -354.28570556640625;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 255.71427917480469;
	setAttr ".tgi[0].ni[22].y" 117.14286041259766;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 562.85711669921875;
	setAttr ".tgi[0].ni[23].y" 115.71428680419922;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 870;
	setAttr ".tgi[0].ni[24].y" 138.57142639160156;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 255.71427917480469;
	setAttr ".tgi[0].ni[25].y" 330;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 562.85711669921875;
	setAttr ".tgi[0].ni[26].y" 384.28570556640625;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 870;
	setAttr ".tgi[0].ni[27].y" 434.28570556640625;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 870;
	setAttr ".tgi[0].ni[28].y" 40;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 870;
	setAttr ".tgi[0].ni[29].y" 335.71429443359375;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 870;
	setAttr ".tgi[0].ni[30].y" -157.14285278320312;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 870;
	setAttr ".tgi[0].ni[31].y" -255.71427917480469;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 870;
	setAttr ".tgi[0].ni[32].y" 237.14285278320312;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" -972.85711669921875;
	setAttr ".tgi[0].ni[33].y" -10;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" -665.71429443359375;
	setAttr ".tgi[0].ni[34].y" -10;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" -358.57144165039062;
	setAttr ".tgi[0].ni[35].y" -10;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" -51.428569793701172;
	setAttr ".tgi[0].ni[36].y" -10;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 255.71427917480469;
	setAttr ".tgi[0].ni[37].y" 310;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 562.85711669921875;
	setAttr ".tgi[0].ni[38].y" 368.57144165039062;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 870;
	setAttr ".tgi[0].ni[39].y" 434.28570556640625;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 255.71427917480469;
	setAttr ".tgi[0].ni[40].y" -271.42855834960938;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 562.85711669921875;
	setAttr ".tgi[0].ni[41].y" -311.42855834960938;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 870;
	setAttr ".tgi[0].ni[42].y" -354.28570556640625;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 255.71427917480469;
	setAttr ".tgi[0].ni[43].y" -74.285713195800781;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 562.85711669921875;
	setAttr ".tgi[0].ni[44].y" -114.28571319580078;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 870;
	setAttr ".tgi[0].ni[45].y" -157.14285278320312;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 255.71427917480469;
	setAttr ".tgi[0].ni[46].y" -172.85714721679688;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 562.85711669921875;
	setAttr ".tgi[0].ni[47].y" -212.85714721679688;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 870;
	setAttr ".tgi[0].ni[48].y" -255.71427917480469;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 255.71427917480469;
	setAttr ".tgi[0].ni[49].y" -370;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 562.85711669921875;
	setAttr ".tgi[0].ni[50].y" -410;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 870;
	setAttr ".tgi[0].ni[51].y" -452.85714721679688;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 870;
	setAttr ".tgi[0].ni[52].y" 138.57142639160156;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" 870;
	setAttr ".tgi[0].ni[53].y" 40;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 870;
	setAttr ".tgi[0].ni[54].y" -58.571430206298828;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 870;
	setAttr ".tgi[0].ni[55].y" 335.71429443359375;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 870;
	setAttr ".tgi[0].ni[56].y" 237.14285278320312;
	setAttr ".tgi[0].ni[56].nvs" 18304;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "4A7F5899-4447-D78A-1454-AD900C83F464";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr -av -k on ".unw" 1;
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
	setAttr -k on ".rtfm" 3;
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
connectAttr "root.s" "pelvis.is";
connectAttr "pelvis.s" "spine_01.is";
connectAttr "spine_01.s" "spine_02.is";
connectAttr "spine_02.s" "spine_03.is";
connectAttr "spine_03.s" "spine_04.is";
connectAttr "spine_04.s" "clavicle_L.is";
connectAttr "clavicle_L.s" "upperArm_L.is";
connectAttr "upperArm_L.s" "lowerArm_L.is";
connectAttr "lowerArm_L.s" "hand_L.is";
connectAttr "hand_L.s" "index_01_L.is";
connectAttr "index_01_L.s" "index_02_L.is";
connectAttr "index_02_L.s" "index_03_L.is";
connectAttr "hand_L.s" "middle_01_L.is";
connectAttr "middle_01_L.s" "middle_02_L.is";
connectAttr "middle_02_L.s" "middle_03_L.is";
connectAttr "hand_L.s" "pinky_01_L.is";
connectAttr "pinky_01_L.s" "pinky_02_L.is";
connectAttr "pinky_02_L.s" "pinky_03_L.is";
connectAttr "hand_L.s" "ring_01_L.is";
connectAttr "ring_01_L.s" "ring_02_L.is";
connectAttr "ring_02_L.s" "ring_03_L.is";
connectAttr "hand_L.s" "thumb_01_L.is";
connectAttr "thumb_01_L.s" "thumb_02_L.is";
connectAttr "thumb_02_L.s" "thumb_03_L.is";
connectAttr "hand_L.s" "thumb_base_L.is";
connectAttr "hand_L.s" "index_base_L.is";
connectAttr "hand_L.s" "middle_base_L.is";
connectAttr "hand_L.s" "ring_base_L.is";
connectAttr "hand_L.s" "pinky_base_L.is";
connectAttr "spine_04.s" "neck_01.is";
connectAttr "neck_01.s" "head.is";
connectAttr "spine_04.s" "clavicle_R.is";
connectAttr "clavicle_R.s" "upperArm_R.is";
connectAttr "upperArm_R.s" "lowerArm_R.is";
connectAttr "lowerArm_R.s" "hand_R.is";
connectAttr "hand_R.s" "index_01_R.is";
connectAttr "index_01_R.s" "index_02_R.is";
connectAttr "index_02_R.s" "index_03_R.is";
connectAttr "hand_R.s" "middle_01_R.is";
connectAttr "middle_01_R.s" "middle_02_R.is";
connectAttr "middle_02_R.s" "middle_03_R.is";
connectAttr "hand_R.s" "pinky_01_R.is";
connectAttr "pinky_01_R.s" "pinky_02_R.is";
connectAttr "pinky_02_R.s" "pinky_03_R.is";
connectAttr "hand_R.s" "ring_01_R.is";
connectAttr "ring_01_R.s" "ring_02_R.is";
connectAttr "ring_02_R.s" "ring_03_R.is";
connectAttr "hand_R.s" "thumb_01_R.is";
connectAttr "thumb_01_R.s" "thumb_02_R.is";
connectAttr "thumb_02_R.s" "thumb_03_R.is";
connectAttr "hand_R.s" "thumb_base_R.is";
connectAttr "hand_R.s" "index_base_R.is";
connectAttr "hand_R.s" "middle_base_R.is";
connectAttr "hand_R.s" "ring_base_R.is";
connectAttr "hand_R.s" "pinky_base_R.is";
connectAttr "pelvis.s" "hip_L.is";
connectAttr "hip_L.s" "thigh_L.is";
connectAttr "thigh_L.s" "calf_L.is";
connectAttr "calf_L.s" "foot_L.is";
connectAttr "foot_L.s" "ball_L.is";
connectAttr "pelvis.s" "hip_R.is";
connectAttr "hip_R.s" "thigh_R.is";
connectAttr "thigh_R.s" "calf_R.is";
connectAttr "calf_R.s" "foot_R.is";
connectAttr "foot_R.s" "ball_R.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "calf_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "hip_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "ball_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "foot_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "calf_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "thigh_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "ball_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "thigh_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "foot_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "clavicle_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "upperArm_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn";
connectAttr "lowerArm_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn";
connectAttr "hand_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn";
connectAttr "index_01_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn";
connectAttr "index_02_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn";
connectAttr "index_03_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn";
connectAttr "middle_01_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn";
connectAttr "middle_02_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn";
connectAttr "middle_03_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn";
connectAttr "pinky_01_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn";
connectAttr "pinky_02_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn";
connectAttr "pinky_03_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn";
connectAttr "ring_01_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn";
connectAttr "ring_02_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn";
connectAttr "ring_03_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn";
connectAttr "thumb_01_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn";
connectAttr "thumb_02_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn";
connectAttr "thumb_03_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn";
connectAttr "thumb_base_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn";
connectAttr "index_base_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn";
connectAttr "middle_base_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn";
connectAttr "ring_base_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn";
connectAttr "pinky_base_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn";
connectAttr "clavicle_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn";
connectAttr "upperArm_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn";
connectAttr "lowerArm_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn";
connectAttr "hand_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn";
connectAttr "index_01_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn";
connectAttr "index_02_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn";
connectAttr "index_03_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn";
connectAttr "middle_01_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn";
connectAttr "middle_02_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn";
connectAttr "middle_03_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn";
connectAttr "pinky_01_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn";
connectAttr "pinky_02_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn";
connectAttr "pinky_03_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn";
connectAttr "ring_01_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn";
connectAttr "ring_02_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn";
connectAttr "ring_03_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn";
connectAttr "thumb_01_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn";
connectAttr "thumb_02_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn";
connectAttr "thumb_03_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn";
connectAttr "thumb_base_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn";
connectAttr "index_base_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn";
connectAttr "middle_base_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn";
connectAttr "ring_base_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn";
connectAttr "pinky_base_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of autorig_testground.ma
