$list = @('Windows Defender','McAfee','Norton','Avast','Kaspersky','Bitdefender')
while ($true) {
    $sec = $list | Get-Random
    try {
        Write-Host "⚠️ $sec disabled!" -ForegroundColor Red
    } catch {}
    Start-Sleep -Seconds 12
}