//Maya ASCII 2013 scene
//Name: HR_cam.ma
//Last modified: Tue, Aug 19, 2014 05:56:21 PM
//Codeset: 1252
requires maya "2013";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2013";
fileInfo "version" "2013 x64";
fileInfo "cutIdentifier" "201202220241-825136";
fileInfo "osv" "Microsoft Windows 7 Ultimate Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.1108411037148285 4.963874090817713 5.1580741161921155 ;
	setAttr ".r" -type "double3" -41.138352729602389 33.400000000000389 -1.9048708282194044e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 8.6849521304604202;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "HR_T_cam_1";
	addAttr -ci true -sn "focalLength" -ln "focalLength" -dv 35 -min 0 -max 100 -at "double";
	addAttr -ci true -sn "overscan" -ln "overscan" -dv 1.5 -min 0 -max 4 -at "double";
	addAttr -ci true -sn "nearClipPlane" -ln "nearClipPlane" -min 0 -at "double";
	addAttr -ci true -sn "farClipPlane" -ln "farClipPlane" -dv 1000 -min 0 -at "double";
	addAttr -ci true -sn "GrilleTiers" -ln "GrilleTiers" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".r" -type "double3" 0 0 2.0180909124057823e-015 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr -k on ".focalLength";
	setAttr -cb on ".overscan";
	setAttr -cb on ".nearClipPlane" 0.1;
	setAttr -cb on ".farClipPlane";
	setAttr -cb on ".GrilleTiers" yes;
createNode camera -n "HR_T_cam_Shape1" -p "HR_T_cam_1";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.6818864000000002 0.94488 ;
	setAttr -k off ".hfa";
	setAttr -k off ".vfa";
	setAttr ".ff" 0;
	setAttr -k off ".fl";
	setAttr -k off ".lsr";
	setAttr ".fcp" 1000;
	setAttr -k off ".fs";
	setAttr -k off ".fd";
	setAttr -k off ".sa";
	setAttr -k off ".coi" 17.585529751289691;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".dfg" yes;
createNode transform -n "HR_T_grilleTiers_1";
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
	setAttr ".rp" -type "double3" 0 0 -1.45 ;
	setAttr ".sp" -type "double3" 0 0 -1.45 ;
createNode nurbsCurve -n "HR_T_grilleTiers_Shape1" -p "HR_T_grilleTiers_1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		-0.88849997520446788 0.5 -1.45
		0.88849997520446788 0.5 -1.45
		0.88849997520446788 -0.5 -1.45
		-0.88849997520446788 -0.5 -1.45
		-0.88849997520446788 0.5 -1.45
		-0.88849997520446788 0.16666668653488159 -1.45
		0.88849997520446788 0.16666668653488159 -1.45
		0.88849997520446788 -0.1666666567325592 -1.45
		-0.88849997520446788 -0.1666666567325592 -1.45
		-0.88849997520446788 -0.5 -1.45
		-0.29616665840148926 -0.5 -1.45
		-0.29616665840148926 0.5 -1.45
		0.29616665840148926 0.5 -1.45
		0.29616665840148926 -0.5 -1.45
		;
createNode parentConstraint -n "HR_T_grilleTiers_1_parentConstraint1" -p "HR_T_grilleTiers_1";
	addAttr -ci true -k true -sn "w0" -ln "HR_T_shotCam_1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 0 -1.45 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode multiplyDivide -n "MD_T_focalNorm_1";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 35 0 0 ;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -av -k on ".nds";
	setAttr -k on ".mwc";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".mwc";
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
select -ne :defaultResolution;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -av ".w";
	setAttr -av ".h";
	setAttr ".pa" 1;
	setAttr -k on ".off";
	setAttr -k on ".fld";
	setAttr -k on ".zsl";
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".mwc";
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".rp";
	setAttr -k on ".cai";
	setAttr -k on ".coi";
	setAttr -k on ".bcb";
	setAttr -k on ".bcg";
	setAttr -k on ".bcr";
	setAttr -k on ".ei";
	setAttr -k on ".es";
	setAttr -k on ".ef";
	setAttr -k on ".bf";
	setAttr -k on ".fii";
	setAttr -k on ".sf";
	setAttr -k on ".gr";
	setAttr -k on ".li";
	setAttr -k on ".mb";
	setAttr -k on ".ti";
	setAttr -k on ".txt";
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
	setAttr -k on ".ds";
	setAttr -k on ".lm";
connectAttr "HR_T_cam_1.overscan" "HR_T_cam_Shape1.ovr";
connectAttr "HR_T_cam_1.focalLength" "HR_T_cam_Shape1.fl";
connectAttr "HR_T_cam_1.nearClipPlane" "HR_T_cam_Shape1.ncp";
connectAttr "HR_T_cam_1.farClipPlane" "HR_T_cam_Shape1.fcp";
connectAttr "HR_T_cam_1.GrilleTiers" "HR_T_grilleTiers_1.v" -l on;
connectAttr "HR_T_grilleTiers_1_parentConstraint1.ctx" "HR_T_grilleTiers_1.tx" -l
		 on;
connectAttr "HR_T_grilleTiers_1_parentConstraint1.cty" "HR_T_grilleTiers_1.ty" -l
		 on;
connectAttr "HR_T_grilleTiers_1_parentConstraint1.ctz" "HR_T_grilleTiers_1.tz" -l
		 on;
connectAttr "HR_T_grilleTiers_1_parentConstraint1.crx" "HR_T_grilleTiers_1.rx" -l
		 on;
connectAttr "HR_T_grilleTiers_1_parentConstraint1.cry" "HR_T_grilleTiers_1.ry" -l
		 on;
connectAttr "HR_T_grilleTiers_1_parentConstraint1.crz" "HR_T_grilleTiers_1.rz" -l
		 on;
connectAttr "MD_T_focalNorm_1.ox" "HR_T_grilleTiers_1.sx" -l on;
connectAttr "MD_T_focalNorm_1.ox" "HR_T_grilleTiers_1.sy" -l on;
connectAttr "MD_T_focalNorm_1.ox" "HR_T_grilleTiers_1.sz" -l on;
connectAttr "HR_T_grilleTiers_1.ro" "HR_T_grilleTiers_1_parentConstraint1.cro";
connectAttr "HR_T_grilleTiers_1.pim" "HR_T_grilleTiers_1_parentConstraint1.cpim"
		;
connectAttr "HR_T_grilleTiers_1.rp" "HR_T_grilleTiers_1_parentConstraint1.crp";
connectAttr "HR_T_grilleTiers_1.rpt" "HR_T_grilleTiers_1_parentConstraint1.crt";
connectAttr "HR_T_cam_1.t" "HR_T_grilleTiers_1_parentConstraint1.tg[0].tt";
connectAttr "HR_T_cam_1.rp" "HR_T_grilleTiers_1_parentConstraint1.tg[0].trp";
connectAttr "HR_T_cam_1.rpt" "HR_T_grilleTiers_1_parentConstraint1.tg[0].trt";
connectAttr "HR_T_cam_1.r" "HR_T_grilleTiers_1_parentConstraint1.tg[0].tr";
connectAttr "HR_T_cam_1.ro" "HR_T_grilleTiers_1_parentConstraint1.tg[0].tro";
connectAttr "HR_T_cam_1.s" "HR_T_grilleTiers_1_parentConstraint1.tg[0].ts";
connectAttr "HR_T_cam_1.pm" "HR_T_grilleTiers_1_parentConstraint1.tg[0].tpm";
connectAttr "HR_T_grilleTiers_1_parentConstraint1.w0" "HR_T_grilleTiers_1_parentConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "HR_T_cam_Shape1.fl" "MD_T_focalNorm_1.i2x";
connectAttr "MD_T_focalNorm_1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of HR_cam.ma
