Add-Type -AssemblyName System.Windows.Forms
while ($true) {
    try {
        [System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
        Start-Sleep -Seconds 30
    } catch {}
}