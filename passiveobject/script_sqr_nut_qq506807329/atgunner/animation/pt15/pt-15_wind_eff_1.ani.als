#PVF_File

[use animation]
	`PT-15_ring.ani`
	`ring`

[use animation]
	`PT-15_ring2.ani`
	`ring2`

[use animation]
	`PT-15_wind_eff_2.ani`
	`wind_eff_2`

[use animation]
	`PT-15_ring_Back.ani`
	`ring_Back`

[use animation]
	`PT-15_ring2_Back.ani`
	`ring2_Back`

[use animation]
	`PT-15_wind_eff_1_Back.ani`
	`wind_eff_1_Back`

[use animation]
	`PT-15_wind_eff_2_Back.ani`
	`wind_eff_2_Back`

[none effect add]
	4	-5
	`wind_eff_2_Back`

[none effect add]
	0	-4
	`wind_eff_1_Back`

[none effect add]
	0	-3
	`ring2_Back`

[none effect add]
	0	-2
	`ring_Back`

[add]
	0	-1
	`wind_eff_2`

[add]
	0	10001
	`ring2`

[add]
	0	10002
	`ring`
