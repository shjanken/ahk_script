; !=atl #=win ^=ctl +=shift 

;; express for run software 
!n::run notepad 
;;; !s::run xshell
;;; !f::run firefox
;;; !c::run, C:\Program Files\cmder\Cmder.exe
;;; !a::run Atom

^!p::
run, C:\Users\janke\AppData\Local\TogglDesktop\TogglDesktop.exe
return

;; if emacs window exists
;; active emacs
;; else run emacs
^!e::
IfWinExist, emacs@shjanken-worker
{
    WinActivate
}
Else
{
    Run emacs
    WinWait, emacs@shjanken-worker
    WinActivate
}
return

;;; start or show todoist
;;; and send q keystork to the app
!^t::
Run, d:\app\todoist
WinWait Todoist: To-Do List and Task Manager
WinActivate
sleep 1000
send q
return


;; 绑定快捷键
!q::Send, !{F4}

~LButton & RButton::AltTab ;; 鼠标左右键快速 alt+tab
;;MButton::Send, !{F4} ;; 鼠标中键关闭窗口
;;MButton::
;;{
;;  Send, {~LButton}
;;  sleep, 500
;;  Send, !{F4}
;;} ;; 鼠标中键关闭窗口，在此之前先左键选中窗口

;; vim 方向键绑定
!k::Send, {up}
!j::Send, {down}
!h::Send, {left}
!l::Send, {right}

;; 绑定 backspace
!f::Send, {backspace}

;将 caps 键换成 ctl 键
Capslock::Ctrl

;; 将窗口保持在最前
!t:: Winset, Alwaysontop, , A ;; shotcutLButton 
:*::janh::janken.wang@hotmail.com
:*::jang::janken.wang@gmail.com
:::mag::magnet:?xt=urn:btih:

::/s203::ssh root@10.0.0.203 ;;root用户登录203
::/s203o::ssh oracle@10.0.0.203 ;;oracle 用户登录203
::/s206::ssh root@10.0.0.206
::/s206o::ssh oracle@10.0.0.206
::/s207o::ssh oracle@10.0.0.207
::/s207::ssh root@10.0.0.207

::/s56::ssh root@192.168.56.
::/s56o::ssh oracle@192.168.56.

;; sql 的自动补完
::select sfqr::select * from sfqr where hpzl='02' and hphm='
::select cyd::select yw,djyw,pzyw,yxsj,newjg,cyh,dhyw from cyd where hpzl='02' and hphm='

;; execute fsl.py
::py fsl::python c:\Users\janke\workspace\fsl-client\python\fsl.py --url http://10.0.0.102:3010 --action=changeyw -c
return

#Include keypirinha.ahk
#Include mouse.ahk
return