Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
$form = New-Object System.Windows.Forms.Form
$form.WindowState = 'Maximized'
$form.FormBorderStyle = 'None'
$form.TopMost = $true
$form.BackColor = 'Gray'
$label = New-Object System.Windows.Forms.Label
$label.Dock = 'Fill'
$label.Font = New-Object System.Drawing.Font('Consolas', 80, [System.Drawing.FontStyle]::Bold)
$label.ForeColor = 'White'
$label.TextAlign = 'MiddleCenter'
$label.Text = '⚠️ MONOCHROME ⚠️'
$form.Controls.Add($label)
$form.ShowDialog()