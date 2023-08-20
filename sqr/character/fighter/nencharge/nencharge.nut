NENCHARGE_BALL_COUNT <- 0

//onStartDungeon
function initNencharge(obj) {
	local skillLevel = sq_GetSkillLevel(obj, SKILL_NENCHARGE);
	if (skillLevel <= 0) return;
	NENCHARGE_BALL_COUNT = 3;
	appendNenchargeBuff(obj);
}

//draw/proc
function enableNenchargeSkillsCharge_Proc(obj) {
	local skillLevel = sq_GetSkillLevel(obj, SKILL_NENCHARGE);
	if (skillLevel <= 0) return;
	local x = obj.getXPos();
	local y = obj.getYPos();
	local z = obj.getZPos();
	local maxT = sq_GetLevelData(obj, SKILL_NENCHARGE, 0, skillLevel);
	local time = sq_GetLevelData(obj, SKILL_NENCHARGE, 1, skillLevel);
	local superArmorTime = sq_GetLevelData(obj, SKILL_NENCHARGE, 2, skillLevel);
	local addAttackSpeed = sq_GetLevelData(obj, SKILL_NENCHARGE, 3, skillLevel);
	local addAttackRate = sq_GetLevelData(obj, SKILL_NENCHARGE, 4, skillLevel);
	local rSizeRate = sq_GetLevelData(obj, SKILL_NENCHARGE, 5, skillLevel);
	local eSizeRate = sq_GetLevelData(obj, SKILL_NENCHARGE, 6, skillLevel);
	rSizeRate = rSizeRate.tofloat() / 100.0;
	eSizeRate = eSizeRate.tofloat() / 100.0;
	local pSkillIndex = obj.getCurrentSkillIndex();
	switch (pSkillIndex) {
	case 15:
		local bDownKey = obj.isDownSkillLastKey();
		local stateTimer = obj.sq_GetStateTimer();
		if (bDownKey && stateTimer <= maxT && !obj.getVar("nenchargeEffect_limit0").getBool(0)) {
			obj.getVar("nenchargeEffect_limit0").setBool(0, true);
			obj.setEnableChangeState(false);
		}
		else if (bDownKey && stateTimer > maxT && !obj.getVar("nenchargeEffect_limit1").getBool(0)) {
			obj.getVar("nenchargeEffect_limit1").setBool(0, true);
			obj.getVar("isChangeRoarStun").setBool(0, true);
		}
		else if (!bDownKey || stateTimer > maxT) {
			obj.setEnableChangeState(true);

			appendNenchargeBuff(obj);

			obj.getVar("nenchargeEffect_limit0").setBool(0, false);
			obj.getVar("nenchargeEffect_limit1").setBool(0, false);
		}
		break;
	case 16:
		local bDownKey = obj.isDownSkillLastKey();
		local stateTimer = obj.sq_GetStateTimer();
		if (bDownKey && stateTimer <= maxT && !obj.getVar("nenchargeEffect_limit0").getBool(0)) {
			obj.getVar("nenchargeEffect_limit0").setBool(0, true);
			obj.setEnableChangeState(false);
		}
		else if (bDownKey && stateTimer > maxT && !obj.getVar("nenchargeEffect_limit1").getBool(0)) {
			obj.getVar("nenchargeEffect_limit1").setBool(0, true);
			obj.getVar("isChangeEnergyField").setBool(0, true);
		}
		else if (!bDownKey || stateTimer > maxT) {
			obj.setEnableChangeState(true);

			appendNenchargeBuff(obj);

			obj.getVar("nenchargeEffect_limit0").setBool(0, false);
			obj.getVar("nenchargeEffect_limit1").setBool(0, false);
		}
		break;
	case 42:
		local bDownKey = obj.isDownSkillLastKey();
		local stateTimer = obj.sq_GetStateTimer();
		if (bDownKey && stateTimer <= maxT && !obj.getVar("nenchargeEffect_limit0").getBool(0)) {
			obj.getVar("nenchargeEffect_limit0").setBool(0, true);
			obj.setEnableChangeState(false);
		}
		else if (bDownKey && stateTimer > maxT && !obj.getVar("nenchargeEffect_limit1").getBool(0)) {
			obj.getVar("nenchargeEffect_limit1").setBool(0, true);
		}
		else if (!bDownKey || stateTimer > maxT) {
			obj.setEnableChangeState(true);

			appendNenchargeBuff(obj);

			obj.getVar("nenchargeEffect_limit0").setBool(0, false);
			obj.getVar("nenchargeEffect_limit1").setBool(0, false);
		}
		break;
	case 90:
		local bDownKey = obj.isDownSkillLastKey();
		local stateTimer = obj.sq_GetStateTimer();
		if (bDownKey && stateTimer <= maxT && stateTimer >= 200 && !obj.getVar("nenchargeEffect_limit0").getBool(0)) {
			obj.getVar("nenchargeEffect_limit0").setBool(0, true);
			sq_SetPause(obj, PAUSETYPE_OBJECT, maxT);
		}
		else if (bDownKey && stateTimer > maxT && !obj.getVar("nenchargeEffect_limit1").getBool(0)) {
			obj.getVar("nenchargeEffect_limit1").setBool(0, true);
		}
		else if (!bDownKey || stateTimer > maxT) {
			sq_SetPause(obj, PAUSETYPE_OBJECT, 0);

			appendNenchargeBuff(obj);

			obj.getVar("nenchargeEffect_limit0").setBool(0, false);
			obj.getVar("nenchargeEffect_limit1").setBool(0, false);
		}
		break;
	case 98:
		local bDownKey = obj.isDownSkillLastKey();
		local stateTimer = obj.sq_GetStateTimer();
		if (bDownKey && stateTimer <= maxT && !obj.getVar("nenchargeEffect_limit0").getBool(0)) {
			obj.getVar("nenchargeEffect_limit0").setBool(0, true);
			obj.setEnableChangeState(false);
		}
		else if (bDownKey && stateTimer > maxT && !obj.getVar("nenchargeEffect_limit1").getBool(0)) {
			obj.getVar("nenchargeEffect_limit1").setBool(0, true);
		}
		else if (!bDownKey || stateTimer > maxT) {
			obj.setEnableChangeState(true);

			appendNenchargeBuff(obj);

			obj.getVar("nenchargeEffect_limit0").setBool(0, false);
			obj.getVar("nenchargeEffect_limit1").setBool(0, false);
		}
		break;
	case 100:
		local bDownKey = obj.isDownSkillLastKey();
		local stateTimer = obj.sq_GetStateTimer();
		if (bDownKey && stateTimer <= maxT && !obj.getVar("nenchargeEffect_limit0").getBool(0)) {
			obj.getVar("nenchargeEffect_limit0").setBool(0, true);
			obj.setEnableChangeState(false);
		}
		else if (bDownKey && stateTimer > maxT && !obj.getVar("nenchargeEffect_limit1").getBool(0)) {
			obj.getVar("nenchargeEffect_limit1").setBool(0, true);
		}
		else if (!bDownKey || stateTimer > maxT) {
			obj.setEnableChangeState(true);

			appendNenchargeBuff(obj);

			obj.getVar("nenchargeEffect_limit0").setBool(0, false);
			obj.getVar("nenchargeEffect_limit1").setBool(0, false);
		}
		break;
	}
	local isAppend = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/fighter/nencharge/ap_nenchargeball.nut");
	if (!isAppend && NENCHARGE_BALL_COUNT >= 2) {
		NENCHARGE_BALL_COUNT -= 1;
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_NENCHARGE, false, "character/fighter/nencharge/ap_nenchargeball.nut", false);
		appendage.getVar("skillData").clear_vector();
		appendage.getVar("skillData").push_vector(NENCHARGE_BALL_COUNT);
		appendage.getVar("skillData").push_vector(time);
		appendage.getVar("skillData").push_vector(superArmorTime);
		appendage.getVar("skillData").push_vector(addAttackSpeed);
		appendage.getVar("skillData").push_vector(addAttackRate);
		appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_NENCHARGE, skillLevel);
		appendage.sq_SetValidTime(time);
		CNSquirrelAppendage.sq_Append(appendage, obj, obj);
	}

	local RoarStunCount = obj.getMyPassiveObjectCount(21005);
	for (local i = 0; i < RoarStunCount; ++i) {
		local RoarStun = obj.getMyPassiveObject(21005, i);
		if (!RoarStun) continue;
		if (RoarStun.isMyControlObject() && !RoarStun.getVar("isChanged").getBool(0) && obj.getVar("isChangeRoarStun").getBool(0)) {
			RoarStun.getVar("isChanged").setBool(0, true);
			obj.getVar("isChangeRoarStun").setBool(0, false);
			local pAni = RoarStun.getCurrentAnimation();
			pAni.setImageRateFromOriginal(rSizeRate, rSizeRate);
			pAni.setAutoLayerWorkAnimationAddSizeRate(rSizeRate);
			sq_SetAttackBoundingBoxSizeRate(pAni, rSizeRate, rSizeRate, rSizeRate);
		}
	}

	local EnergyFieldCount = obj.getMyPassiveObjectCount(21006);
	for (local i = 0; i < EnergyFieldCount; ++i) {
		local EnergyField = obj.getMyPassiveObject(21006, i);
		if (!EnergyField) continue;
		if (EnergyField.isMyControlObject() && !EnergyField.getVar("isChanged").getBool(0) && obj.getVar("isChangeEnergyField").getBool(0)) {
			EnergyField.getVar("isChanged").setBool(0, true);
			obj.getVar("isChangeEnergyField").setBool(0, false);
			local pAni = EnergyField.getCurrentAnimation();
			pAni.setImageRateFromOriginal(eSizeRate, eSizeRate);
			pAni.setAutoLayerWorkAnimationAddSizeRate(eSizeRate);
			sq_SetAttackBoundingBoxSizeRate(pAni, eSizeRate, eSizeRate, eSizeRate);
		}
	}
}

//draw/proc
function nenGuardFollow_Nencharge(obj) {
	local objectManager = obj.getObjectManager();
	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i += 1) {
		local object = objectManager.getCollisionObject(i);
		if (object && !obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_CHARACTER)) {
			local sqrChr = sq_GetCNRDObjectToSQRCharacter(object);
			local guardCount = sqrChr.getMyPassiveObjectCount(30517);
			for (local i = 0; i < guardCount; ++i) {
				local guard = sqrChr.getMyPassiveObject(30517, i);
				local guardobj = sq_GetCNRDObjectToSQRCharacter(guard);;
				if (!guard) continue;
				sq_SetCurrentPos(guard, sqrChr.getXPos(), sqrChr.getYPos(), sqrChr.getZPos());

				//sq_moveWithParent(object, guard);
			}
		}
	}
}

function appendNenchargeBuff(obj) {
	local skillLevel = sq_GetSkillLevel(obj, SKILL_NENCHARGE);
	local time = sq_GetLevelData(obj, SKILL_NENCHARGE, 1, skillLevel);
	local superArmorTime = sq_GetLevelData(obj, SKILL_NENCHARGE, 2, skillLevel);
	local addAttackSpeed = sq_GetLevelData(obj, SKILL_NENCHARGE, 3, skillLevel);
	local addAttackRate = sq_GetLevelData(obj, SKILL_NENCHARGE, 4, skillLevel);
	if (NENCHARGE_BALL_COUNT <= 2 && obj.getVar("nenchargeEffect_limit1").getBool(0)) {
		local appendage = obj.GetSquirrelAppendage("character/fighter/nencharge/ap_nenchargeball.nut");
		if (appendage) appendage.setValid(false);
		NENCHARGE_BALL_COUNT += 1;
		appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_NENCHARGE, false, "character/fighter/nencharge/ap_nenchargeball.nut", false);
		appendage.getVar("skillData").clear_vector();
		appendage.getVar("skillData").push_vector(NENCHARGE_BALL_COUNT);
		appendage.getVar("skillData").push_vector(time);
		appendage.getVar("skillData").push_vector(superArmorTime);
		appendage.getVar("skillData").push_vector(addAttackSpeed);
		appendage.getVar("skillData").push_vector(addAttackRate);
		appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_NENCHARGE, skillLevel);
		appendage.sq_SetValidTime(time);
		CNSquirrelAppendage.sq_Append(appendage, obj, obj);
	}
	else if (NENCHARGE_BALL_COUNT == 3 && obj.getVar("nenchargeEffect_limit1").getBool(0)) {
		local appendage = obj.GetSquirrelAppendage("character/fighter/nencharge/ap_nenchargeball.nut");
		if (appendage) appendage.setValid(false);
		appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_NENCHARGE, false, "character/fighter/nencharge/ap_nenchargeball.nut", false);
		appendage.getVar("skillData").clear_vector();
		appendage.getVar("skillData").push_vector(NENCHARGE_BALL_COUNT);
		appendage.getVar("skillData").push_vector(time);
		appendage.getVar("skillData").push_vector(superArmorTime);
		appendage.getVar("skillData").push_vector(addAttackSpeed);
		appendage.getVar("skillData").push_vector(addAttackRate);
		appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_NENCHARGE, skillLevel);
		appendage.sq_SetValidTime(time);
		CNSquirrelAppendage.sq_Append(appendage, obj, obj);
	}
}