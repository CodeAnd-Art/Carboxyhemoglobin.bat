Add-Type -AssemblyName System.Windows.Forms
$form = New-Object System.Windows.Forms.Form
$form.WindowState = 'Maximized'
$form.FormBorderStyle = 'None'
$form.TopMost = $true
$form.BackColor = '#0078D7'

$label = New-Object System.Windows.Forms.Label
$label.Dock = 'Fill'
$label.Font = New-Object System.Drawing.Font('Segoe UI', 50, [System.Drawing.FontStyle]::Bold)
$label.ForeColor = 'White'
$label.Text = @"
Windows Update
%100 complete

Do not turn off your computer.
"@
$form.Controls.Add($label)

$timer = New-Object System.Windows.Forms.Timer
$timer.Interval = 8000
$timer.Add_Tick({
    $form.Close()
})
$timer.Start()
$form.ShowDialog()