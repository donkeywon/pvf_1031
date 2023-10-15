
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_atmage_icemaster")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_atmage_icemaster")
}


function sq_AddEffect(appendage)
{

}




function proc_appendage_atmage_icemaster(appendage)
{
	if(!appendage) {
		return;
	}
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();


	local sqrObj = sq_GetCNRDObjectToSQRCharacter(sourceObj);
	
	if(sqrObj)
	{
		sqrObj.sq_RemovePassiveSkillAttackBonusRate(SKILL_ICEMASTER);
		sqrObj.sq_AddPassiveSkillAttackBonusRate(SKILL_ICEMASTER, 0);
    }
}

function onStart_appendage_atmage_icemaster(appendage)
{
	if(!appendage) {
		return;
	}
	
	local obj = appendage.getParent();		

}

