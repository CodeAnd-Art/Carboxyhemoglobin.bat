# Zararsız sistem ayarlarını değiştirir
Add-Type -AssemblyName System.Windows.Forms

# Masaüstü arka planını siyah yap
try {
    $key = 'HKCU:\Control Panel\Desktop'
    Set-ItemProperty -Path $key -Name Wallpaper -Value ''
    Set-ItemProperty -Path $key -Name WallpaperStyle -Value '2'
    Set-ItemProperty -Path $key -Name TileWallpaper -Value '0'
} catch {}

# Görev çubuğunu otomatik gizle
try {
    $key = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3'
    $value = Get-ItemProperty -Path $key -Name Settings -ErrorAction SilentlyContinue
    if ($value) {
        $bytes = $value.Settings
        $bytes[8] = 3  # Auto-hide enabled
        Set-ItemProperty -Path $key -Name Settings -Value $bytes
    }
} catch {}

# Ses seviyesini %100 yap
try {
    $obj = New-Object -ComObject WScript.Shell
    $obj.SendKeys([char]175)  # Volume up
} catch {}

# Ekran koruyucuyu devre dışı bırak
try {
    Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop' -Name ScreenSaveActive -Value '0'
} catch {}

# Sistem saatini birkaç dakika ileri al (opsiyonel)
# try {
#     $date = Get-Date
#     $date = $date.AddMinutes(5)
#     Set-Date -Date $date -ErrorAction SilentlyContinue
# } catch {}

while ($true) { Start-Sleep -Seconds 600 }