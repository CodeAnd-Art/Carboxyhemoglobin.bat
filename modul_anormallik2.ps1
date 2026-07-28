Add-Type -AssemblyName System.Windows.Forms
while ($true) {
    try {
        [System.Windows.Forms.MessageBox]::Show("Critical system error!", "Error", "OK", "Error")
        Start-Sleep -Seconds 2
    } catch {}
}