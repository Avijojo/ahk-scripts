; ===
; This script combines all of the other scrips together into one script for easier use.
; ===
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ===
; Shortcut to apps
; ===
; Open Telegram with CTRL + WIN + A
^#A::
WinActivate, Telegram

; Open Discord with CTRL + WIN + X
^#X::
WinActivate, Discord

; ===
; Lock (things quickly)
; ===
; Go to desktop and lock PC with ALT + PAUSE
!Pause::
  send, #d
  DllCall("user32.dll\LockWorkStation")

; Lock Telegram, close Discord, and go to desktop with ALT + SHIFT + PAUSE
; TODO: Make the names of applications more specific to prevent AHK from accidentally opening the wrong programme.
!+Pause::
  WinActivate, Telegram
  send, ^l
  WinClose, Discord
  send, #d
  DllCall("user32.dll\LockWorkStation")

; Suspend AutoHotKey with WIN + ScrollLock
#ScrollLock::Suspend
