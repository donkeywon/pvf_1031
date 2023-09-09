function setEnableCancelSkill_Mage(obj, isEnable) {
	if (!obj) return false;

	if (!obj.isMyControlObject()) return false;
	if (!isEnable) return true;
	if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/appendage/ap_bellatrix.nut")) {
		obj.setSkillCommandEnable(242, isEnable);
		obj.setSkillCommandEnable(243, isEnable);
		obj.setSkillCommandEnable(244, isEnable);
		obj.setSkillCommandEnable(245, isEnable);
	}
	obj.setSkillCommandEnable(246, isEnable);
	obj.setSkillCommandEnable(247, isEnable);
	obj.setSkillCommandEnable(249, isEnable);
	obj.setSkillCommandEnable(250, isEnable);
	obj.setSkillCommandEnable(251, isEnable);
	obj.setSkillCommandEnable(252, isEnable);
	obj.setSkillCommandEnable(253, isEnable);
	obj.setSkillCommandEnable(131, isEnable);
	obj.setSkillCommandEnable(132, isEnable);
	obj.setSkillCommandEnable(133, isEnable);
	obj.setSkillCommandEnable(134, isEnable);
	obj.setSkillCommandEnable(135, isEnable);
	obj.setSkillCommandEnable(136, isEnable);
	obj.setSkillCommandEnable(137, isEnable);
	obj.setSkillCommandEnable(138, isEnable);
	obj.setSkillCommandEnable(139, isEnable);
	obj.setSkillCommandEnable(126, isEnable);
	return true;
};

function addSetStatePacket_Mage(obj, state, datas) {
	if (!obj) return -1;
	switch (state) {
	case 27:
		local subState = obj.sq_GetVectorData(datas, 0);
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/appendage/ap_bellatrix.nut")) {
			if (subState == 0) {

				obj.sq_IntVectClear();
				obj.sq_IntVectPush(4);
				obj.sq_IntVectPush(1);
				obj.sq_AddSetStatePacket(248, STATE_PRIORITY_USER, true);
				return -1;
			}
		}
		break;
	case 25:
		local subState = obj.sq_GetVectorData(datas, 0);
		local subState2 = obj.sq_GetVectorData(datas, 1);
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/appendage/ap_bellatrix.nut")) {
			if (subState == 0 && subState2 == 68) {

				obj.sq_IntVectClear();
				obj.sq_IntVectPush(3);
				obj.sq_IntVectPush(1);
				obj.sq_AddSetStatePacket(248, STATE_PRIORITY_USER, true);
				return -1;
			}
		}
		break;
	case 31:
		local subState = obj.sq_GetVectorData(datas, 0);
		if (subState == 0) {

			obj.sq_IntVectClear();
			obj.sq_IntVectPush(1);
			obj.sq_AddSetStatePacket(31, STATE_PRIORITY_USER, true);
			return -1;
		}
		break;
	case 29:
		local subState = obj.sq_GetVectorData(datas, 0);
		if (subState == 0) {

			if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/dragondance/ap_dragondance_proc_skill.nut")) return 1;

			obj.sq_IntVectClear();
			if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/avatar/ap_avatar.nut")) obj.sq_IntVectPush(1);
			else if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/appendage/ap_bellatrix.nut")) {
				obj.sq_IntVectPush(2);
				obj.sq_IntVectPush(1);
			}
			else obj.sq_IntVectPush(0);
			obj.sq_AddSetStatePacket(248, STATE_PRIORITY_USER, true);
			return -1;
		}
		break;
	}
	return 1;
};

function flushCommandEnable_Mage(obj) {
	if (!obj) return 0;
	if (!obj.isInBattle()) {
		sq_SetAllCommandEnable(obj, false);
		return 2;
	}
	local skill = null;

	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/appendage/ap_bellatrix.nut")) {

		for (local SkillIndex = 242; SkillIndex <= 244; SkillIndex++) {
			skill = sq_GetSkill(obj, SkillIndex);
			if (skill) skill.setCommandEnable(false);
		}
		skill = sq_GetSkill(obj, 66);
		if (skill) skill.setCommandEnable(true);
		skill = sq_GetSkill(obj, 68);
		if (skill) skill.setCommandEnable(true);

		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/dragondance/ap_dragondance_proc_skill.nut")) {
			skill = sq_GetSkill(obj, 69);
			if (skill) skill.setCommandEnable(true);
		}
		return 2;
	}
	return 0;
};

function onChangeSkillEffect_Mage_New(obj, skillIndex, reciveData) {
	if (!obj) return;
	switch (skillIndex) {
	case 245:
		local Skilleffect = reciveData.readWord();
		switch (Skilleffect) {
		case 1:
			onAppendApEff_qq506807329_mage_avatar(obj);
			break;
		}
		break;
	case 249:
	case 250:
	case 251:
	case 253:
		local Skilleffect = reciveData.readWord();
		switch (Skilleffect) {
		case 1:
			local sestoelemento = reciveData.readDword();

			if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/appendage/ap_chargingeffect.nut")) CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/mage/appendage/ap_chargingeffect.nut");
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, true, "character/mage/appendage/ap_chargingeffect.nut", true);
			appendage.getVar("state").clear_vector();
			appendage.getVar("state").push_vector(1);
			appendage.getVar("limitTime").clear_vector();
			appendage.getVar("limitTime").push_vector(sestoelemento);
			break;
		}
		break;
	case 136:
		local Skilleffect = reciveData.readWord();
		switch (Skilleffect) {
		case 1:
			local obj = sq_GetCNRDObjectToobject(sq_GetObject(obj, reciveData.readDword(), reciveData.readDword()));
			if (obj.isDead()) return;
			obj.setMapFollowParent(obj);
			obj.setMapFollowType(1);
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 136, true, "character/mage/summonkruta/ap_summonkruta.nut", false);
			CNSquirrelAppendage.sq_Append(appendage, obj, obj, false);
			setStartInfo_appendage_mage_summonkruta(obj, appendage);
			break;
		}
		break;
	case 138:
		local Skilleffect = reciveData.readWord();
		switch (Skilleffect) {
		case 1:
			local obj = sq_GetCNRDObjectToobject(sq_GetObject(obj, reciveData.readDword(), reciveData.readDword()));
			if (!obj || obj.isDead()) return;
			obj.setMapFollowParent(obj);
			obj.setMapFollowType(1);
			local Skill_level = sq_GetSkillLevel(obj, 138);
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 138, true, "character/mage/summonheilrom/ap_summonheilrom.nut", false);
			appendage.sq_SetValidTime(obj.sq_GetLevelData(138, 0, Skill_level));
			CNSquirrelAppendage.sq_Append(appendage, obj, obj, false);

			appendage.getVar("sqrChr").clear_obj_vector();
			appendage.getVar("sqrChr").push_obj_vector(obj);

			appendage.getVar("buffPx").clear_timer_vector();
			appendage.getVar("buffPx").push_timer_vector();
			local CaYCrno9IM = appendage.getVar("buffPx").get_timer_vector(0);
			CaYCrno9IM.setParameter(500, -1);
			CaYCrno9IM.resetInstant(0);
			break;
		case 2:
			local obj = sq_GetCNRDObjectToobject(sq_GetObject(obj, reciveData.readDword(), reciveData.readDword()));
			if (!obj || obj.isDead()) return;
			local Skill_level = sq_GetSkillLevel(obj, 138);
			sq_SendMessage(obj, OBJECT_MESSAGE_GHOST, 1, 0);
			sq_PostDelayedMessage(obj, OBJECT_MESSAGE_GHOST, 0, 0, obj.sq_GetLevelData(138, 1, Skill_level));
			break;
		}
		break;
	case 139:
		local Skilleffect = reciveData.readWord();
		switch (Skilleffect) {
		case 1:
			local obj = sq_GetCNRDObjectToobject(sq_GetObject(obj, reciveData.readDword(), reciveData.readDword()));
			if (!obj || obj.isDead()) return;
			obj.setMapFollowParent(obj);
			obj.setMapFollowType(1);
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 139, true, "character/mage/summonramos/ap_summonramos.nut", false);
			CNSquirrelAppendage.sq_Append(appendage, obj, obj, false);
			setStartInfo_appendage_mage_summonramos(obj, appendage);
			break;
		}
		break;
	}
}

function getDashAttackInfo_Mage(obj) {
	local attackInfo = obj.sq_GetDashAttackInfo();
	if (isDollState(obj)) {
		attackInfo = obj.sq_GetCustomAttackInfo(ATTACKINFO_DOLL_MAD_DASHATK);
	}
	return attackInfo;
}

function getJumpAttackInfo_Mage(obj) {
	local attackInfo = obj.sq_GetJumpAttackInfo();
	if (isDollState(obj)) {
		attackInfo = obj.sq_GetCustomAttackInfo(ATTACKINFO_DOLL_MAD_ATK1);
	}
	return attackInfo;
}

function getDefaultAttackInfo_Mage(obj, index) {
	local attackInfo = obj.sq_GetDefaultAttackInfo(index);
	if (isDollState(obj)) {
		attackInfo = sq_GetCustomAttackInfo(obj, ATTACKINFO_DOLL_MAD_ATK + index);
	}
	return attackInfo;
}

function getAttackAni_Mage(obj, index) {
	if (!obj) return null;

	local sq_var = obj.getVar();
	local animation = obj.sq_GetAttackAni(index);

	if (isZFAwakeing(obj)) {} else if (isDollState(obj)) {
		animation = obj.sq_GetCustomAni(CUSTOM_ANI_DOLL_MAD_ATK + index);
	}
	return animation;
}

function getMoveAni_Mage(obj) {
	if (!obj) return null;

	local sq_var = obj.getVar();
	local ani = obj.sq_GetMoveAni();

	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/avatar/ap_avatar.nut") == true) {
		ani = setCurrentAnimation_avatar_eff(obj, "Move", false);
	}
	else if (isZFAwakeing(obj)) {
		ani = sq_var.GetAnimationMap("Move", "character/mage/animation/ani_als/avatar_job/move.ani");
	}
	else if (isDollState(obj)) {
		ani = obj.sq_GetCustomAni(CUSTOM_ANI_DOLL_MAD_MOVE);
	}
	return ani;
}

function getSitAni_Mage(obj) {
	if (!obj) return null;

	local ani = obj.sq_GetSitAni();
	local sq_var = obj.getVar();
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/avatar/ap_avatar.nut") == true) {
		ani = setCurrentAnimation_avatar_eff(obj, "Sit", false);
	}
	else if (isZFAwakeing(obj)) {
		ani = sq_var.GetAnimationMap("Sit", "character/mage/animation/ani_als/avatar_job/sit.ani");
	}
	else if (isDollState(obj)) {
		ani = obj.sq_GetCustomAni(CUSTOM_ANI_DOLL_MAD_SIT);
	}
	else {
		ani = obj.sq_GetSitAni();
	}

	return ani;
}

function getDownAni_Mage(obj) {
	if (!obj) return null;

	local ani = obj.sq_GetDownAni();
	local sq_var = obj.getVar();
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/avatar/ap_avatar.nut") == true) {
		ani = setCurrentAnimation_avatar_eff(obj, "Down", false);
	}
	else if (isZFAwakeing(obj)) {
		ani = sq_var.GetAnimationMap("down", "character/mage/animation/ani_als/avatar_job/down.ani");
	}
	else if (isDollState(obj)) {
		ani = obj.sq_GetCustomAni(CUSTOM_ANI_DOLL_MAD_DOWN);
	}
	else {
		ani = obj.sq_GetDownAni();
	}

	return ani;
}

function getAttackCancelStartFrameSize_Mage(obj) {
	local maxAttackNumber = obj.sq_GetAttackCancelStartFrameSize();
	if (isDollState(obj)) {
		maxAttackNumber = 1;
	}
	return maxAttackNumber;
}

function getDamageAni_Mage(obj, index) {
	if (!obj) return null;

	local ani = obj.sq_GetDamageAni(index);
	local sq_var = obj.getVar();
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/avatar/ap_avatar.nut") == true) {
		if (index == 0) ani = setCurrentAnimation_avatar_eff(obj, "Damage1", false);
		else if (index == 1) ani = setCurrentAnimation_avatar_eff(obj, "Damage2", false);
	}
	else if (isZFAwakeing(obj)) {
		if (index == 0) {
			ani = sq_var.GetAnimationMap("buff", "character/mage/animation/ani_als/avatar_job/damage1.ani");
		}
		else {
			ani = sq_var.GetAnimationMap("buff", "character/mage/animation/ani_als/avatar_job/damage2.ani");
		}
	}
	else if (isDollState(obj)) {
		ani = obj.sq_GetCustomAni(CUSTOM_ANI_DOLL_MAD_DAM + index);
	}
	else {
		ani = obj.sq_GetDamageAni(index);
	}

	return ani;
}

function getBuffAni_Mage(obj) {
	if (!obj) return null;

	local ani = obj.sq_GetBuffAni();
	local sq_var = obj.getVar();
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/avatar/ap_avatar.nut") == true) {
		ani = setCurrentAnimation_avatar_eff(obj, "Buff", false);
	}
	else if (isZFAwakeing(obj)) {
		ani = sq_var.GetAnimationMap("buff", "character/mage/animation/ani_als/avatar_job/buff.ani");
	}
	else if (isDollState(obj)) {
		ani = obj.sq_GetCustomAni(CUSTOM_ANI_DOLL_MAD_BUFF);
	}
	else {
		ani = obj.sq_GetBuffAni();
	}

	return ani;
}

function getGetItemAni_Mage(obj) {
	if (!obj) return null;

	local ani = obj.sq_GetGetItemAni();
	local sq_var = obj.getVar();
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/avatar/ap_avatar.nut") == true) {
		ani = setCurrentAnimation_avatar_eff(obj, "GetItem", false);
	}
	else if (isZFAwakeing(obj)) {
		ani = sq_var.GetAnimationMap("GetItem", "character/mage/animation/ani_als/avatar_job/getitem.ani");
	}
	else if (isDollState(obj)) {
		ani = obj.sq_GetCustomAni(CUSTOM_ANI_DOLL_MAD_SIT);
	}
	else {
		ani = obj.sq_GetGetItemAni();
	}

	return ani;
}

function getDashAttackAni_Mage(obj) {
	if (!obj) return null;
	local ani = obj.sq_GetDashAttackAni();
	local sq_var = obj.getVar();
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/avatar/ap_avatar.nut") == true) {
		ani = setCurrentAnimation_avatar_eff(obj, "DashAttack", false);
	}
	else if (isZFAwakeing(obj)) {
		ani = sq_var.GetAnimationMap("DashAttack", "character/mage/animation/ani_als/avatar_job/dashattack.ani");
	}
	else if (isDollState(obj)) {
		ani = obj.sq_GetCustomAni(CUSTOM_ANI_DOLL_MAD_DASHATK);
	}
	else {
		ani = obj.sq_GetDashAttackAni();
	}

	return ani;
}

function getJumpAttackAni_Mage(obj) {
	if (!obj) return null;

	local ani = obj.sq_GetJumpAttackAni();
	local sq_var = obj.getVar();
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/avatar/ap_avatar.nut") == true) {
		ani = setCurrentAnimation_avatar_eff(obj, "JumpAttack", false);
	}
	else if (isZFAwakeing(obj)) {
		ani = sq_var.GetAnimationMap("JumpAttack2", "character/mage/animation/ani_als/avatar_job/jumpattack.ani");
	}
	else if (isDollState(obj)) {
		ani = obj.sq_GetCustomAni(CUSTOM_ANI_DOLL_MAD_ATK);
	}
	else {
		ani = obj.sq_GetJumpAttackAni();
	}

	return ani;
}

function getJumpAni_Mage(obj) {
	if (!obj) return null;

	local ani = obj.sq_GetJumpAni();
	local sq_var = obj.getVar();
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/avatar/ap_avatar.nut") == true) {
		ani = setCurrentAnimation_avatar_eff(obj, "Jump", false);
	}
	else if (isZFAwakeing(obj)) {
		ani = sq_var.GetAnimationMap("Jump", "character/mage/animation/ani_als/avatar_job/jump.ani");
	}
	else if (isDollState(obj)) {
		ani = obj.sq_GetCustomAni(CUSTOM_ANI_DOLL_MAD_JUMP);
	}
	else if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/avatar/ap_avatar.nut") == true) {
		ani = setCurrentAnimation_avatar_eff(obj, "Jump", false);
	}
	else {
		ani = obj.sq_GetJumpAni();
	}

	return ani;
}

function getDashAni_Mage(obj) {
	if (!obj) return null;
	local sq_var = obj.getVar();
	local ani = obj.sq_GetDashAni();
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/avatar/ap_avatar.nut") == true) {
		ani = setCurrentAnimation_avatar_eff(obj, "Dash", false);
	}
	else if (isZFAwakeing(obj)) {
		ani = sq_var.GetAnimationMap("Dash", "character/mage/animation/ani_als/avatar_job/dash.ani");
	}
	else if (isDollState(obj)) {
		ani = obj.sq_GetCustomAni(CUSTOM_ANI_DOLL_MAD_DASH);
	}
	else {
		ani = obj.sq_GetDashAni();
	}

	return ani;
}

function getRestAni_Mage(obj) {
	if (!obj) return null;
	local animation = null;
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/avatar/ap_avatar.nut") == true) {
		animation = setCurrentAnimation_avatar_eff(obj, "Rest", false);
	}
	else if (isZFAwakeing(obj)) {
		animation = sq_var.GetAnimationMap("Stay", "character/mage/animation/ani_als/avatar_job/stay.ani");
	}
	else if (isDollState(obj)) {
		animation = obj.sq_GetCustomAni(CUSTOM_ANI_DOLL_MAD_STAY);
	}
	else {
		animation = obj.sq_GetRestAni();
	}
	return animation;
};

function getStayAni_Mage(obj) {
	local ani = obj.sq_GetStayAni();
	local sq_var = obj.getVar();
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/avatar/ap_avatar.nut") == true) {
		ani = setCurrentAnimation_avatar_eff(obj, "Stay", false);
	}
	else if (isZFAwakeing(obj)) {
		ani = sq_var.GetAnimationMap("Stay", "character/mage/animation/ani_als/avatar_job/stay.ani");
	}
	else if (isDollState(obj)) {
		ani = obj.sq_GetCustomAni(CUSTOM_ANI_DOLL_MAD_STAY);
	}
	else {
		ani = obj.sq_GetStayAni();
	}

	return ani;
}

function getOverturnAni_Mage(obj) {
	if (!obj) return null;
	local animation = null;
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/avatar/ap_avatar.nut") == true) {
		animation = setCurrentAnimation_avatar_eff(obj, "Overturn", false);
	}
	else {
		animation = obj.sq_GetOverturnAni();
	}
	return animation;
};

function getThrowChargeAni_Mage(obj, index) {
	if (!obj) return null;
	local ani = null;
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/avatar/ap_avatar.nut") == true) {
		switch (index) {
		case 0:
			ani = setCurrentAnimation_avatar_eff(obj, "OneHandThrow1", false);
			break;
		case 1:
			ani = setCurrentAnimation_avatar_eff(obj, "TwoHandThrow1", false);
			break;
		case 2:
			ani = setCurrentAnimation_avatar_eff(obj, "Cast1", false);
			break;
		case 3:
			ani = setCurrentAnimation_avatar_eff(obj, "Wink1", false);
			break;
		}
	}
	else {
		ani = obj.sq_GetThrowChargeAni(index);
	}
	return ani;
};

function getThrowShootAni_Mage(obj, index) {
	if (!obj) return null;
	local animation = null;
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/avatar/ap_avatar.nut") == true) {
		switch (index) {
		case 0:
			animation = setCurrentAnimation_avatar_eff(obj, "OneHandThrow2", false);
			break;
		case 1:
			animation = setCurrentAnimation_avatar_eff(obj, "TwoHandThrow2", false);
			break;
		case 2:
			animation = setCurrentAnimation_avatar_eff(obj, "Cast2", false);
			break;
		case 3:
			animation = setCurrentAnimation_avatar_eff(obj, "Wink2", false);
			break;
		}
	}
	else {
		animation = obj.sq_GetThrowShootAni(index);
	}
	return animation;
};

function enable_FanZhongLi(obj) {
	if (sq_getJob(obj) == ENUM_CHARACTERJOB_MAGE && sq_getGrowType(obj) == 4) {
		local skillLevel = sq_GetSkillLevel(obj, 33);
		if (skillLevel <= 0) return;
		if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/appendage/ap_antigravitystarter.nut")) {
			CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 103, false, "character/mage/appendage/ap_antigravitystarter.nut", true);
		}
	}
}

function ThunderStrike(obj) {
	local count = obj.getMyPassiveObjectCount(23020);
	for (local i = 0; i < count; ++i) {
		local object = obj.getMyPassiveObject(23020, i);
		if (object) {
			object.sendDestroyPacket(true);
			local XPos = object.getXPos();
			local YPos = object.getYPos();
			local value0 = sq_GetLevelData(obj, 55, 4, sq_GetSkillLevel(obj, 55)) / 10;
			local value1 = sq_GetLevelData(obj, 55, 5, sq_GetSkillLevel(obj, 55));
			local value2 = sq_GetLevelData(obj, 55, 6, sq_GetSkillLevel(obj, 55));
			local value3 = sq_GetLevelData(obj, 70, 3, sq_GetSkillLevel(obj, 70));

			obj.sq_StartWrite();
			obj.sq_WriteDword(55);
			obj.sq_WriteDword(0);
			obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(55, -1, 3, 1.0));
			obj.sq_WriteDword(value0);
			obj.sq_WriteDword(value1);
			obj.sq_WriteDword(value2);
			obj.sq_WriteDword(value3);
			sq_SendCreatePassiveObjectPacketPos(obj, 24372, 0, XPos, YPos, 0);

			obj.sq_StartWrite();
			obj.sq_WriteDword(55);
			obj.sq_WriteDword(1);
			sq_SendCreatePassiveObjectPacketPos(obj, 24372, 0, XPos, YPos, 0);
		}
	}
	return;
}

function CreateTempAniPooledObj(CQrsPFJ4C1Z9KPD, CQCrx3iHTgqMDjSqr, CQcYXlfoFu2KLS, CQARzrCh9BuZFQAe, CQd2ZSs1wY9AOMPmOb, CQyKw1qD1tIoGrO, CQNI5jgbYCTQPhZQ2) {
	local CQbWawBfLzHxEA = sq_CreateAnimation("", CQCrx3iHTgqMDjSqr);
	local CQFbjOWVhIbRATKr = sq_CreatePooledObject(CQbWawBfLzHxEA, CQARzrCh9BuZFQAe);
	if (CQNI5jgbYCTQPhZQ2 == -1) {
		sq_SetEnumDrawLayer(CQrsPFJ4C1Z9KPD, ENUM_DRAWLAYER_BOTTOM);
		CQNI5jgbYCTQPhZQ2 = 0;
	}

	CQFbjOWVhIbRATKr.setCurrentPos(CQd2ZSs1wY9AOMPmOb, CQyKw1qD1tIoGrO, CQNI5jgbYCTQPhZQ2);
	if (CQcYXlfoFu2KLS) sq_moveWithParent(CQrsPFJ4C1Z9KPD, CQFbjOWVhIbRATKr);
	sq_SetCurrentDirection(CQFbjOWVhIbRATKr, CQrsPFJ4C1Z9KPD.getDirection());
	sq_AddObject(CQrsPFJ4C1Z9KPD, CQFbjOWVhIbRATKr, OBJECTTYPE_DRAWONLY, false);
}
