scriptDir := A_ScriptDir
ConfigFile := scriptDir "\..\config\config.ini"
mouse:= scriptDir "\..\config\mouse.ini"
IniRead, key_M4A4, %ConfigFile%, KeyBinds, M4A4
IniRead, key_M4A1, %ConfigFile%, KeyBinds, M4A1
IniRead, key_Famas, %ConfigFile%, KeyBinds, Famas
IniRead, key_AUG, %ConfigFile%, KeyBinds, AUG
IniRead, key_AK, %ConfigFile%, KeyBinds, AK
IniRead, key_Galil, %ConfigFile%, KeyBinds, Galil
IniRead, key_SG, %ConfigFile%, KeyBinds, SG
IniRead, key_UMP, %ConfigFile%, KeyBinds, UMP
IniRead, key_off, %ConfigFile%, KeyBinds, off
IniRead, key_exit, %ConfigFile%, KeyBinds, exit
IniRead, key_shoot, %mouse%, KeyBinds, shoot
IniRead, key_zoom, %ConfigFile%, KeyBinds, zoom
IniRead, sens, %ConfigFile%, Settings, sens
IniRead, zoomsens, %ConfigFile%, Settings, zoomsens
IniRead, PauseKey, %mouse%, Controls, PauseKey
smoothness := 0.7
modifier:= 2.52/sens
if (PauseKey = "")
{
    PauseKey := "F12"
}

loop
{
    sleep 1

    if GetKeyState(PauseKey, "P")
    {
        Paused := !Paused
        Sleep 200
    }

    if (!Paused)
    {

        if GetKeyState(key_AK)
        {
            ak:=true
            m4a1:=false
            m4a4:=false
            famas:=false
            galil:=false
            ump:=false
            aug:=false
            sg:=false
        }

        if GetKeyState(key_M4A1)
        {
            m4a1:=true
            ak:=false
            m4a4:=false
            famas:=false
            galil:=false
            ump:=false
            aug:=false
            sg:=false
        }

        if GetKeyState(key_M4A4)
        {
            m4a4:=true
            ak:=false
            m4a1:=false
            famas:=false
            galil:=false
            ump:=false
            aug:=false
            sg:=false
        }

        if GetKeyState(key_Famas)
        {
            famas:=true
            ak:=false
            m4a1:=false
            m4a4:=false
            galil:=false
            ump:=false
            aug:=false
            sg:=false
        }

        if GetKeyState(key_Galil)
        {
            galil:=true
            ak:=false
            m4a1:=false
            m4a4:=false
            famas:=false
            ump:=false
            aug:=false
            sg:=false
        }

        if GetKeyState(key_exit)
        {
            sleep 2000
            ExitApp
        }

        if GetKeyState(key_off)
        {
            ak:=false
            m4a1:=false
            m4a4:=false
            famas:=false
            galil:=false
            ump:=false
            aug:=false
            sg:=false
        }

        if GetKeyState(key_UMP)
        {
            ump:=true
            ak:=false
            m4a1:=false
            m4a4:=false
            famas:=false
            galil:=false
            aug:=false
            sg:=false
        }

        if GetKeyState(key_SG)
        {
            sg:=true
            ump:=false
            ak:=false
            m4a1:=false
            m4a4:=false
            famas:=false
            galil:=false
            aug:=false
        }

        if GetKeyState(key_AUG)
        {
            aug:=true
            ump:=false
            ak:=false
            m4a1:=false
            m4a4:=false
            famas:=false
            galil:=false
            sg:=false
        }
    

        if GetKeyState(key_shoot)
        {

            ;--------------------------------AK-47--------------------------------

            if ak {
                loop {
                    DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
                    Sleep 50
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }

                    DllCall("mouse_event", "UInt", 0x01, "UInt", -4 * modifier, "UInt",7 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 4 * modifier, "UInt", 19 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -3 * modifier, "UInt",29 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -1 * modifier, "UInt",31 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 13 * modifier, "UInt",31 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 8 * modifier, "UInt",28 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 13 * modifier, "UInt",21 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -17 * modifier, "UInt",12 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -42 * modifier, "UInt",-3 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -21 * modifier, "UInt",2 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 12 * modifier, "UInt",11 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -15 * modifier, "UInt",7 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -26 * modifier, "UInt",-8 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -3 * modifier, "UInt",4 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 40 * modifier, "UInt",1 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 19 * modifier, "UInt",7 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 14 * modifier, "UInt",10 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 27 * modifier, "UInt",0 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 33 * modifier, "UInt",-10 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -21 * modifier, "UInt",-2 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 7 * modifier, "UInt",3 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -7 * modifier, "UInt",9 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -8 * modifier, "UInt",4 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 19 * modifier, "UInt",-3 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 5 * modifier, "UInt",6 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -20 * modifier, "UInt",-1 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -33 * modifier, "UInt",-4 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -45 * modifier, "UInt",-21 * modifier )
                    Sleep 99
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -14 * modifier, "UInt",1 * modifier )
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    Sleep 80
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    Sleep 1000
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                }
            }
            ;--------------------------------M4A1-S--------------------------------

            else if m4a1 {
                loop {
                    DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
                    sleep 15
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }

                    DllCall("mouse_event", "UInt", 0x01, "UInt", 1 * modifier, "UInt",6 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 0 * modifier, "UInt",4 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -4 * modifier, "UInt",14 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 4 * modifier, "UInt",18 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -6 * modifier, "UInt",21 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -4 * modifier, "UInt",24 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 14 * modifier, "UInt",14 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 8 * modifier, "UInt",12 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 18 * modifier, "UInt",5 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -4 * modifier, "UInt",10 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -14 * modifier, "UInt",5 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -25 * modifier, "UInt",-3 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -19 * modifier, "UInt",0 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -22 * modifier, "UInt",-3 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 1 * modifier, "UInt",3 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 8 * modifier, "UInt",3 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -9 * modifier, "UInt",1 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -13 * modifier, "UInt",-2 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 3 * modifier, "UInt",2 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 1 * modifier, "UInt",1 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    sleep 1000
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                }
            }

            ;--------------------------------M4A4--------------------------------

            else if m4a4 {
                loop {
                    DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
                    sleep 15
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }

                    DllCall("mouse_event", "UInt", 0x01, "UInt", 2 * modifier, "UInt",7 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 0 * modifier, "UInt",9 * modifier )
                    sleep 87
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -6 * modifier, "UInt",16 * modifier )
                    sleep 87
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 7 * modifier, "UInt",21 * modifier )
                    sleep 87
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -9 * modifier, "UInt",23 * modifier )
                    sleep 87
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -5 * modifier, "UInt",27 * modifier )
                    sleep 87
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 16 * modifier, "UInt",15 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 11 * modifier, "UInt",13 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 22 * modifier, "UInt",5 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -4 * modifier, "UInt",11 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -18 * modifier, "UInt",6 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -30 * modifier, "UInt",-4 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -24 * modifier, "UInt",0 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -25 * modifier, "UInt",-6 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 0 * modifier, "UInt",4 * modifier )
                    sleep 87
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 8 * modifier, "UInt",4 * modifier )
                    sleep 87
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -11 * modifier, "UInt",1 * modifier )
                    sleep 87
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -13 * modifier, "UInt",-2 * modifier )
                    sleep 87
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 2 * modifier, "UInt",2 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 33 * modifier, "UInt",-1 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 10 * modifier, "UInt",6 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 27 * modifier, "UInt",3 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 10 * modifier, "UInt",2 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 11 * modifier, "UInt",0 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -12 * modifier, "UInt",0 * modifier )
                    sleep 87
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 6 * modifier, "UInt",5 * modifier )
                    sleep 87
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 4 * modifier, "UInt",5 * modifier )
                    sleep 87
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 3 * modifier, "UInt",1 * modifier )
                    sleep 87
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 4 * modifier, "UInt",-1 * modifier )
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    sleep 1000
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                }
            }

            ;--------------------------------Famas--------------------------------

            else if famas {
                loop {
                    DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
                    sleep 30
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }

                    DllCall("mouse_event", "UInt", 0x01, "UInt", -4 * modifier, "UInt",5 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 1 * modifier, "UInt",4 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -6 * modifier, "UInt",10 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -1 * modifier, "UInt",17 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 0 * modifier, "UInt",20 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 14 * modifier, "UInt",18 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 16 * modifier, "UInt",12 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -6 * modifier, "UInt",12 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -20 * modifier, "UInt",8 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -16 * modifier, "UInt",5 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -13 * modifier, "UInt",2 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 4 * modifier, "UInt",5 * modifier )
                    sleep 87
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 23 * modifier, "UInt",4 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 12 * modifier, "UInt",6 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 20 * modifier, "UInt",-3 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 5 * modifier, "UInt",0 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 15 * modifier, "UInt",0 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 3 * modifier, "UInt",5 * modifier )
                    sleep 80
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -4 * modifier, "UInt",3 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -25 * modifier, "UInt",-1 * modifier )
                    sleep 80
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -3 * modifier, "UInt",2 * modifier )
                    sleep 84
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 11 * modifier, "UInt",0 * modifier )
                    sleep 80
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 15 * modifier, "UInt",-7 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 15 * modifier, "UInt",-10 * modifier )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    sleep 1000
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                }
            }

            ;--------------------------------Galil--------------------------------

            else if galil {
                loop {
                    DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
                    sleep 10
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }

                    DllCall("mouse_event", "UInt", 0x01, "UInt", 4 * modifier, "UInt",4 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -2 * modifier, "UInt",5 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 6 * modifier, "UInt",10 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 12 * modifier, "UInt",15 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -1 * modifier, "UInt",21 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 2 * modifier, "UInt",24 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 6 * modifier, "UInt",16 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 11 * modifier, "UInt",10 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -4 * modifier, "UInt",14 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -22 * modifier, "UInt",8 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -30 * modifier, "UInt",-3 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -29 * modifier, "UInt",-13 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -9 * modifier, "UInt",8 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -12 * modifier, "UInt",2 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -7 * modifier, "UInt",1 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 0 * modifier, "UInt",1 * modifier )
                    sleep 50
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 4 * modifier, "UInt",7 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 25 * modifier, "UInt",7 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 14 * modifier, "UInt",4 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 25 * modifier, "UInt",-3 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 31 * modifier, "UInt",-9 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 6 * modifier, "UInt",3 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -12 * modifier, "UInt",3 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 13 * modifier, "UInt",-1 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 10 * modifier, "UInt",-1 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 16 * modifier, "UInt",-4 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -9 * modifier, "UInt",5 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -32 * modifier, "UInt",-5 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -24 * modifier, "UInt",-3 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -15 * modifier, "UInt",5 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 6 * modifier, "UInt",8 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -14 * modifier, "UInt",-3 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -24 * modifier, "UInt",-14 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -13 * modifier, "UInt",-1 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    sleep 1000
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                }
            }
        

            ;--------------------------------UMP-45--------------------------------

            else if ump {
                loop {
                    DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
                    sleep 15
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }

                    DllCall("mouse_event", "UInt", 0x01, "UInt", -1 * modifier, "UInt",6 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -4 * modifier, "UInt",8 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -2 * modifier, "UInt",18 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -4 * modifier, "UInt",23 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -9 * modifier, "UInt",23 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -3 * modifier, "UInt",26 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 11 * modifier, "UInt",17 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -4 * modifier, "UInt",12 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 9 * modifier, "UInt",13 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 18 * modifier, "UInt",8 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 15 * modifier, "UInt",5 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -1 * modifier, "UInt",3 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 5 * modifier, "UInt",6 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 0 * modifier, "UInt",6 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 9 * modifier, "UInt",-3 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 5 * modifier, "UInt",-1 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -12 * modifier, "UInt",4 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -19 * modifier, "UInt",1 * modifier )
                    sleep 85
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -1 * modifier, "UInt",-2 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 15 * modifier, "UInt",-5 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 17 * modifier, "UInt",-2 * modifier )
                    sleep 85
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -6 * modifier, "UInt",3 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -20 * modifier, "UInt",-2 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -3 * modifier, "UInt",-1 * modifier )
                    sleep 90
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    sleep 1000
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                }
            }


            ;--------------------------------AUG--------------------------------

            else if aug {
                if GetKeyState(key_zoom) {
                    zom := 1.2 / zoomsens
                } else {
                    zom := 1
                }
                loop {
                    DllCall("mouse_event", uint, 1, int, 0, int, 0, uint, 0, int, 0)
                    sleep 30
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 3, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 4 *  modifier * zom, "UInt", 6 * modifier * zom )
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 0 *  modifier * zom, "UInt", 13 * modifier * zom )
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -5 *  modifier * zom, "UInt", 22 * modifier * zom )
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -7 *  modifier * zom, "UInt", 26 * modifier * zom )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 5 *  modifier * zom, "UInt", 29 * modifier * zom )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 9 *  modifier * zom, "UInt", 30 * modifier * zom )
                    sleep 80
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 14 *  modifier * zom, "UInt", 21 * modifier * zom )
                    sleep 80
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 6 *  modifier * zom, "UInt", 15 * modifier * zom )
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 14 *  modifier * zom, "UInt", 13 * modifier * zom )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -16 *  modifier * zom, "UInt", 11 * modifier * zom )
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -5 *  modifier * zom, "UInt", 6 * modifier * zom )
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 13 *  modifier * zom, "UInt", 0 * modifier * zom )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 1 *  modifier * zom, "UInt", 6 * modifier * zom )
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -22 *  modifier * zom, "UInt", 5 * modifier * zom )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -38 *  modifier * zom, "UInt", -11 * modifier * zom )
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -31 *  modifier * zom, "UInt", -13 * modifier * zom )
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -3 *  modifier * zom, "UInt", 6 * modifier * zom )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -5 *  modifier * zom, "UInt", 5 * modifier * zom )
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -9 *  modifier * zom, "UInt", 0 * modifier * zom )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 24 *  modifier * zom, "UInt", 1 * modifier * zom )
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 32 *  modifier * zom, "UInt", 3 * modifier * zom )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 15 *  modifier * zom, "UInt", 6 * modifier * zom )
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -5 * modifier * zom, "UInt", 1 * modifier * zom )
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    sleep 1000
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                }
            }
            

            ;--------------------------------SG 553--------------------------------

            else if sg {
                if GetKeyState(key_zoom) {
                    zom := 1.2 / zoomsens
                } else {
                    zom := 1
                }
                loop {
                    DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
                    sleep 30
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -4 * modifier * zom, "UInt", 9 * modifier * zom)
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -13 * modifier * zom, "UInt", 15 * modifier * zom)
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -9 * modifier * zom, "UInt", 25 * modifier * zom)
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -6 * modifier * zom, "UInt", 29 * modifier * zom)
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -8 * modifier * zom, "UInt", 31 * modifier * zom)
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -7 * modifier * zom, "UInt", 36 * modifier * zom)
                    sleep 80
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -20 * modifier * zom, "UInt", 14 * modifier * zom)
                    sleep 80
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 14 * modifier * zom, "UInt", 17 * modifier * zom)
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -8 * modifier * zom, "UInt", 12 * modifier * zom)
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -15 * modifier * zom, "UInt", 8 * modifier * zom)
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -5 * modifier * zom, "UInt", 5 * modifier * zom)
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 6 * modifier * zom, "UInt", 5 * modifier * zom)
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -8 * modifier * zom, "UInt", 6 * modifier * zom)
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 2 * modifier * zom, "UInt", 11 * modifier * zom)
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -14 * modifier * zom, "UInt", -6 * modifier * zom)
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -20 * modifier * zom, "UInt", -17 * modifier * zom)
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -18 * modifier * zom, "UInt", -9 * modifier * zom)
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -8 * modifier * zom, "UInt", -2 * modifier * zom)
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 41 * modifier * zom, "UInt", 3 * modifier * zom)
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 56 * modifier * zom, "UInt", -5 * modifier * zom)
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 43 * modifier * zom, "UInt", -1 * modifier * zom)
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 18 * modifier * zom, "UInt", 9 * modifier * zom)
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 14 * modifier * zom, "UInt", 9 * modifier * zom)
                    sleep 88
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 6 * modifier * zom, "UInt", 7 * modifier * zom)
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 21 * modifier * zom, "UInt", -3 * modifier * zom)
                    sleep 95
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", 29 * modifier * zom, "UInt", -4 * modifier * zom)
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -6 * modifier * zom, "UInt", 8 * modifier * zom)
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -15 * modifier * zom, "UInt", 5 * modifier * zom)
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", "UInt", 0x01, "UInt", -38 * modifier * zom, "UInt", -5 * modifier * zom)
                    sleep 89
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    sleep 1000
                    if !GetKeyState(key_shoot) {
                        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                        break
                    }
                }
            }
        }
    }
}