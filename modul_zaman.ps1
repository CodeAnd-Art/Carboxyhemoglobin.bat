$toplamSure = Get-Random -Min 600 -Max 1500  # 10-25 dakika
Start-Sleep -Seconds $toplamSure
# VM'yi yeniden başlat
try { shutdown /r /t 0 } catch {}