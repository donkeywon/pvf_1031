#PVF_File

[use animation]
	`DM_random_01_normal.ani`
	`random_01_normal`

[use animation]
	`DM_random_02_dodge.ani`
	`random_02_dodge`

[use animation]
	`DM_random_03_normal.ani`
	`random_03_normal`

[none effect add]
	1	10001
	`random_03_normal`

[none effect add]
	0	10002
	`random_02_dodge`

[none effect add]
	25	10003
	`random_01_normal`
