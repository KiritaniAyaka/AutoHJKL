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
	SendInput, {F2}
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
