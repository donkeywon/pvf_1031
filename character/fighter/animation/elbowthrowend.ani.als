#PVF_File

[use animation]
	`../Effect/Animation/ElbowThrow/END_throw_d.ani`
	`END_throw_d`

[use animation]
	`../Effect/Animation/ElbowThrow/END_01_swing_up_d.ani`
	`END_01_swing_up_d`

[use animation]
	`../Effect/Animation/ElbowThrow/END_spin_dust01.ani`
	`END_spin_dust01`

[use animation]
	`../Effect/Animation/ElbowThrow/END_spin_dust02.ani`
	`END_spin_dust02`

[use animation]
	`../Effect/Animation/ElbowThrow/END_speed_d.ani`
	`END_speed_d`

[use animation]
	`../Effect/Animation/ElbowThrow/END_01_swing_down_d.ani`
	`END_01_swing_down_d`

[use animation]
	`../Effect/Animation/ElbowThrow/END_dust01.ani`
	`END_dust01`

[use animation]
	`../Effect/Animation/ElbowThrow/END_floor01_d.ani`
	`END_floor01_d`

[use animation]
	`../Effect/Animation/ChainDestruction/02_dust.ani`
	`02_dust`

[use animation]
	`../Effect/Animation/ElbowThrow/LOOP_SPIN_dust01.ani`
	`LOOP_SPIN_dust01`

[use animation]
	`../Effect/Animation/ElbowThrow/LOOP_SPIN_floor01_d.ani`
	`LOOP_SPIN_floor01_d`

[use animation]
	`../Effect/Animation/ElbowThrow/LOOP_SPIN_spin_dust01.ani`
	`LOOP_SPIN_spin_dust01`

[add]
	0	-3
	`END_floor01_d`

[add]
	0	-2
	`END_dust01`

[add]
	0	-1
	`END_01_swing_down_d`

[add]
	0	10001
	`END_speed_d`

[add]
	4	10002
	`END_spin_dust02`

[add]
	1	10003
	`END_spin_dust01`

[add]
	0	10004
	`END_01_swing_up_d`

[add]
	6	10005
	`END_throw_d`

[create draw only object]
	0
	`02_dust`	0	1	0

[create draw only object]
	0
	`LOOP_SPIN_dust01`	0	-2	0

[create draw only object]
	1
	`LOOP_SPIN_floor01_d`	0	-3	0

[create draw only object]
	0
	`LOOP_SPIN_spin_dust01`	0	1	0
