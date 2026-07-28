Add-Type -AssemblyName System.Windows.Forms
$timer = New-Object System.Windows.Forms.Timer
$timer.Interval = 1000
$timer.Add_Tick({
    try {
        $freq = Get-Random -Min 50 -Max 100
        $dur = Get-Random -Min 50 -Max 200
        [System.Console]::Beep($freq, $dur)
    } catch {}
})
$timer.Start()
while ($true) { Start-Sleep -Seconds 1 }