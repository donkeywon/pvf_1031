#PVF_File

[use animation]
	`../Effect/Animation/MultiHeadShotEx/M_Tract.ani`
	`k`

[use animation]
	`../Effect/Animation/MultiHeadShotEx/M_TractBottom.ani`
	`b`

[use animation]
	`../Effect/Animation/MultiHeadShotEx/M_TractWhite1.ani`
	`w1`

[use animation]
	`../Effect/Animation/MultiHeadShotEx/M_TractWhite2.ani`
	`w2`

[add]
	2	10000
	`k`

[add]
	0	-10000
	`w1`

[add]
	0	-10000
	`w2`

[create draw only object]
	3
	`b`	60	0	-1000
