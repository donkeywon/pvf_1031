function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_benyuan")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_benyuan")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_benyuan")
}

function sq_AddEffect(appendage)
{
	if(!appendage)
		return;
}

function proc_appendage_benyuan(appendage)
{
	if(!appendage) {
		return;
	}

	local obj = appendage.getParent();
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(obj);
	local skill_level = sqrChr.sq_GetSkillLevel(SKILL_BENYUAN);
	local skill_index = SKILL_BENYUAN;

	local PHYSICAL_ATTACK_PERCENT = sqrChr.sq_GetLevelData(skill_index, 51, skill_level);//力量%
	local MAGICAL_ATTACK_PERCENT = sqrChr.sq_GetLevelData(skill_index, 52, skill_level);//智力%
	local MAGICAL_DEFENSE_PERCENT = sqrChr.sq_GetLevelData(skill_index, 53, skill_level);//精神%
	local PHYSICAL_DEFENSE_PERCENT = sqrChr.sq_GetLevelData(skill_index, 54, skill_level);//体力%
	local PHYSICAL_ATTACK = sqrChr.sq_GetLevelData(skill_index, 71, skill_level);//力量
	local MAGICAL_ATTACK = sqrChr.sq_GetLevelData(skill_index, 72, skill_level);//智力
	local MAGICAL_DEFENSE = sqrChr.sq_GetLevelData(skill_index, 73, skill_level);//精神
	local PHYSICAL_DEFENSE = sqrChr.sq_GetLevelData(skill_index, 74, skill_level);//体力

	local ADDITIONAL_MAGICAL_GENUINE_ATTACK_PERCENT = sqrChr.sq_GetLevelData(skill_index, 55, skill_level);//独立物理攻击力%
	local ADDITIONAL_PHYSICAL_GENUINE_ATTACK_PERCENT = sqrChr.sq_GetLevelData(skill_index, 56, skill_level);//独立魔法攻击力%
	local ADDITIONAL_MAGICAL_GENUINE_ATTACK = sqrChr.sq_GetLevelData(skill_index, 75, skill_level);//独立物理攻击力
	local ADDITIONAL_PHYSICAL_GENUINE_ATTACK = sqrChr.sq_GetLevelData(skill_index, 76, skill_level);//独立魔法攻击力

	local PHYSICAL_ATTACK_BONUS = sqrChr.sq_GetLevelData(skill_index, 57, skill_level);//物理攻击力%
	local MAGICAL_ATTACK_BONUS = sqrChr.sq_GetLevelData(skill_index, 58, skill_level);//魔法攻击力%
	local COOLTIME_DECLINE = sqrChr.sq_GetLevelData(skill_index, 59, skill_level);//冷却时间
	COOLTIME_DECLINE = COOLTIME_DECLINE * -1; //1：100冷却补正0.1；
	local EQUIPMENT_PHYSICAL_ATTACK = sqrChr.sq_GetLevelData(skill_index, 60, skill_level);//物理攻击力
	local EQUIPMENT_MAGICAL_ATTACK = sqrChr.sq_GetLevelData(skill_index, 61, skill_level);//魔法攻击力

	local EQUIPMENT_PHYSICAL_DEFENSE_PERCENT = sqrChr.sq_GetLevelData(skill_index, 81, skill_level);//物理防御力%
	local EQUIPMENT_MAGICAL_DEFENSE_PERCENT = sqrChr.sq_GetLevelData(skill_index, 82, skill_level);//魔法防御力%
	local EQUIPMENT_PHYSICAL_DEFENSE = sqrChr.sq_GetLevelData(skill_index, 83, skill_level);//物理防御力
	local EQUIPMENT_MAGICAL_DEFENSE = sqrChr.sq_GetLevelData(skill_index, 84, skill_level);//魔法防御力

	local PHYSICAL_CRITICAL_HIT_RATE = sqrChr.sq_GetLevelData(skill_index, 10, skill_level);//物理暴击
	local MAGICAL_CRITICAL_HIT_RATE = sqrChr.sq_GetLevelData(skill_index, 11, skill_level);//魔法暴击

	local ATTACK_SPEED = sqrChr.sq_GetLevelData(skill_index, 12, skill_level);// 攻速
	local CAST_SPEED = sqrChr.sq_GetLevelData(skill_index, 13, skill_level);// 施放速度
	local MOVE_SPEED = sqrChr.sq_GetLevelData(skill_index, 14, skill_level);//移速

	local ELEMENT_ATTACK_FIRE_PERCENT = sqrChr.sq_GetLevelData(skill_index, 62, skill_level);//火%
	local ELEMENT_ATTACK_WATER_PERCENT = sqrChr.sq_GetLevelData(skill_index, 63, skill_level);//冰%
	local ELEMENT_ATTACK_DARK_PERCENT = sqrChr.sq_GetLevelData(skill_index, 64, skill_level);//暗%
	local ELEMENT_ATTACK_LIGHT_PERCENT = sqrChr.sq_GetLevelData(skill_index, 65, skill_level);//光%
	local ELEMENT_ATTACK_FIRE = sqrChr.sq_GetLevelData(skill_index, 77, skill_level);//火
	local ELEMENT_ATTACK_WATER = sqrChr.sq_GetLevelData(skill_index, 78, skill_level);//冰
	local ELEMENT_ATTACK_DARK = sqrChr.sq_GetLevelData(skill_index, 79, skill_level);//暗
	local ELEMENT_ATTACK_LIGHT = sqrChr.sq_GetLevelData(skill_index, 80, skill_level);//光

	local FIRE_RESISTANCE = sqrChr.sq_GetLevelData(skill_index, 41, skill_level);//火抗
	local WATER_RESISTANCE = sqrChr.sq_GetLevelData(skill_index, 42, skill_level);//冰抗
	local DARK_RESISTANCE = sqrChr.sq_GetLevelData(skill_index, 43, skill_level);//暗抗
	local LIGHT_RESISTANCE = sqrChr.sq_GetLevelData(skill_index, 44, skill_level);//光抗

	local PHYSICAL_CRITICAL_DAMAGE_RATE = sqrChr.sq_GetLevelData(skill_index, 16, skill_level);//物理暴击伤害
	local MAGICAL_CRITICAL_DAMAGE_RATE = sqrChr.sq_GetLevelData(skill_index, 17, skill_level);//魔法暴击伤害

	local HP_MAX = sqrChr.sq_GetLevelData(skill_index, 66, skill_level);//HP MAX
	local MP_MAX = sqrChr.sq_GetLevelData(skill_index, 67, skill_level);//MP MAX
	local HP_MAX_PERCENT = sqrChr.sq_GetLevelData(skill_index, 68, skill_level);//HP MAX %
	local MP_MAX_PERCENT = sqrChr.sq_GetLevelData(skill_index, 69, skill_level);//MP MAX %

	local HIT_RECOVERY = sqrChr.sq_GetLevelData(skill_index, 70, skill_level);//硬直

	local change_appendage = appendage.sq_getChangeStatus("benyuan");
	if(!change_appendage)
	{
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, true, PHYSICAL_ATTACK_PERCENT);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_MAGICAL_ATTACK, true, MAGICAL_ATTACK_PERCENT);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_MAGICAL_DEFENSE, true, MAGICAL_DEFENSE_PERCENT);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_PHYSICAL_DEFENSE, true, PHYSICAL_DEFENSE_PERCENT);

		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, PHYSICAL_ATTACK);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, MAGICAL_ATTACK);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_MAGICAL_DEFENSE, false, MAGICAL_DEFENSE);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_PHYSICAL_DEFENSE, false, PHYSICAL_DEFENSE);

		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_ADDITIONAL_MAGICAL_GENUINE_ATTACK, true, ADDITIONAL_MAGICAL_GENUINE_ATTACK_PERCENT);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_ADDITIONAL_PHYSICAL_GENUINE_ATTACK, true, ADDITIONAL_PHYSICAL_GENUINE_ATTACK_PERCENT);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_ADDITIONAL_MAGICAL_GENUINE_ATTACK, false, ADDITIONAL_MAGICAL_GENUINE_ATTACK);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_ADDITIONAL_PHYSICAL_GENUINE_ATTACK, false, ADDITIONAL_PHYSICAL_GENUINE_ATTACK);

		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_PHYSICAL_ATTACK_BONUS, true, PHYSICAL_ATTACK_BONUS);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_MAGICAL_ATTACK_BONUS, true, MAGICAL_ATTACK_BONUS);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, false, EQUIPMENT_PHYSICAL_ATTACK);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, false, EQUIPMENT_MAGICAL_ATTACK);

		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_DEFENSE, true, EQUIPMENT_PHYSICAL_DEFENSE_PERCENT);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_DEFENSE, true, EQUIPMENT_MAGICAL_DEFENSE_PERCENT);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_DEFENSE, false, EQUIPMENT_PHYSICAL_DEFENSE);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_DEFENSE, false, EQUIPMENT_MAGICAL_DEFENSE);

		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_COOLTIME_DECLINE, true, COOLTIME_DECLINE);

		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_HIT_RATE, false, PHYSICAL_CRITICAL_HIT_RATE);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_HIT_RATE, false, MAGICAL_CRITICAL_HIT_RATE);

		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_ATTACK_SPEED, true, ATTACK_SPEED);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_CAST_SPEED, true, CAST_SPEED);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_MOVE_SPEED, true, MOVE_SPEED);

		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_ELEMENT_ATTACK_FIRE, true, ELEMENT_ATTACK_FIRE_PERCENT);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_ELEMENT_ATTACK_WATER, true, ELEMENT_ATTACK_FIRE_PERCENT);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_ELEMENT_ATTACK_DARK, true, ELEMENT_ATTACK_FIRE_PERCENT);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_ELEMENT_ATTACK_LIGHT, true, ELEMENT_ATTACK_FIRE_PERCENT);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_ELEMENT_ATTACK_FIRE, false, ELEMENT_ATTACK_FIRE);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_ELEMENT_ATTACK_WATER, false, ELEMENT_ATTACK_FIRE);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_ELEMENT_ATTACK_DARK, false, ELEMENT_ATTACK_FIRE);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_ELEMENT_ATTACK_LIGHT, false, ELEMENT_ATTACK_FIRE);

		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_ELEMENT_TOLERANCE_FIRE, false, FIRE_RESISTANCE);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_ELEMENT_TOLERANCE_WATER, false, WATER_RESISTANCE);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_ELEMENT_TOLERANCE_DARK, false, DARK_RESISTANCE);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_ELEMENT_TOLERANCE_LIGHT, false, LIGHT_RESISTANCE);

		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_DAMAGE_RATE, false, PHYSICAL_CRITICAL_DAMAGE_RATE);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_DAMAGE_RATE, false, MAGICAL_CRITICAL_DAMAGE_RATE);

		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_HP_MAX, false, HP_MAX);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_MP_MAX, false, MP_MAX);

		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_HP_MAX, true, HP_MAX_PERCENT);
		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_MP_MAX, true, MP_MAX_PERCENT);

		change_appendage = appendage.sq_AddChangeStatus("benyuan", obj, obj, 0, CHANGE_STATUS_TYPE_HIT_RECOVERY, true, HIT_RECOVERY);
	}

	else if(change_appendage)
	{
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, true, PHYSICAL_ATTACK_PERCENT.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, true, MAGICAL_ATTACK_PERCENT.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_DEFENSE, true, MAGICAL_DEFENSE_PERCENT.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_DEFENSE, true, PHYSICAL_DEFENSE_PERCENT.tofloat());

		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, PHYSICAL_ATTACK.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, MAGICAL_ATTACK.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_DEFENSE, false, MAGICAL_DEFENSE.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_DEFENSE, false, PHYSICAL_DEFENSE.tofloat());

		change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_MAGICAL_GENUINE_ATTACK, true, ADDITIONAL_MAGICAL_GENUINE_ATTACK_PERCENT.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_PHYSICAL_GENUINE_ATTACK, true, ADDITIONAL_PHYSICAL_GENUINE_ATTACK_PERCENT.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_MAGICAL_GENUINE_ATTACK, false, ADDITIONAL_MAGICAL_GENUINE_ATTACK.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_PHYSICAL_GENUINE_ATTACK, false, ADDITIONAL_PHYSICAL_GENUINE_ATTACK.tofloat());

		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK_BONUS, true, PHYSICAL_ATTACK_BONUS.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK_BONUS, true, MAGICAL_ATTACK_BONUS.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, false, EQUIPMENT_PHYSICAL_ATTACK.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, false, EQUIPMENT_MAGICAL_ATTACK.tofloat());

		change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_DEFENSE, true, EQUIPMENT_PHYSICAL_DEFENSE_PERCENT.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_DEFENSE, true, EQUIPMENT_MAGICAL_DEFENSE_PERCENT.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_DEFENSE, false, EQUIPMENT_PHYSICAL_DEFENSE.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_DEFENSE, false, EQUIPMENT_MAGICAL_DEFENSE.tofloat());

		change_appendage.addParameter(CHANGE_STATUS_TYPE_COOLTIME_DECLINE, true, COOLTIME_DECLINE.tofloat());

		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_HIT_RATE, false, PHYSICAL_CRITICAL_HIT_RATE.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_HIT_RATE, false, MAGICAL_CRITICAL_HIT_RATE.tofloat());

		change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, true, ATTACK_SPEED.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_CAST_SPEED, true, CAST_SPEED.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, true, MOVE_SPEED.tofloat());

		change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_FIRE, true, ELEMENT_ATTACK_FIRE_PERCENT.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_WATER, true, ELEMENT_ATTACK_FIRE_PERCENT.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_DARK, true, ELEMENT_ATTACK_FIRE_PERCENT.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_LIGHT, true, ELEMENT_ATTACK_FIRE_PERCENT.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_FIRE, false, ELEMENT_ATTACK_FIRE.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_WATER, false, ELEMENT_ATTACK_FIRE.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_DARK, false, ELEMENT_ATTACK_FIRE.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_LIGHT, false, ELEMENT_ATTACK_FIRE.tofloat());

		change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_TOLERANCE_FIRE, false, FIRE_RESISTANCE.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_TOLERANCE_WATER, false, WATER_RESISTANCE.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_TOLERANCE_DARK, false, DARK_RESISTANCE.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_TOLERANCE_LIGHT, false, LIGHT_RESISTANCE.tofloat());

		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_DAMAGE_RATE, false, PHYSICAL_CRITICAL_DAMAGE_RATE.tofloat() * 1.5);
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_DAMAGE_RATE, false, MAGICAL_CRITICAL_DAMAGE_RATE.tofloat() * 1.5);

		change_appendage.addParameter(CHANGE_STATUS_TYPE_HP_MAX, false, HP_MAX.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MP_MAX, false, MP_MAX.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_HP_MAX, true, HP_MAX_PERCENT.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MP_MAX, true, MP_MAX_PERCENT.tofloat());

		change_appendage.addParameter(CHANGE_STATUS_TYPE_HIT_RECOVERY, true, HIT_RECOVERY.tofloat());
	}
}

function onStart_appendage_benyuan(appendage)
{
	if(!appendage) return;
}


function onEnd_appendage_benyuan(appendage)
{
	if(!appendage) return;
	local chr = appendage.getParent();
}