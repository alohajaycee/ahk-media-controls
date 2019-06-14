capslock::
    KeyWait, capslock, T0.6
    If ErrorLevel
    {           
        SetCapsLockState % !GetKeyState("CapsLock", "T")
    }

    else
    {
        count++
        settimer, actions, 400
    }

    KeyWait, capslock
return

actions:
 {
   if (count = 1)
    {
      Send {Media_Play_Pause}
    }
   else if (count = 2)
    {
      Send {Media_Next}
    }
   else if (count = 3)
    {
      Send {Media_Prev}
    }
   count := 0
 }

return

