@echo off
echo ####################################################
echo ###### Uninstalling all dependencys and builds #####
echo ####################################################

setlocal
:PROMPT
SET /P AREYOUSURE=Are you sure you want to proceed (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END
call grunt delete
rd node_modules /s /q
rd htdocs /s /q

echo ##### Files and Folders deleted #####
PAUSE