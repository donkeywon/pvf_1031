
function checkExecutableSkill_IceSword2(obj)
{
	if(!obj) return false;

	local b_useskill = obj.sq_IsUseSkill(SKILL_ICE_SWORD2);
	if(b_useskill) {		
		obj.sq_AddSetStatePacket(STATE_ICE_SWORD3, STATE_PRIORITY_USER, false);
		return true;
	}		
	return false;
}

function checkCommandEnable_IceSword2(obj)
{
	if(!obj) return false;

	local state = obj.sq_GetState();	
	if(state == STATE_ATTACK) {
		return obj.sq_IsCommandEnable(SKILL_ICE_SWORD2);
	} 

	return true;
}



function onSetState_IceSword2(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	
	obj.sq_StopMove();
	obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICE_SWORD);
	
	// ??δ?? ?????? ??? ??? ?????? ???? ????? (100~)
	local speed100Rate = obj.sq_GetIntData(SKILL_ICE_SWORD2, 0); // 0. ??δ?? ?????? ???) ??? ?????? ???? ????? (100~)
	local speedRate = speed100Rate.tofloat() / 100.0;
	
	obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_ICE_SWORD);	
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
			SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, speedRate, speedRate);
	//obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
			//SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);	
	
	// ?????? ????? ???????.
	obj.sq_SetApplyConversionSkill();
	
	local damage = obj.sq_GetBonusRateWithPassive(SKILL_ICE_SWORD2 , STATE_ICE_SWORD3, 0, 1.0);
	obj.sq_SetCurrentAttackBonusRate(damage);		
	obj.sq_setCustomHitEffectFileName("Character/Mage/Effect/Animation/ATIceSword/05_2_smoke_dodge .ani");	
	
	addElementalChain_ATMage(obj, ENUM_ELEMENT_WATER);
	
	
	// ??? ????? ???
	// ????? ????? ?????? 3??? ?????? ???, 1, 2??? ????? ??????.
	local skillLevel = sq_GetSkillLevel(obj, SKILL_ICE_SWORD2_EX);
	if (skillLevel > 0)
	{
		local var = obj.getVar();
		var.clear_vector();
		var.push_vector(0);
	}
}


function onEndCurrentAni_IceSword2(obj)
{
	if(!obj) return;

	obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
}

function onAttack_IceSword(obj, damager, boundingBox, isStuck)
{
	if (!obj || !damager) return;
	
	sq_EffectLayerAppendage(damager,sq_RGB(0,144,255),150,0,0,240);	
}


function onKeyFrameFlag_IceSword2(obj, flagIndex)
{
	if(!obj) return true;
	
	if (flagIndex == 1)
	{
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_ICE_SWORD);
		// ?????? ????? ???????.
		obj.sq_SetApplyConversionSkill();
	
		local damage = obj.sq_GetBonusRateWithPassive(SKILL_ICE_SWORD2 , STATE_ICE_SWORD3, 0, 1.0);
		obj.sq_SetCurrentAttackBonusRate(damage);				
	}
	else if (flagIndex == 2)
	{
		//???
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_ICE_SWORD_LAST);	
		// ?????? ????? ???????.
		obj.sq_SetApplyConversionSkill();
		
		local skill_level	= sq_GetSkillLevel(obj, SKILL_ICE_SWORD2);
		local damage = obj.sq_GetBonusRateWithPassive(SKILL_ICE_SWORD2 , STATE_ICE_SWORD3, 1, 1.0);
		obj.sq_SetCurrentAttackBonusRate(damage);	
		
		local skill_level	= sq_GetSkillLevel(obj, SKILL_ICE_SWORD2);	
		local attackInfo = sq_GetCurrentAttackInfo(obj);
		
		printc("attackInfo " + attackInfo);
		if (!attackInfo) return;
		
		// 0.1,2? ?????%   1.??? ?????%  2.??? ???? ????   3.?????? ???   4.?????? ?e?   
		local ice_power	= sq_GetLevelData(obj, SKILL_ICE_SWORD2, 2, skill_level);
		local ice_prob	= sq_GetLevelData(obj, SKILL_ICE_SWORD2, 3, skill_level);
		local ice_time	= sq_GetLevelData(obj, SKILL_ICE_SWORD2, 4, skill_level);
		
		sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, ACTIVESTATUS_SLOW, ice_prob, ice_power, ice_time);		
	}
	else if (flagIndex == 3)
	{
		// ??? ????? ???
		// ????? ????? ?????? 3??? ?????? ???, 1, 2??? ????? ??????.
		local skillLevel = sq_GetSkillLevel(obj, SKILL_ICE_SWORD2_EX);	
		if (skillLevel > 0)
		{
			// ?????忡???? ?????? ??′?.
			if (checkModuleType(MODULE_TYPE_PVP_TYPE))
				return true;
			
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_ICE_SWORD);
			// ?????? ????? ???????.
			obj.sq_SetApplyConversionSkill();
	
			local damage = obj.sq_GetBonusRateWithPassive(SKILL_ICE_SWORD2 , STATE_ICE_SWORD3, 0, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);
			
			// 0.1,2? ?????%   1.??? ?????%  2.??? ???? ????   3.?????? ???   4.?????? ?e?
			local skill_level = sq_GetSkillLevel(obj, SKILL_ICE_SWORD2);
			local attackInfo = sq_GetCurrentAttackInfo(obj);
			local ice_power = sq_GetLevelData(obj, SKILL_ICE_SWORD2, 2, skill_level);
			local ice_prob = sq_GetLevelData(obj, SKILL_ICE_SWORD2, 3, skill_level);
			local ice_time = sq_GetLevelData(obj, SKILL_ICE_SWORD2, 4, skill_level);
			sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, ACTIVESTATUS_SLOW, ice_prob, ice_power, ice_time);		
		
		
			local var = obj.getVar();
			local flag = var.get_vector(0);
			
			if (flag <= 0)
			{	// ù ????????? ???????.
				local animation = sq_GetCurrentAnimation(obj);
				obj.sq_SetCurrentTimeByFrame(animation, 0);
				var.set_vector(0, 1);
			}
			else
			{
				// ????? ????????.
				if (obj.isMyControlObject())
					obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
			}
		}
	}
		
	return true;
}