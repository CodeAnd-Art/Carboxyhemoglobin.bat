$list = @('Windows Defender','McAfee','Norton','Avast','Kaspersky','Bitdefender')
while ($true) {
    try {
        $sec = $list | Get-Random
        Write-Host "⚠️ $sec disabled!" -ForegroundColor Red
    } catch {}
    Start-Sleep -Seconds 12
}