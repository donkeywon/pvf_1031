
 
function setEnableCancelSkill_Gunner(obj, isEnable)
{
 if(!obj)
 return false;
 
 if(!obj.isMyControlObject())
 return false;
 if(!isEnable)
 return true;
 obj.setSkillCommandEnable(53, isEnable); 
 obj.setSkillCommandEnable(232, isEnable); 
 obj.setSkillCommandEnable(233, isEnable); 
 obj.setSkillCommandEnable(234, isEnable); 
 obj.setSkillCommandEnable(235, isEnable); 
 obj.setSkillCommandEnable(236, isEnable); 
 obj.setSkillCommandEnable(237, isEnable); 
 obj.setSkillCommandEnable(238, isEnable); 
 obj.setSkillCommandEnable(239, isEnable); 
 obj.setSkillCommandEnable(240, isEnable); 
 obj.setSkillCommandEnable(241, isEnable); 
 obj.setSkillCommandEnable(242, isEnable); 
 obj.setSkillCommandEnable(243, isEnable); 
 obj.setSkillCommandEnable(244, isEnable); 
 obj.setSkillCommandEnable(245, isEnable); 
 obj.setSkillCommandEnable(246, isEnable); 
 obj.setSkillCommandEnable(247, isEnable); 
 return true;
} ;



 function procAppend_GunStyle(obj)//花式槍術
{
	if(!obj) return;

	local appendage = obj.GetSquirrelAppendage("character/gunner/appendage/ap_gunstyle.nut");

	if (appendage)
	{
		if (appendage.isValid())
		{
			local loadSlot = obj.sq_GetSkillLoad(248)
			if(loadSlot)
			{
				local remain_number = loadSlot.getRemainLoadNumber()
				if(remain_number > 0)
				{
					GunStyle(obj);
				}
			}
		}
	}
}



function CommonEnable_gunner_soften(obj, skillindex, state)//花式槍術
{
    if(obj.sq_GetState() == state)
        return false;
    obj.setSkillCommandEnable(skillindex, true);
        return true;
}



function SetState_gunner_soften(obj, skillindex, state, Arr)//花式槍術
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



function GunStyle(obj)//花式槍術
{
	if(!obj) return;

	local state = obj.sq_GetState();
	if(state == 0 || state == 1 || state == 2 || state == 3 || state == 4 || state == 5 || state == 6 || state == 7 || state == 8 || state == 9 || state == 10 || state == 11 || state == 12 || state == 13 || state == 14 || state == 15 || state == 16 || state == 17 || state == 18) return;

		CommonEnableGunStyle(obj, 3, 19);//回旋Ti
		CommonEnableGunStyle(obj, 7, 23);//瞬Ti
		CommonEnableGunStyle(obj, 14, 20);//BBQ
		CommonEnableGunStyle(obj, 6, 21);//踏射
		CommonEnableGunStyle(obj, 5, 8);//爆頭一擊
		CommonEnableGunStyle(obj, 20, 8);//回頭一擊
		CommonEnableGunStyle(obj, 9, 24);//亂射
		CommonEnableGunStyle(obj, 72, 37);//多重爆頭
		CommonEnableGunStyle(obj, 51, 41);//雙鷹回旋
		CommonEnableGunStyle(obj, 64, 33);//Feng狂屠戮
		CommonEnableGunStyle(obj, 104, 58);//極限多重爆頭
		CommonEnableGunStyle(obj, SKILL_GUNNER_DEADLYAPPROACH, STATE_GUNNER_DEADLYAPPROACH);//死亡突襲
		CommonEnableGunStyle(obj, SKILL_GUNNER_WIPEOUT, STATE_GUNNER_WIPEOUT);//抹殺
		CommonEnableGunStyle(obj, SKILL_GUNNER_SUPPRESSINGFIRE, STATE_GUNNER_SUPPRESSINGFIRE);//壓制射擊
		CommonEnableGunStyle(obj, SKILL_GUNNER_FASTDRAW, STATE_GUNNER_FASTDRAW);//疾風驟雨
		CommonEnableGunStyle(obj, SKILL_GUNNER_SEVENTHFLOW, STATE_GUNNER_SEVENTHFLOW);//第七翼動



		if(obj.sq_IsEnterSkill(3) != -1)
		{
			SetStateGunStyle(obj, 3, 19, [0, 3]);
		}
		if(obj.sq_IsEnterSkill(7) != -1)
		{
			SetStateGunStyle(obj, 7, 23, [0]);
		}
		if(obj.sq_IsEnterSkill(14) != -1)
		{
			SetStateGunStyle(obj, 14, 20, [14]);
		}
		if(obj.sq_IsEnterSkill(6) != -1)
		{
			SetStateGunStyle(obj, 6, 21, [0]);
		}
		if(obj.sq_IsEnterSkill(5) != -1)
		{	
			if(state == 6)
			SetStateGunStyle(obj, 5, 169, [1, 5, 0]);
			else
			SetStateGunStyle(obj, 5, 8, [1, 5, 0]);
		}
		if(obj.sq_IsEnterSkill(20) != -1)
		{
			SetStateGunStyle(obj, 20, 8, [1, 20, 0]);
		}
		if(obj.sq_IsEnterSkill(9) != -1)
		{
			SetStateGunStyle(obj, 9, 24, [15, 1, 0, 100]);
		}
		if(obj.sq_IsEnterSkill(72) != -1)
		{
			SetStateGunStyle(obj, 72, 37, [0, 0]);
		}
		if(obj.sq_IsEnterSkill(51) != -1)
		{
			SetStateGunStyle(obj, 51, 41, [0, 1, 4]);
		}
		if(obj.sq_IsEnterSkill(64) != -1)
		{
			SetStateGunStyle(obj, 64, 33, [0]);
		}
		if(obj.sq_IsEnterSkill(104) != -1)
		{
			SetStateGunStyle(obj, 104, 58, [1, 97]);
		}
		if(obj.sq_IsEnterSkill(SKILL_GUNNER_DEADLYAPPROACH) != -1)
		{
			SetStateGunStyle(obj, SKILL_GUNNER_DEADLYAPPROACH, STATE_GUNNER_DEADLYAPPROACH, [0]);
		}
		if(obj.sq_IsEnterSkill(SKILL_GUNNER_WIPEOUT) != -1)
		{
			SetStateGunStyle(obj, SKILL_GUNNER_WIPEOUT, STATE_GUNNER_WIPEOUT, [0]);
		}
		if(obj.sq_IsEnterSkill(SKILL_GUNNER_SUPPRESSINGFIRE) != -1)
		{
			SetStateGunStyle(obj, SKILL_GUNNER_SUPPRESSINGFIRE, STATE_GUNNER_SUPPRESSINGFIRE, [0]);
		}
		if(obj.sq_IsEnterSkill(SKILL_GUNNER_FASTDRAW) != -1)
		{
			SetStateGunStyle(obj, SKILL_GUNNER_FASTDRAW, STATE_GUNNER_FASTDRAW, [0]);
		}
		if(obj.sq_IsEnterSkill(SKILL_GUNNER_SEVENTHFLOW) != -1)
		{
			SetStateGunStyle(obj, SKILL_GUNNER_SEVENTHFLOW, STATE_GUNNER_SEVENTHFLOW, [0]);
		}
 return true;
} ;



function CommonEnableGunStyle(obj, skillindex, state)//花式槍術
{
	if(obj.sq_GetState() == state)
		return false;
	obj.setSkillCommandEnable(skillindex ,true);
		return true;
}



function SetStateGunStyle(obj, skillindex, state, Arr)//花式槍術
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
			GunStyle_Decrease(obj);
			GunStyle_Buff(obj);
			return true;
		}

	}
}



function GunStyle_Decrease(obj)//花式槍術
{
	local loadSlot = obj.sq_GetSkillLoad(248)
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



function GunStyle_Buff(obj)//花式槍術
{
	local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_GUNSTYLE, false,"character/gunner/appendage/ap_gunstyle_buff.nut", false);

	local skill_level = sq_GetSkillLevel(obj, SKILL_GUNSTYLE);
	appendage.sq_SetValidTime(sq_GetIntData(obj, SKILL_GUNSTYLE, 2));
	if(appendage)
		{
			appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_GUNSTYLE, skill_level);
			CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, SKILL_GUNSTYLE, true);
		}
}





function useSkill_after_Gunner(obj, skillIndex, consumeMp, consumeItem, oldSkillMpRate)
{
	if (!obj)
		return false;
	local skill = sq_GetSkill(obj, skillIndex); //得到技能
	local isCool = skill.isInCoolTime();		//是否處于冷?
	local growtype = sq_getGrowType(obj);		//得到職業類型
	if (!isCool && skillIndex == 60 && growtype == 1)
	{ //判斷技能沒有處于冷?狀態，技能是死亡左輪，職業是漫游
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 60, false, "character/gunner/appendage/ap_revolvercriticaldamageup.nut", false);
		local skill_level = sq_GetSkillLevel(obj, 60);
		CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, APID_RESONANCE, true);
		appendage = obj.GetSquirrelAppendage("character/gunner/appendage/ap_revolvercriticaldamageup.nut");
		if (appendage)
		{
			local change_time = sq_GetLevelData(obj, 60, 0, skill_level);
			appendage.sq_SetValidTime(change_time);
			local CRITICAL_DAMAGE_RATE = sq_GetLevelData(obj, 60, 1, skill_level);

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
	return true;
}