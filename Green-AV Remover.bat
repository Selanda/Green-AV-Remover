REM  QBFC Project Options Begin
REM  HasVersionInfo: Yes
REM  Companyname: TheHelpfulHacker
REM  Productname: Green-AV Remover
REM  Filedescription: 
REM  Copyrights: Creative Commons
REM  Trademarks: Creative Commons
REM  Originalname: 
REM  Comments: Do not reproduce, if you obtained this file from anywhere other than TheHelpfulHacker.com it isn't genuine.
REM  Productversion: 01.06.06.06
REM  Fileversion: 01.02.00.00
REM  Internalname: 
REM  Appicon: F:\My Pictures\smile.ico
REM  Embeddedfile: C:\Users\Selanda\Desktop\Disassembly\Badware Samples (pw - infected)\Green-AV\Remover\keydel.reg
REM  QBFC Project Options End

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
echo For problems, questions, comments or suggestions please contact:
echo Selanda _at_ thehelpfulhacker _dot_ com
echo.

pause
shutdown -r
