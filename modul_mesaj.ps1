while ($true) {
    $mesajlar = @(
        'KERNEL PANIC',
        'SYSTEM CRASH',
        'FATAL ERROR',
        'MEMORY DUMP',
        'IRQ NOT LESS OR EQUAL',
        'PAGE FAULT IN NONPAGED AREA',
        'BAD SYSTEM CONFIG INFO',
        'CRITICAL PROCESS DIED'
    )
    try {
        Write-Host $mesajlar | Get-Random -ForegroundColor Red
    } catch {}
    Start-Sleep -Seconds 3
}