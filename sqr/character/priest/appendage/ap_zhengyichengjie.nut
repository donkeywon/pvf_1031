function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_zhengyichengjie")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_zhengyichengjie")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_zhengyichengjie")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_zhengyichengjie(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onStart_appendage_zhengyichengjie(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(obj);
	local skillLevel = sqrChr.sq_GetSkillLevel(SKILL_ZHENG_YI_QIAN_NENG);
	local stuck = sq_GetLevelData(sqrChr, SKILL_ZHENG_YI_QIAN_NENG, 1, skillLevel);
	local change_appendage = appendage.sq_getChangeStatus("zhengyichengjie");
	if(!change_appendage)
	{
		change_appendage = appendage.sq_AddChangeStatus("zhengyichengjie",obj, obj, 0, CHANGE_STATUS_TYPE_STUCK, false, -stuck);
	}
	if(change_appendage)
	{
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_STUCK, false, -stuck.tofloat());
	}
}

function onEnd_appendage_zhengyichengjie(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}
