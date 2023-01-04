#PVF_File

[use animation]
	`../Effect/Animation/ATTeleport/arrival/02_line_dodge.ani`
	`02_line_dodge`

[use animation]
	`../Effect/Animation/ATTeleport/arrival/00_ground_dodge.ani`
	`00_ground_dodge`

[use animation]
	`../Effect/Animation/ATTeleport/arrival/01_smokeback_normal.ani`
	`01_smokeback_normal`

[use animation]
	`../Effect/Animation/ATTeleport/arrival/03_smokefront_normal.ani`
	`03_smokefront_normal`

[none effect add]
	0	-2
	`00_ground_dodge`

[none effect add]
	0	-1
	`01_smokeback_normal`

[none effect add]
	0	10001
	`03_smokefront_normal`

[create draw only object]
	0
	`02_line_dodge`	0	1	0
