#PVF_File

[use animation]
	`../Effect/Animation/ExcelStrikeAdd/StartL.ani`
	`stl`

[use animation]
	`../Effect/Animation/ExcelStrikeAdd/StartR.ani`
	`str`

[use animation]
	`../Effect/Animation/ExcelStrikeAdd/Start2.ani`
	`st2`

[use animation]
	`../Effect/Animation/ExcelStrikeJumpEffect.ani`
	`je`

[use animation]
	`../Effect/Animation/ExcelStrikeDustSmallStart.ani`
	`ds`

[add]
	1	10000
	`stl`

[add]
	1	10000
	`str`

[add]
	3	10001
	`st2`

[create draw only object]
	2
	`je`	0	1	0

[create draw only object]
	2
	`ds`	0	1	0
