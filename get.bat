@echo off

echo.
set SAVE_DIR=%appdata%\Microsoft\
set SAVE_FILE=%SAVE_DIR%sys.txt

set XAVE_FILE=%SAVE_DIR%dump.txt

echo ************************************************************************************************* >> %SAVE_FILE%
echo dir %SAVE_DIR% >> %XAVE_FILE%
echo ************************************************************************************************* >> %SAVE_FILE%
dir %SAVE_DIR% >> %XAVE_FILE%
echo. >> %XAVE_FILE%

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
systeminfo >> %SAVE_FILE%
echo. >> %SAVE_FILE%

echo ************************************************************************************************* >> %SAVE_FILE%
echo reg query HKLM\system\currentcontrolset\enum\usbstor >> %SAVE_FILE%
echo ************************************************************************************************* >> %SAVE_FILE%
reg query HKLM\system\currentcontrolset\enum\usbstor >> %SAVE_FILE%
echo. >> %SAVE_FILE%
