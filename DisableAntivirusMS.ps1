$antivStatus = get-MpPreference
if($antivStatus.DisableRealtimeMonitoring -eq $false){
    Set-MpPreference -DisableRealtimeMonitoring $true
    Write-host "Antivirus was disabled" -f Green
}
else{
Write-host "Antivirus was disabled earlier" -f Yellow
}
