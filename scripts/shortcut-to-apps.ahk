; ===
; This script can
;   - open a specific app with a keybind.
; ===
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Open Telegram with CTRL + WIN + A
^#A::WinActivate, Telegram

; Open Discord with CTRL + WIN + X
^#X::WinActivate, Discord

; Open osu! with F6
F6::Run C:\Users\Avery\Documents\Games\osu!\osu!.exe ; Welcome to osu!

; Open Atom (text editor) with F7 (with window maxamised)
F7::Run C:\Users\Avery\AppData\Local\atom\atom.exe, , Max

; Open Minecraft with F8
F8::Run C:\Program Files (x86)\Minecraft Launcher\MinecraftLauncher.exe
