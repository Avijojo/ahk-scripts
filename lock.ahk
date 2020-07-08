#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Go to desktop and lock PC with ALT + PAUSE
!Pause::
  send, #d
  DllCall("user32.dll\LockWorkStation")

; Lock Telegram, close Discord, and go to desktop with ALT + SHIFT + PAUSE
!+Pause::
  WinActivate, Telegram
  send, ^l
  WinClose, Discord
  send, #d
  DllCall("user32.dll\LockWorkStation")
