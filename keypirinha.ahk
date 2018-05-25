+Space:: ; shift + space
if winc_presses > 0
{
    winc_presses += 1
    Return
}

winc_presses = 1
SetTimer, KeyWinC, -400 ; wait key in 400ms
Return

KeyWinC:
if winc_presses = 1 
{
    ; if just one keypress, send shift + space to launch keyprinha
    Send, +{Space} 
}
else if winc_presses = 2 
{
    ; if that has two keypress
    ; send shift + space to launch keyprinha
    ; and send "switch" input and Tab to launch 'switch to' in keyprinha
    Send, +{Space}
    Sleep, 500
    Send, Switch{Tab}
}

winc_presses = 0
Return