﻿; !=atl #=win ^=ctl +=shift 
;; express for run software 
!n::run notepad 
;;; !s::run xshell
;;; !f::run firefox
;;; !c::run, C:\Program Files\cmder\Cmder.exe
;; !a::run Atom

;; 绑定快捷键
!q::Send, !{F4}

;; 鼠标左右键快速 alt+tab
~LButton & RButton::AltTab

;; vim 方向键绑定
;;; !k::Send, {up}
;;; !h::Send, {left}
;;; !l::Send, {right}

;; 绑定 backspace
!f::Send, {backspace}

;将 caps 键换成 ctl 键
Capslock::Ctrl

;; 将窗口保持在最前
!t:: Winset, Alwaysontop, , A

;; shotcut
:::janh::janken.wang@hotmail.com
:::jang::janken.wang@gmail.com
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
:::ssfqr::select * from sfqr where hpzl='02' and hphm='
:::scyd::select yw,djyw,pzyw,yxsj,newjg,cyh,dhyw from cyd where hpzl='02' and hphm='

;; execute fsl.py
::py fsl::python c:\Users\janke\workspace\fsl-client\python\fsl.py --url http://10.0.0.102:3010 --action=changeyw -c
