//////////////////////////////////////////////////////////////////////////////////////////////////
//									By Uncle Bang
//////////////////////////////////////////////////////////////////////////////////////////////////

function onAfterSetState_wave(obj, state, datas, isResetTimer) {
	if (!obj) return;

	local subState = obj.sq_GetVectorData(datas, 0);
	obj.getVar("subState").clear_vector();
	obj.getVar("subState").push_vector(subState);
}

function onKeyFrameFlag_wave(obj, flagIndex) {
	if (!obj) return false;

	local subState = obj.getVar("subState").get_vector(0);
	switch (subState) {
	/*case 20:
		switch (flagIndex) {
		case 10001:
			if (obj.isMyControlObject()) {
				local skill = sq_GetSkill(obj, SKILL_FORCETHUNDERER);
				local forceThunderer = sq_GetSkillLevel(obj, SKILL_FORCETHUNDERER);
				if (forceThunderer > 0) {
					als_ani(obj, "passiveobject/new_skill/swordman/animation/normalwave/normalwaveslash_light.ani", 0, 0, 0, 0, 100, 0, 1, 1.0);
				}
				else {
					als_ani(obj, "passiveobject/new_skill/swordman/animation/normalwave/normalwaveslash.ani", 0, 0, 0, 0, 100, 0, 1, 1.0);
				}
			}
			break;
		case 10002:
			if (obj.isMyControlObject()) {
				local skill = sq_GetSkill(obj, SKILL_FORCETHUNDERER);
				local forceThunderer = sq_GetSkillLevel(obj, SKILL_FORCETHUNDERER);
				if (forceThunderer > 0) {
					obj.sq_StartWrite();
					obj.sq_WriteDword(8);
					obj.sq_SendCreatePassiveObjectPacket(24337, 0, 0, 0, 0);
				}
				else {
					obj.sq_StartWrite();
					obj.sq_WriteDword(7);
					obj.sq_SendCreatePassiveObjectPacket(24337, 0, 0, 0, 0);
				}
			}
			break;
		}
		break;*/
	/*case 21:
		switch(flagIndex)
		{
			case 10002:
				local skill_level = sq_GetSkillLevel(obj, 21);
				local iceCount = sq_GetLevelData(obj, 21, 1, skill_level);
				local sizeRateBonus = sq_GetLevelData(obj, 21, 7, skill_level);
				local pauseTime = sq_GetIntData(obj, 21, 0);
				local xInterval = 40;
				for(local i = 0; i < iceCount; i++)
				{
					if(obj.isMyControlObject())
					{
						local skill = sq_GetSkill(obj, SKILL_FORCETHUNDERER);
						local forceThunderer = sq_GetSkillLevel(obj, SKILL_FORCETHUNDERER);
						if(forceThunderer > 0)
						{
							obj.sq_StartWrite();
							obj.sq_WriteDword(16);
							obj.sq_WriteDword(sizeRateBonus * i);
							obj.sq_WriteDword(pauseTime * i);
							obj.sq_SendCreatePassiveObjectPacket(24337, 0, 150 + xInterval * i, 0, 0);
						}
						else
						{
							obj.sq_StartWrite();
							obj.sq_WriteDword(15);
							obj.sq_WriteDword(sizeRateBonus * i);
							obj.sq_WriteDword(pauseTime * i);
							obj.sq_SendCreatePassiveObjectPacket(24337, 0, 150 + xInterval * i, 0, 0);
						}
					}
				}
			break;
		}
	break;*/
	/*case 22:
		switch (flagIndex) {
		case 10002:
			local skill_level = sq_GetSkillLevel(obj, 22);
			local fireCount = sq_GetLevelData(obj, 22, 2, skill_level);
			local baseXPos = sq_GetLevelData(obj, 22, 3, skill_level);
			local interval = sq_GetLevelData(obj, 22, 4, skill_level);
			local pauseTime = sq_GetLevelData(obj, 22, 9, skill_level);
			for (local i = 0; i < fireCount; i++) {
				if (obj.isMyControlObject()) {
					obj.sq_StartWrite();
					obj.sq_WriteDword(17);
					obj.sq_WriteDword(pauseTime * i);
					obj.sq_SendCreatePassiveObjectPacket(24337, 0, baseXPos + interval * i, 0, 0);
					local skill = sq_GetSkill(obj, SKILL_FORCETHUNDERER);
					local forceThunderer = sq_GetSkillLevel(obj, SKILL_FORCETHUNDERER);
					if (forceThunderer > 0) {
						obj.sq_StartWrite();
						obj.sq_WriteDword(18);
						obj.sq_WriteDword(pauseTime * i);
						obj.sq_SendCreatePassiveObjectPacket(24337, 0, baseXPos + interval * i, 0, 0);
					}
				}
			}
			break;
		}
		break;*/
		/*case 99:
			switch(flagIndex)
			{
				case 10002:
					if(obj.isMyControlObject())
					{
						obj.sq_StartWrite();
						obj.sq_WriteDword(19);
						obj.sq_SendCreatePassiveObjectPacket(24337, 0, 250, 0, 0);
						obj.sq_StartWrite();
						obj.sq_WriteDword(20);
						obj.sq_SendCreatePassiveObjectPacket(24337, 0, 250, 0, 0);
						obj.sq_StartWrite();
						obj.sq_WriteDword(21);
						obj.sq_SendCreatePassiveObjectPacket(24337, 0, 250, 0, 0);
					}
				break;
			}
		break;*/
	case 100:
		switch (flagIndex) {
		case 10002:
			local atk = obj.sq_GetPowerWithPassive(100, 24, 3, -1, 1.0);
			local atk2 = obj.sq_GetPowerWithPassive(100, 24, 7, -1, 1.0);
			local count = sq_GetLevelData(obj, 100, 1, sq_GetSkillLevel(obj, 100));
			local dist = 75;
			local size = 100;
			local maxT = 3000;

			local burnProc = sq_GetLevelData(obj, 100, 4, sq_GetSkillLevel(obj, 100)) / 10;
			local burnLevel = sq_GetLevelData(obj, 100, 5, sq_GetSkillLevel(obj, 100));
			local burnTime = sq_GetLevelData(obj, 100, 6, sq_GetSkillLevel(obj, 100));

			obj.sq_StartWrite();
			obj.sq_WriteDword(atk);
			obj.sq_WriteDword(125);
			obj.sq_WriteDword(count);
			obj.sq_WriteDword(1);
			obj.sq_WriteDword(dist);
			obj.sq_WriteDword(size);
			obj.sq_WriteDword(-15);
			obj.sq_WriteDword(maxT);

			obj.sq_WriteDword(burnProc);
			obj.sq_WriteDword(burnLevel);
			obj.sq_WriteDword(burnTime);
			obj.sq_WriteDword(atk2);
			obj.sq_SendCreatePassiveObjectPacket(24357, 0, 75, 1, 0);

			obj.sq_StartWrite();
			obj.sq_WriteDword(atk);
			obj.sq_WriteDword(125);
			obj.sq_WriteDword(count);
			obj.sq_WriteDword(1);
			obj.sq_WriteDword(dist);
			obj.sq_WriteDword(size);
			obj.sq_WriteDword(15);
			obj.sq_WriteDword(maxT);

			obj.sq_WriteDword(burnProc);
			obj.sq_WriteDword(burnLevel);
			obj.sq_WriteDword(burnTime);
			obj.sq_WriteDword(atk2);

			obj.sq_SendCreatePassiveObjectPacket(24357, 0, 75, 1, 0);
			/*local skill_level = sq_GetSkillLevel(obj, 100);
			local iceCount = sq_GetLevelData(obj, 100, 1, skill_level);
			local xPos = sq_GetLevelData(obj, 100, 8, skill_level);
			local yPos = sq_GetLevelData(obj, 100, 9, skill_level);
			local xInterval = sq_GetIntData(obj, 100, 2, skill_level);
			local yInterval = sq_GetLevelData(obj, 100, 10, skill_level);
			local pauseTime = sq_GetIntData(obj, 100, 1);
			for (local i = 0; i < iceCount; i++) {
				if (obj.isMyControlObject()) {
					obj.sq_StartWrite();
					obj.sq_WriteDword(22);
					obj.sq_WriteDword(pauseTime * i);
					obj.sq_SendCreatePassiveObjectPacket(24337, 0, xPos + xInterval * i, 0, 0);
					local skill = sq_GetSkill(obj, SKILL_FORCETHUNDERER);
					local forceThunderer = sq_GetSkillLevel(obj, SKILL_FORCETHUNDERER);
					if (forceThunderer > 0) {
						obj.sq_StartWrite();
						obj.sq_WriteDword(22);
						obj.sq_WriteDword(pauseTime * i);
						obj.sq_SendCreatePassiveObjectPacket(24337, 0, xPos + xInterval * i, yPos + yInterval * i, 0);
						obj.sq_StartWrite();
						obj.sq_WriteDword(22);
						obj.sq_WriteDword(pauseTime * i);
						obj.sq_SendCreatePassiveObjectPacket(24337, 0, xPos + xInterval * i, -yPos - yInterval * i, 0);
					}
				}
			}*/
			break;
		}
		break;
	}
	return true;
}

function createIceWaveExExplosionEffect(obj, size) {

	local ani = sq_CreateAnimation("", "passiveobject/character/swordman/animation/icewaveexiceexplosionparticle2.ani");
	local sizeRate = size.tofloat() / 100.0;
	ani.setImageRateFromOriginal(sizeRate, sizeRate);
	ani.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 0);
	pooledObj.setCurrentPos(posX, obj.getYPos(), 37);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);

}

function createIceWaveExAnimation(obj, size, rate) {
	local rand = sq_getRandom(0, 7).tointeger();

	local ani = sq_CreateAnimation("", "passiveobject/character/swordman/animation/icewaveex/1.ani");
	if (rand <= 2) ani = sq_CreateAnimation("", "passiveobject/character/swordman/animation/icewaveex/2.ani");
	else if (rand <= 3) ani = sq_CreateAnimation("", "passiveobject/character/swordman/animation/icewaveex/3.ani");
	else if (rand <= 4) ani = sq_CreateAnimation("", "passiveobject/character/swordman/animation/icewaveex/4.ani");
	else if (rand <= 5) ani = sq_CreateAnimation("", "passiveobject/character/swordman/animation/icewaveex/5.ani");
	else if (rand <= 6) ani = sq_CreateAnimation("", "passiveobject/character/swordman/animation/icewaveex/6.ani");

	local speedRate = rate.tofloat();
	ani.setSpeedRate(speedRate);

	local sizeRate = size.tofloat() / 100.0;
	ani.setImageRateFromOriginal(sizeRate, sizeRate);
	ani.setAutoLayerWorkAnimationAddSizeRate(sizeRate);

	local pooledObj = sq_CreatePooledObject(ani, true);
	pooledObj.setCurrentPos(obj.getXPos(), obj.getYPos(), 0);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);

	return pooledObj;
}