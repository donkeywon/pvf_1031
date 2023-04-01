#PVF_File

[use animation]
	`../../../../Effect/Animation/ChaserCluster/ChaserClusterBodyStartObj_07.ani`
	`Obj_07`

[use animation]
	`../../../../Effect/Animation/ChaserCluster/ChaserClusterBodyStart_04.ani`
	`04`

[use animation]
	`../../../../Effect/Animation/ChaserCluster/ChaserClusterBodyStart_08.ani`
	`08`

[none effect add]
	0	10001
	`08`

[none effect add]
	0	10002
	`04`

[create draw only object]
	10
	`Obj_07`	0	1	0

[use animation]
	`../js60qq506807329_weapon_eff/chaserclusterbodystart_09.ani`
	`weapon_eff`

[use animation]
	`../js60qq506807329_weapon/chaserclusterbodystart_09.ani`
	`weapon`

[add]
	0	-1
	`weapon_eff`

[add]
	0	-1
	`weapon`
