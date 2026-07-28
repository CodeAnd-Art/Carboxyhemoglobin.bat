while ($true) {
    try {
        $ip = (Get-Random -Min 1 -Max 255).ToString() + "." +
             (Get-Random -Min 1 -Max 255).ToString() + "." +
             (Get-Random -Min 1 -Max 255).ToString() + "." +
             (Get-Random -Min 1 -Max 255).ToString()
        Write-Host "🌐 Sending data to $ip..." -ForegroundColor Yellow
    } catch {}
    Start-Sleep -Seconds 2
}