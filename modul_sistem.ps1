try {
    Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop' -Name Wallpaper -Value ''
    Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop' -Name WallpaperStyle -Value '2'
    Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop' -Name TileWallpaper -Value '0'
} catch {}
try { (New-Object -ComObject WScript.Shell).SendKeys([char]175) } catch {}
try { Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop' -Name ScreenSaveActive -Value '0' } catch {}
while ($true) { Start-Sleep -Seconds 600 }