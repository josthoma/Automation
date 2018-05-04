@echo off
set PATH=%PATH%;C:\Program Files\Git
:: modify the above path to the GIT.exe path in your computer
cd D:\GitRepository\E2E-SC-Robot\E2E-TA-Framework
:: modfiy the above path to the local E2E-SC-Robot\E2E-TA-Framework Repo present in your computer 
git checkout development 
git pull 
cd ..\profiles
git checkout master
cd ..\E2E-Common-Keywords
git checkout master
cd ..
git checkout master