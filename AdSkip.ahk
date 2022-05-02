If (A_ScreenDPI > 0){
    correction := 100
    If (A_ScreenDPI > 110){
        correction := 125
        If (A_ScreenDPI > 135){
            correction := 150
            If (A_ScreenDPI > 160){
                correction := 175
                If (A_ScreenDPI > 185){
                    correction := 200
                }
            }
        }
    }
}
scale := ((correction)/100)
x := 1810/scale
y := 810/scale

;OutputDebug, %A_ScreenDPI%, %correction%, %scale%, %x%, %y%

<+Esc::    
    IfWinExist, ahk_exe CCleanerBrowser.exe
    {
        WinActivate, ahk_exe CCleanerBrowser.exe
        Click, %x%, %y%
    }
Return