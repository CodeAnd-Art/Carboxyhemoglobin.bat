$log = "$env:USERPROFILE\Desktop\Carboxyhemoglobin_log.txt"
while ($true) {
    try {
        $zaman = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
        Add-Content -Path $log -Value "$zaman - System failure simulated"
    } catch {}
    Start-Sleep -Seconds 15
}