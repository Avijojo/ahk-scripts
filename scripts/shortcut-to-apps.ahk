; AHK Scripts
; Copyright (C) 2020  Avery
;
; This program is free software: you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published by
; the Free Software Foundation, either version 3 of the License, or
; (at your option) any later version.
;
; This program is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
; GNU General Public License for more details.
;
; You should have received a copy of the GNU General Public License
; along with this program.  If not, see <https://www.gnu.org/licenses/>.
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
Return

; Open Discord with CTRL + WIN + X
^#X::WinActivate, Discord
Return

; Open osu! with F6
F6::Run C:\Users\Avery\Documents\Games\osu!\osu!.exe
Return

; Open Atom (text editor) when pressing F7, open Sublime Text when holding F7.
; Thanks to "None" on AHK forums (https://autohotkey.com/board/topic/51156-different-actions-for-key-when-holding-it-down/)
$F7::
aDown:=A_TickCount
Keywait F7
Duration:=(A_TickCount-aDown)
If (Duration<500)
Run C:\Users\Avery\AppData\Local\atom\atom.exe, , Max
Else
Run C:\Program Files\Sublime Text 3\sublime_text.exe, , Max
Return

; Open Minecraft with F8
F8::Run C:\Program Files (x86)\Minecraft Launcher\MinecraftLauncher.exe
Return
