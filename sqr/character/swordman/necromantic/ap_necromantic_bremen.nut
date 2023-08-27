
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_necromantic_bremen")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_necromantic_bremen")
	appendage.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_necromantic_bremen")	
}

function onAttackParent_appendage_necromantic_bremen(appendage ,damager, boundingBox, isStuck) 
{

}
function sq_AddEffect(appendage)
{
}
function proc_appendage_necromantic_bremen(appendage)
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
}



function onStart_appendage_necromantic_bremen(appendage)
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

