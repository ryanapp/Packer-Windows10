$Logfile = "C:\Windows\Temp\win-updates.log"

Start-Transcript -Path $Logfile

Install-PackageProvider -Name NuGet -Force

Install-Module PSWindowsUpdate -Force
Import-Module PSWindowsUpdate

Install-WindowsUpdate -AcceptAll -RecurseCycle 5 -AutoReboot -Verbose 

Stop-Transcript

Invoke-Expression "a:\configure-winrm.ps1"
