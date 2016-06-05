;; test script
;MsgBox, %A_AHKVersion%

;; alt + left mouse button
;; copy the text to web browser
!c::
Send, ^c
;;Send, !{tab}
WinActivate, ahk_class Chrome_WidgetWin_1
sleep, 500
Send, ^v{tab}
Return