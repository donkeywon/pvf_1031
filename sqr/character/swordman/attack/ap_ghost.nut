
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_GHOSTSOUL_RELEASE")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_GHOSTSOUL_RELEASE")
}


function sq_AddEffect(appendage)
{

}

function proc_appendage_GHOSTSOUL_RELEASE(appendage)
{
	if(!appendage) return;
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) 
	{
		appendage.setValid(false);
		return;
	}
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(parentObj);
	local state = sqrChr.getState();
	if (!SetGhostSoulReleaseEnableState(sqrChr) )
		return false;
	if (state == 20 && sq_GetSkillLevel(sqrChr, 6) <= 0 )
	{
		return false;
	}
	if (state == 42 && sq_GetSkillLevel(sqrChr, 80) <= 0 )
	{
		return false;
	}
	local posX = SetGhostSoulRelease_Summon_Site(sqrChr,state);
	local posY = sqrChr.getYPos();
	//µ¶»êÖ®¿¨ÔÞ
	local skill = sq_GetSkill(sqrChr, 25);
	if(skill)
		skill.setCommandEnable(true); 
	local iEnterSkill = sqrChr.sq_IsEnterSkill(25);
	if (iEnterSkill != -1)
	{
		local isUseSkill = sqrChr.sq_IsUseSkill(25);
		if (isUseSkill) 
		{
			DestroyPassiveObject(sqrChr,20011);
			sq_SendCreatePassiveObjectPacketPos(sqrChr,20011, sq_GetSkillLevel(sqrChr, 25), posX, posY, 0);
		}
	}
	//±ùËªÖ®ÈøÑÇ
	skill = sq_GetSkill(sqrChr, 36);
	if(skill)
		skill.setCommandEnable(true); 
	iEnterSkill = sqrChr.sq_IsEnterSkill(36);
	if (iEnterSkill != -1)
	{
		local isUseSkill = sqrChr.sq_IsUseSkill(36);
		if (isUseSkill) 
		{
			DestroyPassiveObject(sqrChr,20012);
			sq_SendCreatePassiveObjectPacketPos(sqrChr,20012, sq_GetSkillLevel(sqrChr, 36) ,
			posX, posY, 0);
		}
	}
	//ÇÖÎgÆÕìåÃÉ
	skill = sq_GetSkill(sqrChr, 41);
	if(skill)
		skill.setCommandEnable(true); 
	iEnterSkill = sqrChr.sq_IsEnterSkill(41);
	if (iEnterSkill != -1)
	{
		local isUseSkill = sqrChr.sq_IsUseSkill(41);
		if (isUseSkill) 
		{
			DestroyPassiveObject(sqrChr,20013);
			sq_SendCreatePassiveObjectPacketPos(sqrChr,20013, sq_GetSkillLevel(sqrChr, 41) ,
			posX, posY, 0);
		}
	}
	skill = sq_GetSkill(sqrChr, 96);
	if(skill)
		skill.setCommandEnable(true); 
	iEnterSkill = sqrChr.sq_IsEnterSkill(96);
	if (iEnterSkill != -1)
	{
		local isUseSkill = sqrChr.sq_IsUseSkill(96);
		if (isUseSkill) 
		{
			DestroyPassiveObject(sqrChr,20062);
			sq_SendCreatePassiveObjectPacketPos(sqrChr,20062, sq_GetSkillLevel(sqrChr, 96) , posX,posY, 0);
		}
	}
	//¹íÉñ?ÎÁÒßÁ_É·(Dummy)
	skill = sq_GetSkill(sqrChr, 75);
	if(skill)
		skill.setCommandEnable(true); 
	iEnterSkill = sqrChr.sq_IsEnterSkill(75);
	if (iEnterSkill != -1)
	{
		local isUseSkill = sqrChr.sq_IsUseSkill(75);
		if (isUseSkill) 
		{
			//DestroyPassiveObject(sqrChr,20040);
			//sq_SendCreatePassiveObjectPacketPos(sqrChr,20040, sq_GetSkillLevel(sqrChr, 75) , posX, posY, 0);
		}
	}
//Ú¤¼ÀÖ®ÕÓ
/*
	skill = sq_GetSkill(sqrChr, 231);
	if(skill)
		skill.setCommandEnable(true); 
	iEnterSkill = sqrChr.sq_IsEnterSkill(231);
	if (iEnterSkill != -1)
	{
		local isUseSkill = sqrChr.sq_IsUseSkill(231);
		if (isUseSkill) 
		{
	local GhostCount = sqrChr.getMyPassiveObjectCount(24323);
	for (local i = 0; i < GhostCount ; ++i) 
	{
		local GhostObj = sqrChr.getMyPassiveObject(24323,i);
		if (GhostObj && GhostObj.getVar("id").get_vector(0) == 1 && GhostObj.getVar("state").get_vector(0) == 0)
		{
			GhostObj.setTimeEvent(0,1,1,false);
		}
	}
		addObject_TombStoneSwamp(sqrChr,0,1,-1);
		}
	}*/
//////////////////////////////ÓÄ»êÖ®²¼À×µÂ
/*
	skill = sq_GetSkill(sqrChr, 240);
	if(skill)
		skill.setCommandEnable(true); 

	iEnterSkill = sqrChr.sq_IsEnterSkill(240);
	if (iEnterSkill != -1)
	{
		local isUseSkill = sqrChr.sq_IsUseSkill(240);
		if (isUseSkill) 
		{
	local GhostCount = sqrChr.getMyPassiveObjectCount(24323);
	for (local i = 0; i < GhostCount ; ++i) 
	{
		local GhostObj = sqrChr.getMyPassiveObject(24323,i);
		if (GhostObj && GhostObj.getVar("id").get_vector(0) == 2 && GhostObj.getVar("state").get_vector(0) <= 1)
		{
			GhostObj.setTimeEvent(0,1,1,false);
		}
	}
		addObject_BladePhantom(sqrChr,0,1,0);
		}
	}*/
/////////////////////
}



function onStart_appendage_GHOSTSOUL_RELEASE(appendage)
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

function DestroyPassiveObject(obj,Count)
{
	local GhostsoulObj = obj.getMyPassiveObjectCount(Count);			
	for (local i = 0; i < GhostsoulObj ; ++i) 
	{ 
			local Ghostsoul = obj.getMyPassiveObject(Count,i);
			if (Ghostsoul)
			{
				sq_SendDestroyPacketPassiveObject(Ghostsoul);
			}
	}

}

function SetGhostSoulReleaseEnableState(obj)
{
	local state = obj.sq_GetState();
	if (state == 230 || state == 249  || state == 242 || state == 244 || state == 42 || state == 32 || state == 20 || state == 33 || state == 65 || state == 13 || state == 231 || state == 240 || state == 50 || state == 232)
		return true;
	return false;
}


function SetGhostSoulRelease_Summon_Site(obj,state)
{

	local posX = 0;

	if (state == 32 || state == 20 || state == 42 || state == 65 || state == 242 || state == 249 )
		posX = obj.sq_GetIntData(SKILL_GHOSTSOUL_RELEASE, 0);
	else if (state == 33)
		posX = obj.sq_GetIntData(SKILL_GHOSTSOUL_RELEASE, 2);
	else if (state == 50 || state == 244 || state == 230)
		posX = obj.sq_GetIntData(SKILL_GHOSTSOUL_RELEASE, 3);
	else if (state == 13)
		posX = obj.sq_GetIntData(SKILL_GHOSTSOUL_RELEASE, 1);

	posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), posX);

	return posX;

}