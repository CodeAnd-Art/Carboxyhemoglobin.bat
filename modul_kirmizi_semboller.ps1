Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$form = New-Object System.Windows.Forms.Form
$form.WindowState = 'Maximized'
$form.FormBorderStyle = 'None'
$form.TopMost = $true
$form.BackColor = 'Black'
$form.TransparencyKey = 'Black'

$label = New-Object System.Windows.Forms.Label
$label.Dock = 'Fill'
$label.Font = New-Object System.Drawing.Font('Arial', 60, [System.Drawing.FontStyle]::Bold)
$label.ForeColor = 'Red'
$label.TextAlign = 'MiddleCenter'
$label.Text = ''
$form.Controls.Add($label)

$timer = New-Object System.Windows.Forms.Timer
$timer.Interval = 200
$timer.Add_Tick({
    try {
        $semboller = @('X', '!', '?', '+', '=', '#', '$', '%', '&', '*', '@', '~', '|', '/', '\')
        $label.Text = $semboller | Get-Random
        $label.ForeColor = [System.Drawing.Color]::FromArgb(255, Get-Random -Min 50 -Max 150, Get-Random -Min 0 -Max 50)
    } catch {}
})
$timer.Start()
$form.ShowDialog()