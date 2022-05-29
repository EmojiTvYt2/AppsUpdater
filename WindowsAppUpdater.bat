@echo off
title WindowsAppUpdater / By: EMOJI TV YT
color 0E

:start
cd /D C:\
cls
echo ===========================
echo === Windows App Updater ===
echo ===========================
echo.
echo Select an Option
echo.
echo 1. Update All Applications
echo 2. Info
echo 3. Exit
echo.
set /p "cho=Option: "
if %cho%==1 goto updateapps
if %cho%==2 goto info
if %cho%==3 exit

:updateapps
cls
echo ===========================
echo === Windows App Updater ===
echo ===========================
echo.
echo Apps will start updateing in 5 seconds...
ping localhost -n 1 >nul
cls
echo ===========================
echo === Windows App Updater ===
echo ===========================
echo.
echo Apps will start updateing in 4 seconds...
ping localhost -n 1 >nul
cls
echo ===========================
echo === Windows App Updater ===
echo ===========================
echo.
echo Apps will start updateing in 3 seconds...
ping localhost -n 1 >nul
cls
echo ===========================
echo === Windows App Updater ===
echo ===========================
echo.
echo Apps will start updateing in 2 seconds...
ping localhost -n 1 >nul
cls
echo ===========================
echo === Windows App Updater ===
echo ===========================
echo.
echo Apps will start updateing in 1 second...
ping localhost -n 1 >nul
goto updateing

:updateing
cls
echo ===========================
echo === Windows App Updater ===
echo ===========================
echo.
echo.
winget upgrade --all
echo.
pause
cls
echo Your Applications has been updated
echo.
pause
goto start

:info
cls
echo ===========================
echo === Windows App Updater ===
echo ===========================
echo.
echo Creator - EMOJI TV YT
echo Program Version - 1.1.1
echo.
echo ==== About the Program ====
echo WindowsAppUpdater is Updateing
echo ONLY apps that Microsoft added to the Update list
echo.
echo Apps like GIMP, Notepad++, Google Chrome ect. will be updated
echo (The popular apps only will be updated)
echo.
echo Program will automaticly download and run Instalators
echo for newest versions of applications that you have on your PC/Laptop
echo.
echo Click Any Key to Go Back to The Menu...
pause >nul
goto start
