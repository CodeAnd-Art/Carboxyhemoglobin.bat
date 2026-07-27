# ============================================================
# CARBOXYHEMOGLOBIN - SAHTE VİRÜS ŞAKASI (ŞİFRELİ)
# ============================================================

# Şifre kontrolü
$sifre = "carboxy"
$girilen = Read-Host -Prompt "🔐 Dosyayı çalıştırmak için şifreyi girin"

if ($girilen -ne $sifre) {
    Write-Host "❌ Yanlış şifre! Program kapatılıyor..." -ForegroundColor Red
    Start-Sleep -Seconds 2
    exit
}

Write-Host "✅ Şifre doğru! Başlatılıyor..." -ForegroundColor Green
Start-Sleep -Seconds 1

# ============================================================
# EPİLEPSİ UYARISI
# ============================================================
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
Add-Type -AssemblyName System.Media

[System.Windows.Forms.MessageBox]::Show(
    "⚠️ EPİLEPSİ UYARISI ⚠️`n`nBu betik, yoğun ışık patlamaları ve ani sesler içerir.`nIşığa duyarlı epilepsisi olanlar KESİNLİKLE çalıştırmamalıdır!`n`nDevam etmek için 'Tamam'a basın.",
    "Carboxyhemoglobin - Uyarı",
    "OK",
    "Warning"
)

# ============================================================
# ANA FORM (TAM EKRAN)
# ============================================================
$form = New-Object System.Windows.Forms.Form
$form.WindowState = 'Maximized'
$form.FormBorderStyle = 'None'
$form.TopMost = $true
$form.BackColor = 'Black'
$form.KeyPreview = $true

# Label (Ana mesaj)
$label = New-Object System.Windows.Forms.Label
$label.Dock = 'Fill'
$label.Font = New-Object System.Drawing.Font('Consolas', 120, [System.Drawing.FontStyle]::Bold)
$label.TextAlign = 'MiddleCenter'
$label.ForeColor = 'White'
$label.Text = 'KERNEL PANIC'
$form.Controls.Add($label)

# Label (Hata kodu - alt kısım)
$label2 = New-Object System.Windows.Forms.Label
$label2.AutoSize = $true
$label2.Font = New-Object System.Drawing.Font('Consolas', 40, [System.Drawing.FontStyle]::Bold)
$label2.ForeColor = 'Red'
$label2.TextAlign = 'MiddleCenter'
$label2.Text = '0x0000007B (KARBOKSİHEMOGLOBİN ÇÖKÜŞÜ)'
$label2.Location = New-Object System.Drawing.Point(100, 700)
$form.Controls.Add($label2)

# ============================================================
# ZAMANLAYICILAR
# ============================================================

# Timer 1: Işık patlaması (0.1 sn)
$timer1 = New-Object System.Windows.Forms.Timer
$timer1.Interval = 100
$timer1.Add_Tick({
    $r = Get-Random -Min 0 -Max 256
    $g = Get-Random -Min 0 -Max 256
    $b = Get-Random -Min 0 -Max 256
    $form.BackColor = [System.Drawing.Color]::FromArgb($r, $g, $b)
    $label.ForeColor = [System.Drawing.Color]::FromArgb((255-$r), (255-$g), (255-$b))
})

# Timer 2: Ses (rastgele frekans)
$timer2 = New-Object System.Windows.Forms.Timer
$timer2.Interval = 2000
$timer2.Add_Tick({
    $freq = Get-Random -Min 100 -Max 3000
    $dur = Get-Random -Min 100 -Max 800
    [System.Console]::Beep($freq, $dur)
    if ((Get-Random -Min 1 -Max 5) -eq 1) {
        $sesler = @(
            [System.Media.SystemSounds]::Asterisk,
            [System.Media.SystemSounds]::Exclamation,
            [System.Media.SystemSounds]::Hand
        )
        $sesler | Get-Random | ForEach-Object { $_.Play() }
    }
})

# Timer 3: Mesaj değişimi (her 5 sn)
$timer3 = New-Object System.Windows.Forms.Timer
$timer3.Interval = 5000
$timer3.Add_Tick({
    $mesajlar = @(
        'KERNEL PANIC',
        'SYSTEM CRASH',
        'FATAL ERROR',
        'MEMORY DUMP',
        'IRQ NOT LESS OR EQUAL',
        'PAGE FAULT IN NONPAGED AREA',
        'BAD SYSTEM CONFIG INFO',
        'CRITICAL PROCESS DIED'
    )
    $label.Text = $mesajlar | Get-Random
    $label2.Text = "0x" + (Get-Random -Min 0x10000000 -Max 0xFFFFFFFF).ToString('X8') + " (KARBOKSİHEMOGLOBİN)"
    $label.Font = New-Object System.Drawing.Font('Consolas', (Get-Random -Min 80 -Max 160), [System.Drawing.FontStyle]::Bold)
})

# Timer 4: Fare hareketi (her 2 sn)
$timer4 = New-Object System.Windows.Forms.Timer
$timer4.Interval = 2000
$timer4.Add_Tick({
    $x = Get-Random -Min 0 -Max [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Width
    $y = Get-Random -Min 0 -Max [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Height
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
})

# Timer 5: Ekran bozulması (glitch) - her 3 sn
$timer5 = New-Object System.Windows.Forms.Timer
$timer5.Interval = 3000
$timer5.Add_Tick({
    $glitch = @(
        '█ █ █ █ █ █ █ █ █ █',
        '▓ ▓ ▓ ▓ ▓ ▓ ▓ ▓ ▓ ▓',
        '▒ ▒ ▒ ▒ ▒ ▒ ▒ ▒ ▒ ▒',
        '░ ░ ░ ░ ░ ░ ░ ░ ░ ░',
        '▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄',
        '▀ ▀ ▀ ▀ ▀ ▀ ▀ ▀ ▀ ▀'
    )
    $label.Text = $glitch | Get-Random
})

# ============================================================
# SÜRE VE KAPATMA
# ============================================================

$toplamSure = (Get-Random -Min 600 -Max 1500)
$timerKapat = New-Object System.Windows.Forms.Timer
$timerKapat.Interval = ($toplamSure * 1000)
$timerKapat.Add_Tick({
    $timer1.Stop()
    $timer2.Stop()
    $timer3.Stop()
    $timer4.Stop()
    $timer5.Stop()
    $form.Close()
    shutdown /r /t 0
})
$timerKapat.Start()

$form.Add_KeyDown({
    if ($_.KeyCode -eq 'Escape') {
        $timer1.Stop()
        $timer2.Stop()
        $timer3.Stop()
        $timer4.Stop()
        $timer5.Stop()
        $timerKapat.Stop()
        $form.Close()
    }
})

# ============================================================
# BAŞLAT
# ============================================================
$timer1.Start()
$timer2.Start()
$timer3.Start()
$timer4.Start()
$timer5.Start()

$form.ShowDialog()