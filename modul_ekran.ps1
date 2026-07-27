Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$form = New-Object System.Windows.Forms.Form
$form.WindowState = 'Maximized'
$form.FormBorderStyle = 'None'
$form.TopMost = $true
$form.BackColor = 'Black'
$form.KeyPreview = $true

$label = New-Object System.Windows.Forms.Label
$label.Dock = 'Fill'
$label.Font = New-Object System.Drawing.Font('Consolas', 90, [System.Drawing.FontStyle]::Bold)
$label.TextAlign = 'MiddleCenter'
$label.ForeColor = 'White'
$label.Text = '⛔ SYSTEM CRASH ⛔'
$form.Controls.Add($label)

$timer = New-Object System.Windows.Forms.Timer
$timer.Interval = 200
$timer.Add_Tick({
    $r = Get-Random -Min 0 -Max 256
    $g = Get-Random -Min 0 -Max 256
    $b = Get-Random -Min 0 -Max 256
    try {
        $form.BackColor = [System.Drawing.Color]::FromArgb($r, $g, $b)
        $label.ForeColor = [System.Drawing.Color]::FromArgb((255-$r), (255-$g), (255-$b))
        $label.Text = @('⛔ SYSTEM CRASH', '🔥 DATA LOSS', '💀 KERNEL PANIC', '🌀 HARDWARE FAILURE') | Get-Random
    } catch {}
})

$timer.Start()
$form.ShowDialog()