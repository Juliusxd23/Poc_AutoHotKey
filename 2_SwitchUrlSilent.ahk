#Requires AutoHotkey v2.0
#UseHook
typedURL := ""  ; Initialize typedURL as global

; Intercept all keypresses and modify based on input
+;::InterceptKey(".")
a::InterceptKey("a")
b::InterceptKey("b")
c::InterceptKey("c")
d::InterceptKey("d")
e::InterceptKey("e")
f::InterceptKey("f")
g::InterceptKey("g")
h::InterceptKey("h")
i::InterceptKey("i")
j::InterceptKey("j")
k::InterceptKey("k")
l::InterceptKey("l")
m::InterceptKey("m")
n::InterceptKey("n")
o::InterceptKey("o")
p::InterceptKey("p")
q::InterceptKey("q")
r::InterceptKey("r")
s::InterceptKey("s")
t::InterceptKey("t")
u::InterceptKey("u")
v::InterceptKey("v")
w::InterceptKey("w")
x::InterceptKey("x")
y::InterceptKey("y")
z::InterceptKey("z")
Space::InterceptKey(" ")
~*Backspace::InterceptBackspace()

InterceptKey(key) {
    global typedURL
    typedURL .= key  ; Add the key to typedURL for tracking

    ; Modify the keys if the string "google." is typed
    if (InStr(typedURL, "google.")) {
        ; If "c" is typed, send "d" instead
        if (key = "c") {
            typedURL := SubStr(typedURL, 1, StrLen(typedURL) - 1)  ; Remove "c"
            Send("d")  ; Simulate "d"
            Return  ; Block original keypress
        }
        ; If "o" is typed, send "e" instead
        else if (key = "o") {
            typedURL := SubStr(typedURL, 1, StrLen(typedURL) - 1)  ; Remove "o"
            Send("e")  ; Simulate "e"
            Return  ; Block original keypress
        }
        ; If "m" is typed, simulate Enter
        else if (key = "m") {
            typedURL := SubStr(typedURL, 1, StrLen(typedURL) - 1)  ; Remove "m"
            Send("{Enter}")  ; Simulate Enter
            Return  ; Block original keypress
        }
    }
    ; Allow other normal keys to be sent
    Send(key)
    Sleep(50)
}

InterceptBackspace() {
    global typedURL
    ; If we press Backspace, we remove the last character from typedURL
    typedURL := SubStr(typedURL, 1, StrLen(typedURL) - 1)  
    ; Don't send Backspace key (block it from propagating)
    Return
}

; Exit the script gracefully (Ctrl+Shift+E)
^+e::ExitApp