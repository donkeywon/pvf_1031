function ProcPassiveSkill_Swordman(obj, skill_index, skill_level) {

	switch (skill_index) {
	case 248:
		if (skill_level > 0) {
			local KLSE5PT5pu = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/swordman/appendage/ap_stateoflimit.nut", true);
			if (KLSE5PT5pu) {}
		}
		break;

	case SKILL_SWORDMAN_COMMINTERRUPT:
		if (skill_level > 0) {
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/swordman/appendage/ap_swordman_comminterrupt.nut", true);
		}
		break;
	case SKILL_FORCETHUNDERER:
		if (skill_level > 0) {
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/swordman/appendage/ap_forcethunderer.nut", true);
			if (appendage) {
				local skill_level = sq_GetSkillLevel(obj, SKILL_FORCETHUNDERER);
				local ELEMENT_ATTACK_LIGHT = sq_GetLevelData(obj, SKILL_FORCETHUNDERER, 5, skill_level);

				ELEMENT_ATTACK_LIGHT = ELEMENT_ATTACK_LIGHT;

				local change_appendage = appendage.sq_getChangeStatus("forcethunderer");
				if (!change_appendage) {
					change_appendage = appendage.sq_AddChangeStatus("forcethunderer", obj, obj, 0, CHANGE_STATUS_TYPE_ELEMENT_ATTACK_LIGHT, false, ELEMENT_ATTACK_LIGHT);
				}
				if (change_appendage) {
					change_appendage.clearParameter();
					change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_LIGHT, false, ELEMENT_ATTACK_LIGHT.tofloat());
				}
			}
		}
		break;
	case SKILL_BENYUAN:
		if (skill_level > 0) {
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/common/ap_benyuan.nut", true);
		}
		break;
	}
	return true;
};