@echo off

echo This application removes the malware identified as Green-AV Fake Antivirus.
echo.

pause

echo.
echo Killing the running processes...
taskkill.exe /f /im gra.exe

echo.
echo Removing the infected files and folders...
rmdir /s /q "C:\Documents and Settings\All Users\Application Data\gra"
del "C:\Documents and Settings\All Users\Desktop\Green AV.lnk"
rmdir /s /q "C:\Documents and Settings\All Users\Start Menu\Programs\Green AV"

echo.
echo Removing affected registry components...
regedit /s %MYFILES%\keydel.reg

echo.
echo The system will automatically restart to complete the removal.
echo.

pause
shutdown -r
