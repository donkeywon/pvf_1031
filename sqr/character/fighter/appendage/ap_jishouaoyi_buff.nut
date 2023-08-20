function sq_AddFunctionName(appendage) {
	appendage.sq_AddFunctionName("proc", "proc_appendage_jishouaoyi")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_jishouaoyi")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_jishouaoyi")
}

function sq_AddEffect(appendage) {}

function proc_appendage_jishouaoyi(appendage) {
	if (!appendage) return;
}

function onStart_appendage_jishouaoyi(appendage) {
	if (!appendage) return;
	local obj = appendage.getParent();
	local powerAdd = appendage.getVar("skillData").get_vector(0);
	local change_appendage = appendage.sq_getChangeStatus("jishouaoyi");
	if (!change_appendage) {
		change_appendage = appendage.sq_AddChangeStatus("jishouaoyi", obj, obj, 0, CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, true, powerAdd);
	}
	if (change_appendage) {
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, true, powerAdd.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, true, powerAdd.tofloat());
	}
}

function onEnd_appendage_jishouaoyi(appendage) {
	if (!appendage) return;
	local obj = appendage.getParent();
	CURRENT_BUFF_COUNT_JI_SHOU_AO_YI = 0;
}