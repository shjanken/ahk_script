#if GetKeyState("f", "P")
Alt & k::MouseMove, 0, -40, 0, R
Alt & j::MouseMove, 0, 40, 0, R
Alt & h::MouseMove, -40, 0, 0, R
Alt & l::MouseMove, 40, 0, 0, R
Alt & Enter::Send, {LButton}
return