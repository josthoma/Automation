@echo off
Ping 93.183.20.137
::Check internet connectivity pinging git server
if errorlevel 1 (exit /b)
::exits if no connectivity with GIT server
else
set PATH=%PATH%;C:\Program Files\Git
:: modify the above path to the GIT.exe path in your computer
cd D:\GitRepository\E2E-SC-Robot\E2E-TA-Framework
:: modfiy the above path to the local E2E-SC-Robot\E2E-TA-Framework Repo present in your computer 
git checkout development 
git pull 
::Pulls development branch of E2E-TA-Framework
cd ..\profiles
git checkout master
git pull
::Pulls master branch of profiles
cd ..\E2E-Common-Keywords
git checkout master
git pull
::Pulls master branch of E2E-Common-Keywords
cd ..
git checkout master
git pull