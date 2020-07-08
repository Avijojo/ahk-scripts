; ===
; This script can
;   - open a specific app with a keybind.
; ===
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Open Telegram with CTRL + WIN + A
^#A::
WinActivate, Telegram

; Open Discord with CTRL + WIN + X
^#X::
WinActivate, Discord
