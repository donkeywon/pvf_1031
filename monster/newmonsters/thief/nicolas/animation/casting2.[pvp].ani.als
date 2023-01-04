#PVF_File

[use animation]
	`Effect/BlackWave/BodySmokeNormal.ani`
	`bsn`

[use animation]
	`Effect/BlackWave/BlastBeforeBody.ani`
	`bbb`

[use animation]
	`Effect/BlackWave/BlastBeforeEffect.ani`
	`bbe`

[use animation]
	`Effect/BlackWave/BlastBeforeEyeDodge.ani`
	`bbed`

[use animation]
	`Effect/BlackWave/BlastBody.ani`
	`bb`

[use animation]
	`Effect/BlackWave/BlastUpNormal.ani`
	`bun`

[use animation]
	`Effect/BlackWave/BlastBackNormal.ani`
	`bbn`

[add]
	4	10
	`bsn`

[remove]
	10	0
	`bsn`

[add]
	10	10
	`bbb`

[add]
	10	12
	`bbed`

[create draw only object]
	10
	`bbe`	0	-1	-1

[remove]
	11	0
	`bbb`

[remove]
	11	0
	`bbed`

[add]
	11	12
	`bb`

[add]
	11	11
	`bun`

[add]
	11	-10
	`bbn`
