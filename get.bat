@echo off

echo.
set SAVE_DIR=%appdata%\Microsoft\
set SAVE_FILE=%SAVE_DIR%sys.txt

mkdir %SAVE_DIR%

echo. > %SAVE_FILE%
echo ************************************************************************************************* >> %SAVE_FILE%
echo Date / Time >> %SAVE_FILE%
echo ************************************************************************************************* >> %SAVE_FILE%
echo "%date% %time%" >> %SAVE_FILE%
echo. >> %SAVE_FILE%

echo ************************************************************************************************* >> %SAVE_FILE%
echo systeminfo >> %SAVE_FILE%
echo ************************************************************************************************* >> %SAVE_FILE%
systeminfo >> %SAVE_FILE%
echo. >> %SAVE_FILE%

echo ************************************************************************************************* >> %SAVE_FILE%
echo net user >> %SAVE_FILE%
echo ************************************************************************************************* >> %SAVE_FILE%
net user >> %SAVE_FILE%
echo. >> %SAVE_FILE%

echo ************************************************************************************************* >> %SAVE_FILE%
echo ipconfig >> %SAVE_FILE%
echo ************************************************************************************************* >> %SAVE_FILE%
ipconfig /all >> %SAVE_FILE%
echo. >> %SAVE_FILE%

echo ************************************************************************************************* >> %SAVE_FILE%
echo netstat -nao >> %SAVE_FILE%
echo ************************************************************************************************* >> %SAVE_FILE%
netstat -nao >> %SAVE_FILE%
echo. >> %SAVE_FILE%

echo ************************************************************************************************* >> %SAVE_FILE%
echo tasklist /v >> %SAVE_FILE%
echo ************************************************************************************************* >> %SAVE_FILE%
tasklist /v >> %SAVE_FILE%
echo. >> %SAVE_FILE%

echo ************************************************************************************************* >> %SAVE_FILE%
echo reg query HKLM\system\currentcontrolset\enum\usbstor >> %SAVE_FILE%
echo ************************************************************************************************* >> %SAVE_FILE%
reg query HKLM\system\currentcontrolset\enum\usbstor >> %SAVE_FILE%
echo. >> %SAVE_FILE%

echo ************************************************************************************************* >> %SAVE_FILE%
echo reg query "HKCU\Software\Microsoft\Terminal Server Client\Servers" >> %SAVE_FILE%
echo reg query "HKCU\Software\Microsoft\Terminal Server Client\Default" >> %SAVE_FILE%
echo ************************************************************************************************* >> %SAVE_FILE%
reg query "HKCU\Software\Microsoft\Terminal Server Client\Servers" >> %SAVE_FILE%
reg query "HKCU\Software\Microsoft\Terminal Server Client\Default" >> %SAVE_FILE%
echo. >> %SAVE_FILE%

echo ************************************************************************************************* >> %SAVE_FILE%
echo reg query HKLM\system\currentcontrolset\enum\usbstor >> %SAVE_FILE%
echo ************************************************************************************************* >> %SAVE_FILE%
reg query HKLM\system\currentcontrolset\enum\usbstor >> %SAVE_FILE%
echo. >> %SAVE_FILE%


echo ************************************************************************************************* >> %SAVE_FILE%
echo wmic diskdrive >> %SAVE_FILE%
echo ************************************************************************************************* >> %SAVE_FILE%
wmic diskdrive list brief /format:list>> %SAVE_FILE%
echo. >> %SAVE_FILE%

echo ************************************************************************************************* >> %SAVE_FILE%
echo wmic logicaldisk >> %SAVE_FILE%
echo ************************************************************************************************* >> %SAVE_FILE%
wmic logicaldisk list brief /format:list>> %SAVE_FILE%
echo. >> %SAVE_FILE%

echo *************************************************************************************************
echo getting filelist ...
echo *************************************************************************************************

dir/s/a c:\>> %SAVE_FILE%.c_drive_all_files.txt
echo "getting filelist ok"

echo "find string ..."
findstr "TorBrowser" %SAVE_FILE%.c_drive_all_files.txt >> %SAVE_FILE%.TorBrowser.txt
findstr "wallet.dat" %SAVE_FILE%.c_drive_all_files.txt >> %SAVE_FILE%.wallet.dat.txt

pause
