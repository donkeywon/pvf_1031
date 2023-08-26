//////////////////////////////////////////////////////////////////////////////////////////////////
//									By Uncle Bang
//////////////////////////////////////////////////////////////////////////////////////////////////











function procAppend_po_swordman_shared(obj)
{
	if(!obj) return false;

	local id = obj.getVar("id").get_vector(0);
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	local parentChr = sq_ObjectToSQRCharacter(obj.getTopCharacter());
	local pAni = obj.getCurrentAnimation();
	local currentT = sq_GetCurrentTime(pAni);



	switch(id)
	{
		case 11:
			local currentX = obj.getVar("grandWaveMove").get_vector(0);
			local xDistance = obj.getVar("grandWaveMove").get_vector(1);
			local xAccel = sq_GetUniformVelocity(currentX, xDistance, currentT, 3000);
			sq_setCurrentAxisPos(obj, 0, xAccel);
			local skill_level = sq_GetSkillLevel(parentChr, 50);
			local distance = sq_GetLevelData(parentChr, 50, 0, skill_level);
			distance = distance.tofloat() * 0.3;
			if(obj.getDirection() == ENUM_DIRECTION_LEFT)
			{
				local maxDistance = currentX - distance;
				if(x <= maxDistance)
				{
					if(obj.isMyControlObject())
					{
						sq_SendDestroyPacketPassiveObject(obj);
					}
				}
			}
			if(obj.getDirection() == ENUM_DIRECTION_RIGHT)
			{
				local maxDistance = currentX + distance;
				if(x >= maxDistance)
				{
					if(obj.isMyControlObject())
					{
						sq_SendDestroyPacketPassiveObject(obj);
					}
				}
			}
			if(!parentChr)
			{
				sq_SendDestroyPacketPassiveObject(obj);
			}
		break;
		case 12:
			local currentX = obj.getVar("grandWaveMove").get_vector(0);
			local xDistance = obj.getVar("grandWaveMove").get_vector(1);
			local xAccel = sq_GetUniformVelocity(currentX, xDistance, currentT, 3000);
			sq_setCurrentAxisPos(obj, 0, xAccel);
			local skill_level = sq_GetSkillLevel(parentChr, 50);
			local distance = sq_GetLevelData(parentChr, 50, 0, skill_level);
			local distanceBonus = sq_GetIntData(parentChr, 51, 2);
			distance = (distance * (0.01 * distanceBonus.tofloat()) * 0.3);
			if(obj.getDirection() == ENUM_DIRECTION_LEFT)
			{
				local maxDistance = currentX - distance;
				if(x <= maxDistance)
				{
					if(obj.isMyControlObject())
					{
						sq_SendDestroyPacketPassiveObject(obj);
					}
				}
			}
			if(obj.getDirection() == ENUM_DIRECTION_RIGHT)
			{
				local maxDistance = currentX + distance;
				if(x >= maxDistance)
				{
					if(obj.isMyControlObject())
					{
						sq_SendDestroyPacketPassiveObject(obj);
					}
				}
			}
			if(!parentChr)
			{
				sq_SendDestroyPacketPassiveObject(obj);
			}
		break;
		case 13:
			local currentX = obj.getVar("grandWaveMove").get_vector(0);
			local xDistance = obj.getVar("grandWaveMove").get_vector(1);
			local xAccel = sq_GetUniformVelocity(currentX, xDistance, currentT, 3000);
			sq_setCurrentAxisPos(obj, 0, xAccel);
			local skill_level = sq_GetSkillLevel(parentChr, 50);
			local distance = sq_GetLevelData(parentChr, 50, 0, skill_level);
			distance = distance.tofloat() * 0.3;
			if(obj.getDirection() == ENUM_DIRECTION_LEFT)
			{
				local maxDistance = currentX - distance;
				if(x <= maxDistance)
				{
					if(obj.isMyControlObject())
					{
						sq_SendDestroyPacketPassiveObject(obj);
					}
				}
			}
			if(obj.getDirection() == ENUM_DIRECTION_RIGHT)
			{
				local maxDistance = currentX + distance;
				if(x >= maxDistance)
				{
					if(obj.isMyControlObject())
					{
						sq_SendDestroyPacketPassiveObject(obj);
					}
				}
			}
			if(!parentChr)
			{
				sq_SendDestroyPacketPassiveObject(obj);
			}
		break;
		case 14:
			local currentX = obj.getVar("grandWaveMove").get_vector(0);
			local xDistance = obj.getVar("grandWaveMove").get_vector(1);
			local xAccel = sq_GetUniformVelocity(currentX, xDistance, currentT, 3000);
			sq_setCurrentAxisPos(obj, 0, xAccel);
			local skill_level = sq_GetSkillLevel(parentChr, 50);
			local distance = sq_GetLevelData(parentChr, 50, 0, skill_level);
			local distanceBonus = sq_GetIntData(parentChr, 51, 2);
			distance = (distance * (0.01 * distanceBonus.tofloat()) * 0.3);
			if(obj.getDirection() == ENUM_DIRECTION_LEFT)
			{
				local maxDistance = currentX - distance;
				if(x <= maxDistance)
				{
					if(obj.isMyControlObject())
					{
						sq_SendDestroyPacketPassiveObject(obj);
					}
				}
			}
			if(obj.getDirection() == ENUM_DIRECTION_RIGHT)
			{
				local maxDistance = currentX + distance;
				if(x >= maxDistance)
				{
					if(obj.isMyControlObject())
					{
						sq_SendDestroyPacketPassiveObject(obj);
					}
				}
			}
			if(!parentChr)
			{
				sq_SendDestroyPacketPassiveObject(obj);
			}
		break;
		case 19:
			local objectManager = obj.getObjectManager();
			for(local i = 0; i < objectManager.getCollisionObjectNumber(); ++ i)
			{
				local mobXPos = obj.getVar("attract").get_vector(0);
				local mobYPos = obj.getVar("attract").get_vector(1);
				local skill_level = sq_GetSkillLevel(parentChr, 99);
				local distance = sq_GetLevelData(parentChr, 99, 11, skill_level);
				local totalT = sq_GetLevelData(parentChr, 99, 12, skill_level);
				local object = objectManager.getCollisionObject(i);
				if(object && obj.isEnemy(object) && !sq_IsFixture(object) && object.isObjectType(OBJECTTYPE_ACTIVE) && sq_GetDistance(x, y, mobXPos, mobYPos, true) <= distance)
				{
					local xAccel = sq_GetAccel(mobXPos, x, currentT, totalT, false);
					local yAccel = sq_GetAccel(mobYPos, y, currentT, totalT, false);
					sq_setCurrentAxisPos(object, 0, xAccel);
					sq_setCurrentAxisPos(object, 1, yAccel);
				}
			}
		break;
	}
}



