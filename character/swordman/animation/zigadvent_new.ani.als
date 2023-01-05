#PVF_File

[use animation]
	`../Effect/Animation/ZigAdvent/ZigAdventCast_1.ani`
	`ZigAdventCast_1`

[use animation]
	`../Effect/Animation/ZigAdvent/ZigAdventCast_2.ani`
	`ZigAdventCast_2`

[use animation]
	`../Effect/Animation/ZigAdvent/Floor_Cast.ani`
	`Floor_Cast`

[create draw only object]
	4
	`Floor_Cast`	0	0	-1001

[none effect add]
	2	10001
	`ZigAdventCast_2`

[none effect add]
	10	10002
	`ZigAdventCast_1`
