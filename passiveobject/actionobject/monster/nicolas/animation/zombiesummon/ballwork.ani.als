#PVF_File

[use animation]
	`BallSmoke.ani`
	`smk`

[use animation]
	`BallWave.ani`
	`wv`

[use animation]
	`BallCurtain.ani`
	`ct`

[use animation]
	`BallCurtainUp.ani`
	`ctu`

[use animation]
	`BallCurtainBottom.ani`
	`ctb`

[use animation]
	`BallStay.ani`
	`zbd`

[use animation]
	`BallStayRedEye.ani`
	`zbde`

[add]
	0	10
	`smk`

[add]
	1	-10
	`wv`

[add]
	3	20
	`ct`

[create draw only object]
	3
	`ctb`	0	-1	0

[create draw only object]
	3
	`ctu`	0	1	0

[create draw only object]
	5
	`zbde`	0	0	0

[create draw only object]
	5
	`zbd`	0	0	0
