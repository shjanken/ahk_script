;; alt + left mouse button
;; copy the text to web browser
^v::
  ;;MsgBox  %clipboard%
  SendInput, %clipboard%
  sleep, 1000
  Send, !{tab}
  sleep, 500
  Send, {down}
  ;;sleep, 1000
  Send, ^c
  ClipWait
  Send, !{tab}
;;WinActivate, ahk_class Chrome_WidgetWin_1
Return