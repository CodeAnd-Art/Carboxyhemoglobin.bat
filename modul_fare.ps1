Add-Type -AssemblyName System.Windows.Forms
while ($true) {
    try {
        $x = Get-Random -Min 0 -Max [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Width
        $y = Get-Random -Min 0 -Max [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Height
        [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
    } catch {}
    Start-Sleep -Seconds 2
}