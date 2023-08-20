CURRENT_BUFF_COUNT_JI_SHOU_AO_YI <- 0;

function sq_AddFunctionName(appendage) {
	appendage.sq_AddFunctionName("proc", "proc_appendage_jishouaoyi")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_jishouaoyi")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_jishouaoyi")
}

function sq_AddEffect(appendage) {}

function proc_appendage_jishouaoyi(appendage) {
	if (!appendage) return;
	local obj = appendage.getParent();
}

function onStart_appendage_jishouaoyi(appendage) {
	if (!appendage) return;
	local obj = appendage.getParent();
}

function onEnd_appendage_jishouaoyi(appendage) {
	if (!appendage) return;
	local obj = appendage.getParent();
}