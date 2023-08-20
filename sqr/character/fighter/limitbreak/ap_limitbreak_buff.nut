function sq_AddFunctionName(appendage) {
	appendage.sq_AddFunctionName("proc", "proc_appendage_limitbreak_buff")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_limitbreak_buff")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_limitbreak_buff")
}

function sq_AddEffect(appendage) {}

function proc_appendage_limitbreak_buff(appendage) {
	if (!appendage) return;
	local obj = appendage.getParent();
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(obj);
	local pSkillIndex = obj.getCurrentSkillIndex();
	if (pSkillIndex != 71 && obj.getVar("isUseSLK").getBool(0)) {
		obj.getVar("isUseSLK").setBool(0, false);
		appendage.setValid(false);
	}

}

function onStart_appendage_limitbreak_buff(appendage) {
	if (!appendage) return;
	local obj = appendage.getParent();
	local coolRate = appendage.getVar("skillData").get_vector(0);
	local criDamRate = appendage.getVar("skillData").get_vector(1);
	local change_appendage = appendage.sq_getChangeStatus("limitbreak_buff");
	if (!change_appendage) {
		change_appendage = appendage.sq_AddChangeStatus("limitbreak_buff", obj, obj, 0, CHANGE_STATUS_TYPE_COOLTIME_DECLINE, true, coolRate);
	}
	if (change_appendage) {
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_COOLTIME_DECLINE, true, coolRate.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_DAMAGE_RATE, false, criDamRate.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_DAMAGE_RATE, false, criDamRate.tofloat());
	}
}

function onEnd_appendage_limitbreak_buff(appendage) {
	if (!appendage) return;
	local obj = appendage.getParent();
	CURRENT_BUFF_COUNT_LIMIT_BREAK = 0;
}