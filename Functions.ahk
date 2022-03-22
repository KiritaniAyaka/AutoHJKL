; Simple functions

fun_ERROR(){
	Return 1
}

fun_moveLeft(){
	SendInput, {Left}
}

fun_moveDown(){
	SendInput, {Down}
}

fun_moveUp(){
	SendInput, {Up}
}

fun_moveRight(){
	SendInput, {Right}
}

fun_selectLeft(){
	SendInput, +{Left}
}

fun_selectRight(){
	SendInput, +{Right}
}

fun_selectUp(){
	SendInput, +{Up}
}

fun_selectDown(){
	SendInput, +{Down}
}

fun_pgUp(){
	SendInput, {PgUp}
}

fun_pgDn(){
	SendInput, {PgDn}
}

fun_home(){
	SendInput, {Home}
}

fun_end(){
	SendInput, {End}
}

fun_selectPgUp(){
	SendInput, +{PgUp}
}

fun_selectPgDn(){
	SendInput, +{PgDn}
}

fun_selectHome(){
	SendInput, +{Home}
}

fun_selectEnd(){
	SendInput, +{End}
}

fun_moveAWordLeft(){
	SendInput, ^{Left}
}

fun_moveAWordRight(){
	SendInput, ^{Right}
}

fun_ctrlMoveDown(){
	SendInput, ^{Down}
}

fun_ctrlMoveUp(){
	SendInput, ^{Up}
}

fun_selectAWordLeft(){
	SendInput, +^{Left}
}

fun_selectAWordRight(){
	SendInput, +^{Right}
}

fun_ctrlShiftDown(){
	SendInput, +^{Down}
}

fun_ctrlShiftUp(){
	SendInput, +^{Up}
}

fun_backspace(){
	SendInput, {BS}
}

fun_backAWord(){
	SendInput, ^{BS}
}

fun_backALine(){
	SendInput, +{Home}{BS}
}

fun_enter(){
	SendInput, {Enter}
}

fun_shiftEnter(){
	SendInput, +{Enter}
}

fun_ctrlEnter(){
	SendInput, ^{Enter}
}

global mouseUpTimes := 0
fun_mouseUp(){
	MouseMove, 0, -mouseMove_calcSensitivify(mouseUpTimes), 100, R
	mouseUpTimes++
	SetTimer, resetMouseUpTimes, -50
	Return
	resetMouseUpTimes:
		mouseUpTimes := 0
	Return
}

global mouseLeftTimes := 0
fun_mouseLeft(){
	MouseMove, -mouseMove_calcSensitivify(mouseLeftTimes), 0, 100, R
	mouseLeftTimes++
	SetTimer, resetMouseLeftTimes, -50
	Return
	resetMouseLeftTimes:
		mouseLeftTimes := 0
	Return
}

global mouseRightTimes := 0
fun_mouseRight(){
	MouseMove, mouseMove_calcSensitivify(mouseRightTimes), 0, 100, R
	mouseRightTimes++
	SetTimer, resetMouseRightTimes, -50
	Return
	resetMouseRightTimes:
		mouseRightTimes := 0
	Return
}

global mouseDownTimes := 0
fun_mouseDown(){
	MouseMove, 0, mouseMove_calcSensitivify(mouseDownTimes), 100, R
	mouseDownTimes++
	SetTimer, resetMouseDownTimes, -50
	Return
	resetMouseDownTimes:
		mouseDownTimes := 0
	Return
}

mouseMove_calcSensitivify(sensitivity){
	Return 0.1 * sensitivity * sensitivity + 3
}

fun_mouseLeftClick(){
	MouseClick, L
}

fun_mouseRightClick(){
	MouseClick, R
}

fun_mouseMiddleUp(){
	Click WU
}

fun_mouseMiddleDown(){
	Click WD
}

; WheelLeft (or WL) or WheelRight (or WR) may also be specified (but they have no effect on older operating systems older than Windows Vista).
; https://www.autohotkey.com/docs/commands/Click.htm#Parameters
fun_mouseMiddleLeft(){
	Click WL
}

fun_mouseMiddleRight(){
	Click WR
}

fun_renameFile(){
	WinGetClass, activeClass, A
	WinGet, path, ProcessPath, A
	if(isIntelliJWindow(activeClass, path)){
		SendInput, +{F6}
	}else{
		SendInput, {F2}
	}
}

isIntelliJWindow(class, path){
	if(class != "SunAwtFrame") {
		Return 0
	}
	pos := InStr(path, "\", false, 0)
	path := SubStr(path, 1, pos) . "idea.properties"
	Return (FileExist(path) != "")
}

fun_newFolder(){
	SendInput, ^+{N}
}

fun_reloadscript(){
	Reload
}

fun_setWindowOnTop(){
	WinSet, AlwaysOnTop, Toggle, A
	ToolTip, AlwaysTop status switched.
	SetTimer, RemoveToolTip, -800
}

fun_runWindowsTerminal(){
	path := getPathByActiveExplorer()
	cmd := "wt"
	Process, Exist, WindowsTerminal.exe
	if(ErrorLevel){
		cmd := cmd . " -w 0 nt"
	}
	if(path){
		cmd := cmd . " -d """ . path . """"
	}
	Run, %cmd%
}

fun_runCmd(){
	path := getPathByActiveExplorer()
	if(path){
		dl := SubStr(path, 1, 2)
		cmd := "cmd /k cd " . path . " && " . dl
		Run, %cmd%
	}else{
		Run, "cmd"
	}
}

fun_runPowershell(){
	path := getPathByActiveExplorer()
	if(path){
		cmd := "powershell -NoExit cd """ . path . """"
		Run, %cmd%
	}else{
		Run, "powershell"
	}
}

; Try to find a path from window text.
getPathByActiveExplorer(){
	match := ""
	WinGetText, t, A
	RegExMatch(t, "Oi)[A-Za-z]:\\.*", match)
	; For robustness, use "/" instead of "\" cause "\" is an escape char
	result := StrReplace(match[0], "\", "/")
	return result
}

global hidden_windows := []

fun_hideWindow(){
  WinGet, hwnd, ID, A
  hidden_windows.Push(hwnd)
  WinHide, ahk_id %hwnd%
  ShowToolTip("Window is hidden")
}

fun_showWindow(){
  For index, hwnd in hidden_windows{
    WinShow, ahk_id %hwnd%
    WinActivate, ahk_id %hwnd%
  }
  ShowToolTip("All hidden windows is show")
	hidden_windows := []
}
