@echo off
title WAU Setup & color 0a

::checks do something is wrong
:0
cd /D C:\%homepath%\Desktop\
if exist C:\%homepath%\Desktop\WAU goto start
if not exist C:\%homepath%\Desktop\WAU goto setupinfo

::The start of everything
:start
cls
title WAU Setup - Moveing Files
echo Moveing Game Files, Please wait...
(
echo @echo off
echo start C:\WAU\WAU.bat
)>C:\Windows\System32\wau.bat
md C:\WAU
cd /D C:\WAU
move /-Y C:\%homepath%\Desktop\WAU C:\WAU\
ping localhost -n 3 >nul
cls
echo Createing App Shortcut, Please wait...
goto makeshortcut

::This part creates shortcut on your desktop that you can use to open the app
:makeshortcut
title WAU Setup - Createing Shortcut
cd /D C:\WAU\
echo Set oWS = WScript.CreateObject("WScript.Shell") >ShortcutMaker.vbs
echo sLinkFile = "C:\%homepath%\Desktop\AppUpdater.lnk" >>ShortcutMaker.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >>ShortcutMaker.vbs
echo oLink.TargetPath = "C:\WAU\WAU" >>ShortcutMaker.vbs
echo oLink.Arguments = "" >>ShortcutMaker.vbs
echo oLink.Description = "Windows App Updater" >>ShortcutMaker.vbs
echo oLink.HotKey = "" >>ShortcutMaker.vbs
echo oLink.IconLocation = "C:\WAU\, 2" >>ShortcutMaker.vbs
echo oLink.WindowStyle = "3" >>ShortcutMaker.vbs
echo oLink.WorkingDirectory = "C:\WAU\" >>ShortcutMaker.vbs
echo oLink.Save >>ShortcutMaker.vbs
cscript ShortcutMaker.vbs
del ShortcutMaker.vbs
ping localhost -n 2 >nul
cls
echo Done!
goto everythingdone


::Show menu where you can decide do you want to close the setup program or open the app instantly after finishing the setuping
:everythingdone
ping localhost -n 3 >nul
cls
echo WindowsAppUpdater has been Instaled
ping localhost -n 3 >nul
goto appstart


:exit
cls
cd /D C:\WAU\
exit

::Opens the app, and instantly exites this setup program
:appstart
cls
start C:\WAU\WAU.bat
cd /D C:\WAU\
exit

::If something is wrong with game folder it shows this messenge
:setupinfo
cls
echo Please rename game folder to "WAU" and
echo move the folder on to your Desktop then try again
pause >nul
goto 0