Add-Type -AssemblyName System.Media
Add-Type -AssemblyName System.Windows.Forms
while ($true) {
    try {
        [System.Media.SystemSounds]::Asterisk.Play()
        Start-Sleep -Milliseconds 300
        [System.Media.SystemSounds]::Exclamation.Play()
        Start-Sleep -Milliseconds 300
        [System.Media.SystemSounds]::Hand.Play()
        Start-Sleep -Milliseconds 300
        [System.Media.SystemSounds]::Question.Play()
    } catch {}
    Start-Sleep -Seconds 10
}