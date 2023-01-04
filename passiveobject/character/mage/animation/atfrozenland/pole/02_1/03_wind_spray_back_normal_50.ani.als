#PVF_File

[use animation]
	`05_wind_spray_back_dodge.ani`
	`05_wind_spray_back_dodge`

[use animation]
	`11_wind_column_normal_50.ani`
	`11_wind_column_normal_50`

[use animation]
	`12_wind_column_dodge.ani`
	`12_wind_column_dodge`

[use animation]
	`15_wind_spray_front_normal_50.ani`
	`15_wind_spray_front_normal_50`

[use animation]
	`17_wind_spray_front_dodge.ani`
	`17_wind_spray_front_dodge`

[use animation]
	`19_fog_dodge_50_0.ani`
	`19_fog_dodge_50_0`

[use animation]
	`19_fog_dodge_50_1.ani`
	`19_fog_dodge_50_1`

[use animation]
	`19_fog_dodge_50_2.ani`
	`19_fog_dodge_50_2`

[add]
	0	5
	`05_wind_spray_back_dodge`

[add]
	0	10
	`11_wind_column_normal_50`

[add]
	0	15
	`12_wind_column_dodge`

[add]
	0	20
	`15_wind_spray_front_normal_50`

[add]
	0	25
	`17_wind_spray_front_dodge`

[create draw only object follow parent]
	0
	`19_fog_dodge_50_0`	0	1	-1000

[create draw only object follow parent]
	0
	`19_fog_dodge_50_1`	0	2	-1000

[create draw only object follow parent]
	0
	`19_fog_dodge_50_2`	0	3	-1000
