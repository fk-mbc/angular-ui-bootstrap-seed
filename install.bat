@echo off
echo #######################################
echo ###### Installing all dependencys #####
echo #######################################

setlocal
:PROMPT
SET /P AREYOUSURE=Are you sure you want to proceed (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

echo Installing npm dependencies
call npm install

::echo Installing bower dependencies
copy bower.bowerrc .bowerrc
mkdir htdocs
call bower install

echo #######################################
echo ######           END             ######
echo #######################################
echo starting the client application...
:END
endlocal
@pause
start.bat