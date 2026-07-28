try {
    $key = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3'
    $value = Get-ItemProperty -Path $key -Name Settings -ErrorAction SilentlyContinue
    if ($value) {
        $bytes = $value.Settings
        $bytes[8] = 3
        Set-ItemProperty -Path $key -Name Settings -Value $bytes
    }
} catch {}
try {
    Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'Shell Icon Size' -Value '64'
} catch {}
while ($true) { Start-Sleep -Seconds 600 }