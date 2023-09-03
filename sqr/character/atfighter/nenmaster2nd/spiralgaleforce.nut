

function checkExecutableSkill_SpiralGaleForce(obj)
{
	if (!obj) return false;
	local isUse = obj.sq_IsUseSkill(237);
	
	if(isUse)
	{
		local apPath = "character/atfighter/nenmaster2nd/ap_spiralgaleforce.nut";
		local ballAp = "character/atfighter/nenmaster2nd/ap_spiralnen.nut";
		if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, apPath))
		{
			destroyObjectByVar(obj, "SpiralGaleForcePool");
			CNSquirrelAppendage.sq_RemoveAppendage(obj, apPath);
			if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, ballAp))
				CNSquirrelAppendage.sq_RemoveAppendage(obj, ballAp);
			return;
		}
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(237, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_SpiralGaleForce(obj)
{
	if (!obj) return false;
	local apPath = "character/atfighter/nenmaster2nd/ap_spiralgaleforce.nut";
	local OnForce = CNSquirrelAppendage.sq_IsAppendAppendage(obj, apPath);
	if(OnForce)
		return true;
	else
	{
		if(obj.getVar("SpiralInhaleEnergy").size_vector() > 0 && obj.getVar("SpiralInhaleEnergy").get_vector(0) >= 500)
			return true;
	}

	return false;
}

function onSetState_SpiralGaleForce(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);

	switch(substate)
	{
	case 0:
		obj.sq_StopMove();
		obj.sq_PlaySound("MF_SPIRAL_GALEFORCE");
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_SpiralGaleForce_Cast1_body_02);

		break;
	case 1:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_SpiralGaleForce_Cast2_body_02);
		break;
	}
	obj.sq_SetStaticSpeedInfo(4, 4,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}

function onEndCurrentAni_SpiralGaleForce(obj)
{
	if(!obj) return;
	local substate = obj.getSkillSubState();
	switch(substate)
	{
	case 0:
		obj.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, false);
		break;
	case 1:
		obj.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, false);
		break;
	}
}

function onKeyFrameFlag_SpiralGaleForce(obj, flagIndex)
{
	if (!obj) return false;
	switch(flagIndex)
	{
	case 1:
		if(obj.isMyControlObject())
			sq_SetMyShake(obj,1,150);

		local path = "passiveobject/chang_qing_skill/atfighter/animation/atspiralgaleforce/cast2_effect_01.ani";
		createAnimationPooledEx(obj, path,1, true,obj.getXPos(), obj.getYPos(), obj.getZPos()+50 ,false);

		local apPath = "character/atfighter/nenmaster2nd/ap_spiralgaleforce.nut";
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, apPath, false);
		if (appendage != null)
		{
			appendage.sq_SetValidTime(0);
			appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), 237, sq_GetSkillLevel(obj, 237));
			appendage.setEnableIsBuff(true);
			CNSquirrelAppendage.sq_Append(appendage, obj, obj, true);
		}
		
		local bottomp = "character/fighter/effect/animation/atspiralgaleforce/buff_01.ani";
		local BotomAni = createAnimationPooledEx(obj, bottomp, 2,true,obj.getXPos(), obj.getYPos()-1, obj.getZPos(),false);
		destroyObjectByVar(obj, "SpiralGaleForcePool");
		obj.getVar("SpiralGaleForcePool").clear_obj_vector();
		obj.getVar("SpiralGaleForcePool").push_obj_vector(BotomAni);
		
		break;
	}
	return true;
}
function createAnimationPooledEx(obj, aniFilename,DRAWLAYER_TYPE, isMoveWith, x, y, z ,Size)
{
	local ani = sq_CreateAnimation("",aniFilename);
	if(Size != false)
	{
		ani.setImageRateFromOriginal(Size, Size);
		ani.setAutoLayerWorkAnimationAddSizeRate(Size);
	}

	local pooledObj = sq_CreatePooledObject(ani,true);

	pooledObj.setCurrentPos(x,y,z);
	if(isMoveWith)
		sq_moveWithParent(obj, pooledObj);
	
	sq_SetEnumDrawLayer(pooledObj, DRAWLAYER_TYPE);
	sq_SetCurrentDirection(pooledObj, obj.getDirection());

	sq_AddObject(obj, pooledObj, OBJECTTYPE_DRAWONLY, false);

	return pooledObj;
}







CHANGQING_SKILL2ND <- true