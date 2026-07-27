while ($true) {
    $dosya = "$env:TEMP\temp_disk.bin"
    $boyut = Get-Random -Min 100 -Max 500
    try {
        $stream = [System.IO.File]::OpenWrite($dosya)
        $stream.SetLength($boyut * 1MB)
        $stream.Close()
        Write-Host "Disk usage: 100%" -ForegroundColor Red
        Start-Sleep -Milliseconds 500
        Remove-Item $dosya -Force -ErrorAction SilentlyContinue
    } catch {}
    Start-Sleep -Seconds 2
}