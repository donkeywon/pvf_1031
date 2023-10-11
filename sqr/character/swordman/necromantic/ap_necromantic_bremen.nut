function sq_AddFunctionName(appendage) {
	appendage.sq_AddFunctionName("proc", "proc_appendage_necromantic_bremen")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_necromantic_bremen")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_necromantic_bremen")
	appendage.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_necromantic_bremen")
}

function onAttackParent_appendage_necromantic_bremen(appendage, realAttacker, damager, boundingBox, isStuck) {
	if (!appendage) return;
	local obj = appendage.getParent();
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(obj);
	local skillLevel = sqrChr.sq_GetSkillLevel(SKILL_NECROMANTIC);
	local defenseDecrease = sq_GetLevelData(sqrChr, SKILL_NECROMANTIC, 1, skillLevel);
	local time = sq_GetLevelData(sqrChr, SKILL_NECROMANTIC, 16, skillLevel);
	local activeObj = sq_GetCNRDObjectToActiveObject(damager);
	local isAppendDeBuff = CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/swordman/necromantic/ap_necromantic_bremen_debuff.nut");
	if (!isAppendDeBuff) {
		local deBuff = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, SKILL_NECROMANTIC, false, "character/swordman/necromantic/ap_necromantic_bremen_debuff.nut", false);
		deBuff.getVar("skillData").clear_vector();
		deBuff.getVar("skillData").push_vector(defenseDecrease);
		deBuff.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(sqrChr), SKILL_NECROMANTIC, skillLevel);
		deBuff.sq_SetValidTime(time);
		CNSquirrelAppendage.sq_Append(deBuff, damager, obj);
	}
}

function sq_AddEffect(appendage) {}

function proc_appendage_necromantic_bremen(appendage) {
	if (!appendage) {
		return;
	}
}

function onStart_appendage_necromantic_bremen(appendage) {
	if (!appendage) {
		return;
	}

	local parentObj = appendage.getParent();
}

function onEnd_appendage_necromantic_bremen(appendage) {
	if (!appendage) {
		return;
	}

	local parentObj = appendage.getParent();
}