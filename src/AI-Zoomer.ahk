#NoEnv
#SingleInstance force
Menu, Tray, Icon, ..\data\ai-zoom.ico
SetWorkingDir %A_ScriptDir%

try
{

    #IfWinActive ahk_exe Illustrator.exe
        {
            Wheelup::
                send {alt down}{Wheelup}
                sleep 100
                send {alt up}
            return

            Wheeldown::
                send {alt down}{Wheeldown}
                sleep 100
                send {alt up}
            return[/section]

            ; При нажатии средней кнопки мыши, переключение на инструмент «Рука»

            MButton::
                Send, {Space down}{LButton down}
                KeyWait, MButton
                Send, {LButton up}{Space up}
            Return
        }
    }
    catch
    {
        Reload
    }