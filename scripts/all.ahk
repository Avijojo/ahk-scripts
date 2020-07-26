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

; ===
; Go to desktop and lock PC
; ===
; Go to desktop and lock PC with CTRL + PAUSE
^Pause::
  send, #d
  DllCall("user32.dll\LockWorkStation")
  Return

; ===
; "Lockdown" - Locks Telegram, closes Discord, goes to desktop, locks PC.
; ===
^+Pause::
  WinActivate, Telegram.exe
  send, ^l
  WinClose, Discord.exe
  sleep, 100
  send, #d
  DllCall("user32.dll\LockWorkStation")
  Return

; ===
; Suspend script on WIN + P (toggle)
; ===
#p::Suspend
Return

; ===
; Window always on top with CTRL + SPACE
; ===
^Space::Winset, AlwaysOnTop, , A
Return

; ===
; This script bypasses websites that prevent you from pasting text
; ===

^+V::
; Open dialog box to ask for text
InputBox, pastetext, What text would you like to paste?, Type the text you want to paste below:
MsgBox, , Ready to paste?, Press OK then select the text field you want to paste the text in.
; Actually paste the text
sleep, 500
send, %pastetext%
