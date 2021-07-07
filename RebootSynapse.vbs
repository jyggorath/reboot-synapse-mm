Dim strUsername
strUsername = CreateObject("WScript.Network").UserName
Set objShell = CreateObject("Shell.Application")  
objShell.ShellExecute "powershell", "-ExecutionPolicy Bypass -File C:\Users\" & strUsername & "\Desktop\Reboot-Synapse.ps1", "", "runas", 1