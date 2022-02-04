$Logfile = "C:\Windows\Temp\win-updates.log"

Start-Transcript -Path $Logfile

Install-PackageProvider -Name NuGet -Force

Install-Module PSWindowsUpdate -Force
Import-Module PSWindowsUpdate

Add-WUServiceManager -MicrosoftUpdate -Confirm:$false -Silent
Install-WindowsUpdate -AcceptAll -AutoReboot -Verbose 

Stop-Transcript

Invoke-Expression "d:\configure-winrm.ps1"
