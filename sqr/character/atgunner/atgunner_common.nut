

function procAppend_RoseDance(obj)//緋紅魅影
{
	if(!obj) return;

	local appendage = obj.GetSquirrelAppendage("character/atgunner/appendage/ap_rosedance.nut");

	if (appendage)
	{
		if (appendage.isValid())
		{
			local loadSlot = obj.sq_GetSkillLoad(250)
			if(loadSlot)
			{
				local remain_number = loadSlot.getRemainLoadNumber()
				if(remain_number > 0)
				{
					RoseDance(obj);
				}
			}
		}
	}
}




function CommonEnable_atgunner_soften(obj, skillindex, state)//緋紅魅影
{
    if(obj.sq_GetState() == state)
        return false;
    obj.setSkillCommandEnable(skillindex, true);
        return true;
}



function SetState_atgunner_soften(obj, skillindex, state, Arr)//緋紅魅影
{
    if(obj.sq_GetState() == state)
        return false;
    if(obj.sq_IsUseSkill(skillindex))
    {
        obj.sq_IntVectClear();
        if(Arr.len() < 1)
        {
            obj.sq_AddSetStatePacket(state, STATE_PRIORITY_USER, true);
            return true;
        }
        else
        {   
            foreach(sub in Arr)
                obj.sq_IntVectPush(sub);

            obj.sq_AddSetStatePacket(state, STATE_PRIORITY_USER, true);
            return true;
        }

    }
}



function RoseDance(obj)//緋紅魅影
{
	if(!obj) return;

	local state = obj.sq_GetState();
	if(state == 0 || state == 1 || state == 2 || state == 3 || state == 4 || state == 5 || state == 6 || state == 7 || state == 8 || state == 9 || state == 10 || state == 11 || state == 12 || state == 13 || state == 14 || state == 15 || state == 16 || state == 17 || state == 18) return;

		CommonEnableRoseDance(obj, 3, 19);//上旋Ti
		CommonEnableRoseDance(obj, 7, 23);//刺Ti
		CommonEnableRoseDance(obj, 14, 20);//BBQ
		CommonEnableRoseDance(obj, 6, 21);//釘刺射
		CommonEnableRoseDance(obj, 5, 8);//爆頭一擊
		CommonEnableRoseDance(obj, 20, 8);//回頭一擊
		CommonEnableRoseDance(obj, 9, 24);//亂射
		CommonEnableRoseDance(obj, 72, 37);//多重爆頭
		CommonEnableRoseDance(obj, 51, 41);//雙鷹回旋
		CommonEnableRoseDance(obj, 104, 58);//極限多重爆頭
		CommonEnableRoseDance(obj, SKILL_ATGUNNER_SUPPRESSINGFIRE, STATE_ATGUNNER_SUPPRESSINGFIRE);//壓制射擊
		CommonEnableRoseDance(obj, SKILL_ATGUNNER_KILLPOINT, STATE_ATGUNNER_KILLPOINT);//死亡鎖Lian
		CommonEnableRoseDance(obj, SKILL_ATGUNNER_CHAINDEVIDER, STATE_ATGUNNER_CHAINDEVIDER);//鎖Lian切割
		CommonEnableRoseDance(obj, SKILL_ATGUNNER_BLOODNCHAIN, STATE_ATGUNNER_BLOODNCHAIN);//血舞祭


		if(obj.sq_IsEnterSkill(3) != -1)
		{
			SetStateRoseDance(obj, 3, 19, [3]);
		}
		if(obj.sq_IsEnterSkill(7) != -1)
		{
			SetStateRoseDance(obj, 7, 23, [0]);
		}
		if(obj.sq_IsEnterSkill(14) != -1)
		{
			SetStateRoseDance(obj, 14, 20, [14]);
		}
		if(obj.sq_IsEnterSkill(6) != -1)
		{
			SetStateRoseDance(obj, 6, 21, [0]);
		}
		if(obj.sq_IsEnterSkill(5) != -1)
		{
			SetStateRoseDance(obj, 5, 8, [1, 5, 0]);
		}
		if(obj.sq_IsEnterSkill(20) != -1)
		{
			SetStateRoseDance(obj, 20, 8, [1, 20, 0]);
		}
		if(obj.sq_IsEnterSkill(9) != -1)
		{
			SetStateRoseDance(obj, 9, 24, [15, 1, 0, 100]);
		}
		if(obj.sq_IsEnterSkill(72) != -1)
		{
			SetStateRoseDance(obj, 72, 37, [0, 0]);
		}
		if(obj.sq_IsEnterSkill(51) != -1)
		{
			SetStateRoseDance(obj, 51, 41, [0, 1, 4]);
		}
		if(obj.sq_IsEnterSkill(104) != -1)
		{
			SetStateRoseDance(obj, 104, 58, [1, 97]);
		}
		if(obj.sq_IsEnterSkill(SKILL_ATGUNNER_SUPPRESSINGFIRE) != -1)
		{
			SetStateRoseDance(obj, SKILL_ATGUNNER_SUPPRESSINGFIRE, STATE_ATGUNNER_SUPPRESSINGFIRE, [0]);
		}
		if(obj.sq_IsEnterSkill(SKILL_ATGUNNER_KILLPOINT) != -1)
		{
			SetStateRoseDance(obj, SKILL_ATGUNNER_KILLPOINT, STATE_ATGUNNER_KILLPOINT, [0]);
		}
		if(obj.sq_IsEnterSkill(SKILL_ATGUNNER_CHAINDEVIDER) != -1)
		{
			SetStateRoseDance(obj, SKILL_ATGUNNER_CHAINDEVIDER, STATE_ATGUNNER_CHAINDEVIDER, [0]);
		}
		if(obj.sq_IsEnterSkill(SKILL_ATGUNNER_BLOODNCHAIN) != -1)
		{
			SetStateRoseDance(obj, SKILL_ATGUNNER_BLOODNCHAIN, STATE_ATGUNNER_BLOODNCHAIN, [0]);
		}
 return true;
} ;



function CommonEnableRoseDance(obj, skillindex, state)//緋紅魅影
{
	if(obj.sq_GetState() == state)
		return false;
	obj.setSkillCommandEnable(skillindex ,true);
		return true;
}



function SetStateRoseDance(obj, skillindex, state, Arr)//緋紅魅影
{
	if(obj.sq_GetState() == state)
		return false;
	if(obj.sq_IsUseSkill(skillindex))
	{
		obj.sq_IntVectClear();
		if(Arr.len() < 1)
		{
			obj.sq_AddSetStatePacket(state, STATE_PRIORITY_USER, true);
			return true;
		}
		else
		{	
			foreach(sub in Arr)
				obj.sq_IntVectPush(sub);

			obj.sq_AddSetStatePacket(state, STATE_PRIORITY_USER, true);
			RoseDance_Decrease(obj);
			RoseDance_Buff(obj);
			return true;
		}

	}
}



function RoseDance_Decrease(obj)//緋紅魅影
{
	local loadSlot = obj.sq_GetSkillLoad(250)
	if(loadSlot)
	{
		local remain_number = loadSlot.getRemainLoadNumber()
		if(remain_number > 0)
		{
			loadSlot.decreaseLoadCount(1)
				loadSlot.setStartCool()
		}
	}
}



function RoseDance_Buff(obj)//緋紅魅影
{
	local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_ROSEDANCE, false,"character/atgunner/appendage/ap_rosedance_buff.nut", false);

	local skill_level = sq_GetSkillLevel(obj, SKILL_ROSEDANCE);
	appendage.sq_SetValidTime(sq_GetIntData(obj, SKILL_ROSEDANCE, 2));
	if(appendage)
		{
			appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_ROSEDANCE, skill_level);
			CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, SKILL_ROSEDANCE, true);
		}
}



function procAppend_NitroMotor(obj)
{
	if(!obj) return;

	local appendage = obj.GetSquirrelAppendage("character/atgunner/nitromotor/ap_nitromotor.nut");

	if(appendage)
	{
		if(appendage.isValid())
		{
			local loadSlot = obj.sq_GetSkillLoad(17);
			if(loadSlot)
			{
				local remain_number = loadSlot.getRemainLoadNumber();
				if(remain_number > 0)
				{
					NitroMotor(obj);
				}
			}
		}
	}
}

function useSkill_after_ATGunner(obj, skillIndex, consumeMp, consumeItem, oldSkillMpRate)
{
	if(!obj) return false;
		
	local skill = sq_GetSkill(obj, skillIndex);
	local isCool = skill.isInCoolTime();
	local growtype = sq_getGrowType(obj);

	if (!isCool && skillIndex == 60 && growtype == 1)
	{ //判斷技能沒有處于冷?狀態，技能是死亡左輪，職業是漫游
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 60, false, "character/atgunner/appendage/ap_revolvercriticaldamageup.nut", false);
		local skill_level = sq_GetSkillLevel(obj, 60);
		CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, APID_RESONANCE, true);
		appendage = obj.GetSquirrelAppendage("character/atgunner/appendage/ap_revolvercriticaldamageup.nut");
		if (appendage)
		{
			local change_time = sq_GetLevelData(obj, 60, 0, skill_level);
			appendage.sq_SetValidTime(change_time);
			local CRITICAL_DAMAGE_RATE = sq_GetLevelData(obj, 60, 2, skill_level);

			local change_appendage = appendage.sq_getChangeStatus("ele_atk_water");
			if (!change_appendage)
				change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_DAMAGE_RATE, APID_COMMON);

			if (change_appendage)
			{
				change_appendage.clearParameter();
				change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_DAMAGE_RATE, false, CRITICAL_DAMAGE_RATE.tofloat());
			}
		}
	}

	if(!isCool && skillIndex == 1 && growtype == 4)
	{
		//?셂ei??UFF塋뗥뜝????????????????
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
		//?셂ei??UFF塋뗥뜝??????????????
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
		//?셂eiBUFF塋뗥뜝?????????????
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
		//?셂ei??UFF塋뗥뜝????????꿨뜝?????
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
//		 als_ani_ATG(??????, ani??????, X???????? Y???????? Z???????? ??????????? ????? ?뜹뜝?????, ????얍뜝?????)
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

 