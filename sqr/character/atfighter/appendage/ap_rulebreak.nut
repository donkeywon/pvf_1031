function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_rulebreak")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_rulebreak")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_rulebreak")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_rulebreak(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(obj);
	local skillLevel = sqrChr.sq_GetSkillLevel(252);
	local tolerance = sq_GetLevelData(sqrChr, 252, 0, skillLevel);
	local objectManager = obj.getObjectManager();
	for(local i=0; i<objectManager.getCollisionObjectNumber(); i+=1)
	{
		local object = objectManager.getCollisionObject(i);
		if(object && obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_ACTIVE))
		{
			local isAppendDebuff = CNSquirrelAppendage.sq_IsAppendAppendage(object, "character/atfighter/appendage/ap_rulebreak_debuff.nut");
			if(!isAppendDebuff)
			{
				local debuff = CNSquirrelAppendage.sq_AppendAppendage(object, obj, 252, false, "character/atfighter/appendage/ap_rulebreak_debuff.nut", false);
				debuff.getVar("skillData").clear_vector();
				debuff.getVar("skillData").push_vector(tolerance);
				CNSquirrelAppendage.sq_Append(debuff, object, obj);
			}
		}
	}
}

function onStart_appendage_rulebreak(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onEnd_appendage_rulebreak(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}
