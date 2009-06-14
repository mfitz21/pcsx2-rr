@echo off
rem
rem Usage: postBuild.cmd SourcePath DestDir DestFile DestExt
rem
rem     SourcePath - $(TargetPath) - Fully qualified path of the generated target file.
rem     DestDir - $(SolutionDir) - Directory of the destination, usually the same as the solution.
rem     DestFile - Base filename of the target/dest, without extension!
rem     DestExt - Extension of the target/dest!

set pcsxoutdir=%~2\bin
set pcsxoutname=%pcsxoutdir%%~3%4

IF NOT EXIST %pcsxoutdir% (
    md %pcsxoutdir%
)

copy /Y %~1 %pcsxoutname%
if ERRORLEVEL 0 (
    echo Target copied to %pcsxoutname%
)
set ERRORLEVEL=0
