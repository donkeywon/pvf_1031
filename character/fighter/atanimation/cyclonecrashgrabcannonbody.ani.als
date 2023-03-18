#PVF_File

[use animation]
	`../Effect/Animation/ATCycloneCrash/GrabCannon/GrabCannon_GrabCannon_wind_front_02.ani`
	`GrabCannon_GrabCannon_wind_front_02`

[use animation]
	`../Effect/Animation/ATCycloneCrash/GrabCannon/GrabCannon_GrabCannon_dust_front_01.ani`
	`GrabCannon_GrabCannon_dust_front_01`

[use animation]
	`../Effect/Animation/ATCycloneCrash/GrabCannon/GrabCannon_GrabCannon_wind_front_01.ani`
	`GrabCannon_GrabCannon_wind_front_01`

[use animation]
	`../Effect/Animation/ATCycloneCrash/GrabCannon/GrabCannon_GrabCannon_dust_back_02.ani`
	`GrabCannon_GrabCannon_dust_back_02`

[use animation]
	`../Effect/Animation/ATCycloneCrash/GrabCannon/GrabCannon_GrabCannon_wind_back_01.ani`
	`GrabCannon_GrabCannon_wind_back_01`

[use animation]
	`../Effect/Animation/ATCycloneCrash/GrabCannon/GrabCannon_GrabCannon_dust_back_04.ani`
	`GrabCannon_GrabCannon_dust_back_04`

[use animation]
	`../Effect/Animation/ATCycloneCrash/GrabCannon/GrabCannon_GrabCannon_dust_back_03.ani`
	`GrabCannon_GrabCannon_dust_back_03`

[use animation]
	`../Effect/Animation/ATCycloneCrash/GrabCannon/GrabCannon_GrabCannon_dust_back_01.ani`
	`GrabCannon_GrabCannon_dust_back_01`

[create draw only object]
	3
	`GrabCannon_GrabCannon_dust_back_01`	0	-1	0

[create draw only object]
	2
	`GrabCannon_GrabCannon_dust_back_03`	0	-1	0

[add]
	3	-3
	`GrabCannon_GrabCannon_dust_back_04`

[add]
	3	-2
	`GrabCannon_GrabCannon_wind_back_01`

[add]
	3	-1
	`GrabCannon_GrabCannon_dust_back_02`

[add]
	2	10001
	`GrabCannon_GrabCannon_wind_front_01`

[add]
	2	10002
	`GrabCannon_GrabCannon_dust_front_01`

[create draw only object]
	4
	`GrabCannon_GrabCannon_wind_front_02`	0	1	0
