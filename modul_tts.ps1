Add-Type -AssemblyName System.Speech
try {
    $speech = New-Object System.Speech.Synthesis.SpeechSynthesizer
    $speech.SelectVoice("Microsoft Zira Desktop")  # Türkçe ses varsa
    $speech.Speak("Uyarı! Sistem çöküyor. Veri kaybı yaşanıyor.")
} catch {
    # İngilizce yedek
    try {
        $speech = New-Object System.Speech.Synthesis.SpeechSynthesizer
        $speech.Speak("Warning! System failure detected.")
    } catch {}
}