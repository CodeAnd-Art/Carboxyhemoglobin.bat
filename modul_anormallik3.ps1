Add-Type -AssemblyName System.Windows.Forms
while ($true) {
    try {
        $harfler = @('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        [System.Windows.Forms.SendKeys]::SendWait($harfler | Get-Random)
        Start-Sleep -Milliseconds 50
    } catch {}
}