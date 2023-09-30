function ProcPassiveSkill_Priest(obj, skill_index, skill_level)
{
 switch(skill_index)
 {

case SKILL_PRIEST_COMMINTERRUPT:
	if(skill_level > 0)
	{
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/new_priest/appendage/ap_priest_comminterrupt.nut", true);
	}
 break;

case SKILL_BENYUAN:
	if(skill_level > 0)
	{
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/common/ap_benyuan.nut", true);
	}
	break;
 }
 case SKILL_SHI_SHEN_ZHI_LI:
	if(skill_level > 0)
	{
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/priest/appendage/ap_shishenzhili.nut", true);
	}
	break;
case SKILL_ZHENG_YI_QIAN_NENG:
	if(skill_level > 0)
	{
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/priest/appendage/ap_zhengyichengjie.nut", true);
	}
	break;
 return true;
};

function useSkill_after_Priest(obj, skillIndex, consumeMp, consumeItem, oldSkillMpRate)
{
	if(!obj) return false;
	local skillLevel = sq_GetSkillLevel(obj, SKILL_SHI_SHEN_ZHI_LI);
	if(skillLevel > 0)
	{
		//47	`Priest/ChakraOfPassion.skl`
		//48	`Priest/ChakraOfCalmness.skl`
		if(skillIndex == 47)
		{
			local lieyanLevel = sq_GetSkillLevel(obj, 47);
			local time = sq_GetLevelData(obj, 47, 0, lieyanLevel);
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 47, false, "character/priest/appendage/ap_mailun_lieyan.nut", false);
			appendage.sq_SetValidTime(time);
			CNSquirrelAppendage.sq_Append(appendage, obj, obj);
		}
		else if(skillIndex == 48)
		{
			local shengguangLevel = sq_GetSkillLevel(obj, 48);
			local time = sq_GetLevelData(obj, 48, 0, shengguangLevel);
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 48, false, "character/priest/appendage/ap_mailun_shengguang.nut", false);
			appendage.sq_SetValidTime(time);
			CNSquirrelAppendage.sq_Append(appendage, obj, obj);
		}
		local time = sq_GetLevelData(obj, SKILL_SHI_SHEN_ZHI_LI, 0, skillLevel);
		local maxCount = sq_GetLevelData(obj, SKILL_SHI_SHEN_ZHI_LI, 1, skillLevel);
		local physicalPA = sq_GetLevelData(obj, SKILL_SHI_SHEN_ZHI_LI, 2, skillLevel);
		local physicalAB = sq_GetLevelData(obj, SKILL_SHI_SHEN_ZHI_LI, 3, skillLevel);
		local magicalPA = sq_GetLevelData(obj, SKILL_SHI_SHEN_ZHI_LI, 4, skillLevel);
		local magicalAB = sq_GetLevelData(obj, SKILL_SHI_SHEN_ZHI_LI, 5, skillLevel);
		if(CURRENT_BUFF_COUNT_SHI_SHEN_ZHI_LI >= maxCount)
			return true;
		//1	`Priest/AntiairUpper.skl`
		//11	`Priest/QuakeArea.skl`
		local islieyan = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/priest/appendage/ap_mailun_lieyan.nut");
		if(islieyan)
		{
			if(skillIndex == 1 || skillIndex == 11)
			{
				local lieyanBuff = obj.GetSquirrelAppendage("character/priest/appendage/ap_mailun_lieyan_buff.nut");
				if(lieyanBuff)
					lieyanBuff.setValid(false);
				CURRENT_BUFF_COUNT_SHI_SHEN_ZHI_LI+=1;
				lieyanBuff = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_SHI_SHEN_ZHI_LI, false, "character/priest/appendage/ap_mailun_lieyan_buff.nut", false);
				lieyanBuff.getVar("skillData").clear_vector();
				lieyanBuff.getVar("skillData").push_vector(physicalPA*CURRENT_BUFF_COUNT_SHI_SHEN_ZHI_LI);
				lieyanBuff.getVar("skillData").push_vector(physicalAB*CURRENT_BUFF_COUNT_SHI_SHEN_ZHI_LI);
				lieyanBuff.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_SHI_SHEN_ZHI_LI, skillLevel);
				lieyanBuff.sq_SetValidTime(time);
				CNSquirrelAppendage.sq_Append(lieyanBuff, obj, obj);
			}
		}
		//70	`Priest/BaekHo.skl`
		//39	`Priest/OppressionTalisman.skl`
		//40	`Priest/ThunderboltTalisman.skl`
		local isshengguang = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/priest/appendage/ap_mailun_shengguang.nut");
		if(isshengguang)
		{
			if(skillIndex == 70 || skillIndex == 39 || skillIndex == 40)
			{
				local shengguangBuff = obj.GetSquirrelAppendage("character/priest/appendage/ap_mailun_shengguang_buff.nut");
				if(shengguangBuff)
					shengguangBuff.setValid(false);
				CURRENT_BUFF_COUNT_SHI_SHEN_ZHI_LI+=1;
				shengguangBuff = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_SHI_SHEN_ZHI_LI, false, "character/priest/appendage/ap_mailun_shengguang_buff.nut", false);
				shengguangBuff.getVar("skillData").clear_vector();
				shengguangBuff.getVar("skillData").push_vector(magicalPA*CURRENT_BUFF_COUNT_SHI_SHEN_ZHI_LI);
				shengguangBuff.getVar("skillData").push_vector(magicalAB*CURRENT_BUFF_COUNT_SHI_SHEN_ZHI_LI);
				shengguangBuff.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_SHI_SHEN_ZHI_LI, skillLevel);
				shengguangBuff.sq_SetValidTime(time);
				CNSquirrelAppendage.sq_Append(shengguangBuff, obj, obj);
			}
		}
	}
	return true;
}