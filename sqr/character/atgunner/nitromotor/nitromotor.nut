//////////////////////////////////////////////////////////////////////////////////////////////////
//									By Uncle Bang
//////////////////////////////////////////////////////////////////////////////////////////////////








function NitroMotor(obj)
{
	local x = obj.getXPos();
	local y = obj.getYPos();
	local z = obj.getZPos();
	local Key_Jump = sq_IsKey(OPTION_HOTKEY_JUMP, ENUM_SUBKEY_TYPE_ALL);
	local Key_Left = sq_IsKey(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL);
	local Key_Right = sq_IsKey(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL);
	local Key_Space = sq_IsKey(OPTION_HOTKEY_SKILL2, ENUM_SUBKEY_TYPE_ALL);
    local state = obj.getState();



    switch(state)
	{
        case 3:
            if(z > 0 && Key_Jump)
            {
		        NitroMotor_Decrease(obj);
		        obj.sq_IntVectClear();
		        obj.sq_IntVectPush(0);
		        obj.sq_IntVectPush(0);
		        obj.sq_IntVectPush(0);
		        obj.sq_AddSetStatePacket(6, STATE_PRIORITY_USER, true);
		        Create_NitroMotor_Effect(obj, "character/gunner/effect/animation/atnitromotor/up_nitromotor_dodge1.ani", true, x, y, z);
            }
        break;
        case 4:
            if(z > 0 && Key_Jump)
            {
                NitroMotor_Decrease(obj);
                obj.sq_IntVectClear();
                obj.sq_IntVectPush(0);
                obj.sq_IntVectPush(0);
                obj.sq_IntVectPush(0);
                obj.sq_AddSetStatePacket(6, STATE_PRIORITY_USER, true);
                Create_NitroMotor_Effect(obj, "character/gunner/effect/animation/atnitromotor/up_nitromotor_dodge1.ani", true, x, y, z);
            }
        break;
		case 6:
	    	if(Key_Jump)
		    {
		    	NitroMotor_Decrease(obj);
		    	sq_SetZVelocity(obj, 750, -1200);
		    	Create_NitroMotor_Effect(obj, "character/gunner/effect/animation/atnitromotor/up_nitromotor_dodge1.ani", true, x, y, z);
		    }
		    if(Key_Space)
		    {
		    	NitroMotor_Decrease(obj);
		    	sq_SetZVelocity(obj, -750, 0);
		    	Create_NitroMotor_Effect(obj, "character/gunner/effect/animation/atnitromotor/down_nitromotor_dodge3.ani", true, x, y, z);
		    }
		    if(Key_Left)
		    {
		    	NitroMotor_Decrease(obj);
		    	obj.setCurrentDirection(ENUM_DIRECTION_LEFT);
		    	obj.sq_SetStaticMoveInfo(0, 600, 200, true, -600, true);
		    	obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
		    	Create_NitroMotor_Effect(obj, "character/gunner/effect/animation/atnitromotor/side_nitromotor_dodge1.ani", true, x, y, z);
		    }
		    if(Key_Right)
		    {
		    	NitroMotor_Decrease(obj);
	        	obj.setCurrentDirection(ENUM_DIRECTION_RIGHT);
		    	obj.sq_SetStaticMoveInfo(0, 600, 200, true, -600, true);
		    	obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
		    	Create_NitroMotor_Effect(obj, "character/gunner/effect/animation/atnitromotor/side_nitromotor_dodge1.ani", true, x, y, z);
		    }
			CommonEnableNitroMotor(obj, 48, STATE_SKY_CROSSSHOOT);//ߤ����
			CommonEnableNitroMotor(obj, 109, STATE_SKY_CHARGEBUSTER);//������
			CommonEnableNitroMotor(obj, 53, STATE_SKY_NAPALMBOMB);//�������
			CommonEnableNitroMotor(obj, 78, STATE_SKY_NIELSNIPING);//�����̪
			CommonEnableNitroMotor(obj, 98, STATE_SKY_EMPSTORM);//EMP���
			if(obj.sq_IsEnterSkill(48) != -1)
			{
				SetStateNitroMotor(obj, 48, STATE_SKY_CROSSSHOOT, [0]);
			}
			if(obj.sq_IsEnterSkill(109) != -1)
			{
				SetStateNitroMotor(obj, 109, STATE_SKY_CHARGEBUSTER, [0]);
			}
			if(obj.sq_IsEnterSkill(53) != -1)
			{
				SetStateNitroMotor(obj, 53, STATE_SKY_NAPALMBOMB, [0]);
			}
			if(obj.sq_IsEnterSkill(78) != -1)
			{
				SetStateNitroMotor(obj, 78, STATE_SKY_NIELSNIPING, [0]);
			}
			if(obj.sq_IsEnterSkill(98) != -1)
			{
				SetStateNitroMotor(obj, 98, STATE_SKY_EMPSTORM, [0]);
			}
        break;
        case 7:
            if(Key_Jump)
            {
                NitroMotor_Decrease(obj);
                sq_SetZVelocity(obj, 750, -1200);
                Create_NitroMotor_Effect(obj, "character/gunner/effect/animation/atnitromotor/up_nitromotor_dodge1.ani", true, x, y, z);
            }
            if(Key_Space)
            {
                NitroMotor_Decrease(obj);
                sq_SetZVelocity(obj, -750, 0);
                Create_NitroMotor_Effect(obj, "character/gunner/effect/animation/atnitromotor/down_nitromotor_dodge3.ani", true, x, y, z);
            }
            if(obj.getDirection() == ENUM_DIRECTION_LEFT)
            {
                if(Key_Left)
                {
                    NitroMotor_Decrease(obj);
                    sq_SetVelocity(obj, 0, -700.0);
                    Create_NitroMotor_Effect(obj, "character/gunner/effect/animation/atnitromotor/side_nitromotor_dodge1.ani", true, x, y, z);
                }
                if(Key_Right)
                {
                    NitroMotor_Decrease(obj);
                    sq_SetVelocity(obj, 0, 700.0);
                    Create_NitroMotor_Effect(obj, "character/gunner/effect/animation/atnitromotor/side_nitromotor_dodge1.ani", true, x, y, z);
                }
            }
            if(obj.getDirection() == ENUM_DIRECTION_RIGHT)
            {
                if(Key_Left)
                {
                    NitroMotor_Decrease(obj);
                    sq_SetVelocity(obj, 0, -700.0);
                    Create_NitroMotor_Effect(obj, "character/gunner/effect/animation/atnitromotor/side_nitromotor_dodge1.ani", true, x, y, z);
                }
                if(Key_Right)
                {
                    NitroMotor_Decrease(obj);
                    sq_SetVelocity(obj, 0, 700.0);
                    Create_NitroMotor_Effect(obj, "character/gunner/effect/animation/atnitromotor/side_nitromotor_dodge1.ani", true, x, y, z);
                }
            }
			CommonEnableNitroMotor(obj, 48, STATE_SKY_CROSSSHOOT);//ߤ����
			CommonEnableNitroMotor(obj, 109, STATE_SKY_CHARGEBUSTER);//������
			CommonEnableNitroMotor(obj, 53, STATE_SKY_NAPALMBOMB);//�������
			CommonEnableNitroMotor(obj, 78, STATE_SKY_NIELSNIPING);//�����̪
			CommonEnableNitroMotor(obj, 98, STATE_SKY_EMPSTORM);//EMP���
			if(obj.sq_IsEnterSkill(48) != -1)
			{
				SetStateNitroMotor(obj, 48, STATE_SKY_CROSSSHOOT, [0]);
			}
			if(obj.sq_IsEnterSkill(109) != -1)
			{
				SetStateNitroMotor(obj, 109, STATE_SKY_CHARGEBUSTER, [0]);
			}
			if(obj.sq_IsEnterSkill(53) != -1)
			{
				SetStateNitroMotor(obj, 53, STATE_SKY_NAPALMBOMB, [0]);
			}
			if(obj.sq_IsEnterSkill(78) != -1)
			{
				SetStateNitroMotor(obj, 78, STATE_SKY_NIELSNIPING, [0]);
			}
			if(obj.sq_IsEnterSkill(98) != -1)
			{
				SetStateNitroMotor(obj, 98, STATE_SKY_EMPSTORM, [0]);
			}
        break;
        case 8:
            if(Key_Jump)
            {
                NitroMotor_Decrease(obj);
		    	Create_NitroMotor_Effect(obj, "character/gunner/effect/animation/atnitromotor/up_nitromotor_dodge1.ani", true, x, y, z);
                obj.sq_IntVectClear();
                obj.sq_IntVectPush(0);
                obj.sq_IntVectPush(0);
                obj.sq_IntVectPush(0);
                obj.sq_AddSetStatePacket(6, STATE_PRIORITY_USER, true);
            }
        break;
    }
	if(z <= 0)
	{
		local effect = obj.getVar("NitromotorEffect").get_obj_vector(0);
		if(effect)
		{
			effect.setValid(false);
			obj.getVar("NitromotorEffect").clear_obj_vector();
		}
	}
}



function Create_NitroMotor_Effect(obj, aniFilename, isAutoDestroy, x, y, z)
{
	local effect = obj.getVar("NitromotorEffect").get_obj_vector(0);
	if(effect)
	{
		effect.setValid(false);
		obj.getVar("NitromotorEffect").clear_obj_vector();
	}

	local ani = sq_CreateAnimation("",aniFilename);
	local pooledObj = sq_CreatePooledObject(ani, isAutoDestroy);
	pooledObj.setCurrentPos(x, y, z);
	sq_SetCurrentDirection(pooledObj, obj.getDirection());
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj, pooledObj, OBJECTTYPE_DRAWONLY, false);

	obj.getVar("NitromotorEffect").clear_obj_vector();
	obj.getVar("NitromotorEffect").push_obj_vector(pooledObj);
	return pooledObj;
}



function NitroMotor_Decrease(obj)
{
	/*local loadSlot = obj.sq_GetSkillLoad(17);
	if(loadSlot)
	{
		local remain_number = loadSlot.getRemainLoadNumber();
		if(remain_number > 0)
		{
			loadSlot.decreaseLoadCount(1);
				loadSlot.setStartCool();
		}
	}*/
}



function CommonEnableNitroMotor(obj, skillindex, state)
{
	if(obj.sq_GetState() == state)
		return false;
	obj.setSkillCommandEnable(skillindex ,true);
		return true;
}



function SetStateNitroMotor(obj, skillindex, state, Arr)
{
	if(obj.sq_GetState() == state)
		return false;
	if(obj.sq_IsUseSkill(skillindex))
	{
		obj.sq_IntVectClear();
		if(Arr.len() < 1)
		{
			obj.sq_AddSetStatePacket(state, STATE_PRIORITY_USER, true);
			return true;
		}
		else
		{	
			foreach(sub in Arr)
			obj.sq_IntVectPush(sub);
			obj.sq_AddSetStatePacket(state, STATE_PRIORITY_USER, true);
			NitroMotor_Decrease(obj);
			return true;
		}

	}
}



function onSetState_sky_crossshoot(obj, state, datas, isResetTimer)
{	
    if(!obj) return;

	local subState = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(subState);
	obj.sq_StopMove();

	switch(subState)
	{
		case 0:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_NITROMOTOR_SKY_SHOOT);
            als_ani_ATG(obj, "character/gunner/effect/animation/crossshoot/shoot.ani", -80, 0, 20, 45, 100, 1, 1.0);
            als_ani_ATG(obj, "character/gunner/effect/animation/crossshoot/gun.ani", -80, 0, 20, 45, 100, 1, 1.0);
            als_ani_ATG(obj, "character/gunner/effect/animation/crossshoot/gunbreak.ani", -80, 20, 45, 0, 100, 1, 1.0);
			obj.sq_PlaySound("R_FG_CROSSM");
			obj.sq_ZStop();
		break;
	}
}



function onEndCurrentAni_sky_crossshoot(obj)
{
    if(!obj) return;

	local subState = obj.getSkillSubState();
	switch(subState)
	{
		case 0:
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(1);
			obj.sq_IntVectPush(0);
			obj.sq_IntVectPush(250);
			obj.sq_AddSetStatePacket(STATE_JUMP, STATE_PRIORITY_USER, true);
		break;
	}
}



function onKeyFrameFlag_sky_crossshoot(obj, flagIndex)
{
	if(!obj) return false;

	local subState = obj.getSkillSubState();
	switch(subState)
	{
		case 0:
			switch(flagIndex)
			{
				case 1:
					if(obj.isMyControlObject())
					{
						obj.sq_StartWrite();
						obj.sq_WriteDword(0);
						obj.sq_SendCreatePassiveObjectPacket(24331, 0, 50, 0, 60);
					}
				break;
			}
		break;
	}
	return true;
}



function onSetState_sky_chargebuster(obj, state, datas, isResetTimer)
{	
    if(!obj) return;

	local subState = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(subState);
	obj.sq_StopMove();

	switch(subState)
	{
		case 0:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_NITROMOTOR_SKY_SHOOT);
            als_ani_ATG(obj, "character/gunner/effect/animation/chargebuster/6_shot_dodge.ani", -100, 0, 40, 45, 100, 1, 1.0);
			obj.sq_PlaySound("FG_CANNONBALL_GET");
			obj.sq_ZStop();
		break;
	}
}



function onEndCurrentAni_sky_chargebuster(obj)
{
    if(!obj) return;

	if(!obj.isMyControlObject())
	{
		return;
	}

	local subState = obj.getSkillSubState();
	switch(subState)
	{
		case 0:
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(1);
			obj.sq_IntVectPush(0);
			obj.sq_IntVectPush(250);
			obj.sq_AddSetStatePacket(STATE_JUMP, STATE_PRIORITY_USER, true);
		break;
	}
}



function onKeyFrameFlag_sky_chargebuster(obj, flagIndex)
{
	if(!obj) return false;

	local subState = obj.getSkillSubState();
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(obj);
	local WeaponSubType = sqrChr.getWeaponSubType();
	switch(subState)
	{
		case 0:
			switch(flagIndex)
			{
				case 1:
					switch(WeaponSubType)
					{
						case 0://������
							obj.sq_PlaySound("9MILLIB");
							if(obj.isMyControlObject())
							{
								obj.sq_StartWrite();
								obj.sq_WriteDword(1);
								obj.sq_SendCreatePassiveObjectPacket(24331, 0, 45, 0, 60);
							}
						break;
						case 1://������
							obj.sq_PlaySound("9MILLIB");
							if(obj.isMyControlObject())
							{
								obj.sq_StartWrite();
								obj.sq_WriteDword(2);
								obj.sq_SendCreatePassiveObjectPacket(24331, 0, 45, 0, 60);
							}
						break;
						case 2://����
							obj.sq_PlaySound("9MILLIB");
							if(obj.isMyControlObject())
							{
								obj.sq_StartWrite();
								obj.sq_WriteDword(3);
								obj.sq_SendCreatePassiveObjectPacket(24331, 0, 45, 0, 60);
							}
						break;
						case 3://�Pao
							obj.sq_PlaySound("9MILLIB");
							if(obj.isMyControlObject())
							{
								obj.sq_StartWrite();
								obj.sq_WriteDword(4);
								obj.sq_SendCreatePassiveObjectPacket(24331, 0, 45, 0, 60);
							}
						break;
						case 4://���
							obj.sq_PlaySound("9MILLIB");
							if(obj.isMyControlObject())
							{
								obj.sq_StartWrite();
								obj.sq_WriteDword(5);
								obj.sq_SendCreatePassiveObjectPacket(24331, 0, 45, 0, 60);
							}
						break;
					}
				break;
			}
		break;
	}
	return true;
}



function onSetState_sky_napalmbomb(obj, state, datas, isResetTimer)
{	
    if(!obj) return;

	local subState = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(subState);
	obj.sq_StopMove();

	switch(subState)
	{
		case 0:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_NITROMOTOR_SKY_SHOOT);
			obj.sq_PlaySound("FG_LIGHTSHOT");
			obj.sq_ZStop();
		break;
	}
}



function onEndCurrentAni_sky_napalmbomb(obj)
{
    if(!obj) return;

	local subState = obj.getSkillSubState();
	switch(subState)
	{
		case 0:
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(1);
			obj.sq_IntVectPush(0);
			obj.sq_IntVectPush(250);
			obj.sq_AddSetStatePacket(STATE_JUMP, STATE_PRIORITY_USER, true);
		break;
	}
}



function onKeyFrameFlag_sky_napalmbomb(obj, flagIndex)
{
	if(!obj) return false;

	local subState = obj.getSkillSubState();
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	switch(subState)
	{
		case 0:
			switch(flagIndex)
			{
				case 1:
					if(obj.isMyControlObject())
					{
						obj.sq_StartWrite();
						obj.sq_WriteDword(6);
                		if(obj.getDirection() == ENUM_DIRECTION_LEFT)
                		{
							sq_SendCreatePassiveObjectPacketPos(obj, 24331, 0, x - 220, y, 0);
                		}
                		if(obj.getDirection() == ENUM_DIRECTION_RIGHT)
                		{
							sq_SendCreatePassiveObjectPacketPos(obj, 24331, 0, x + 220, y, 0);
                		}
						obj.sq_StartWrite();
						obj.sq_WriteDword(7);
                		if(obj.getDirection() == ENUM_DIRECTION_LEFT)
                		{
							sq_SendCreatePassiveObjectPacketPos(obj, 24331, 0, x - 220, y, 0);
                		}
                		if(obj.getDirection() == ENUM_DIRECTION_RIGHT)
                		{
							sq_SendCreatePassiveObjectPacketPos(obj, 24331, 0, x + 220, y, 0);
                		}
					}
				break;
			}
		break;
	}
	return true;
}



function onSetState_sky_nielsniping(obj, state, datas, isResetTimer)
{	
    if(!obj) return;

	local subState = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(subState);
	obj.sq_StopMove();

	switch(subState)
	{
		case 0:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_NITROMOTOR_SKY_SHOOT);
			obj.sq_PlaySound("FG_SNIPING");
			obj.sq_ZStop();
		break;
	}
}



function onEndCurrentAni_sky_nielsniping(obj)
{
    if(!obj) return;

	if(!obj.isMyControlObject())
	{
		return;
	}

	local subState = obj.getSkillSubState();
	switch(subState)
	{
		case 0:
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(1);
			obj.sq_IntVectPush(0);
			obj.sq_IntVectPush(250);
			obj.sq_AddSetStatePacket(STATE_JUMP, STATE_PRIORITY_USER, true);
		break;
	}
}



function onKeyFrameFlag_sky_nielsniping(obj, flagIndex)
{
	if(!obj) return false;

	local subState = obj.getSkillSubState();
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	switch(subState)
	{
		case 0:
			switch(flagIndex)
			{
				case 1:
					if(obj.isMyControlObject())
					{
						local Count = sq_GetIntData(obj, 78, 1);
          				local pauseTime = sq_GetIntData(obj, 78, 2);
						for (local i = 0; i < Count; i++)
						{
							obj.sq_StartWrite();
							obj.sq_WriteDword(8);
							obj.sq_WriteDword(pauseTime * i);
                			if(obj.getDirection() == ENUM_DIRECTION_LEFT)
                			{
								sq_SendCreatePassiveObjectPacketPos(obj, 24331, 0, x - 250, y, 50);
                			}
                			if(obj.getDirection() == ENUM_DIRECTION_RIGHT)
                			{
								sq_SendCreatePassiveObjectPacketPos(obj, 24331, 0, x + 250, y, 50);
                			}
						}
					}
				break;
			}
		break;
	}
	return true;
}



function onSetState_sky_empstorm(obj, state, datas, isResetTimer)
{	
    if(!obj) return;

	local subState = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(subState);
	obj.sq_StopMove();

	switch(subState)
	{
		case 0:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_NITROMOTOR_SKY_SHOOT);
			obj.sq_PlaySound("FG_EMPSTORM");
			obj.sq_ZStop();
		break;
	}
}



function onEndCurrentAni_sky_empstorm(obj)
{
    if(!obj) return;

	if(!obj.isMyControlObject())
	{
		return;
	}

	local subState = obj.getSkillSubState();
	switch(subState)
	{
		case 0:
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(1);
			obj.sq_IntVectPush(0);
			obj.sq_IntVectPush(250);
			obj.sq_AddSetStatePacket(STATE_JUMP, STATE_PRIORITY_USER, true);
		break;
	}
}



function onKeyFrameFlag_sky_empstorm(obj, flagIndex)
{
	if(!obj) return false;

	local subState = obj.getSkillSubState();
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	switch(subState)
	{
		case 0:
			switch(flagIndex)
			{
				case 1:
					if(obj.isMyControlObject())
					{
						obj.sq_StartWrite();
						obj.sq_WriteDword(9);
                		if(obj.getDirection() == ENUM_DIRECTION_LEFT)
                		{
							sq_SendCreatePassiveObjectPacketPos(obj, 24331, 0, x - 250, y, 500);
                		}
                		if(obj.getDirection() == ENUM_DIRECTION_RIGHT)
                		{
							sq_SendCreatePassiveObjectPacketPos(obj, 24331, 0, x + 250, y, 500);
                		}
						obj.sq_StartWrite();
						obj.sq_WriteDword(10);
                		if(obj.getDirection() == ENUM_DIRECTION_LEFT)
                		{
							sq_SendCreatePassiveObjectPacketPos(obj, 24331, 0, x - 250, y, 0);
                		}
                		if(obj.getDirection() == ENUM_DIRECTION_RIGHT)
                		{
							sq_SendCreatePassiveObjectPacketPos(obj, 24331, 0, x + 250, y, 0);
                		}
					}
				break;
			}
		break;
	}
	return true;
}

