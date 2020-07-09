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
;   - go to the desktop and lock your PC (ALT + PAUSE).
;   - go to the desktop, lock Telegram, close Discord, and lock your PC (ALT + SHIFT + PAUSE).
; ===
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Go to desktop and lock PC with ALT + PAUSE
!Pause::
  send, #d
  DllCall("user32.dll\LockWorkStation")
  Return

; Lock Telegram, close Discord, and go to desktop with ALT + SHIFT + PAUSE
; TODO: Make the names of applications more specific to prevent AHK from accidentally opening the wrong programme.
!+Pause::
  WinActivate, Telegram
  send, ^l
  WinClose, Discord
  send, #d
  DllCall("user32.dll\LockWorkStation")
  Return
