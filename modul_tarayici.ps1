while ($true) {
    if ((Get-Random -Min 1 -Max 15) -eq 1) {
        try {
            Start-Process "https://www.google.com/search?q=kernel+panic"
            Write-Host "🌐 Kernel panic search opened" -ForegroundColor Yellow
        } catch {}
    }
    Start-Sleep -Seconds 60
}