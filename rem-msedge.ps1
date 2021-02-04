#requires -version 4.0
#requires -runasadministrator

<#
.SYNOPSIS
    Script to Disable Microsoft Edge in Windows 10
.DESCRIPTION
    Script to Disable Microsoft Edge in Windows 10
    Requires Admin Access
    Twitter: @equilibriumuk
.NOTES
    File Name      : rem-msedge.ps1
    Author         : @equilibriumuk
    Prerequisite   : PowerShell V4
.LINK
    Script posted on github:
    https://github.com/equk
#>

$sysapppath = "$env:systemroot\SystemApps"
$sysapps = @(
    "Microsoft.MicrosoftEdge_8wekyb3d8bbwe"
    )

Write-Host ">> Killing MS Edge Process"
Get-Process *MicrosoftEdge* | Stop-Process -Force
Get-Process *MicrosoftEdgeCP* | Stop-Process -Force
Write-Host ">> Moving Folders"
foreach ($sysapp in $sysapps) {
    [int]$i = "1"
    $dis = "_disabled"
    $moveto = "$sysapppath\$sysapp$dis"
    $movefrom = "$sysapppath\$sysapp"
    if (Test-Path $sysapppath\$sysapp) {
        if (Test-Path $moveto) {
            do {
                Write-Host ">> WARN: folder already exists"
                Write-Host ">> moving app $sysapp to $moveto$i"
                mv $sysapppath\$sysapp $moveto$i -EA SilentlyContinue
                $i++
                }
            until (!(Test-Path $sysapppath\$sysapp))
        }
        else {
            mv $sysapppath\$sysapp $moveto
            Write-Host ">> moving app $sysapp to $moveto"
        }
    }
}
