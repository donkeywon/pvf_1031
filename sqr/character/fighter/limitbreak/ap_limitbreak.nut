CURRENT_BUFF_COUNT_LIMIT_BREAK <- 0;

function sq_AddFunctionName(appendage) {
	appendage.sq_AddFunctionName("proc", "proc_appendage_limitbreak")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_limitbreak")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_limitbreak")
}

function sq_AddEffect(appendage) {}

function proc_appendage_limitbreak(appendage) {
	if (!appendage) return;
}

function onStart_appendage_limitbreak(appendage) {
	if (!appendage) return;
	local obj = appendage.getParent();
}

function onEnd_appendage_limitbreak(appendage) {
	if (!appendage) return;
	local obj = appendage.getParent();
}

function getBoolByPossibility(base, prob) {
	local num = sq_getRandom(0, base);
	if (num <= prob) return true;
	else if (num > prob) return false;
}

function addLimitBreakBuffCount(obj, skillIndex, consumeItem) {
	local skillLevel = sq_GetSkillLevel(obj, SKILL_LIMIT_BREAK);
	if (skillLevel > 0) {
		local skill = sq_GetSkill(obj, SKILL_LIMIT_BREAK);
		local isSeal = skill.isSealFunction();
		local useSkill = sq_GetSkill(obj, skillIndex);
		local isCool = useSkill.isInCoolTime();
		if ((skillIndex == 6 || skillIndex == 80 || skillIndex == 1 || skillIndex == 19 || skillIndex == 4 || skillIndex == 241 || skillIndex == 68 || skillIndex == 82 || skillIndex == 229 || skillIndex == 231 || skillIndex == 230 || skillIndex == 102 || skillIndex == 232) && !isSeal && !isCool) {
			local prob = sq_GetLevelData(obj, SKILL_LIMIT_BREAK, 0, skillLevel);
			if (consumeItem) prob = sq_GetLevelData(obj, SKILL_LIMIT_BREAK, 1, skillLevel);
			if (skillIndex == 232) prob = 100;
			local base = 100;
			local isAdd = getBoolByPossibility(base, prob);
			local maxCount = 25;
			local time = sq_GetLevelData(obj, SKILL_LIMIT_BREAK, 2, skillLevel);
			local coolRate = getCoolRateByCount();
			local criDamRate = getcriDamRateByCount();
			if (isAdd && CURRENT_BUFF_COUNT_LIMIT_BREAK < maxCount) {
				local appendage = obj.GetSquirrelAppendage("character/fighter/limitbreak/ap_limitbreak_buff.nut");
				if (appendage) appendage.setValid(false);
				if (skillIndex == 232) CURRENT_BUFF_COUNT_LIMIT_BREAK += 5;
				else if (skillIndex == 6 || skillIndex == 80 || skillIndex == 1 || skillIndex == 19 || skillIndex == 4) CURRENT_BUFF_COUNT_LIMIT_BREAK += 1;
				else if (skillIndex == 83 || skillIndex == 68 || skillIndex == 82 || skillIndex == 229 || skillIndex == 231 || skillIndex == 230 || skillIndex == 102) CURRENT_BUFF_COUNT_LIMIT_BREAK += 2;
				if (CURRENT_BUFF_COUNT_LIMIT_BREAK >= maxCount) CURRENT_BUFF_COUNT_LIMIT_BREAK = maxCount;
				appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_LIMIT_BREAK, false, "character/fighter/limitbreak/ap_limitbreak_buff.nut", false);
				appendage.getVar("skillData").clear_vector();
				appendage.getVar("skillData").push_vector(coolRate);
				appendage.getVar("skillData").push_vector(criDamRate);
				appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_LIMIT_BREAK, skillLevel);
				appendage.sq_SetValidTime(time);
				CNSquirrelAppendage.sq_Append(appendage, obj, obj);
			}
		}
	}
}

function getCoolRateByCount() {
	local coolRate = 0;
	if (CURRENT_BUFF_COUNT_LIMIT_BREAK >= 1 && CURRENT_BUFF_COUNT_LIMIT_BREAK <= 5) {
		coolRate += CURRENT_BUFF_COUNT_LIMIT_BREAK * 1;
	}
	else if (CURRENT_BUFF_COUNT_LIMIT_BREAK >= 6 && CURRENT_BUFF_COUNT_LIMIT_BREAK <= 10) {
		coolRate = 5;
		coolRate += (CURRENT_BUFF_COUNT_LIMIT_BREAK - 5) * 1;
	}
	else if (CURRENT_BUFF_COUNT_LIMIT_BREAK >= 11 && CURRENT_BUFF_COUNT_LIMIT_BREAK <= 15) {
		coolRate = 10;
		coolRate += (CURRENT_BUFF_COUNT_LIMIT_BREAK - 10) * 1;
	}
	else if (CURRENT_BUFF_COUNT_LIMIT_BREAK >= 16 && CURRENT_BUFF_COUNT_LIMIT_BREAK <= 20) {
		coolRate = 15;
		coolRate += (CURRENT_BUFF_COUNT_LIMIT_BREAK - 15) * 1;
	}
	else if (CURRENT_BUFF_COUNT_LIMIT_BREAK >= 21 && CURRENT_BUFF_COUNT_LIMIT_BREAK <= 25) {
		coolRate = 20;
		coolRate += (CURRENT_BUFF_COUNT_LIMIT_BREAK - 20) * 2;
	}
	return coolRate;
}

function getcriDamRateByCount() {
	local criDamRate = 0;
	if (CURRENT_BUFF_COUNT_LIMIT_BREAK >= 1 && CURRENT_BUFF_COUNT_LIMIT_BREAK <= 5) {
		criDamRate += CURRENT_BUFF_COUNT_LIMIT_BREAK * 1;
	}
	else if (CURRENT_BUFF_COUNT_LIMIT_BREAK >= 6 && CURRENT_BUFF_COUNT_LIMIT_BREAK <= 10) {
		criDamRate = 5;
		criDamRate += (CURRENT_BUFF_COUNT_LIMIT_BREAK - 5) * 1;
	}
	else if (CURRENT_BUFF_COUNT_LIMIT_BREAK >= 11 && CURRENT_BUFF_COUNT_LIMIT_BREAK <= 15) {
		criDamRate = 10;
		criDamRate += (CURRENT_BUFF_COUNT_LIMIT_BREAK - 10) * 1;
	}
	else if (CURRENT_BUFF_COUNT_LIMIT_BREAK >= 16 && CURRENT_BUFF_COUNT_LIMIT_BREAK <= 20) {
		criDamRate = 15;
		criDamRate += (CURRENT_BUFF_COUNT_LIMIT_BREAK - 15) * 1;
	}
	else if (CURRENT_BUFF_COUNT_LIMIT_BREAK >= 21 && CURRENT_BUFF_COUNT_LIMIT_BREAK <= 25) {
		criDamRate = 20;
		criDamRate += (CURRENT_BUFF_COUNT_LIMIT_BREAK - 20) * 1;

	}
	return criDamRate;
}