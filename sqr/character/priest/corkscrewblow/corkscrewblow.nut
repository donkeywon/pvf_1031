function checkExecutableSkill_CorkscrewBlow(obj)
{
	if (!obj) return false;

	local isUse = obj.sq_IsUseSkill(SKILL_CORKSCREWBLOW);

	if (isUse)
	{
		obj.getVar("state").clear_vector();
		obj.getVar("state").push_vector(0);
		obj.sq_IsEnterSkillLastKeyUnits(SKILL_CORKSCREWBLOW);
		obj.sq_AddSetStatePacket(STATE_CORKSCREWBLOW, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}

function checkCommandEnable_CorkscrewBlow(obj)
{
	return true;
}

function onSetState_CorkscrewBlow(obj, state, datas, isResetTimer)
{
	local state = obj.getVar("state").get_vector(0);

	obj.sq_StopMove();

	if(state == 0)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_CORKSCREWBLOWREADY_BODY);
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.2, 1.2);
	}
	if(state == 1)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_CORKSCREWBLOWATTACKA_BODY);
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.2, 1.2);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_CORKSCREWBLOWATTACK);

		local damage = obj.sq_GetBonusRateWithPassive(SKILL_CORKSCREWBLOW , STATE_CORKSCREWBLOW, 0, 1.0);
		obj.sq_SetCurrentAttackBonusRate(damage);
	}
	if(state == 2)
	{
		obj.getVar("dama").clear_obj_vector();
		obj.getVar("pull").clear_vector();
		obj.getVar("pull").push_vector(0);

		findAllMonster_CorkscrewBlow(obj);

		obj.sq_SetCurrentAnimation(CUSTOM_ANI_CORKSCREWBLOWATTACKB_BODY);
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.2, 1.2);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_CORKSCREWBLOWATTACK);

		local damage = obj.sq_GetBonusRateWithPassive(SKILL_CORKSCREWBLOW , STATE_CORKSCREWBLOW, 0, 1.0);
		obj.sq_SetCurrentAttackBonusRate(damage);

		obj.setTimeEvent(0, 50, 0, true);
		obj.setTimeEvent(1, 300, 0, false);
	}
	if(state == 3)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_CORKSCREWBLOWEND_BODY);
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.2, 1.2);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_CORKSCREWBLOWFINISH);

		local damage = obj.sq_GetBonusRateWithPassive(SKILL_CORKSCREWBLOW , STATE_CORKSCREWBLOW, 1, 1.0);
		obj.sq_SetCurrentAttackBonusRate(damage);
	}
}

function onTimeEvent_CorkscrewBlow(obj, timeEventIndex, timeEventCount)
{
    local state = obj.getVar("state").get_vector(0);

	if (state == 2)
	{
		if (timeEventIndex == 0)
		{
			if (timeEventCount <= 6)
			{
				obj.resetHitObjectList();
			}
		}
		if (timeEventIndex == 1)
		{
			obj.getVar("state").clear_vector();
			obj.getVar("state").push_vector(3);
			obj.sq_AddSetStatePacket(STATE_CORKSCREWBLOW, STATE_PRIORITY_USER, true);
		}
	}
}

function onProc_CorkscrewBlow(obj)
{
	local state = obj.getVar("state").get_vector(0);

	if (state == 2)
	{
		obj.getVar("pull").clear_vector();
		obj.getVar("pull").push_vector(1);

		local var = obj.getVar("dama");
		local objectsSize = var.get_obj_vector_size();

		for(local i=0;i<objectsSize;++i)
		{
			local damager = var.get_obj_vector(i);
			local objX = sq_GetDistancePos(obj.getXPos() , obj.getDirection(), obj.sq_GetIntData(SKILL_CORKSCREWBLOW, 0) );
			local objY = obj.getYPos();
			local damaX = damager.getXPos();
			local damaY = damager.getYPos();
			local damaZ = damager.getZPos();
			local x_move = 2;
			local y_move = 2;
			if (objX < damaX) x_move = - x_move;
			if (objY < damaY) y_move = - y_move;
			damager.setCurrentPos(damaX + x_move, damaY + y_move, damaZ);
		}
	}
}

function findAllMonster_CorkscrewBlow(obj)
{
	local state = obj.getVar("state").get_vector(0);

	if (state == 2)
	{
		local objectManager = obj.getObjectManager();

		for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
		{
			local object = objectManager.getCollisionObject(i);

			if (object && obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_ACTIVE) && abs(obj.getXPos() - object.getXPos() ) < 200 && abs(obj.getYPos() - object.getYPos() ) < 150)
			{
				local activeObj = sq_GetCNRDObjectToActiveObject(object);
				obj.getVar("dama").push_obj_vector(activeObj);
			}
		}
	}
}

function onEndCurrentAni_CorkscrewBlow(obj)
{
	local state = obj.getVar("state").get_vector(0);

	if(state == 0)
	{
		obj.getVar("state").clear_vector();
		obj.getVar("state").push_vector(1);
		obj.sq_AddSetStatePacket(STATE_CORKSCREWBLOW, STATE_PRIORITY_USER, true);
	}
	if(state == 1)
	{
		obj.getVar("state").clear_vector();
		obj.getVar("state").push_vector(2);
		obj.sq_AddSetStatePacket(STATE_CORKSCREWBLOW, STATE_PRIORITY_USER, true);
	}
	if(state == 3)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
}
