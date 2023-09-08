//////////////////////////////////////////////////////////////////////////////////////////////////
//									By Uncle Bang
//////////////////////////////////////////////////////////////////////////////////////////////////











function setCustomData_po_atgunner_shared(obj, receiveData)
{
	if(!obj) return;

	local id = receiveData.readDword();//���������
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	obj.getVar("id").clear_vector();
	obj.getVar("id").push_vector(id);
	local parentChr = sq_ObjectToSQRCharacter(obj.getTopCharacter());



	switch(id)
	{
		case 0://ߤ����
			local ani = obj.getCustomAnimation(0);
			obj.setCurrentAnimation(ani);

			local attackInfo = sq_GetCustomAttackInfo(obj, 0);
			sq_SetCurrentAttackInfo(obj, attackInfo);

			local pAttack = sq_GetCurrentAttackInfo(obj);
			local damage = parentChr.sq_GetBonusRateWithPassive(48, -1, 0, 1.0);
			sq_SetCurrentAttackBonusRate(pAttack, damage);

			local size = 1.0;
			local sizeRate = 100;
			local sizeRate = sizeRate.tofloat() / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);

        	local pAni = obj.getCurrentAnimation();
		    local delay = pAni.getDelaySum(false) - 70;
			local HitCount = sq_GetIntData(parentChr, 48, 3);
			obj.setTimeEvent(0, delay / HitCount, 0, false);
			obj.sq_SetMaxHitCounterPerObject(HitCount);

            obj.setCustomRotate(true, -0.7);
		break;
		case 1://�������������棩
			local ani = obj.getCustomAnimation(1);
			obj.setCurrentAnimation(ani);

			local attackInfo_none = sq_GetCustomAttackInfo(obj, 1);
			local attackInfo_light = sq_GetCustomAttackInfo(obj, 2);
			local attackInfo_water = sq_GetCustomAttackInfo(obj, 3);
			local attackInfo_fire = sq_GetCustomAttackInfo(obj, 4);
			local appendage_light = CNSquirrelAppendage.sq_IsAppendAppendage(parentChr, "character/atgunner/appendage/ap_silverbullet.nut");
			appendage_light = parentChr.GetSquirrelAppendage("character/atgunner/appendage/ap_silverbullet.nut");
			local appendage_water = CNSquirrelAppendage.sq_IsAppendAppendage(parentChr, "character/atgunner/appendage/ap_freezebullet.nut");
			appendage_water = parentChr.GetSquirrelAppendage("character/atgunner/appendage/ap_freezebullet.nut");
			local appendage_fire = CNSquirrelAppendage.sq_IsAppendAppendage(parentChr, "character/atgunner/appendage/ap_flamebullet.nut");
			appendage_fire = parentChr.GetSquirrelAppendage("character/atgunner/appendage/ap_flamebullet.nut");
			if(appendage_light)
			{
				if(appendage_light.isValid())
				{
					sq_SetCurrentAttackInfo(obj, attackInfo_light);
				}
			}
			if(appendage_water)
			{
				if(appendage_water.isValid())
				{
					sq_SetCurrentAttackInfo(obj, attackInfo_water);
				}
			}
			if(appendage_fire)
			{
				if(appendage_fire.isValid())
				{
					sq_SetCurrentAttackInfo(obj, attackInfo_fire);
				}
			}
			else
			{
				sq_SetCurrentAttackInfo(obj, attackInfo_none);
			}

			local pAttack = sq_GetCurrentAttackInfo(obj);
			local damage = parentChr.sq_GetPowerWithPassive(109, -1, 0, -1, 1.0);
			sq_SetCurrentAttackPower(pAttack, damage);

			local size = 1.0;
			local sizeRate = 100;
			local sizeRate = sizeRate.tofloat() / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);

			obj.sq_SetMoveParticle("Particle/chargebuster.ptl", 0.0, -45.0);
            obj.setCustomRotate(true, -0.7);
		break;
		case 2://�������������棩
			local ani = obj.getCustomAnimation(2);
			obj.setCurrentAnimation(ani);

			local attackInfo_none = sq_GetCustomAttackInfo(obj, 1);
			local attackInfo_light = sq_GetCustomAttackInfo(obj, 2);
			local attackInfo_water = sq_GetCustomAttackInfo(obj, 3);
			local attackInfo_fire = sq_GetCustomAttackInfo(obj, 4);
			local appendage_light = CNSquirrelAppendage.sq_IsAppendAppendage(parentChr, "character/atgunner/appendage/ap_silverbullet.nut");
			appendage_light = parentChr.GetSquirrelAppendage("character/atgunner/appendage/ap_silverbullet.nut");
			local appendage_water = CNSquirrelAppendage.sq_IsAppendAppendage(parentChr, "character/atgunner/appendage/ap_freezebullet.nut");
			appendage_water = parentChr.GetSquirrelAppendage("character/atgunner/appendage/ap_freezebullet.nut");
			local appendage_fire = CNSquirrelAppendage.sq_IsAppendAppendage(parentChr, "character/atgunner/appendage/ap_flamebullet.nut");
			appendage_fire = parentChr.GetSquirrelAppendage("character/atgunner/appendage/ap_flamebullet.nut");
			if(appendage_light)
			{
				if(appendage_light.isValid())
				{
					sq_SetCurrentAttackInfo(obj, attackInfo_light);
				}
			}
			if(appendage_water)
			{
				if(appendage_water.isValid())
				{
					sq_SetCurrentAttackInfo(obj, attackInfo_water);
				}
			}
			if(appendage_fire)
			{
				if(appendage_fire.isValid())
				{
					sq_SetCurrentAttackInfo(obj, attackInfo_fire);
				}
			}
			else
			{
				sq_SetCurrentAttackInfo(obj, attackInfo_none);
			}

			local pAttack = sq_GetCurrentAttackInfo(obj);
			local damage = parentChr.sq_GetPowerWithPassive(109, -1, 0, -1, 1.0);
			sq_SetCurrentAttackPower(pAttack, damage);

			local size = 1.0;
			local sizeRate = 100;
			local sizeRate = sizeRate.tofloat() / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);

			obj.sq_SetMoveParticle("Particle/chargebuster.ptl", 0.0, -45.0);
            obj.setCustomRotate(true, -0.7);
		break;
		case 3://�����������棩
			local ani = obj.getCustomAnimation(3);
			obj.setCurrentAnimation(ani);

			local attackInfo_none = sq_GetCustomAttackInfo(obj, 1);
			local attackInfo_light = sq_GetCustomAttackInfo(obj, 2);
			local attackInfo_water = sq_GetCustomAttackInfo(obj, 3);
			local attackInfo_fire = sq_GetCustomAttackInfo(obj, 4);
			local appendage_light = CNSquirrelAppendage.sq_IsAppendAppendage(parentChr, "character/atgunner/appendage/ap_silverbullet.nut");
			appendage_light = parentChr.GetSquirrelAppendage("character/atgunner/appendage/ap_silverbullet.nut");
			local appendage_water = CNSquirrelAppendage.sq_IsAppendAppendage(parentChr, "character/atgunner/appendage/ap_freezebullet.nut");
			appendage_water = parentChr.GetSquirrelAppendage("character/atgunner/appendage/ap_freezebullet.nut");
			local appendage_fire = CNSquirrelAppendage.sq_IsAppendAppendage(parentChr, "character/atgunner/appendage/ap_flamebullet.nut");
			appendage_fire = parentChr.GetSquirrelAppendage("character/atgunner/appendage/ap_flamebullet.nut");
			if(appendage_light)
			{
				if(appendage_light.isValid())
				{
					sq_SetCurrentAttackInfo(obj, attackInfo_light);
				}
			}
			if(appendage_water)
			{
				if(appendage_water.isValid())
				{
					sq_SetCurrentAttackInfo(obj, attackInfo_water);
				}
			}
			if(appendage_fire)
			{
				if(appendage_fire.isValid())
				{
					sq_SetCurrentAttackInfo(obj, attackInfo_fire);
				}
			}
			else
			{
				sq_SetCurrentAttackInfo(obj, attackInfo_none);
			}

			local pAttack = sq_GetCurrentAttackInfo(obj);
			local damage = parentChr.sq_GetPowerWithPassive(109, -1, 0, -1, 1.0);
			sq_SetCurrentAttackPower(pAttack, damage);

			local size = 1.0;
			local sizeRate = 100;
			local sizeRate = sizeRate.tofloat() / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);

			obj.sq_SetMoveParticle("Particle/chargebuster.ptl", 0.0, -45.0);
            obj.setCustomRotate(true, -0.8);
		break;
		case 4://���������Pao��
			local ani = obj.getCustomAnimation(4);
			obj.setCurrentAnimation(ani);

			local attackInfo_none = sq_GetCustomAttackInfo(obj, 1);
			local attackInfo_light = sq_GetCustomAttackInfo(obj, 2);
			local attackInfo_water = sq_GetCustomAttackInfo(obj, 3);
			local attackInfo_fire = sq_GetCustomAttackInfo(obj, 4);
			local appendage_light = CNSquirrelAppendage.sq_IsAppendAppendage(parentChr, "character/atgunner/appendage/ap_silverbullet.nut");
			appendage_light = parentChr.GetSquirrelAppendage("character/atgunner/appendage/ap_silverbullet.nut");
			local appendage_water = CNSquirrelAppendage.sq_IsAppendAppendage(parentChr, "character/atgunner/appendage/ap_freezebullet.nut");
			appendage_water = parentChr.GetSquirrelAppendage("character/atgunner/appendage/ap_freezebullet.nut");
			local appendage_fire = CNSquirrelAppendage.sq_IsAppendAppendage(parentChr, "character/atgunner/appendage/ap_flamebullet.nut");
			appendage_fire = parentChr.GetSquirrelAppendage("character/atgunner/appendage/ap_flamebullet.nut");
			if(appendage_light)
			{
				if(appendage_light.isValid())
				{
					sq_SetCurrentAttackInfo(obj, attackInfo_light);
				}
			}
			if(appendage_water)
			{
				if(appendage_water.isValid())
				{
					sq_SetCurrentAttackInfo(obj, attackInfo_water);
				}
			}
			if(appendage_fire)
			{
				if(appendage_fire.isValid())
				{
					sq_SetCurrentAttackInfo(obj, attackInfo_fire);
				}
			}
			else
			{
				sq_SetCurrentAttackInfo(obj, attackInfo_none);
			}

			local pAttack = sq_GetCurrentAttackInfo(obj);
			local damage = parentChr.sq_GetPowerWithPassive(109, -1, 0, -1, 1.0);
			sq_SetCurrentAttackPower(pAttack, damage);

			local size = 1.0;
			local sizeRate = 100;
			local sizeRate = sizeRate.tofloat() / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);

			obj.sq_SetMoveParticle("Particle/chargebuster.ptl", 0.0, -45.0);
            obj.setCustomRotate(true, -0.8);
		break;
		case 5://�������������
			local ani = obj.getCustomAnimation(5);
			obj.setCurrentAnimation(ani);

			local attackInfo_none = sq_GetCustomAttackInfo(obj, 1);
			local attackInfo_light = sq_GetCustomAttackInfo(obj, 2);
			local attackInfo_water = sq_GetCustomAttackInfo(obj, 3);
			local attackInfo_fire = sq_GetCustomAttackInfo(obj, 4);
			local appendage_light = CNSquirrelAppendage.sq_IsAppendAppendage(parentChr, "character/atgunner/appendage/ap_silverbullet.nut");
			appendage_light = parentChr.GetSquirrelAppendage("character/atgunner/appendage/ap_silverbullet.nut");
			local appendage_water = CNSquirrelAppendage.sq_IsAppendAppendage(parentChr, "character/atgunner/appendage/ap_freezebullet.nut");
			appendage_water = parentChr.GetSquirrelAppendage("character/atgunner/appendage/ap_freezebullet.nut");
			local appendage_fire = CNSquirrelAppendage.sq_IsAppendAppendage(parentChr, "character/atgunner/appendage/ap_flamebullet.nut");
			appendage_fire = parentChr.GetSquirrelAppendage("character/atgunner/appendage/ap_flamebullet.nut");
			if(appendage_light)
			{
				if(appendage_light.isValid())
				{
					sq_SetCurrentAttackInfo(obj, attackInfo_light);
				}
			}
			if(appendage_water)
			{
				if(appendage_water.isValid())
				{
					sq_SetCurrentAttackInfo(obj, attackInfo_water);
				}
			}
			if(appendage_fire)
			{
				if(appendage_fire.isValid())
				{
					sq_SetCurrentAttackInfo(obj, attackInfo_fire);
				}
			}
			else
			{
				sq_SetCurrentAttackInfo(obj, attackInfo_none);
			}

			local pAttack = sq_GetCurrentAttackInfo(obj);
			local damage = parentChr.sq_GetPowerWithPassive(109, -1, 0, -1, 1.0);
			sq_SetCurrentAttackPower(pAttack, damage);

			local size = 1.0;
			local sizeRate = 100;
			local sizeRate = sizeRate.tofloat() / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);

			obj.sq_SetMoveParticle("Particle/chargebuster.ptl", 0.0, -45.0);
            obj.setCustomRotate(true, -0.8);
		break;
		case 6://������������ȣ�
        	local ani = obj.getCustomAnimation(6);
			obj.setCurrentAnimation(ani);

			local attackInfo = sq_GetCustomAttackInfo(obj, 5);
			sq_SetCurrentAttackInfo(obj, attackInfo);

			local pAttack = sq_GetCurrentAttackInfo(obj);
            local damage = parentChr.sq_GetBonusRateWithPassive(53, -1, 0, 1.0);
			sq_SetCurrentAttackBonusRate(pAttack, damage);

			local size = 1.0;
			local skill_level = sq_GetSkillLevel(parentChr, 53);
			local sizeRate = sq_GetLevelData(parentChr, 53, 1, skill_level);
			local sizeRateUp = sq_GetIntData(parentChr, 53, 4);
            local sizeRateUp = sizeRateUp.tofloat() / 100.0;
			local sizeRate = (sizeRate * sizeRateUp).tofloat() / 150.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);
		break;
		case 7://�������������ᣩ
			sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
			local ani = obj.getCustomAnimation(7);
			obj.setCurrentAnimation(ani);

			local attackInfo = sq_GetCustomAttackInfo(obj, 6);
			sq_SetCurrentAttackInfo(obj, attackInfo);

			local pAttack = sq_GetCurrentAttackInfo(obj);
            local damage = parentChr.sq_GetPowerWithPassive(53, -1, 5, -1, 1.0);
			sq_SetCurrentAttackPower(pAttack, damage);

			local size = 1.0;
            local skill_level = sq_GetSkillLevel(parentChr, 53);
			local sizeRate = sq_GetLevelData(parentChr, 53, 2, skill_level);
			local sizeRateUp = sq_GetIntData(parentChr, 53, 5);
            local sizeRateUp = sizeRateUp.tofloat() / 200.0;
			local sizeRate = (sizeRate * sizeRateUp).tofloat() / 200.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);

			local HitInterval = sq_GetIntData(parentChr, 53, 0);
			local stayTime = sq_GetLevelData(parentChr, 53, 6, skill_level);
			obj.setTimeEvent(0, HitInterval, 0, false);
			obj.setTimeEvent(1, stayTime, 1, false);

        	sq_SetPause(obj, PAUSETYPE_OBJECT, 160);
		break;
		case 8://�����̪
			local ani = obj.getCustomAnimation(8);
			obj.setCurrentAnimation(ani);

			local attackInfo = sq_GetCustomAttackInfo(obj, 7);
			sq_SetCurrentAttackInfo(obj, attackInfo);

			local pAttack = sq_GetCurrentAttackInfo(obj);
            local damage = parentChr.sq_GetPowerWithPassive(78, -1, 0, -1, 1.0);
			sq_SetCurrentAttackPower(pAttack, damage);

			local skill_level = sq_GetSkillLevel(parentChr, 78);
			local act_rate = sq_GetLevelData(parentChr, 78, 1, skill_level);
			local act_level = sq_GetLevelData(parentChr, 78, 2, skill_level);
			local act_time = sq_GetLevelData(parentChr, 78, 3, skill_level);
			sq_SetChangeStatusIntoAttackInfo(pAttack, 0, ACTIVESTATUS_STUN, act_rate, act_level, act_time);

			local size = 1.0;
			local sizeRate = 100;
			local sizeRate = sizeRate.tofloat() / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);

			local pauseTime = receiveData.readWord();
			sq_SetPause(obj, PAUSETYPE_OBJECT, pauseTime);
		break;
		case 9://EMP��죨���������
		    obj.getVar("state").clear_vector();
			obj.getVar("state").push_vector(0);
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 0);
			obj.addSetStatePacket(10, pIntVec, STATE_PRIORITY_AUTO, false, "");
		break;
		case 10://EMP��죨���ޣ�
            obj.getVar("state").clear_vector();
			obj.getVar("state").push_vector(0);
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 0);
			obj.addSetStatePacket(11, pIntVec, STATE_PRIORITY_AUTO, false, "");
		break;
	}
}



function setState_po_atgunner_shared(obj, state, datas)
{
	if(!obj) return;

	local id = obj.getVar("id").get_vector(0);
    local state = obj.getVar("state").get_vector(0);
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	local parentChr = sq_ObjectToSQRCharacter(obj.getTopCharacter());



	switch(id)
	{
		case 9://EMP��죨���������
			switch(state)
			{
				case 0://EMP��죨���������
					local ani = obj.getCustomAnimation(9);
					obj.setCurrentAnimation(ani);

					local attackInfo = sq_GetCustomAttackInfo(obj, 8);
					sq_SetCurrentAttackInfo(obj, attackInfo);

					local pAttack = sq_GetCurrentAttackInfo(obj);
            		local damage = parentChr.sq_GetBonusRateWithPassive(98, -1, 3, 1.0);
					sq_SetCurrentAttackBonusRate(pAttack, damage);

					local size = 1.0;
					local sizeRate = 100;
					local sizeRate = sizeRate.tofloat() / 100.0;
					ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
					ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
					sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);

					local stayTime = sq_GetIntData(parentChr, 98, 7);
					obj.setTimeEvent(2, stayTime + 3500, 1, false);

					local xDistance = sq_GetDistancePos(x, parentChr.getDirection(), 0);
            		local zDistance = 0;
            		obj.getVar("Move").clear_vector();
            		obj.getVar("Move").push_vector(xDistance);
            		obj.getVar("Move").push_vector(zDistance);
				break;
				case 1://EMP��죨���ȣ�
			        local ani = obj.getCustomAnimation(12);
			        obj.setCurrentAnimation(ani);

			        local attackInfo = sq_GetCustomAttackInfo(obj, 9);
			        sq_SetCurrentAttackInfo(obj, attackInfo);

			        local pAttack = sq_GetCurrentAttackInfo(obj);
			        local damage = parentChr.sq_GetBonusRateWithPassive(98, -1, 2, 1.0);
			        sq_SetCurrentAttackBonusRate(pAttack, damage);

        		    local size = 1.0;
			        local sizeRate = 100;
			        local sizeRate = sizeRate.tofloat() / 100.0;
			        ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			        ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			        sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);

                    sq_SetMyShake(obj, 15, 300);
			        sq_flashScreen(obj, 0, 60, 0, 178, sq_RGB(215, 80, 47), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_COVER);
				break;
			}
		break;
		case 10://EMP��죨���ޣ�
			switch(state)
			{
				case 0://EMP��죨���ޣ�
			        local ani = obj.getCustomAnimation(10);
			        obj.setCurrentAnimation(ani);

			        local attackInfo = sq_GetCustomAttackInfo(obj, 8);
			        sq_SetCurrentAttackInfo(obj, attackInfo);

			        local pAttack = sq_GetCurrentAttackInfo(obj);
                    local damage = parentChr.sq_GetBonusRateWithPassive(98, -1, 0, 1.0);
			        sq_SetCurrentAttackBonusRate(pAttack, damage);

			        local size = 1.0;
			        local sizeRate = 100;
			        local sizeRate = sizeRate.tofloat() / 100.0;
			        ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			        ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			        sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);

			        local stayTime = sq_GetIntData(parentChr, 98, 7);
			        obj.setTimeEvent(1, stayTime + 3000, 1, false);

					sq_SetPause(obj, PAUSETYPE_OBJECT, 450);
				break;
                case 1://EMP��죨�����ﳣ�
			        local ani = obj.getCustomAnimation(11);
			        obj.setCurrentAnimation(ani);

			        local attackInfo = sq_GetCustomAttackInfo(obj, 8);
			        sq_SetCurrentAttackInfo(obj, attackInfo);

			        local pAttack = sq_GetCurrentAttackInfo(obj);
			        local damage = parentChr.sq_GetPowerWithPassive(98, -1, 1, -1, 1.0);
			        sq_SetCurrentAttackPower(pAttack, damage);

			        local size = 1.0;
			        local sizeRate = 100;
			        local sizeRate = sizeRate.tofloat() / 100.0;
			        ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			        ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			        sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);

			        local HitCount = sq_GetIntData(parentChr, 98, 1);
			        local stayTime = sq_GetIntData(parentChr, 98, 7);
			        obj.setTimeEvent(0, stayTime / HitCount, HitCount, false);
			        obj.setTimeEvent(1, stayTime, 1, false);
			        obj.setTimeEvent(3, stayTime / HitCount, HitCount, false);
			        obj.sq_SetMaxHitCounterPerObject(HitCount);
                break;
			}
		break;
	}
}



function onEndCurrentAni_po_atgunner_shared(obj)
{
	if(!obj) return;

	local id = obj.getVar("id").get_vector(0);
	local state = obj.getVar("state").get_vector(0);
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	local parentChr = sq_ObjectToSQRCharacter(obj.getTopCharacter());



	switch(id)
	{
		case 0://ߤ����
	        if(obj.isMyControlObject())
	        {
		        sq_SendDestroyPacketPassiveObject(obj);
	        }
		break;
		case 1://�������������棩
	        if(obj.isMyControlObject())
	        {
		        sq_SendDestroyPacketPassiveObject(obj);
	        }
		break;
		case 2://�������������棩
	        if(obj.isMyControlObject())
	        {
		        sq_SendDestroyPacketPassiveObject(obj);
	        }
		break;
		case 3://�����������棩
	        if(obj.isMyControlObject())
	        {
		        sq_SendDestroyPacketPassiveObject(obj);
	        }
		break;
		case 4://���������Pao��
	        if(obj.isMyControlObject())
	        {
		        sq_SendDestroyPacketPassiveObject(obj);
	        }
		break;
		case 5://�������������
	        if(obj.isMyControlObject())
	        {
		        sq_SendDestroyPacketPassiveObject(obj);
	        }
		break;
		case 6://������������ȣ�
	        if(obj.isMyControlObject())
	        {
		        sq_SendDestroyPacketPassiveObject(obj);
	        }
		break;
		case 7://�������������ᣩ
	        if(obj.isMyControlObject())
	        {
		        sq_SendDestroyPacketPassiveObject(obj);
	        }
		break;
		case 8://�����̪
	        if(obj.isMyControlObject())
	        {
		        sq_SendDestroyPacketPassiveObject(obj);
	        }
		break;
		case 9://EMP��죨���������
			switch(state)
			{
    			case 1://EMP��죨���ȣ�
	        		if(obj.isMyControlObject())
	        		{
		    		    sq_SendDestroyPacketPassiveObject(obj);
	        		}
				break;
			}
		break;
    	case 10://EMP��죨���ޣ�
			switch(state)
			{
				case 0://EMP��죨���ޣ�
                	obj.getVar("state").clear_vector();
			        obj.getVar("state").push_vector(1);
					local pIntVec = sq_GetGlobalIntVector();
					sq_IntVectorClear(pIntVec);
					sq_IntVectorPush(pIntVec, 0);
					obj.addSetStatePacket(11, pIntVec, STATE_PRIORITY_AUTO, false, "");
				break;
    			case 1://EMP��죨�����ﳣ�
	        		if(obj.isMyControlObject())
	        		{
		    		    sq_SendDestroyPacketPassiveObject(obj);
	        		}
				break;
			}
		break;
	}
}



function onKeyFrameFlag_po_atgunner_shared(obj, flagIndex)
{
	if(!obj) return false;

	local id = obj.getVar("id").get_vector(0);
    local state = obj.getVar("state").get_vector(0);
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	local parentChr = sq_ObjectToSQRCharacter(obj.getTopCharacter());



	switch(id)
	{
		case 8://�����̪
			switch(flagIndex)
			{
				case 10001:
                    if(obj.isMyControlObject())
	                {
				        obj.sq_PlaySound("R_FG_SNIPING_SUC");
                    }
				    sq_flashScreen(obj, 0, 60, 0, 178, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_COVER);
				break;
			}
		break;
		case 9://EMP��죨���������
			switch(state)
			{
				case 0://EMP��죨���������
					switch(flagIndex)
					{
						case 10001:
        					sq_SetMyShake(obj, 10, 300);
			        		sq_flashScreen(obj, 0, 60, 0, 178, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_COVER);
						break;
					}
				break;
			}
		break;
	}
	return true;
}



function procAppend_po_atgunner_shared(obj)
{
	if(!obj) return false;

	local id = obj.getVar("id").get_vector(0);
    local state = obj.getVar("state").get_vector(0);
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	local parentChr = sq_ObjectToSQRCharacter(obj.getTopCharacter());
    local pAni = obj.getCurrentAnimation();
	local currentT = sq_GetCurrentTime(pAni);



	switch(id)
	{
		case 1://�������������棩
            if(z = 0 && obj.isMyControlObject())
            {
                sq_SendDestroyPacketPassiveObject(obj);
            }
		break;
        case 2://�������������棩
            if(z = 0 && obj.isMyControlObject())
            {
                sq_SendDestroyPacketPassiveObject(obj);
            }
        break;
        case 3://�����������棩
            if(z = 0 && obj.isMyControlObject())
            {
                sq_SendDestroyPacketPassiveObject(obj);
            }
        break;
        case 4://���������Pao��
            if(z = 0 && obj.isMyControlObject())
            {
                sq_SendDestroyPacketPassiveObject(obj);
            }
        break;
        case 5://�������������
            if(z = 0 && obj.isMyControlObject())
            {
                sq_SendDestroyPacketPassiveObject(obj);
            }
        break;
        case 9://EMP��죨���������
			switch(state)
			{
    			case 0://EMP��죨���������
            		local xDistance = obj.getVar("Move").get_vector(0);
            		local zistance = obj.getVar("Move").get_vector(1);
            		local xAccel = sq_GetAccel(x, xDistance, currentT, 450, false);
            		local zAccel = sq_GetAccel(y, zistance, currentT, 450, false);
            		sq_setCurrentAxisPos(obj, 0, xAccel);
            		sq_setCurrentAxisPos(obj, 2, zAccel);
				break;
			}
        break;
	}
}



function onAttack_po_atgunner_shared(obj, damager, boundingBox, isStuck)
{
	if(!obj) return;

	local id = obj.getVar("id").get_vector(0);
    local state = obj.getVar("state").get_vector(0);
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	local parentChr = sq_ObjectToSQRCharacter(obj.getTopCharacter());



	switch(id)
	{
    	case 10://EMP��죨���ޣ�
			switch(state)
			{
				case 0://EMP��죨���ޣ�
			        if(damager.isObjectType(OBJECTTYPE_ACTIVE))
			        {
        	            local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, parentChr, 98, false, "character/atgunner/nitromotor/ap_empstorm.nut", true);
          	          	local skill_level = sq_GetSkillLevel(parentChr, 98);
			        	local appendageTime = sq_GetLevelData(parentChr, 98, 4, skill_level);
          	         	appendage.sq_SetValidTime(appendageTime);
                    	if(appendage) 
                    	{
                    	}
			        }
				break;
				case 1://EMP��죨�����ﳣ�
			        if(damager.isObjectType(OBJECTTYPE_ACTIVE))
			        {
			        	local HitEffect = sq_CreateDrawOnlyObject(obj, "passiveobject/unclebang_shared_passive_object/atgunner/animation/empstorm/attack_effect.ani", ENUM_DRAWLAYER_NORMAL, true);
			        	HitEffect.setCurrentPos(damager.getXPos(), damager.getYPos(), damager.getZPos() + sq_GetCenterZPos(boundingBox));
        	            local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, parentChr, 98, false, "character/atgunner/nitromotor/ap_empstorm.nut", true);
          	          	local skill_level = sq_GetSkillLevel(parentChr, 98);
			        	local appendageTime = sq_GetLevelData(parentChr, 98, 4, skill_level);
          	         	appendage.sq_SetValidTime(appendageTime);
                    	if(appendage) 
                    	{
                    	}
			        }
				break;
			}
		break;
	}
}



function onTimeEvent_po_atgunner_shared(obj, timeEventIndex, timeEventCount)
{
	if(!obj) return false;

	local id = obj.getVar("id").get_vector(0);
    local state = obj.getVar("state").get_vector(0);
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	local parentChr = sq_ObjectToSQRCharacter(obj.getTopCharacter());



	if(timeEventIndex == 0)
	{
		obj.resetHitObjectList();
	}
	if(timeEventIndex == 1)
	{
		if(obj.isMyControlObject())
		{
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
	if(timeEventIndex == 2)
	{
    	obj.getVar("state").clear_vector();
		obj.getVar("state").push_vector(1);
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 0);
		obj.addSetStatePacket(10, pIntVec, STATE_PRIORITY_AUTO, false, "");
	}
	if(timeEventIndex == 3)
	{
    	sq_SetMyShake(obj, 3, 150);
		obj.sq_PlaySound("R_EMPSTORM_ELEC");
		local ran_rotate1 = sq_getRandom(0, 360);
		local ran_rotate2 = sq_getRandom(0, 360);
		local ran_rotate1 = ran_rotate1.tofloat();
		local ran_rotate2 = ran_rotate2.tofloat();
		als_ani_ATG(obj, "passiveobject/unclebang_shared_passive_object/atgunner/animation/empstorm/empstorm_thunder1.ani", 0, 0, 75, ran_rotate1, 100, 1, 1.0);
		als_ani_ATG(obj, "passiveobject/unclebang_shared_passive_object/atgunner/animation/empstorm/empstorm_thunder2.ani", 0, 0, 75, ran_rotate1 + 30, 100, 1, 1.0);
		als_ani_ATG(obj, "passiveobject/unclebang_shared_passive_object/atgunner/animation/empstorm/empstorm_thunder3.ani", 0, 0, 75, ran_rotate1 + 45, 100, 1, 1.0);
		als_ani_ATG(obj, "passiveobject/unclebang_shared_passive_object/atgunner/animation/empstorm/empstorm_thunder4.ani", 0, 0, 75, ran_rotate2, 100, 1, 1.0);
		als_ani_ATG(obj, "passiveobject/unclebang_shared_passive_object/atgunner/animation/empstorm/empstorm_thunder5.ani", 0, 0, 75, ran_rotate2 - 30, 100, 1, 1.0);
		als_ani_ATG(obj, "passiveobject/unclebang_shared_passive_object/atgunner/animation/empstorm/empstorm_thunder6.ani", 0, 0, 75, ran_rotate2 - 45, 100, 1, 1.0);
		als_ani_ATG(obj, EMPSTORM_THUNDER_ANI_PATH[sq_getRandom(0, 7)], 0, 0, 75, 0, 100, 1, 1.0);
		als_ani_ATG(obj, EMPSTORM_THUNDER_ANI_PATH[sq_getRandom(0, 7)], 0, 0, 75, 0, 100, 1, 1.0);
	}
}



EMPSTORM_THUNDER_ANI_PATH <-[
 "passiveobject/character/gunner/animation/empstorm/elec_dodge1.ani",
 "passiveobject/character/gunner/animation/empstorm/elec_dodge2.ani",
 "passiveobject/character/gunner/animation/empstorm/elec_dodge3.ani",
 "passiveobject/character/gunner/animation/empstorm/elec_dodge4.ani",
 "passiveobject/character/gunner/animation/empstorm/elec_dodge5.ani",
 "passiveobject/character/gunner/animation/empstorm/elec_dodge6.ani",
 "passiveobject/character/gunner/animation/empstorm/elec_dodge7.ani",
 "passiveobject/character/gunner/animation/empstorm/elec_dodge8.ani",
];