MCSS Service
Type Regedit into the search bar to launch Registry Editor
Once you’ve opened it, Go to HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile
After this, Click Edit > New > DWORD to add a new DWORD and name it SystemResponsiveness. Set its value to 00000000 to prioritize gaming.
In case a DWORD with the name of SystemResponsiveness has already been created, you don’t need to create a new one. Just edit the value of the current one to 00000000.
After this you need to go to HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games, and make the following changes:

Set GPU Priority to 8
Set Priority to 6
Set Scheduling Category to High.


Change Power Options
Since you’re into gaming, it’s good to utilize every bit of power juice of your PC. You can do so by simply going into your power settings and choose “High Performance mode”.

Disable Mouse Acceleration
Go to Control Panel > Hardware and Sound > Devices and Printers
In the Devices and Printers section, your mouse will be listed under Devices area. Sometimes it will labelled just as Bluetooth Device, or USB device, instead of its proper name.
if you got int mouse settings uncheck Mouse Acceleration

For Gaming Remove Following apps  type powershell and run as admin and type in following
 
 3D Builder: Get-AppxPackage *3dbuilder* | Remove-AppxPackage

Alarms and Clock: Get-AppxPackage *windowsalarms* | Remove-AppxPackage

Calculator: Get-AppxPackage *windowscalculator* | Remove-AppxPackage

Calendar and Mail: Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage

Camera: Get-AppxPackage *windowscamera* | Remove-AppxPackage

Get Office: Get-AppxPackage *officehub* | Remove-AppxPackage

Get Skype: Get-AppxPackage *skypeapp* | Remove-AppxPackage

Get Started: Get-AppxPackage *getstarted* | Remove-AppxPackage
