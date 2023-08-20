function ProcPassiveSkill_Fighter(obj, skill_index, skill_level) {
	switch (skill_index) {

	case SKILL_FIGHTER_COMMINTERRUPT:
		if (skill_level > 0) {
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/fighter/appendage/ap_fighter_comminterrupt.nut", true);
		}
		break;
	case SKILL_BENYUAN:
		if (skill_level > 0) {
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/common/ap_benyuan.nut", true);
		}
		break;
	case SKILL_JI_SHOU_AO_YI:
		if (skill_level > 0) {
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/fighter/appendage/ap_jishouaoyi.nut", true);
		}
	case SKILL_MENG_DU_ZHI_SHANG:
		if (skill_level > 0) {
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/fighter/appendage/ap_mengduzhishang.nut", true);
		}
	case SKILL_LIMIT_BREAK:
		if (skill_level > 0) {
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/fighter/limitbreak/ap_limitbreak.nut", true);
		}
	}
	return true;
};

function useSkill_after_Fighter(obj, skillIndex, consumeMp, consumeItem, oldSkillMpRate) {
	if (!obj) return false;
	useSkill_after_Fighter_buff(obj, skillIndex, consumeMp, consumeItem, oldSkillMpRate);
	local skillLevel = sq_GetSkillLevel(obj, SKILL_JI_SHOU_AO_YI);
	if (skillLevel > 0) {
		local powerAdd = sq_GetLevelData(obj, SKILL_JI_SHOU_AO_YI, 0, skillLevel);
		local time = sq_GetLevelData(obj, SKILL_JI_SHOU_AO_YI, 1, skillLevel);
		local maxCount = sq_GetLevelData(obj, SKILL_JI_SHOU_AO_YI, 2, skillLevel);
		if (CURRENT_BUFF_COUNT_JI_SHOU_AO_YI >= maxCount) return true;

		if (skillIndex == 9 || skillIndex == 49 || skillIndex == 87 || skillIndex == 62 || skillIndex == 18 || skillIndex == 89 || skillIndex == 88 || skillIndex == 63 || skillIndex == 105 || skillIndex == 101) {
			local appendage = obj.GetSquirrelAppendage("character/fighter/appendage/ap_jishouaoyi_buff.nut");
			if (appendage) appendage.setValid(false);
			CURRENT_BUFF_COUNT_JI_SHOU_AO_YI += 1;
			appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_JI_SHOU_AO_YI, false, "character/fighter/appendage/ap_jishouaoyi_buff.nut", false);
			appendage.getVar("skillData").clear_vector();
			appendage.getVar("skillData").push_vector(powerAdd * CURRENT_BUFF_COUNT_JI_SHOU_AO_YI);
			appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_JI_SHOU_AO_YI, skillLevel);
			appendage.sq_SetValidTime(time);
			CNSquirrelAppendage.sq_Append(appendage, obj, obj);
		}
	}
	local skillLevel = sq_GetSkillLevel(obj, SKILL_NENCHARGE);
	if (skillLevel <= 0) return;
	switch (skillIndex) {
	case 15:
		obj.sq_IsEnterSkillLastKeyUnits(15);
		break;
	case 16:
		obj.sq_IsEnterSkillLastKeyUnits(16);
		break;
	case 42:
		obj.sq_IsEnterSkillLastKeyUnits(42);
		break;
	case 90:
		obj.sq_IsEnterSkillLastKeyUnits(90);
		break;
	case 98:
		obj.sq_IsEnterSkillLastKeyUnits(98);
		break;
	case 100:
		obj.sq_IsEnterSkillLastKeyUnits(100);
		break;
	}
	return true;
}

function useSkill_after_Fighter_buff(obj, skillIndex, consumeMp, consumeItem, oldSkillMpRate) {
	if (!obj) return false;
	local skill = sq_GetSkill(obj, skillIndex); //��������
	local isCool = skill.isInCoolTime(); //����������?
	local growtype = sq_getGrowType(obj); //��������׾��
	local skillLevel = sq_GetSkillLevel(obj, skillIndex);
	if (!isCool && skillIndex == SKILL_FIGHTER_LIGHTENCHANTWEAPON) { //��Ө��������������?����������������ܲ�ӣ�������Ѩ��
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skillIndex, false, "character/fighter/lightenchantweapon/ap_lightenchantweapon.nut", false);
		CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, 243, true);
		appendage = obj.GetSquirrelAppendage("character/fighter/lightenchantweapon/ap_lightenchantweapon.nut");
		if (appendage) {
			local change_time = sq_GetLevelData(obj, skillIndex, 1, skillLevel);
			appendage.sq_SetValidTime(change_time);
			local EQUIPMENT_MAGICAL_ATTACK = sq_GetLevelData(obj, skillIndex, 0, skillLevel);

			local change_appendage = appendage.sq_getChangeStatus("ap_lightenchantweapon");
			if (!change_appendage) {
				change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, true, EQUIPMENT_MAGICAL_ATTACK - 100, APID_COMMON);
				change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_ADDITIONAL_PHYSICAL_GENUINE_ATTACK, true, EQUIPMENT_MAGICAL_ATTACK - 100, APID_COMMON);
				change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_ADDITIONAL_MAGICAL_GENUINE_ATTACK, true, EQUIPMENT_MAGICAL_ATTACK - 100, APID_COMMON);
			}

			if (change_appendage) {
				change_appendage.clearParameter();
				change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, true, EQUIPMENT_MAGICAL_ATTACK.tofloat() - 100);
				change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_PHYSICAL_GENUINE_ATTACK, true, EQUIPMENT_MAGICAL_ATTACK.tofloat() - 100);
				change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_MAGICAL_GENUINE_ATTACK, true, EQUIPMENT_MAGICAL_ATTACK.tofloat() - 100);
			}
		}
	}
	if (!isCool && skillIndex == SKILL_FIGHTER_LIGHTTOLERANCEUP) { //��Ө��������������?������������֭����?��������Ѩ��
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skillIndex, false, "character/fighter/lighttoleranceup/ap_lighttoleranceup.nut", false);
		CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, 244, true);
		appendage = obj.GetSquirrelAppendage("character/fighter/lighttoleranceup/ap_lighttoleranceup.nut");
		if (appendage) {
			local time = sq_GetLevelData(obj, skillIndex, 0, skillLevel);
			appendage.sq_SetValidTime(time);
			local LIGHT_ATTACK = sq_GetLevelData(obj, skillIndex, 3, skillLevel);
			local change_appendage = appendage.sq_getChangeStatus("ap_lighttoleranceup");
			if (!change_appendage) {
				change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_ELEMENT_ATTACK_LIGHT, false, LIGHT_ATTACK, APID_COMMON);
			}
			if (change_appendage) {
				change_appendage.clearParameter();
				change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_LIGHT, false, LIGHT_ATTACK.tofloat());
			}
		}
	}
	return true;
}