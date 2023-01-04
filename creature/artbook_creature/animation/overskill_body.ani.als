#PVF_File

[use animation]
	`overskill_boid(A).ani`
	`boid(A)`

[use animation]
	`overskill_boid(B).ani`
	`boid(B)`

[use animation]
	`overskill_boid(C).ani`
	`boid(C)`

[use animation]
	`overskill_effect(A).ani`
	`effect(A)`

[use animation]
	`overskill_effect(B).ani`
	`effect(B)`

[use animation]
	`overskill_effect(C).ani`
	`effect(C)`

[use animation]
	`overskill_effect(D).ani`
	`effect(D)`

[add]
	0	1
	`effect(D)`

[add]
	3	2
	`effect(C)`

[add]
	3	3
	`effect(B)`

[add]
	4	4
	`effect(A)`

[add]
	22	5
	`boid(C)`

[add]
	13	6
	`boid(B)`

[add]
	13	7
	`boid(A)`
