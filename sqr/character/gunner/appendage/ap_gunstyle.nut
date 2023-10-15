function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_gunstyle")
	appendage.sq_AddFunctionName("proc", "proc_appendage_gunstyle")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_gunstyle")
}



function onStart_appendage_gunstyle(appendage)
{
	if(!appendage) return;
	local parentObj = appendage.getParent();
	if(!parentObj) 
	{
		appendage.setValid(false);
		return;
	}
	
	local CQmQPIrGh947n6Q9D8 = appendage.sq_GetSourceChrTarget();
}



function proc_appendage_gunstyle(appendage)
{
	if(!appendage) return;
	local parentObj = appendage.getParent();
	if(!parentObj) 
	{
		appendage.setValid(false);
		return;
	}
	local parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);


	local soften_number = sq_GetIntData(parentObj, 248, 0);
	soften_number = soften_number;


	local cooltime = sq_GetIntData(parentObj, 248, 1);
	cooltime = cooltime;


	local loadSlot = parentObj.sq_GetSkillLoad(248)
	if(!loadSlot)
	{
		parentObj.sq_AddSkillLoad(248, 145, soften_number, cooltime);
		loadSlot = parentObj.sq_GetSkillLoad(248);


//sq_AddSkillLoad
//248				��������
//145				��������	sprite_interface_newstyle_windows_customui.NPK
//soften_number		��
//cooltime			��������


	}
	else
	{
		local remain_number = loadSlot.getRemainLoadNumber();
		if(!loadSlot.isCooling())
		{
			if(remain_number < soften_number)
			{
				loadSlot.increaseLoadCount(1)
				if(loadSlot.getRemainLoadNumber() < soften_number)
					loadSlot.setStartCool();
			}
		}
	}
}



function onEnd_appendage_gunstyle(appendage)
{
	if(!appendage) return;
	local parentObj = appendage.getParent();
	if(!parentObj)
	{
		appendage.setValid(false);
		return;
	}
	local parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	local loadSlot = parentObj.sq_GetSkillLoad(248);
	if(loadSlot)
		parentObj.sq_RemoveSkillLoad(248);
}

