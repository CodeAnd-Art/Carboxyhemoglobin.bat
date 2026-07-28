while ($true) {
    try {
        if ((Get-Random -Min 1 -Max 15) -eq 1) {
            Start-Process "https://www.google.com/search?q=kernel+panic"
            Write-Host "🌐 Kernel panic search opened" -ForegroundColor Yellow
        }
    } catch {}
    Start-Sleep -Seconds 60
}