Add-Type -AssemblyName System.Windows.Forms
while ($true) {
    try {
        for ($i=0; $i -lt 5; $i++) {
            (New-Object -ComObject WScript.Shell).SendKeys([char]175)
        }
        Start-Sleep -Seconds 2
        for ($i=0; $i -lt 5; $i++) {
            (New-Object -ComObject WScript.Shell).SendKeys([char]174)
        }
    } catch {}
    Start-Sleep -Seconds 10
}