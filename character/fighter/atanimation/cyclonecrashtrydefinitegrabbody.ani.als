#PVF_File

[use animation]
	`../Effect/Animation/ATCycloneCrash/motion01/motion01_dust_back_01.ani`
	`motion01_dust_back_01`

[use animation]
	`../Effect/Animation/ATCycloneCrash/motion01/motion01_wind_front_01.ani`
	`motion01_wind_front_01`

[use animation]
	`../Effect/Animation/ATCycloneCrash/motion01/motion01_wind_back_01.ani`
	`motion01_wind_back_01`

[add]
	3	-1
	`motion01_wind_back_01`

[add]
	2	10001
	`motion01_wind_front_01`

[create draw only object]
	3
	`motion01_dust_back_01`	0	0	0
