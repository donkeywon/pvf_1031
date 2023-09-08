


function procAppend_NitroMotor(obj)
{
	if(!obj) return;

	local appendage = obj.GetSquirrelAppendage("character/atgunner/nitromotor/ap_nitromotor.nut");

	if(appendage)
	{
		if(appendage.isValid())
		{
			/*local loadSlot = obj.sq_GetSkillLoad(17);
			if(loadSlot)
			{
				local remain_number = loadSlot.getRemainLoadNumber();
				if(remain_number > 0)
				{*/
					NitroMotor(obj);
				/*}
			}*/
		}
	}
}

function useSkill_after_ATGunner(obj, skillIndex, consumeMp, consumeItem, oldSkillMpRate)
{
	if(!obj) return false;
		
	local skill = sq_GetSkill(obj, skillIndex);
	local isCool = skill.isInCoolTime();
	local growtype = sq_getGrowType(obj);
	if(!isCool && skillIndex == 1 && growtype == 4)
	{
		//芙Lei占?UFF立占?占??占??占??占??占??
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 1, false, "character/atgunner/appendage/ap_flamebullet.nut", false);
		CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, 251, true);
		local appendage_light = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atgunner/appendage/ap_silverbullet.nut");
		appendage_light = obj.GetSquirrelAppendage("character/atgunner/appendage/ap_silverbullet.nut");
		if(appendage_light)
		{
			if(appendage_light.isValid())
			{
				appendage_light.setValid(false);
			}
		}
		local appendage_water = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atgunner/appendage/ap_freezebullet.nut");
		appendage_water = obj.GetSquirrelAppendage("character/atgunner/appendage/ap_freezebullet.nut");
		if(appendage_water)
		{
			if(appendage_water.isValid())
			{
				appendage_water.setValid(false);
			}
		}
	}
	if(!isCool && skillIndex == 2 && growtype == 4)
	{
		//芙Lei占?UFF立占?占??占???占??占??
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 2, false, "character/atgunner/appendage/ap_freezebullet.nut", false);
		CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, 252, true);
		local appendage_light = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atgunner/appendage/ap_silverbullet.nut");
		appendage_light = obj.GetSquirrelAppendage("character/atgunner/appendage/ap_silverbullet.nut");
		if(appendage_light)
		{
			if(appendage_light.isValid())
			{
				appendage_light.setValid(false);
			}
		}
		local appendage_fire = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atgunner/appendage/ap_flamebullet.nut");
		appendage_fire = obj.GetSquirrelAppendage("character/atgunner/appendage/ap_flamebullet.nut");
		if(appendage_fire)
		{
			if(appendage_fire.isValid())
			{
				appendage_fire.setValid(false);
			}
		}
	}
	if(!isCool && skillIndex == 30 && growtype == 4)
	{
		//芙LeiBUFF立占?占??占??占??占??
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 30, false, "character/atgunner/appendage/ap_silverbullet.nut", false);
		CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, 253, true);
		local appendage_fire = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atgunner/appendage/ap_flamebullet.nut");
		appendage_fire = obj.GetSquirrelAppendage("character/atgunner/appendage/ap_flamebullet.nut");
		if(appendage_fire)
		{
			if(appendage_fire.isValid())
			{
				appendage_fire.setValid(false);
			}
		}
		local appendage_water = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atgunner/appendage/ap_freezebullet.nut");
		appendage_water = obj.GetSquirrelAppendage("character/atgunner/appendage/ap_freezebullet.nut");
		if(appendage_water)
		{
			if(appendage_water.isValid())
			{
				appendage_water.setValid(false);
			}
		}
	}
	if(!isCool && skillIndex == 52 && growtype == 4)
	{
		//芙Lei占?UFF立占?占??占??甲占??占??
		local appendage_light = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atgunner/appendage/ap_silverbullet.nut");
		appendage_light = obj.GetSquirrelAppendage("character/atgunner/appendage/ap_silverbullet.nut");
		if(appendage_light)
		{
			if(appendage_light.isValid())
			{
				appendage_light.setValid(false);
			}
		}
		local appendage_fire = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atgunner/appendage/ap_flamebullet.nut");
		appendage_fire = obj.GetSquirrelAppendage("character/atgunner/appendage/ap_flamebullet.nut");
		if(appendage_fire)
		{
			if(appendage_fire.isValid())
			{
				appendage_fire.setValid(false);
			}
		}
		local appendage_water = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atgunner/appendage/ap_freezebullet.nut");
		appendage_water = obj.GetSquirrelAppendage("character/atgunner/appendage/ap_freezebullet.nut");
		if(appendage_water)
		{
			if(appendage_water.isValid())
			{
				appendage_water.setValid(false);
			}
		}
	}
	return true;
}





function als_ani_ATG(obj, aniFilename, disX, disY, disZ, imgangle, imgRate, Parent, SpeedRate)
//		 als_ani_ATG(占??占??, ani占??占??, X占??占??占? Y占??占??占? Z占??占??占? 占??占??占??占? 占??占? 父占??占??, 占??放占??占??)
{
	local angle = imgangle;	
	local ani = sq_CreateAnimation("", aniFilename);
	sq_SetfRotateAngle(ani, sq_ToRadian(-angle.tofloat()));
	local sizeRate = imgRate;
	local size = sizeRate.tofloat() / 100.0;
	ani.setImageRateFromOriginal(size, size);
	ani.setAutoLayerWorkAnimationAddSizeRate(size);
	local setSpeedRateF = 100 * SpeedRate;
	ani.setSpeedRate(setSpeedRateF.tofloat()); 
	local pooledObj = sq_CreatePooledObject(ani,true);
	sq_ChangeDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	if(Parent == 0) 
	{
		sq_moveWithParent(obj, pooledObj);
	}
	sq_AddObject(obj, pooledObj, 2, false);
}


function setState_ATGunner(obj, state, datas, isResetTimer)
{
	//OutSubState(obj, state, datas);
	App_State_ATGunner(obj, state, datas, isResetTimer);
	local substate0 = obj.sq_GetVectorData(datas, 0);
	local substate1 = obj.sq_GetVectorData(datas, 1);
	local substate2 = obj.sq_GetVectorData(datas, 2);
	local substate3 = obj.sq_GetVectorData(datas, 3);
	local substate4 = obj.sq_GetVectorData(datas, 4);
	local substate5 = obj.sq_GetVectorData(datas, 5);
	local substate6 = obj.sq_GetVectorData(datas, 6);
	local substate7 = obj.sq_GetVectorData(datas, 7);
	local substate8 = obj.sq_GetVectorData(datas, 8);
	local substate9 = obj.sq_GetVectorData(datas, 9);
	local substate10 = obj.sq_GetVectorData(datas, 10);
	local WeaponSubType = obj.getWeaponSubType();
	

	obj.getVar("substate").clear_vector();
	obj.getVar("substate").push_vector(substate0);
	obj.getVar("substate").push_vector(substate1);
	obj.getVar("substate").push_vector(substate2);
	obj.getVar("substate").push_vector(substate2);
	obj.getVar("substate").push_vector(substate2);
	obj.getVar("substate").push_vector(substate2);
	obj.getVar("substate").push_vector(substate2);
	obj.getVar("substate").push_vector(substate2);

	obj.getVar("state").clear_vector();
	obj.getVar("state").push_vector(state);

		if (!sq_isPVPMode() && state == 38 && sq_GetSkillLevel(obj , 115) >0)
		{
			obj.sq_ZStop();
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(1000);
			obj.sq_AddSetStatePacket(115, STATE_PRIORITY_IGNORE_FORCE, true);
		}

}
 
function setEnableCancelSkill_ATGunner(NfDEvwlcEC_mxO, vplKviQdJmi)
{
 if(!NfDEvwlcEC_mxO)
 return false;
 
 if(!NfDEvwlcEC_mxO.isMyControlObject())
 return false;
 if(!vplKviQdJmi)
 return true;
 NfDEvwlcEC_mxO.setSkillCommandEnable(232, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(233, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(234, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(235, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(236, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(237, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(238, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(239, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(240, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(241, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(242, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(243, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(244, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(245, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(246, vplKviQdJmi); 
 local ExhprNt6s8aDvIWa = onGetMyPassiveObject_My(NfDEvwlcEC_mxO, 24376, 247, 1); 
 if(!ExhprNt6s8aDvIWa)
 NfDEvwlcEC_mxO.setSkillCommandEnable(247, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(248, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(249, vplKviQdJmi); 
 return true;
} ;

 