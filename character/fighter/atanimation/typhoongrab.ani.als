#PVF_File

[use animation]
	`../Effect/Animation/ATTyphoon/TyphoonGrab_BackBackBack.ani`
	`back3`

[use animation]
	`../Effect/Animation/ATTyphoon/TyphoonGrab_BackBack.ani`
	`back2`

[use animation]
	`../Effect/Animation/ATTyphoon/TyphoonGrab_Back.ani`
	`back1`

[use animation]
	`../Effect/Animation/ATTyphoon/TyphoonGrab_Front.ani`
	`front1`

[use animation]
	`../Effect/Animation/ATTyphoon/TyphoonGrab_FrontFront.ani`
	`front2`

[use animation]
	`../Effect/Animation/ATTyphoon/TyphoonGrab_FrontFrontFront.ani`
	`front3`

[create draw only object]
	0
	`back3`	-30	1	-1001

[create draw only object]
	0
	`back2`	-30	1	-1002

[none effect add]
	0	9999
	`back1`

[none effect add]
	0	10001
	`front1`

[none effect add]
	0	10002
	`front2`

[none effect add]
	0	10003
	`front3`
