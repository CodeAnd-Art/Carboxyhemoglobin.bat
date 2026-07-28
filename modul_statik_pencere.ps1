Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$form = New-Object System.Windows.Forms.Form
$form.Size = New-Object System.Drawing.Size(400, 200)
$form.StartPosition = 'CenterScreen'
$form.FormBorderStyle = 'FixedSingle'
$form.TopMost = $true
$form.BackColor = 'Black'
$form.Text = 'SYSTEM LOCKED'

$label = New-Object System.Windows.Forms.Label
$label.Dock = 'Fill'
$label.Font = New-Object System.Drawing.Font('Consolas', 30, [System.Drawing.FontStyle]::Bold)
$label.ForeColor = 'Red'
$label.TextAlign = 'MiddleCenter'
$label.Text = @"
██╗  ██╗███████╗██████╗ ███╗   ██╗███████╗██╗
██║  ██║██╔════╝██╔══██╗████╗  ██║██╔════╝██║
███████║█████╗  ██████╔╝██╔██╗ ██║█████╗  ██║
██╔══██║██╔══╝  ██╔══██╗██║╚██╗██║██╔══╝  ██║
██║  ██║███████╗██║  ██║██║ ╚████║███████╗██║
╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝╚═╝
"@
$form.Controls.Add($label)
$form.ShowDialog()