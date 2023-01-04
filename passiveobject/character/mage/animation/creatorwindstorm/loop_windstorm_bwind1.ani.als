#PVF_File

[use animation]
	`loop_windstorm_dust1_0.ani`
	`windstorm_dust1_0.ani`

[use animation]
	`loop_windstorm_dust2.ani`
	`windstorm_dust2.ani`

[use animation]
	`loop_windstorm_dust1_1.ani`
	`windstorm_dust1_1.ani`

[use animation]
	`loop_windstorm_glow.ani`
	`windstorm_glow.ani`

[use animation]
	`loop_windstorm_diswind.ani`
	`windstorm_diswind.ani`

[use animation]
	`loop_windstorm_wind1.ani`
	`windstorm_wind1.ani`

[use animation]
	`loop_windstorm_bwind2.ani`
	`windstorm_bwind2.ani`

[add]
	0	-1
	`windstorm_bwind2.ani`

[add]
	0	1
	`windstorm_wind1.ani`

[add]
	-1	2
	`windstorm_diswind.ani`

[add]
	-1	3
	`windstorm_glow.ani`

[add]
	0	4
	`windstorm_dust1_1.ani`

[add]
	3	5
	`windstorm_dust2.ani`

[add]
	0	6
	`windstorm_dust1_0.ani`
