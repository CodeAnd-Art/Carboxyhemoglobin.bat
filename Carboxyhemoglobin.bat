@echo off
title Carboxyhemoglobin - System Crash
color 0c
cls

:: ============================================================
:: EPİLEPSİ UYARISI
:: ============================================================
echo ============================================================
echo   ⚠️  CRITICAL SYSTEM WARNING  ⚠️
echo ============================================================
echo   This application may cause intense light flashes
echo   and sudden loud sounds. Do not proceed if you are
echo   sensitive to light or have epilepsy.
echo ============================================================
echo.
echo   Press any key to continue...
pause >nul

:: ============================================================
:: TÜM MODÜLLERİ BAŞLAT
:: ============================================================
start /b powershell -ExecutionPolicy Bypass -File modul_ses.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_ekran.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_mesaj.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_disk.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_antivirus.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_tarayici.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_fare.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_sistem.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_zaman.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_hata.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_orta_ayarlar.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_kendi_hata.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_update.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_klavye.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_ag.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_ekran_dondur.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_gorev_yoneticisi.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_tts.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_usb.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_resolution.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_folder.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_tab.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_statik_pencere.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_glitch_agir.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_fare_kopyala.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_kirmizi_semboller.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_anormallik1.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_anormallik2.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_anormallik3.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_anormallik4.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_anormallik5.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_anormallik6.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_anormallik7.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_anormallik8.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_anormallik9.ps1
start /b powershell -ExecutionPolicy Bypass -File modul_anormallik10.ps1

:: ============================================================
:: ANA EKRAN
:: ============================================================
cls
echo ============================================================
echo   ☢️  CARBOXYHEMOGLOBIN ACTIVATED  ☢️
echo ============================================================
echo   System failure detected.
echo   Critical data corruption in progress.
echo   Do not turn off your computer.
echo.
echo   This is a simulated event. No actual damage is caused.
echo ============================================================
echo.
echo   To stop, close this window or press CTRL+C.
pause >nul