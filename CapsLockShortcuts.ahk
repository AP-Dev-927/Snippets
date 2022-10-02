SetCapsLockState, AlwaysOff

;Text Navigation Shortcuts 
; if capslock is pressed
#IF GetKeyState("Capslock", "P")
  i::Up 
  j::Left
  k::Down
  l::Right
  u::Home
  o::End

  p::Delete
  d::
  q::

  ; takes cursor to end of line, adds ();
  ; useful to hide / show ribbon in office 



  ; SQL Shorthand
  +s::
  Send SELECT
  Send {Enter} 
  Send {Tab}
  return

  +f::
  Send FROM
  Send {Enter} 
  Send {Tab}
  return

  +h::
  Send HAVING
  Send {Enter} 
  Send {Tab}
  return


  +w::
  Send WHERE
  Send {Enter} 
  Send {Tab}
  return

  +l::
  Send {,}
  Send {Tab} 
  Send {Enter}
  return

  +g::
  Send {,}
  return


#if
;End Caps Shortcuts 

;Caps shortcut one OneNote
#IfWinActive ahk_exe ONENOTE.exe
; https://stackoverflow.com/questions/44170454/up-down-key-not-working-in-onenote-2016-for-autohotkey
CapsLock & i::ControlSend, OneNote::DocumentCanvas1, {Up}
CapsLock & k::ControlSend, OneNote::DocumentCanvas1, {Down}
#IfWinActive

0