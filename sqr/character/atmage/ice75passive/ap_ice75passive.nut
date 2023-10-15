
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_atmage_ice75passive")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_atmage_ice75passive")
}


function sq_AddEffect(appendage)
{

}




function proc_appendage_atmage_ice75passive(appendage)
{
	if(!appendage) {
		return;
	}
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();


	local sqrObj = sq_GetCNRDObjectToSQRCharacter(sourceObj);
	
	if(sqrObj)
	{
		sqrObj.sq_RemovePassiveSkillAttackBonusRate(SKILL_ICE75PASS);
		sqrObj.sq_AddPassiveSkillAttackBonusRate(SKILL_ICE75PASS, 2);
    }
}

function onStart_appendage_atmage_ice75passive(appendage)
{
	if(!appendage) {
		return;
	}
	
	local obj = appendage.getParent();		

}

