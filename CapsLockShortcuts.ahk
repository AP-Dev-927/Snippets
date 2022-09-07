SetCapsLockState, AlwaysOff

; if capslock is pressed
#IF GetKeyState("Capslock", "P")
  i::Up
  j::Left
  k::Down
  l::Right
  u::Home
  o::End
  p::Delete
  d::Backspace
  q::Delete

  z:: Send,^{F1} 


  ;takes cursor to end of line, adds ();
  f::
  Send,{End}
  Send,();
  return



  ; SQL Shorthand
  +s::
  Send Select
  return

  +w::
  Send Where
  return	

  +f::
  Send From



#if
;End Caps Shortcuts 

;Caps shortcut one OneNote
#IfWinActive ahk_exe ONENOTE.exe
; https://stackoverflow.com/questions/44170454/up-down-key-not-working-in-onenote-2016-for-autohotkey
CapsLock & i::ControlSend, OneNote::DocumentCanvas1, {Up}
CapsLock & k::ControlSend, OneNote::DocumentCanvas1, {Down}
#IfWinActive

