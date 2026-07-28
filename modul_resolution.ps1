Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

try {
    # Ekran çözünürlüğünü 800x600 yap (korkutma amaçlı)
    $width = 800
    $height = 600
    $screen = [System.Windows.Forms.Screen]::PrimaryScreen
    $change = [System.Windows.Forms.MessageBox]::Show("Ekran çözünürlüğü değiştirilsin mi?", "Uyarı", "YesNo")
    if ($change -eq "Yes") {
        # Not: Bu gerçek çözünürlük değiştirmez, sadece kullanıcıya gösterir.
        Write-Host "⚠️ Çözünürlük düşürüldü!" -ForegroundColor Red
    }
} catch {}