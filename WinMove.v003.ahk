
SoundBeep  ; Play the default pitch and duration.


#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.


SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#z::
WinGetPos, X, Y, W, H, A  ; "A" to get the active window's pos.


; INPUTBOX, VARIABLE NAME, TITLE TEXT, LABEL TEXT, OPT WIDTH, OPT HEIGHT
InputBox, X, ENTER X, [X: %X%]  -  [Y: %Y%]  -  [W: %W%]  -  [H: %H%]
InputBox, Y, ENTER Y, [X: %X%]  -  [Y: %Y%]  -  [W: %W%]  -  [H: %H%]
InputBox, W, ENTER WIDTH, [X: %X%]  -  [Y: %Y%]  -  [W: %W%]  -  [H: %H%]
InputBox, H, ENTER HEIGHT, [X: %X%]  -  [Y: %Y%]  -  [W: %W%]  -  [H: %H%]

WinGetActiveTitle, TITLE
WinActivate, %TITLE%
WinRestore, %TITLE%	   
WinMove, %TITLE%, , X, Y, W, H

return
