@echo off
pushd \\UNCPATH\share
for /f "skip=1" %%i in ('wmic os get localdatetime') do if not defined fulldate set fulldate=%%i
set year=%fulldate:~0,4%
set month=%fulldate:~4,2%
set day=%fulldate:~6,2%
set foldername=%year%.%month%.%day%
mkdir "%foldername%"
echo Destination directory: %foldername%
xcopy /s E:\filename \UNCPATH\share\%foldername%
pause