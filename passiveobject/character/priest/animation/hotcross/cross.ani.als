#PVF_File

[use animation]
	`wave.ani`
	`wave`

[use animation]
	`CrossNormal.ani`
	`normal`

[use animation]
	`CrossEffect.ani`
	`effect`

[use animation]
	`CrossParticle.ani`
	`particle`

[create draw only object]
	0
	`wave`	0	0	0

[add]
	0	-10
	`normal`

[add]
	0	-20
	`effect`

[create draw only object]
	1
	`particle`	0	1	0
