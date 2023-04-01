#PVF_File

[use animation]
	`../Effect/Animation/ATRisingUpper/1_dodge.ani`
	`dgf`

[use animation]
	`../Effect/Animation/ATRisingUpper/1hit_dodge.ani`
	`hdf`

[use animation]
	`../Effect/Animation/ATRisingUpper/2_dodge.ani`
	`dgs`

[use animation]
	`../Effect/Animation/ATRisingUpper/2hit_dodge.ani`
	`hds`

[none effect add]
	0	-2
	`dgf`

[none effect add]
	0	10000
	`hdf`

[none effect add]
	0	10000
	`hds`

[create draw only object follow parent]
	0
	`dgs`	0	1	0
