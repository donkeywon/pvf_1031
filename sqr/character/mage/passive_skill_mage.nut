function ProcPassiveSkill_Mage(obj, skill_index, skill_level) {
	if (!obj) return;
	if (skill_level <= 0) return;
	switch (skill_index) {
	case 248:
		local urq71HC_i5Ic2au = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/mage/dragondance/ap_dragondance_proc_skill.nut", true);
		break;

	case SKILL_MAGE_COMMINTERRUPT:
		if (skill_level > 0) {
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/mage/appendage/ap_mage_comminterrupt.nut", true);
		}
		break;

	case SKILL_BENYUAN:
		if (skill_level > 0) {
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/common/ap_benyuan.nut", true);
		}
		break;
	case 33:
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/mage/homunculus/ap_homunculus.nut", true);
		}
		break;
	}
};

function procSkill_Mage(obj) {

	//proc_bobybox(obj);
	//proc_controldoll(obj);
	//proc_bestommaster(obj);
	//proc_evilcuriosity(obj);
	//proc_cirrusindark(obj);
	//procSkill_ZHAN_LING_QIAN_NENG(obj);
	element(obj);
	if (sq_GetSkillLevel(obj, 33) > 0) 
		getMonsterObject(obj);
}

function element(obj) {
	local skilllevel = sq_GetSkillLevel(obj, 70);
	local skill = sq_GetSkill(obj, 70);
	if (skilllevel > 0 && !skill.isSealFunction())
		ThunderStrike(obj);
	return;
}

function procSkill_ZHAN_LING_QIAN_NENG(obj) {
	local skill_level = sq_GetSkillLevel(obj, SKILL_ZHAN_LING_QIAN_NENG);
	if (skill_level > 0) {
		if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/appendage/ap_zhanlingqianneng.nut")) {
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_ZHAN_LING_QIAN_NENG, false, "character/mage/appendage/ap_zhanlingqianneng.nut", true);

			appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_ZHAN_LING_QIAN_NENG, skill_level);
			CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, SKILL_ZHAN_LING_QIAN_NENG, true);

			local physicalAttack = sq_GetLevelData(obj, SKILL_ZHAN_LING_QIAN_NENG, 0, skill_level);

			local magicalAttack = sq_GetLevelData(obj, SKILL_ZHAN_LING_QIAN_NENG, 1, skill_level);

			local physicalAttackBonus = sq_GetLevelData(obj, SKILL_ZHAN_LING_QIAN_NENG, 2, skill_level);

			local magicalAttackBonus = sq_GetLevelData(obj, SKILL_ZHAN_LING_QIAN_NENG, 3, skill_level);

			local change_appendage = appendage.sq_getChangeStatus("zhanlingqianneng");

			if (!change_appendage) {
				change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, false, physicalAttack, APID_COMMON);
			}
			if (change_appendage) {
				change_appendage.clearParameter();
				change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, physicalAttack.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, magicalAttack.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_HIT_RATE, false, physicalAttackBonus.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_HIT_RATE, false, magicalAttackBonus.tofloat());
			}

		}

	}

}

/*
function Balance(obj)
{
	local ap_posion = "character/mage/appendage/ap_zhanlingqianneng.nut";
	local phyAttack = Sq_GetPhysicalAttack();
	local magicAttack = Sq_GetMagicalAttack();
	if(magicAttack == phyAttack) return 0;
	
	local appendage = CNSquirrelAppendage.sq_GetAppendage(obj,ap_posion);
	if(!appendage)
		appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 53, false, ap_posion, true);
	
	local temp = (phyAttack > magicAttack) ? 1:0;
	local Value = abs(phyAttack - magicAttack);
	local change_appendage = appendage.sq_getChangeStatus("ap_zhanlingqianneng");
	if(!change_appendage)
		change_appendage = appendage.sq_AddChangeStatus("ap_zhanlingqianneng",obj, obj, 0, temp, false, Value );
	else
		change_appendage.addParameter(temp, false, Value.tofloat());

	return 0;
}*/
