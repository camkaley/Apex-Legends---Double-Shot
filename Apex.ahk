Counter = 0
Loop
{
If (GetKeyState("Alt", "P") && GetKeyState("LButton", "P")){
	Sleep, 200
	Send, R
	Sleep, 300
	Send, 3
	Sleep, 100
	Send, 1
	}

If (GetKeyState("Alt", "P") && GetKeyState("LControl", "P") && (Counter < 6)){
	Loop{
		Send, {LControl down}
		Sleep, 73
		Send, {LControl up}
		Sleep, 75
		Counter++
		If (Counter = 5){
			Counter = 0
			Break
			}
		}
	}
}

