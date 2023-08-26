//////////////////////////////////////////////////////////////////////////////////////////////////
//										By Uncle Bang
//////////////////////////////////////////////////////////////////////////////////////////////////





function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_forcethunderer")
	appendage.sq_AddFunctionName("proc", "proc_appendage_forcethunderer")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_forcethunderer")
}



function sq_AddEffect(appendage)
{

}



function onStart_appendage_forcethunderer(appendage)
{
	if(!appendage)
	{
		return;
	}
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
	if(!parentObj || !sourceObj)
	{
		appendage.setValid(false);
		return;
	}

	local startTime = appendage.getTimer().Get();
	appendage.getVar("t").clear_vector();
	appendage.getVar("t").push_vector(startTime);
}



function proc_appendage_forcethunderer(appendage)
{
	if(!appendage)
	{
		return;
	}
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
	local parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	if(!parentObj || !sourceObj)
	{
		appendage.setValid(false);
		return;
	}

	local currentTime = appendage.getTimer().Get();
	local startTime = appendage.getVar("t").get_vector(0);
	local skill = sq_GetSkill(parentObj, SKILL_FORCETHUNDERER);
	if(currentTime - startTime > parentObj.sq_GetIntData(SKILL_FORCETHUNDERER, 1) && !skill.isSealFunction())
	{
		local xPos = parentObj.getXPos();
		local yPos = parentObj.getYPos();
		local zPos = parentObj.getZPos();
		local distance = 450;
		local objectManager = parentObj.getObjectManager();
		for(local i = 0; i < objectManager.getCollisionObjectNumber(); i++)
		{
			local object = objectManager.getCollisionObject(sq_getRandom(1, i));
			if(object && object.isObjectType(OBJECTTYPE_ACTIVE) && parentObj.isEnemy(object) && object.isInDamagableState(parentObj) && sq_GetDistance(xPos, yPos, object.getXPos(), object.getYPos(), true) <= distance)
			{
				parentObj.sq_StartWrite();
				parentObj.sq_WriteDword(23);
				sq_SendCreatePassiveObjectPacketPos(parentObj, 24337, 0, object.getXPos(), object.getYPos(), 0);
			}
		}
		appendage.getVar("t").set_vector(0, currentTime);
	}
}



function onEnd_appendage_forcethunderer(appendage)
{
	if(!appendage)
	{
		return;
	}

	local obj = appendage.getParent();

}

