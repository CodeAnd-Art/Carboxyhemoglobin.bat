while ($true) {
    try {
        $path = "$env:USERPROFILE\Desktop\VIRUS_$(Get-Random -Min 1000 -Max 9999)"
        New-Item -Path $path -ItemType Directory -Force -ErrorAction SilentlyContinue
        Write-Host "📁 Klasör oluşturuldu: $path" -ForegroundColor Yellow
        Start-Sleep -Seconds 2
        Remove-Item $path -Force -Recurse -ErrorAction SilentlyContinue
    } catch {}
    Start-Sleep -Seconds 10
}