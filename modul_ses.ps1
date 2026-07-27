# Anlık değişen düşük frekanslı sesler (50-100 Hz)
Add-Type -AssemblyName System.Windows.Forms

$timer = New-Object System.Windows.Forms.Timer
$timer.Interval = 1000  # Her 1 saniye
$timer.Add_Tick({
    $freq = Get-Random -Min 50 -Max 100
    $dur = Get-Random -Min 50 -Max 200
    try { [System.Console]::Beep($freq, $dur) } catch {}
})
$timer.Start()

while ($true) { Start-Sleep -Seconds 1 }