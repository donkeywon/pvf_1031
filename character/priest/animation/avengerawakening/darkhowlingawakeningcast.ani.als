#PVF_File

[use animation]
	`../../Effect/Animation/DarkHowling/dh2_cast_eyes_dodge.ani`
	`eyes_dodge`

[use animation]
	`../../Effect/Animation/DarkHowling/dh2_cast_shock_dodge.ani`
	`shock_dodge`

[use animation]
	`../../Effect/Animation/DarkHowling/dh2_cast_focusline_dodge.ani`
	`focusline_dodge`

[use animation]
	`../../Effect/Animation/DarkHowling/dh2_cast_focusline_normal.ani`
	`focusline_normal`

[use animation]
	`../../Effect/Animation/DarkHowling/dh2_cast_circle_dodge1.ani`
	`circle_dodge1`

[use animation]
	`../../Effect/Animation/DarkHowling/dh2_cast_circle_normal1.ani`
	`circle_normal1`

[add]
	-1	-2
	`circle_normal1`

[add]
	-1	-1
	`circle_dodge1`

[add]
	0	10001
	`focusline_normal`

[add]
	0	10002
	`focusline_dodge`

[add]
	-1	10003
	`shock_dodge`

[add]
	-1	10004
	`eyes_dodge`
