#PVF_File

[use animation]
	`../Effect/Animation/ChainDestruction/New/ChainDestruction02_03.ani`
	`ChainDestruction02_03`

[use animation]
	`../Effect/Animation/ChainDestruction/New/ChainDestruction02_02.ani`
	`ChainDestruction02_02`

[use animation]
	`../Effect/Animation/ChainDestruction/New/ChainDestruction02_01.ani`
	`ChainDestruction02_01`

[use animation]
	`../Effect/Animation/ChainDestruction/New/Atk04Back_03.ani`
	`Atk04Back_03`

[create draw only object]
	7
	`Atk04Back_03`	0	-1	0

[none effect add]
	0	10001
	`ChainDestruction02_01`

[none effect add]
	3	10002
	`ChainDestruction02_02`

[none effect add]
	4	10003
	`ChainDestruction02_03`
