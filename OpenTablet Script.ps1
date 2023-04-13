# OpenTablet Driver Script by Rain
# This script is used for closing down Wacom Drivers and Launch OpenTablet Driver

#Definitions
$odt = "OpenTabletDriver.UX.Wpf.exe"
$FileExits = Test-path $odt

# Check if the application exist 
Write-Host 'Checking if OpenTabletDriver.UX.Wpf.exe exists...'
if ($FileExits -eq $false){
    Write-Host "Cannot find OpenTablet Driver executable, please place this script in the root of OpenTablet Driver Folder"
    Read-Host "Press Enter to continue" | Out-Null
    Exit-PSHostProcess
}

#If it exists, this will flow through
Else {
    Write-Host "Found OpenTabletDriver.UX.Wpf.exe"
    Write-Host "Killing Wacom Drivers"
    taskkill.exe /im *Wacom /f
    
}
# If the filepath is false, suggest to find file path
#if (Test-Path E:\Tools\OpenTabletDriver.win-x64\OpenTabletDriver.UX.Wpf.exe "True"){
 #   Write-Host Shit Broke cuh
#}