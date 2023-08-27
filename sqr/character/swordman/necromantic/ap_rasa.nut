
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_necromantic_rasa")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_necromantic_rasa")
}

function sq_AddEffect(appendage)
{
}
function proc_appendage_necromantic_rasa(appendage)
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

	local value4 = sq_GetLevelData(parentObj, SKILL_NECROMANTIC, 6, skill_level); 
	local value5 = sq_GetLevelData(parentObj, SKILL_NECROMANTIC, 7, skill_level); 
	local value6 = sq_GetLevelData(parentObj, SKILL_NECROMANTIC, 8, skill_level); 
	local value7 = sq_GetLevelData(parentObj, SKILL_NECROMANTIC, 9, skill_level); 

	local value8 = sq_GetLevelData(parentObj, SKILL_NECROMANTIC, 10, skill_level); 
	local value9 = sq_GetLevelData(parentObj, SKILL_NECROMANTIC, 11, skill_level); 
	local value10 = sq_GetLevelData(parentObj, SKILL_NECROMANTIC,12, skill_level); 
	local value11 = sq_GetLevelData(parentObj, SKILL_NECROMANTIC,13, skill_level); 

    local attackInfo = sq_GetCurrentAttackInfo(parentObj);
    sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, ACTIVESTATUS_BLEEDING, value4, value5,value6,value7);
    attackInfo = sq_GetCurrentAttackInfo(parentObj);
    sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, ACTIVESTATUS_POISON, value8, value9,value10,value11);


}



function onStart_appendage_necromantic_rasa(appendage)
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

