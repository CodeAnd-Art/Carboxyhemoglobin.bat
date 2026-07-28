Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$form = New-Object System.Windows.Forms.Form
$form.WindowState = 'Maximized'
$form.FormBorderStyle = 'None'
$form.TopMost = $true
$form.BackColor = 'Black'

$timer = New-Object System.Windows.Forms.Timer
$timer.Interval = 50
$timer.Add_Tick({
    try {
        $g = $form.CreateGraphics()
        for ($i=0; $i -lt 200; $i++) {
            $x = Get-Random -Min 0 -Max $form.Width
            $y = Get-Random -Min 0 -Max $form.Height
            $w = Get-Random -Min 1 -Max 80
            $h = Get-Random -Min 1 -Max 20
            $renk = [System.Drawing.Color]::FromArgb(Get-Random -Min 0 -Max 256, Get-Random -Min 0 -Max 256, Get-Random -Min 0 -Max 256)
            $brush = New-Object System.Drawing.SolidBrush($renk)
            $g.FillRectangle($brush, $x, $y, $w, $h)
        }
        $g.Dispose()
    } catch {}
})
$timer.Start()
$form.ShowDialog()