//////////////////////////////////////////////////////////////////////////////////////////////////
//									By Uncle Bang
//////////////////////////////////////////////////////////////////////////////////////////////////











function setCustomData_po_swordman_shared(obj, receiveData)
{
	if(!obj) return;

	local id = receiveData.readDword();
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	obj.getVar("id").clear_vector();
	obj.getVar("id").push_vector(id);
	local parentChr = sq_ObjectToSQRCharacter(obj.getTopCharacter());



	switch(id)
	{
		case 7:
			local ani = obj.getCustomAnimation(4);
			obj.setCurrentAnimation(ani);

			local attackInfo = sq_GetCustomAttackInfo(obj, 2);
			sq_SetCurrentAttackInfo(obj, attackInfo);

			local pAttack = sq_GetCurrentAttackInfo(obj);
			local damage = parentChr.sq_GetPowerWithPassive(20, -1, 0, 2, 1.0);
			sq_SetCurrentAttackPower(pAttack, damage);

			local size = 1.0;
			local skill_level = sq_GetSkillLevel(parentChr, 20);
			local sizeRate = sq_GetLevelData(parentChr, 20, 1, skill_level);
			sizeRate = sizeRate.tofloat() / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);
		break;
		case 8:
			local ani = obj.getCustomAnimation(5);
			obj.setCurrentAnimation(ani);

			local attackInfo = sq_GetCustomAttackInfo(obj, 3);
			sq_SetCurrentAttackInfo(obj, attackInfo);

			local pAttack = sq_GetCurrentAttackInfo(obj);
			local damage = parentChr.sq_GetPowerWithPassive(20, -1, 0, 2, 1.0);
			sq_SetCurrentAttackPower(pAttack, damage);

			local size = 1.0;
			local skill_level = sq_GetSkillLevel(parentChr, 20);
			local sizeRate = sq_GetLevelData(parentChr, 20, 1, skill_level);
			sizeRate = sizeRate.tofloat() / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);
		break;
		case 9:
			local ani = obj.getCustomAnimation(6);
			obj.setCurrentAnimation(ani);

			local attackInfo = sq_GetCustomAttackInfo(obj, 4);
			sq_SetCurrentAttackInfo(obj, attackInfo);

			local pAttack = sq_GetCurrentAttackInfo(obj);
			local damage = parentChr.sq_GetPowerWithPassive(32, -1, 0, -1, 1.0);
			sq_SetCurrentAttackPower(pAttack, damage);

			local size = 1.0;
			local skill_level = sq_GetSkillLevel(parentChr, 32);
			local sizeRate = sq_GetLevelData(parentChr, 32, 1, skill_level);
			sizeRate = sizeRate.tofloat() / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);
		break;
		case 10:
			local ani = obj.getCustomAnimation(7);
			obj.setCurrentAnimation(ani);

			local attackInfo = sq_GetCustomAttackInfo(obj, 5);
			sq_SetCurrentAttackInfo(obj, attackInfo);

			local pAttack = sq_GetCurrentAttackInfo(obj);
			local damage = parentChr.sq_GetPowerWithPassive(32, -1, 0, -1, 1.0);
			sq_SetCurrentAttackPower(pAttack, damage);

			local size = 1.0;
			local skill_level = sq_GetSkillLevel(parentChr, 32);
			local sizeRate = sq_GetLevelData(parentChr, 32, 1, skill_level);
			sizeRate = sizeRate.tofloat() / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);
		break;
		case 11:
			local ani = obj.getCustomAnimation(8);
			obj.setCurrentAnimation(ani);

			local attackInfo = sq_GetCustomAttackInfo(obj, 6);
			sq_SetCurrentAttackInfo(obj, attackInfo);

			local pAttack = sq_GetCurrentAttackInfo(obj);
			local damage = parentChr.sq_GetPowerWithPassive(50, -1, 0, -1, 1.0);
			sq_SetCurrentAttackPower(pAttack, damage);

			local attackTerm = sq_GetIntData(parentChr, 50, 0);
			obj.setTimeEvent(0, attackTerm, 0, false);

			local skill_level = sq_GetSkillLevel(parentChr, 50);
			local distance = sq_GetLevelData(parentChr, 50, 0, skill_level);
			local xDistance = sq_GetDistancePos(x, obj.getDirection(), distance);
			obj.getVar("grandWaveMove").clear_vector();
			obj.getVar("grandWaveMove").push_vector(x);
			obj.getVar("grandWaveMove").push_vector(xDistance);
		break;
		case 12:
			local ani = obj.getCustomAnimation(9);
			obj.setCurrentAnimation(ani);

			local attackInfo = sq_GetCustomAttackInfo(obj, 7);
			sq_SetCurrentAttackInfo(obj, attackInfo);

			local pAttack = sq_GetCurrentAttackInfo(obj);
			local damage = parentChr.sq_GetPowerWithPassive(50, -1, 0, -1, 1.0);
			sq_SetCurrentAttackPower(pAttack, damage);

			local size = 1.0;
			local skill_level = sq_GetSkillLevel(parentChr, 51);
			local sizeRate = sq_GetIntData(parentChr, 51, 1);
			sizeRate = sizeRate.tofloat() / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);

			local attackTerm = sq_GetIntData(parentChr, 51, 3);
			obj.setTimeEvent(0, attackTerm, 0, false);

			local skill_level = sq_GetSkillLevel(parentChr, 50);
			local distance = sq_GetLevelData(parentChr, 50, 0, skill_level);
			local distanceBonus = sq_GetIntData(parentChr, 51, 2);
			distance = distance * (0.01 * distanceBonus.tofloat());
			local xDistance = sq_GetDistancePos(x, obj.getDirection(), distance.tointeger());
			obj.getVar("grandWaveMove").clear_vector();
			obj.getVar("grandWaveMove").push_vector(x);
			obj.getVar("grandWaveMove").push_vector(xDistance);
		break;
		case 13:
			local ani = obj.getCustomAnimation(10);
			obj.setCurrentAnimation(ani);

			local attackInfo = sq_GetCustomAttackInfo(obj, 8);
			sq_SetCurrentAttackInfo(obj, attackInfo);

			local pAttack = sq_GetCurrentAttackInfo(obj);
			local damage = parentChr.sq_GetPowerWithPassive(50, -1, 0, -1, 1.0);
			sq_SetCurrentAttackPower(pAttack, damage);

			local attackTerm = sq_GetIntData(parentChr, 50, 0);
			obj.setTimeEvent(0, attackTerm, 0, false);

			local skill_level = sq_GetSkillLevel(parentChr, 50);
			local distance = sq_GetLevelData(parentChr, 50, 0, skill_level);
			local xDistance = sq_GetDistancePos(x, obj.getDirection(), distance);
			obj.getVar("grandWaveMove").clear_vector();
			obj.getVar("grandWaveMove").push_vector(x);
			obj.getVar("grandWaveMove").push_vector(xDistance);
		break;
		case 14:
			local ani = obj.getCustomAnimation(11);
			obj.setCurrentAnimation(ani);

			local attackInfo = sq_GetCustomAttackInfo(obj, 9);
			sq_SetCurrentAttackInfo(obj, attackInfo);

			local pAttack = sq_GetCurrentAttackInfo(obj);
			local damage = parentChr.sq_GetPowerWithPassive(50, -1, 0, -1, 1.0);
			sq_SetCurrentAttackPower(pAttack, damage);

			local size = 1.0;
			local skill_level = sq_GetSkillLevel(parentChr, 51);
			local sizeRate = sq_GetIntData(parentChr, 51, 1);
			sizeRate = sizeRate.tofloat() / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);

			local attackTerm = sq_GetIntData(parentChr, 50, 0);
			obj.setTimeEvent(0, attackTerm, 0, false);

			local skill_level = sq_GetSkillLevel(parentChr, 50);
			local distance = sq_GetLevelData(parentChr, 50, 0, skill_level);
			local xDistance = sq_GetDistancePos(x, obj.getDirection(), distance);
			obj.getVar("grandWaveMove").clear_vector();
			obj.getVar("grandWaveMove").push_vector(x);
			obj.getVar("grandWaveMove").push_vector(xDistance);
		break;
		case 15:
			local ran_ani = sq_getRandom(12, 17);
			local ani = obj.getCustomAnimation(ran_ani);
			obj.setCurrentAnimation(ani);

			local attackInfo = sq_GetCustomAttackInfo(obj, 10);
			sq_SetCurrentAttackInfo(obj, attackInfo);

			local pAttack = sq_GetCurrentAttackInfo(obj);
			local damage = parentChr.sq_GetPowerWithPassive(21, -1, 3, -1, 1.0);
			sq_SetCurrentAttackPower(pAttack, damage);

			local size = 1.0;
			local sizeRate = 200;
			local sizeRateBonus = receiveData.readDword();
			sizeRate = (sizeRateBonus + sizeRate.tofloat()) / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);

			local pauseTime = receiveData.readDword();
			sq_SetPause(obj, PAUSETYPE_OBJECT, pauseTime);
		break;
		case 16:
			local ran_ani = sq_getRandom(18, 23);
			local ani = obj.getCustomAnimation(ran_ani);
			obj.setCurrentAnimation(ani);

			local attackInfo = sq_GetCustomAttackInfo(obj, 11);
			sq_SetCurrentAttackInfo(obj, attackInfo);

			local pAttack = sq_GetCurrentAttackInfo(obj);
			local damage = parentChr.sq_GetPowerWithPassive(21, -1, 3, -1, 1.0);
			sq_SetCurrentAttackPower(pAttack, damage);

			local size = 1.0;
			local sizeRate = 200;
			local sizeRateBonus = receiveData.readDword();
			sizeRate = (sizeRateBonus + sizeRate.tofloat()) / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);

			local pauseTime = receiveData.readDword();
			sq_SetPause(obj, PAUSETYPE_OBJECT, pauseTime);
		break;
		case 17:
			local ani = obj.getCustomAnimation(24);
			obj.setCurrentAnimation(ani);

			local attackInfo = sq_GetCustomAttackInfo(obj, 12);
			sq_SetCurrentAttackInfo(obj, attackInfo);

			local pAttack = sq_GetCurrentAttackInfo(obj);
			local damage = parentChr.sq_GetPowerWithPassive(22, -1, 0, -1, 1.0);
			sq_SetCurrentAttackPower(pAttack, damage);

			local size = 1.0;
			local skill_level = sq_GetSkillLevel(parentChr, 22);
			local sizeRate = sq_GetLevelData(parentChr, 22, 1, skill_level);
			sizeRate = sizeRate.tofloat() / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);

			local skill_level = sq_GetSkillLevel(parentChr, 22);
			local act_rate = sq_GetLevelData(parentChr, 22, 5, skill_level);
			local act_level = sq_GetLevelData(parentChr, 22, 6, skill_level);
			local act_time = sq_GetLevelData(parentChr, 22, 7, skill_level);
			local act_damage = sq_GetLevelData(parentChr, 22, 8, skill_level);
			sq_SetChangeStatusIntoAttackInfo(pAttack, 0, ACTIVESTATUS_BURN, act_rate, act_level, act_time, act_damage);

			local pauseTime = receiveData.readDword();
			sq_SetPause(obj, PAUSETYPE_OBJECT, pauseTime);
		break;
		case 18:
			local ani = obj.getCustomAnimation(25);
			obj.setCurrentAnimation(ani);

			local attackInfo = sq_GetCustomAttackInfo(obj, 13);
			sq_SetCurrentAttackInfo(obj, attackInfo);

			local pAttack = sq_GetCurrentAttackInfo(obj);
			local damage = parentChr.sq_GetPowerWithPassive(22, -1, 0, -1, 1.0);
			local Up_Level = sq_GetSkillLevel(parentChr, SKILL_FORCETHUNDERER);
			local DamageUp = sq_GetLevelData(parentChr, SKILL_FORCETHUNDERER, 0, Up_Level);
			damage = damage * (0.01 * DamageUp.tofloat());
			sq_SetCurrentAttackPower(pAttack, damage.tointeger());

			local size = 1.0;
			local sizeRate = sq_GetIntData(parentChr, SKILL_FORCETHUNDERER, 0);
			sizeRate = sizeRate.tofloat() / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);

			local skill_level = sq_GetSkillLevel(parentChr, 22);
			local act_rate =  sq_GetLevelData(parentChr, SKILL_FORCETHUNDERER, 1, skill_level);
			local act_level =  sq_GetLevelData(parentChr, SKILL_FORCETHUNDERER, 2, skill_level);
			local act_time =  sq_GetLevelData(parentChr, SKILL_FORCETHUNDERER, 3, skill_level);
			local act_damage =  sq_GetLevelData(parentChr, SKILL_FORCETHUNDERER, 4, skill_level);
			sq_SetChangeStatusIntoAttackInfo(pAttack, 0, ACTIVESTATUS_LIGHTNING, act_rate, act_level, act_time, act_damage);

			local pauseTime = receiveData.readDword();
			sq_SetPause(obj, PAUSETYPE_OBJECT, pauseTime);
		break;
		case 19:
			local ani = obj.getCustomAnimation(26);
			obj.setCurrentAnimation(ani);

			local attackInfo = sq_GetCustomAttackInfo(obj, 14);
			sq_SetCurrentAttackInfo(obj, attackInfo);

			local pAttack = sq_GetCurrentAttackInfo(obj);
			local damage = parentChr.sq_GetPowerWithPassive(99, -1, 0, -1, 1.0);
			sq_SetCurrentAttackPower(pAttack, damage);

			local size = 1.0;
			local skill_level = sq_GetSkillLevel(parentChr, 99);
			local sizeRate = sq_GetLevelData(parentChr, 99, 13, skill_level);
			sizeRate = sizeRate.tofloat() / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);

			local objectManager = obj.getObjectManager();
			for(local i = 0; i < objectManager.getCollisionObjectNumber(); ++ i)
			{
				local object = objectManager.getCollisionObject(i);
				if(object && obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_ACTIVE))
				{
					local mobXPos = sq_GetXPos(object);
					local mobYPos = sq_GetYPos(object);
					obj.getVar("attract").clear_vector();
					obj.getVar("attract").push_vector(mobXPos);
					obj.getVar("attract").push_vector(mobYPos);
				}
			}
		break;
		case 20:
			local ani = obj.getCustomAnimation(27);
			obj.setCurrentAnimation(ani);

			local attackInfo = sq_GetCustomAttackInfo(obj, 15);
			sq_SetCurrentAttackInfo(obj, attackInfo);

			local pAttack = sq_GetCurrentAttackInfo(obj);
			local damage = parentChr.sq_GetPowerWithPassive(99, -1, 1, -1, 1.0);
			sq_SetCurrentAttackPower(pAttack, damage);

			local size = 1.0;
			local skill_level = sq_GetSkillLevel(parentChr, 99);
			local sizeRate = sq_GetLevelData(parentChr, 99, 13, skill_level);
			sizeRate = sizeRate.tofloat() / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);
		break;
		case 21:
			sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
			local ani = obj.getCustomAnimation(28);
			obj.setCurrentAnimation(ani);

			local attackInfo = sq_GetCustomAttackInfo(obj, 14);
			sq_SetCurrentAttackInfo(obj, attackInfo);

			local pAttack = sq_GetCurrentAttackInfo(obj);
			local damage = parentChr.sq_GetPowerWithPassive(99, -1, 2, -1, 1.0);
			sq_SetCurrentAttackPower(pAttack, damage);

			local size = 1.0;
			local skill_level = sq_GetSkillLevel(parentChr, 99);
			local sizeRate = sq_GetLevelData(parentChr, 99, 13, skill_level);
			sizeRate = sizeRate.tofloat() / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);

			local act_rate = sq_GetLevelData(parentChr, 99, 3, skill_level);
			local act_level = sq_GetLevelData(parentChr, 99, 4, skill_level);
			local act_time = sq_GetLevelData(parentChr, 99, 5, skill_level);
			local act_damage = sq_GetLevelData(parentChr, 99, 6, skill_level);
			sq_SetChangeStatusIntoAttackInfo(pAttack, 0, ACTIVESTATUS_BURN, act_rate, act_level, act_time, act_damage);

			local lastTime = sq_GetIntData(parentChr, 99, 1);
			local attackTerm = sq_GetIntData(parentChr, 99, 2);
			obj.setTimeEvent(0, attackTerm, 0, false);
			obj.setTimeEvent(1, lastTime, 0, false);
		break;
		case 22:
			local ran_ani = sq_getRandom(29, 31);
			local ani = obj.getCustomAnimation(ran_ani);
			obj.setCurrentAnimation(ani);

			local attackInfo = sq_GetCustomAttackInfo(obj, 16);
			local attackInfo_forcethunderer = sq_GetCustomAttackInfo(obj, 17);

			local skill = sq_GetSkill(parentChr, SKILL_FORCETHUNDERER);
			local forceThunderer = sq_GetSkillLevel(parentChr, SKILL_FORCETHUNDERER);
			if(forceThunderer > 0)
			{
				sq_SetCurrentAttackInfo(obj, attackInfo);
			}
			else
			{
				sq_SetCurrentAttackInfo(obj, attackInfo_forcethunderer);
			}

			local pAttack = sq_GetCurrentAttackInfo(obj);
			local damage = parentChr.sq_GetPowerWithPassive(100, -1, 3, -1, 1.0);
			sq_SetCurrentAttackPower(pAttack, damage);

			local size = 1.0;
			local sizeRate = sq_GetIntData(parentChr, 100, 4);
			sizeRate = sizeRate.tofloat() / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);

			local skill_level = sq_GetSkillLevel(parentChr, 100);
			local act_rate = sq_GetLevelData(parentChr, 100, 4, skill_level);
			local act_level = sq_GetLevelData(parentChr, 100, 5, skill_level);
			local act_time = sq_GetLevelData(parentChr, 100, 6, skill_level);
			sq_SetChangeStatusIntoAttackInfo(pAttack, 0, ACTIVESTATUS_FREEZE, act_rate, act_level, act_time);

			local pauseTime = receiveData.readDword();
			sq_SetPause(obj, PAUSETYPE_OBJECT, pauseTime);
		break;
		case 23:
			local ani = obj.getCustomAnimation(32);
			obj.setCurrentAnimation(ani);

			local attackInfo = sq_GetCustomAttackInfo(obj, 13);
			sq_SetCurrentAttackInfo(obj, attackInfo);

			local pAttack = sq_GetCurrentAttackInfo(obj);
			local damage = parentChr.sq_GetPowerWithPassive(SKILL_FORCETHUNDERER, -1, 6, -1, 1.0);
			sq_SetCurrentAttackPower(pAttack, damage);

			local size = 1.0;
			local sizeRate = sq_GetIntData(parentChr, SKILL_FORCETHUNDERER, 0);
			sizeRate = sizeRate.tofloat() / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);

			local skill_level = sq_GetSkillLevel(parentChr, SKILL_FORCETHUNDERER);
			local act_rate = sq_GetLevelData(parentChr, SKILL_FORCETHUNDERER, 1, skill_level);
			local act_level = sq_GetLevelData(parentChr, SKILL_FORCETHUNDERER, 2, skill_level);
			local act_time = sq_GetLevelData(parentChr, SKILL_FORCETHUNDERER, 3, skill_level);
			local act_damage = sq_GetLevelData(parentChr, SKILL_FORCETHUNDERER, 4, skill_level);
			sq_SetChangeStatusIntoAttackInfo(pAttack, 0, ACTIVESTATUS_LIGHTNING, act_rate, act_level, act_time, act_damage);
		break;
	}
}