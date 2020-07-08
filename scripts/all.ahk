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
^#A::WinActivate, Telegram

; Open Discord with CTRL + WIN + X
^#X::WinActivate, Discord

; Open osu! with F6
F6::Run C:\Users\Avery\Documents\Games\osu!\osu!.exe

; Open Atom (text editor) with F7 (with window maxamised)
F7::Run C:\Users\Avery\AppData\Local\atom\atom.exe, , Max

; Open Minecraft with F8
F8::Run C:\Program Files (x86)\Minecraft Launcher\MinecraftLauncher.exe

; ===
; Go to desktop and lock PC
; ===
; Go to desktop and lock PC with ALT + PAUSE
!Pause::
  send, #d
  DllCall("user32.dll\LockWorkStation")

; ===
; "Lockdown" - Locks Telegram, closes Discord, goes to desktop, locks PC.
; ===
; TODO: Make the names of applications more specific to prevent AHK from accidentally opening the wrong programme.
!+Pause::
  WinActivate, Telegram
  send, ^l
  WinClose, Discord
  sleep, 100
  send, #d
  DllCall("user32.dll\LockWorkStation")

; ===
; Suspend script on WIN + P (toggle)
; ===
#p::Suspend

; ===
; Window always on top with CTRL + SPACE
; ===
^Space::Winset, AlwaysOnTop, , A
