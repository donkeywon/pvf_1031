function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_baotouzhangwo")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_baotouzhangwo")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_baotouzhangwo")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_baotouzhangwo(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(obj);
	//5	`Gunner/HeadShot.skl`
	//20	`Gunner/TurningShoot.skl`
	local pSkillIndex = sqrChr.getCurrentSkillIndex();
	if(pSkillIndex == 5)
		sqrChr.setSkillCommandEnable(20, true);
	if(pSkillIndex == 20)
		sqrChr.setSkillCommandEnable(5, true);
}

function onStart_appendage_baotouzhangwo(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onEnd_appendage_baotouzhangwo(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

