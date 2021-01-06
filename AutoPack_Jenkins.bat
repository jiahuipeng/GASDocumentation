@echo off
echo Running AutoPack

rem ## Setting up project variables
set PackPlatform=Win64
set ClientBuildType=Shipping
set ServerBuildType=Development
set ProjectName=GAS_TestWorld

set UEEditorPath="E:\Epic Games\Engine\UE_Build\Engine\Binaries\Win64\UE4Editor-Cmd.exe"
set UATFilePath="E://Epic Games//Engine//UE_Build//Engine//Build//BatchFiles//"
set ProjFilePath="E:\Work\UE_Projects\Test\ue4-gas-demo\%ProjectName%.uproject"
set ProjArchiveDir="E:\Work\UE_Projects\Test\ue4-gas-demo\Package"

set BuildArgs=^
 -dedicatedserver^
 -compileeditor^
 -nop4^
 -project=%ProjFilePath%^
 -cook^
 -stage^
 -archive^
 -archivedirectory=%ProjArchiveDir%^
 -package^
 -ue4exe=%UEEditorPath%^
 -pak^
 -prereqs^
 -nodebuginfo^
 -targetplatform=%PackPlatform%^
 -servertargetplatform=%PackPlatform%^
 -build^
 -clientconfig=%ClientBuildType%^
 -serverconfig=%ServerBuildType%^
 -utf8output^
 -compile

%UATFilePath%RunUAT.bat -ScriptsForProject=%ProjFilePath% BuildCookRun %BuildArgs%


