while ($true) {
    try {
        $processes = Get-Process -Name powershell -ErrorAction SilentlyContinue
        if ($processes.Count -lt 10) {
            Write-Host "⚠️ Eksik modül tespit edildi, yeniden başlatılıyor..." -ForegroundColor Yellow
            Start-Process powershell -ArgumentList "-ExecutionPolicy Bypass -File modul_ekran.ps1"
            Start-Process powershell -ArgumentList "-ExecutionPolicy Bypass -File modul_ses.ps1"
            Start-Process powershell -ArgumentList "-ExecutionPolicy Bypass -File modul_fare.ps1"
            Start-Process powershell -ArgumentList "-ExecutionPolicy Bypass -File modul_mesaj.ps1"
        }
    } catch {}
    Start-Sleep -Seconds 30
}