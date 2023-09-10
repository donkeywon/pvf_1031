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
