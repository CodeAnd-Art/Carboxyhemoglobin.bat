Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
while ($true) {
    try {
        $width = Get-Random -Min 640 -Max 1920
        $height = Get-Random -Min 480 -Max 1080
        # Sahte mesaj
        Write-Host "Resolution changed to ${width}x${height}" -ForegroundColor Yellow
    } catch {}
    Start-Sleep -Seconds 20
}