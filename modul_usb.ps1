Add-Type -AssemblyName System.Media
while ($true) {
    try {
        # Windows USB takma sesini çal
        $sound = New-Object System.Media.SoundPlayer
        $sound.Stream = [System.IO.MemoryStream]::new([System.IO.File]::ReadAllBytes("C:\Windows\Media\Windows Hardware Insert.wav"))
        $sound.Play()
    } catch {}
    Start-Sleep -Seconds 15
}