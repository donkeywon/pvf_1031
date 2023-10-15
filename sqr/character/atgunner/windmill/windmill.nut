
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



function onAfterSetState_atgunner_windmill(obj, state, datas, isResetTimer)
{
 if (!obj) return;
 if(sq_GetSkillLevel(obj, 253) > 0)//如果我學了花式槍術
 {
local skill_level = sq_GetSkillLevel(obj, 253);//獲取花式槍術技能等級
local XPosmove = obj.sq_GetLevelData(253, 0, skill_level);//獲取x軸移動距離
local YPosmove = obj.sq_GetLevelData(253, 1, skill_level);//獲取y軸移動距離
 obj.sq_SetStaticMoveInfo(0, XPosmove, XPosmove, true);//設置x軸移動信息
 obj.sq_SetStaticMoveInfo(1, YPosmove, YPosmove, true);//設置y軸移動信息
 obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
 }
} ;



function onProcCon_atgunner_windmill(obj)
{
 if (!obj) return;
 //local sub = obj.getVar().get_vector(0);
 //if (sub == 3) 
 //onProcIsSub_My_atgunner_stylish(obj);
 
 local skill_level = obj.sq_GetSkillLevel(SKILL_ROSEDANCE);

	if(skill_level > 0)
	{
		if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL))
		{
			local Velocity = obj.sq_GetIntData(3, 1);
			local Accel = 0;
			obj.sq_SetStaticMoveInfo(1, Velocity, Velocity, true, Accel, true);
			obj.sq_SetStaticMoveInfo(0, 0, 0, false);
			obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
		}
		if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL))
		{
			local Velocity = obj.sq_GetIntData(3, 1);
			local Accel = 0;
			obj.sq_SetStaticMoveInfo(1, Velocity, Velocity, true, Accel, true);
			obj.sq_SetStaticMoveInfo(0, 0, 0, false);
			obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
		}
		if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL))
		{
			local Velocity = obj.sq_GetIntData(3, 1);
			local Accel = 0;
			obj.sq_SetStaticMoveInfo(0, Velocity, Velocity, true, Accel, true);
			obj.sq_SetStaticMoveInfo(1, 0, 0, false);
			obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
		}
		if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL))
		{
			local Velocity = obj.sq_GetIntData(3, 1);
			local Accel = 0;
			obj.sq_SetStaticMoveInfo(0, Velocity, Velocity, true, Accel, true);
			obj.sq_SetStaticMoveInfo(1, 0, 0, false);
			obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
		}
		if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL) && sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL))
		{
			local Velocity = obj.sq_GetIntData(3, 1);
			local Accel = 0;
			obj.sq_SetStaticMoveInfo(0, Velocity, Velocity, true, Accel, true);
			obj.sq_SetStaticMoveInfo(1, Velocity, Velocity, true, Accel, true);
			obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
		}
		if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL) && sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL))
		{
			local Velocity = obj.sq_GetIntData(3, 1);
			local Accel = 0;
			obj.sq_SetStaticMoveInfo(0, Velocity, Velocity, true, Accel, true);
			obj.sq_SetStaticMoveInfo(1, Velocity, Velocity, true, Accel, true);
			obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
		}
		else if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL) && sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL))
		{
			local Velocity = obj.sq_GetIntData(3, 1);
			local Accel = 0;
			obj.sq_SetStaticMoveInfo(0, Velocity, Velocity, true, Accel, true);
			obj.sq_SetStaticMoveInfo(1, Velocity, Velocity, true, Accel, true);
			obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
		}
		else if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL) && sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL))
		{
			local Velocity = obj.sq_GetIntData(3, 1);
			local Accel = 0;
			obj.sq_SetStaticMoveInfo(0, Velocity, Velocity, true, Accel, true);
			obj.sq_SetStaticMoveInfo(1, Velocity, Velocity, true, Accel, true);
			obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
		}
	}
} ;