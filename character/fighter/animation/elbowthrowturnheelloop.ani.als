#PVF_File

[use animation]
	`../Effect/Animation/ElbowThrow/TrunHeel/Loop/LOOP_SPIN_spin_dust01.ani`
	`LOOP_SPIN_spin_dust01`

[use animation]
	`../Effect/Animation/ElbowThrow/TrunHeel/Loop/02_dust.ani`
	`02_dust`

[use animation]
	`../Effect/Animation/ElbowThrow/TrunHeel/Loop/LOOP_SPIN_01_swing_up_d.ani`
	`LOOP_SPIN_01_swing_up_d`

[use animation]
	`../Effect/Animation/ElbowThrow/TrunHeel/Loop/LOOP_SPIN_speed_d.ani`
	`LOOP_SPIN_speed_d`

[use animation]
	`../Effect/Animation/ElbowThrow/TrunHeel/Loop/LOOP_SPIN_01_swing_down_d.ani`
	`LOOP_SPIN_01_swing_down_d`

[use animation]
	`../Effect/Animation/ElbowThrow/TrunHeel/Loop/LOOP_SPIN_floor01_d.ani`
	`LOOP_SPIN_floor01_d`

[use animation]
	`../Effect/Animation/ElbowThrow/TrunHeel/Loop/LOOP_SPIN_dust01.ani`
	`LOOP_SPIN_dust01`

[create draw only object]
	0
	`LOOP_SPIN_dust01`	0	-2	0

[create draw only object]
	1
	`LOOP_SPIN_floor01_d`	0	-3	0

[add]
	0	-1
	`LOOP_SPIN_01_swing_down_d`

[add]
	0	10001
	`LOOP_SPIN_speed_d`

[add]
	0	10002
	`LOOP_SPIN_01_swing_up_d`

[create draw only object]
	0
	`02_dust`	0	1	0

[create draw only object]
	0
	`LOOP_SPIN_spin_dust01`	0	1	0
