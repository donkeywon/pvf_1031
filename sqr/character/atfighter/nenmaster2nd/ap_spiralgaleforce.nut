

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_SpiralGaleForce")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_SpiralGaleForce")
	appendage.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_SpiralGaleForce")
}

function onStart_appendage_SpiralGaleForce(appendage)
{
	if(!appendage) {
		return;
	}
	local obj = appendage.getParent();
}

function proc_appendage_SpiralGaleForce(appendage)
{
	if(!appendage) return;
	local parobj = appendage.getParent();
	if(!parobj) 
	{
		appendage.setValid(false);
		return;
	}
	
	if(parobj.isDead())
	{
		parobj.getVar("SpiralInhaleEnergy").clear_vector();
		parobj.getVar("SpiralInhaleEnergy").push_vector(0);
		destroyObjectByVar(parobj, "SpiralGaleForcePool");
		appendage.setValid(false);
		return;
	}
	local pEnergy = parobj.getVar("SpiralInhaleEnergy").get_vector(0);
	if(pEnergy == 0)
		appendage.setValid(false);
}

function onAttackParent_appendage_SpiralGaleForce(appendage, realAttacker, damager, boundingBox, isStuck)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	
}
CHANGQING_SKILL2ND <- true