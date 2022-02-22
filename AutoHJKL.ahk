#NoEnv
#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

SetStoreCapslockMode, Off

global press
global use
global name = "AutoHJKL"
global switcher_status := 0
global switcher_windows := []

if(!A_IsCompiled){
	Menu, Tray, Icon, icon.ico, 1, 1
}
Menu, Tray, Tip, %name%

#Include Config.ahk
#Include Functions.ahk

GroupAdd AltTabWindow, ahk_class MultitaskingViewFrame
GroupAdd AltTabWindow, ahk_class XamlExplorerHostIslandWindow
GroupAdd AltTabWindow, ahk_class Windows.UI.Core.CoreWindow ahk_exe explorer.exe
GroupAdd AltTabWindow, ahk_class TaskSwitcherWnd
GroupAdd AltTabWindow, ahk_class #32771

; Read saved clipboard data
Loop 10{
	name := A_WorkingDir . "\clipboard\" . A_Index . ".clip"
	if(FileExist(name)){
		FileRead, clipboard_data_%A_Index%, *c %name%
	}
}

; Read saved binded windows
Loop 10{
	name := A_WorkingDir . "\window\" . A_Index . ".window"
	if(FileExist(name)){
		winId := ""
		FileRead, winId, %name%
		if(WinExist("ahk_id " . winId)){
			switcher_windows[A_Index] := winId
		}else{
			FileDelete, %name%
		}
	}
}

ShowToolTip(msg){
	ToolTip, %msg%
	SetTimer, RemoveToolTip, -1000
}

RemoveToolTip:
	ToolTip
Return

call(name, ls := 0, lc := 0, la := 0) {
	name := "key_" . name
	if(GetKeyState("LShift")){
		name := name . "_ls"
	}
	if(GetKeyState("LCtrl")){
		name := name . "_lc"
	}
	if(GetKeyState("LAlt")){
		name := name . "_la"
	}
	fn := %name%
	fnName := "fun_" . fn
	%fnName%()
}

*CapsLock::
	capslockStat := GetKeyState("CapsLock" ,"T")
	press = 1
	use = 0
	KeyWait, CapsLock
	if(!use){
		SetCapsLockState, % capslockStat ? "Off" : "On"
	}
	press = 0
	use = 0
Return

#If press

; Common
a::
b::
c::
d::
e::
f::
g::
h::
i::
j::
k::
l::
m::
n::
o::
p::
q::
r::
s::
t::
u::
v::
w::
x::
y::
z::
1::
2::
3::
4::
5::
6::
7::
8::
9::
0::
	call(A_ThisHotkey)
	use = 1
Return
; Shift
<+a::
<+b::
<+c::
<+d::
<+e::
<+f::
<+g::
<+h::
<+i::
<+j::
<+k::
<+l::
<+m::
<+n::
<+o::
<+p::
<+q::
<+r::
<+s::
<+t::
<+u::
<+v::
<+w::
<+x::
<+y::
<+z::
<+1::
<+2::
<+3::
<+4::
<+5::
<+6::
<+7::
<+8::
<+9::
<+0::
	; Ctrl
<^a::
<^b::
<^c::
<^d::
<^e::
<^f::
<^g::
<^h::
<^i::
<^j::
<^k::
<^l::
<^m::
<^n::
<^o::
<^p::
<^q::
<^r::
<^s::
<^t::
<^u::
<^v::
<^w::
<^x::
<^y::
<^z::
<^1::
<^2::
<^3::
<^4::
<^5::
<^6::
<^7::
<^8::
<^9::
<^0::
	; Ctrl Shift
<^<+a::
<^<+b::
<^<+c::
<^<+d::
<^<+e::
<^<+f::
<^<+g::
<^<+h::
<^<+i::
<^<+j::
<^<+k::
<^<+l::
<^<+m::
<^<+n::
<^<+o::
<^<+p::
<^<+q::
<^<+r::
<^<+s::
<^<+t::
<^<+u::
<^<+v::
<^<+w::
<^<+x::
<^<+y::
<^<+z::
<^<+1::
<^<+2::
<^<+3::
<^<+4::
<^<+5::
<^<+6::
<^<+7::
<^<+8::
<^<+9::
<^<+0::
	; Alt
<!a::
<!b::
<!c::
<!d::
<!e::
<!f::
<!g::
<!h::
<!i::
<!j::
<!k::
<!l::
<!m::
<!n::
<!o::
<!p::
<!q::
<!r::
<!s::
<!t::
<!u::
<!v::
<!w::
<!x::
<!y::
<!z::
<!1::
<!2::
<!3::
<!4::
<!5::
<!6::
<!7::
<!8::
<!9::
<!0::
	; Alt Shift
<!<+a::
<!<+b::
<!<+c::
<!<+d::
<!<+e::
<!<+f::
<!<+g::
<!<+h::
<!<+i::
<!<+j::
<!<+k::
<!<+l::
<!<+m::
<!<+n::
<!<+o::
<!<+p::
<!<+q::
<!<+r::
<!<+s::
<!<+t::
<!<+u::
<!<+v::
<!<+w::
<!<+x::
<!<+y::
<!<+z::
<!<+1::
<!<+2::
<!<+3::
<!<+4::
<!<+5::
<!<+6::
<!<+7::
<!<+8::
<!<+9::
<!<+0::
	; Ctrl Alt
<^<!a::
<^<!b::
<^<!c::
<^<!d::
<^<!e::
<^<!f::
<^<!g::
<^<!h::
<^<!i::
<^<!j::
<^<!k::
<^<!l::
<^<!m::
<^<!n::
<^<!o::
<^<!p::
<^<!q::
<^<!r::
<^<!s::
<^<!t::
<^<!u::
<^<!v::
<^<!w::
<^<!x::
<^<!y::
<^<!z::
<^<!1::
<^<!2::
<^<!3::
<^<!4::
<^<!5::
<^<!6::
<^<!7::
<^<!8::
<^<!9::
<^<!0::
	; Ctrl Shift Alt
<^<+<!a::
<^<+<!b::
<^<+<!c::
<^<+<!d::
<^<+<!e::
<^<+<!f::
<^<+<!g::
<^<+<!h::
<^<+<!i::
<^<+<!j::
<^<+<!k::
<^<+<!l::
<^<+<!m::
<^<+<!n::
<^<+<!o::
<^<+<!p::
<^<+<!q::
<^<+<!r::
<^<+<!s::
<^<+<!t::
<^<+<!u::
<^<+<!v::
<^<+<!w::
<^<+<!x::
<^<+<!y::
<^<+<!z::
<^<+<!1::
<^<+<!2::
<^<+<!3::
<^<+<!4::
<^<+<!5::
<^<+<!6::
<^<+<!7::
<^<+<!8::
<^<+<!9::
<^<+<!0::
	key := RegExReplace(A_ThisHotkey, "[#$+^!<>]*", "")
	call(key)
	use = 1
Return

#If

; Clipboard feature

fun_clipboardCopy(){
	clipboard_copy := 1
	clipboard_waiting := 1
	SetTimer, ClearClipboardStatus, -3000
}

fun_clipboardPaste(){
	clipboard_copy := 0
	clipboard_waiting := 1
	SetTimer, ClearClipboardStatus, -3000
}

fun_clipboardCut(){
	clipboard_copy := 2
	clipboard_waiting := 1
	SetTimer, ClearClipboardStatus, -3000
}

ClearClipboardStatus:
	clipboard_waiting := 0
	clipboard_copy := 0
Return

clipboard_save(name){
	dir := A_WorkingDir . "\clipboard"
	; Use a name end with "\" will make FileExist cannot return correct result.
	attr := FileExist(dir)
	if(!attr){
		FileCreateDir, %dir%
	}else{
		if(!InStr(attr, "D")){
			FileDelete, %dir%
			FileCreateDir, %dir%
		}
	}
	name := dir . "\" . name . ".clip"
	FileAppend, %ClipboardAll%, %name%
}

global clipboard_waiting := 0
global clipboard_copy := 0
; clipboard data pseudo-array
global clipboard_data_1 = 
global clipboard_data_2 = 
global clipboard_data_3 = 
global clipboard_data_4 = 
global clipboard_data_5 = 
global clipboard_data_6 = 
global clipboard_data_7 = 
global clipboard_data_8 = 
global clipboard_data_9 = 
global clipboard_data_0 = 

#If clipboard_waiting

1::
2::
3::
4::
5::
6::
7::
8::
9::
0::
	if(clipboard_copy != 0){
		savedClipboardData := ClipboardAll
		Clipboard := ""
		if(clipboard_copy == 2){
			SendInput, ^{x}
		}else{
			SendInput, ^{c}
		}
		ClipWait
		clipboard_data_%A_ThisHotkey% := ClipboardAll
		clipboard_save(A_ThisHotkey)
		Clipboard := savedClipboardData
		ShowToolTip("Copied from clipboard " . A_ThisHotkey)
	}else{
		savedClipboardData := ClipboardAll
		Clipboard := clipboard_data_%A_ThisHotkey%
		SendInput, ^{v}
		Clipboard := savedClipboardData
		ShowToolTip("Pasted from clipboard " . A_ThisHotkey)
	}
	Goto, ClearClipboardStatus
Return

#If

; Window Switcher

fun_bindWindow(){
	switcher_status := 1
	SetTimer, ClearSwitcherStatus, -3000
}

fun_switchWindow(){
	switcher_status := 2
	SetTimer, ClearSwitcherStatus, -3000
}

ClearSwitcherStatus:
	switcher_status := 0
Return

windowSwitcher_save(name, winId){
	dir := A_WorkingDir . "\window"
	; Use a name end with "\" will make FileExist cannot return correct result.
	attr := FileExist(dir)
	if(!attr){
		FileCreateDir, %dir%
	}else{
		if(!InStr(attr, "D")){
			FileDelete, %dir%
			FileCreateDir, %dir%
		}
	}
	file := FileOpen(dir . "\" . name . ".window", "w")
	file.Write(winId)
	file.Close()
}

#If switcher_status

1::
2::
3::
4::
5::
6::
7::
8::
9::
0::
	if(switcher_status == 1){
		winId := WinExist("A")
		WinGetTitle, title, ahk_id %winId%
		switcher_windows[A_ThisHotkey] := winId
		windowSwitcher_save(A_ThisHotkey, winId)
		msg = Bind Window %title%(%winId%) to %A_ThisHotkey%
		ShowToolTip(msg)
		Goto, ClearSwitcherStatus
	}else{
		winId := switcher_windows[A_ThisHotkey]
		WinActivate, ahk_id %winId%
		if(!WinActive("ahk_id " . winId)){
			ShowToolTip("Winodw was closed.")
		}
	}
Return

#If

#IfWinExist ahk_group AltTabWindow

*W::
*K::
	SendInput, {AltDown}{Up}
Return
*A::
*H::
	SendInput, {AltDown}{Left}
Return
*S::
*J::
	SendInput, {AltDown}{Down}
Return
*D::
*L::
	SendInput, {AltDown}{Right}
Return
*C::
	SendInput, {AltDown}{Delete}
Return

#If

getDebugFlag(){
	; A_IsCompiled is empty string when not compiled so that cannot use boolean operator
	if(A_IsCompiled){
		Return 0
	}else{
		Return debug_mode
	}
}

#If getDebugFlag()
^+!x::
msg := ""
msg := msg . "Winodw Switcher:`n"
For key, index in switcher_windows{
	msg := msg . key . ": " . index . "`n"
}
msg := msg . "Clipboard:`n"
Loop 10{
	name := clipboard_data_%A_Index%
	msg := msg . A_Index . ":" . name . "`n"
}
MsgBox, %msg%
Return
#If

#Include PluginLoader.ahk
