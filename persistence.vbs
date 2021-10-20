Set oShell = CreateObject ("Wscript.shell")
Dim strArgs
strArgs = "%appdata%\script.bat"
oShell.run strArgs, 0, false