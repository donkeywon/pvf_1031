function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_qiangrengailiang")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_qiangrengailiang")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_qiangrengailiang")
	appendage.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_qiangrengailiang")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_qiangrengailiang(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onStart_appendage_qiangrengailiang(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onEnd_appendage_qiangrengailiang(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onAttackParent_appendage_qiangrengailiang(appendage, realAttacker, damager, boundingBox, isStuck)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(obj);
	local skillLevel = sqrChr.sq_GetSkillLevel(SKILL_QIANG_REN_GAI_LIANG);
	local powerAdd = sq_GetLevelData(sqrChr, SKILL_QIANG_REN_GAI_LIANG, 0, skillLevel);
	local time = sq_GetLevelData(sqrChr, SKILL_QIANG_REN_GAI_LIANG, 1, skillLevel);
	local activeObj = sq_GetCNRDObjectToActiveObject(damager);
	local isBleeding = sq_IsValidActiveStatus(activeObj, ACTIVESTATUS_BLEEDING);
	if(isBleeding)
	{
		if(!appendage) return;
		local obj = appendage.getParent();
		local powerAdd = appendage.getVar("skillData").get_vector(0);
		local change_appendage = appendage.sq_getChangeStatus("qiangrengailiang_buff");
		if(!change_appendage)
		{
			change_appendage = appendage.sq_AddChangeStatus("qiangrengailiang_buff",obj, obj, 0, CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, true, powerAdd);
		}
		if(change_appendage)
		{
			change_appendage.clearParameter();
			change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, true, powerAdd.tofloat());
			change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, true, powerAdd.tofloat());
		}
	}
}
