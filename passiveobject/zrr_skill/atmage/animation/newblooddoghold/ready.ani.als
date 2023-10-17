#PVF_File

[use animation]
	`../ATPhantomBale/Bat/ATPhantomBale_Attack00_bat_Base.ani`
	`ATPhantomBale_Attack00_bat_Base`

[use animation]
	`../ATPhantomBale/Front/ATPhantomBale_Attack00_Front_Base.ani`
	`ATPhantomBale_Attack00_Front_Base`

[use animation]
	`../ATPhantomBale/Back/ATPhantomBale_Attack00_back_Base.ani`
	`ATPhantomBale_Attack00_back_Base`

[use animation]
	`ready_screen.ani`
	`0`

[none effect add]
	0	10000
	`0`

[create draw only object]
	0
	`ATPhantomBale_Attack00_back_Base`	0	-1	0

[create draw only object]
	0
	`ATPhantomBale_Attack00_Front_Base`	0	1	0

[create draw only object]
	0
	`ATPhantomBale_Attack00_bat_Base`	0	1	0
