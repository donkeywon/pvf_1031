function setCharacterFristAnimation_IceSword(obj) {
	local level = sq_GetSkillLevel(obj, SKILL_ICE_SWORD);
	if (level > 0) {
		createFristAnimationPooledObject(obj, "character/mage/atanimation/icesword.ani");

		createFristAnimationPooledObject(obj, "character/mage/atanimation/als_ani/atcrystalblade/cbeff_smoke.ani");
		createFristAnimationPooledObject(obj, "character/mage/atanimation/zrr/iceswordup/crystalblade.ani");

	}
}

function checkExecutableSkill_IceSword(obj) {
	if (!obj) return false;

	local b_useskill = obj.sq_IsUseSkill(SKILL_ICE_SWORD);
	if (b_useskill) {
		obj.sq_AddSetStatePacket(STATE_ICE_SWORD, STATE_PRIORITY_USER, false);
		return true;
	}
	return false;
}

function checkCommandEnable_IceSword(obj) {
	if (!obj) return false;

	local state = obj.sq_GetState();
	if (state == STATE_ATTACK) {
		//		return obj.sq_IsCommandEnable(SKILL_ICE_SWORD);
	}

	return true;
}
//character/mage/atanimation/als_ani/atcrystalblade/cbeff_smoke.ani

function createIceSwordEffect(obj, damager) {
	/*
	local ani = sq_CreateAnimation("","character/mage/atanimation/als_ani/atcrystalblade/cbeff_smoke.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentPos(damager.getXPos() ,damager.getYPos() + 1,damager.getZPos());
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	
*/
}

function onSetState_IceSword(obj, state, datas, isResetTimer) {
	if (!obj) return;

	local skillLevel = sq_GetSkillLevel(obj, SKILL_ICESWORD_UP);
	if (skillLevel > 0) {
		obj.sq_StopMove();
		obj.getVar("dama").clear_obj_vector();

		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICESWORDUP_BODY);

		local speed100Rate = obj.sq_GetIntData(SKILL_ICE_SWORD, 0);
		local speedRate = speed100Rate.tofloat() / 100.0;

		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_ICE_SWORD);
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, speedRate, speedRate);

		obj.sq_SetApplyConversionSkill();

		local addRate = sq_GetLevelData(obj, SKILL_ICESWORD_UP, 0, skillLevel);
		local damage = obj.sq_GetBonusRateWithPassive(SKILL_ICE_SWORD, STATE_ICE_SWORD, 0, addRate.tofloat() / 100.0);
		obj.sq_SetCurrentAttackBonusRate(damage);

		/*local attackInfo = sq_GetCurrentAttackInfo(obj);
		local skill_level = sq_GetSkillLevel(obj, SKILL_ICE_SWORD);
		local ice_power = sq_GetLevelData(obj, SKILL_ICE_SWORD, 2, skill_level);
		local ice_prob = sq_GetLevelData(obj, SKILL_ICE_SWORD, 3, skill_level);
		local ice_time = sq_GetLevelData(obj, SKILL_ICE_SWORD, 4, skill_level);
		sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, ACTIVESTATUS_SLOW, ice_prob, ice_power, ice_time);*/

		//        createIceSwordEffect(obj,obj);
		obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("atanimation/als_ani/atcrystalblade/cbeff_smoke.ani"), 0, 0);

	} else {

		obj.sq_StopMove();
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICE_SWORD);

		// ũ�δ�Ŭ ������ �۾� ��ų ���ݼӵ� ���� ����Ÿ (100~)
		local speed100Rate = obj.sq_GetIntData(SKILL_ICE_SWORD, 0); // 0. ũ�δ�Ŭ ������ �۾�) ��ų ���ݼӵ� ���� ����Ÿ (100~)
		local speedRate = speed100Rate.tofloat() / 100.0;

		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_ICE_SWORD);
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, speedRate, speedRate);
		//obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
		//SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);

		// ������ ��ų�� �����Ѵ�.
		obj.sq_SetApplyConversionSkill();

		local damage = obj.sq_GetBonusRateWithPassive(SKILL_ICE_SWORD, STATE_ICE_SWORD, 0, 1.0);
		obj.sq_SetCurrentAttackBonusRate(damage);
		obj.sq_setCustomHitEffectFileName("Character/Mage/Effect/Animation/ATIceSword/05_2_smoke_dodge .ani");

		addElementalChain_ATMage(obj, ENUM_ELEMENT_WATER);

		// Ư�� ��ų�� ����
		// ����� ��ȭ�� �����ٸ� 3Ÿ�� �۵����� �ʰ�, 1, 2Ÿ�� �ѹ��� �ݺ��Ѵ�.
		local skillLevel = sq_GetSkillLevel(obj, SKILL_ICE_SWORD_EX);
		if (skillLevel > 0) {
			local var = obj.getVar();
			var.clear_vector();
			var.push_vector(0);
		}

	}
}

function onEndCurrentAni_IceSword(obj) {
	if (!obj) return;

	obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
}

function onAttack_IceSword(obj, damager, boundingBox, isStuck) {
	if (!obj || !damager) return;

	obj.getVar("dama").push_obj_vector(damager);
	local skillLevel = sq_GetSkillLevel(obj, SKILL_ICESWORD_UP);
	if (skillLevel > 0) {
		//        createIceSwordEffect(obj,damager);
	} else {
		sq_EffectLayerAppendage(damager, sq_RGB(0, 144, 255), 150, 0, 0, 240);

	}
}

function onKeyFrameFlag_IceSword(obj, flagIndex) {
	if (!obj) return true;
	local skillLevel = sq_GetSkillLevel(obj, SKILL_ICESWORD_UP);
	if (flagIndex == 1) {

		if (skillLevel > 0) {
			//obj.resetHitObjectList();
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_ICE_SWORD_LAST);
			obj.sq_SetApplyConversionSkill();
			local addRate = sq_GetLevelData(obj, SKILL_ICESWORD_UP, 0, skillLevel);
			local damage = obj.sq_GetBonusRateWithPassive(SKILL_ICE_SWORD, STATE_ICE_SWORD, 1, addRate.tofloat() / 100.0);
			obj.sq_SetCurrentAttackBonusRate(damage);

			local attackInfo = sq_GetCurrentAttackInfo(obj);
			if (!attackInfo) return;

			local skill_level = sq_GetSkillLevel(obj, SKILL_ICE_SWORD);
			local ice_power = sq_GetLevelData(obj, SKILL_ICE_SWORD, 2, skill_level);
			local ice_prob = sq_GetLevelData(obj, SKILL_ICE_SWORD, 3, skill_level);
			local ice_time = sq_GetLevelData(obj, SKILL_ICE_SWORD, 4, skill_level);

			sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, ACTIVESTATUS_SLOW, ice_prob, ice_power, ice_time);

		} else {
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_ICE_SWORD);
			// ������ ��ų�� �����Ѵ�.
			obj.sq_SetApplyConversionSkill();

			local damage = obj.sq_GetBonusRateWithPassive(SKILL_ICE_SWORD, STATE_ICE_SWORD, 0, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);
		}
	}
	else if (flagIndex == 2) {
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_ICE_SWORD_LAST);

		obj.sq_SetApplyConversionSkill();

		local skill_level = sq_GetSkillLevel(obj, SKILL_ICE_SWORD);
		local damage = obj.sq_GetBonusRateWithPassive(SKILL_ICE_SWORD, STATE_ICE_SWORD, 1, 1.0);
		obj.sq_SetCurrentAttackBonusRate(damage);

		local skill_level = sq_GetSkillLevel(obj, SKILL_ICE_SWORD);
		local attackInfo = sq_GetCurrentAttackInfo(obj);

		if (!attackInfo) return;

		// 0.1,2Ÿ ���ݷ�%   1.��Ÿ ���ݷ�%  2.�̼� ���� ����   3.�̼Ӱ��� Ȯ��   4.�̼Ӱ��� �ð�
		local ice_power = sq_GetLevelData(obj, SKILL_ICE_SWORD, 2, skill_level);
		local ice_prob = sq_GetLevelData(obj, SKILL_ICE_SWORD, 3, skill_level);
		local ice_time = sq_GetLevelData(obj, SKILL_ICE_SWORD, 4, skill_level);

		sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, ACTIVESTATUS_SLOW, ice_prob, ice_power, ice_time);
	}
	else if (flagIndex == 3) {
		local exSkillLevel = sq_GetSkillLevel(obj, SKILL_ICE_SWORD_EX);
		if (exSkillLevel > 0) {
			if (checkModuleType(MODULE_TYPE_PVP_TYPE)) return true;

			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_ICE_SWORD);

			obj.sq_SetApplyConversionSkill();

			local damage = obj.sq_GetBonusRateWithPassive(SKILL_ICE_SWORD, STATE_ICE_SWORD, 0, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);

			local skill_level = sq_GetSkillLevel(obj, SKILL_ICE_SWORD);
			local attackInfo = sq_GetCurrentAttackInfo(obj);
			local ice_power = sq_GetLevelData(obj, SKILL_ICE_SWORD, 2, skill_level);
			local ice_prob = sq_GetLevelData(obj, SKILL_ICE_SWORD, 3, skill_level);
			local ice_time = sq_GetLevelData(obj, SKILL_ICE_SWORD, 4, skill_level);
			sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, ACTIVESTATUS_SLOW, ice_prob, ice_power, ice_time);

			local var = obj.getVar();
			local flag = var.get_vector(0);

			if (flag <= 0) {
				local animation = sq_GetCurrentAnimation(obj);
				obj.sq_SetCurrentTimeByFrame(animation, 0);
				var.set_vector(0, 1);
			}
			else {
				if (obj.isMyControlObject()) obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
			}
		}
	}
	else if (flagIndex == 10) {

		local damager = obj.getVar("dama").get_obj_vector(0);
		local atk = obj.sq_GetBonusRateWithPassive(SKILL_ICE_SWORD, STATE_ICE_SWORD, 1, 1.0);

		if (damager) {
			sendIce75Passive(obj, damager, atk);
		}
	}

	return true;
}