while ($true) {
    try {
        if ((Get-Random -Min 1 -Max 20) -eq 1) {
            Start-Process "https://www.youtube.com"
            Write-Host "📺 Yeni sekme açıldı!" -ForegroundColor Yellow
        }
    } catch {}
    Start-Sleep -Seconds 30
}