while ($true) {
    try {
        $uzanti = @('.exe', '.dll', '.sys', '.tmp', '.bak', '.old', '.vir')
        $dosya = "$env:USERPROFILE\Desktop\system_$(Get-Random -Min 1000 -Max 9999)$($uzanti | Get-Random)"
        New-Item -Path $dosya -ItemType File -Force -ErrorAction SilentlyContinue
        Start-Sleep -Seconds 5
        Remove-Item $dosya -Force -ErrorAction SilentlyContinue
    } catch {}
    Start-Sleep -Seconds 10
}