function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_mailun_shengguang_buff")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_mailun_shengguang_buff")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_mailun_shengguang_buff")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_mailun_shengguang_buff(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onStart_appendage_mailun_shengguang_buff(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	local magicalPA = appendage.getVar("skillData").get_vector(0);
	local magicalAB = appendage.getVar("skillData").get_vector(1);
	local change_appendage = appendage.sq_getChangeStatus("shengguang_buff");
	if(!change_appendage)
	{
		change_appendage = appendage.sq_AddChangeStatus("shengguang_buff",obj, obj, 0, CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, false, magicalPA);
	}
	if(change_appendage)
	{
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, false, magicalPA.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_HIT_RATE, false, magicalAB.tofloat());
	}
}

function onEnd_appendage_mailun_shengguang_buff(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	CURRENT_BUFF_COUNT_SHI_SHEN_ZHI_LI = 0;
}
