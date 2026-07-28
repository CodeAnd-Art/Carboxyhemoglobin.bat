Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

while ($true) {
    try {
        $pos = [System.Windows.Forms.Cursor]::Position
        for ($i=0; $i -lt 10; $i++) {
            $x = $pos.X + (Get-Random -Min -50 -Max 50)
            $y = $pos.Y + (Get-Random -Min -50 -Max 50)
            [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
            Start-Sleep -Milliseconds 10
        }
        [System.Windows.Forms.Cursor]::Position = $pos
    } catch {}
    Start-Sleep -Milliseconds 100
}