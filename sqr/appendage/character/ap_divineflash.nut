function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("getImmuneTypeDamageRate", "getImmuneTypeDamageRate_appendage_DivineFlash")
}

function getImmuneTypeDamageRate_appendage_DivineFlash(appendage, damageRate, attacker)
{
	if (!appendage)
		return damageRate;

	local obj = appendage.getParent();
	local Source = appendage.getSource();
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(Source);
	
	local skillLevel = sqrChr.sq_GetSkillLevel(112);
	local Rate = sqrChr.sq_GetLevelData(112, 5, skillLevel);
	
	damageRate = damageRate - Rate ;
	
	return damageRate;
}
