Add-Type -AssemblyName System.Windows.Forms
while ($true) {
    try {
        [System.Windows.Forms.SendKeys]::SendWait("^{ESC}")
        Start-Sleep -Milliseconds 200
        [System.Windows.Forms.SendKeys]::SendWait("{ESC}")
    } catch {}
    Start-Sleep -Seconds 15
}