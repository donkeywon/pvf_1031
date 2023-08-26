function onAfterSetState_swordman_throw(obj, state, datas, isResetTimer) {
	if (!obj) return;
	local skillIndex = obj.getThrowIndex();
	local throwState = obj.getThrowState();
	switch (skillIndex) {
	case 47:
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/swordman/appendage/ap_wavemark.nut")) CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/swordman/appendage/ap_wavemark.nut");
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 47, true, "character/swordman/appendage/ap_wavemark.nut", false);
		CNSquirrelAppendage.sq_Append(appendage, obj, obj, false);
		break;
	case 82:
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/swordman/appendage/ap_kalla.nut")) CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/swordman/appendage/ap_kalla.nut");
		local validTime = obj.sq_GetLevelData(82, 0, sq_GetSkillLevel(obj, 82));
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 82, true, "character/swordman/appendage/ap_kalla.nut", false);
		appendage.sq_SetValidTime(validTime);
		CNSquirrelAppendage.sq_Append(appendage, obj, obj, false);
		break;
	case 18:
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/swordman/appendage/ap_ghoststep.nut")) CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/swordman/appendage/ap_ghoststep.nut");
		local validTime = obj.sq_GetLevelData(18, 0, sq_GetSkillLevel(obj, 18));
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 18, true, "character/swordman/appendage/ap_ghoststep.nut", false);
		appendage.sq_SetValidTime(validTime);
		CNSquirrelAppendage.sq_Append(appendage, obj, obj, false);
		break;
	}
};

function onProcCon_swordman_throw(obj) {
	if (!obj) return;
	local skillIndex = obj.getThrowIndex();
	if (skillIndex == 74) {

		if (!sq_GetSkill(obj, 57).isInCoolTime()) {
			obj.setSkillCommandEnable(57, true);
			if (obj.sq_IsEnterSkill(57) != -1) {
				local isUseSkill = obj.sq_IsUseSkill(57);
				if (isUseSkill) {
					obj.sq_IntVectClear();
					obj.sq_IntVectPush(0);
					obj.sq_AddSetStatePacket(31, STATE_PRIORITY_USER, true);
				}
			}
		}

		if (!sq_GetSkill(obj, 62).isInCoolTime()) {
			obj.setSkillCommandEnable(62, true);
			if (obj.sq_IsEnterSkill(62) != -1) {
				local isUseSkill = obj.sq_IsUseSkill(62);
				if (isUseSkill) {
					obj.sq_IntVectClear();
					obj.sq_IntVectPush(0);
					obj.sq_AddSetStatePacket(34, STATE_PRIORITY_USER, true);
				}
			}
		}
	}
};

function onKeyFrameFlag_swordman_throw(obj, flagIndex) {
	if (!obj) return false;

	local throwIndex = obj.getThrowIndex();
	switch (throwIndex) {
	case 32:
		switch (flagIndex) {
		case 10001:
			if (obj.isMyControlObject()) {
				local skill = sq_GetSkill(obj, SKILL_FORCETHUNDERER);
				local forceThunderer = sq_GetSkillLevel(obj, SKILL_FORCETHUNDERER);
				if (forceThunderer > 0) {
					obj.sq_StartWrite();
					obj.sq_WriteDword(10);
					obj.sq_SendCreatePassiveObjectPacket(24337, 0, 0, 0, 0);
				}
				else {
					obj.sq_StartWrite();
					obj.sq_WriteDword(9);
					obj.sq_SendCreatePassiveObjectPacket(24337, 0, 0, 0, 0);
				}
			}
			break;
		}
		break;
	}
	return true;
}