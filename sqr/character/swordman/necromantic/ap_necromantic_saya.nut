
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_necromantic_saya")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_necromantic_saya")
}

function sq_AddEffect(appendage)
{
}
function proc_appendage_necromantic_saya(appendage)
{
	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();	
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) 
    {
		appendage.setValid(false);
		return;
	}
    local skill_level = sq_GetSkillLevel(parentObj, SKILL_NECROMANTIC);
	local value0 = sq_GetLevelData(parentObj, SKILL_NECROMANTIC, 3, skill_level); 
	local value1 = sq_GetLevelData(parentObj, SKILL_NECROMANTIC, 4, skill_level); 
	local value2 = sq_GetLevelData(parentObj, SKILL_NECROMANTIC, 5, skill_level); 
    local attackInfo = sq_GetCurrentAttackInfo(parentObj);

    sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, ACTIVESTATUS_FREEZE, value0, value1,value2);
}



function onStart_appendage_necromantic_saya(appendage)
{
	if(!appendage) {
		return;
	}
	
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}	
}

