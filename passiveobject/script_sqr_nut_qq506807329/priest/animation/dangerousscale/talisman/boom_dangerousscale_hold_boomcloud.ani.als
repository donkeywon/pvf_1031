#PVF_File

[use animation]
	`Boom_DangerousScale_Hold_BoomStone1.ani`
	`DangerousScale_Hold_BoomStone1`

[use animation]
	`Boom_DangerousScale_Hold_BoomStone2.ani`
	`DangerousScale_Hold_BoomStone2`

[use animation]
	`Boom_DangerousScale_Hold_BoomCloudB.ani`
	`DangerousScale_Hold_BoomCloudB`

[add]
	0	-1
	`DangerousScale_Hold_BoomCloudB`

[create draw only object random]
	0
	`DangerousScale_Hold_BoomStone2`	-40	1	-10	0	0	0

[create draw only object random]
	1
	`DangerousScale_Hold_BoomStone1`	-40	1	-10	0	0	0
