Set oShell = CreateObject ("Wscript.shell")
Dim strArgs
strArgs = "cmd /c test_repeat"
oShell.run strArgs, 0, false