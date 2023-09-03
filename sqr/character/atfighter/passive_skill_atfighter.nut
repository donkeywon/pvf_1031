function ProcPassiveSkill_ATFighter(obj, skill_index, skill_level) {
	switch (skill_index) {

	case SKILL_ATFIGHTER_COMMINTERRUPT:
		if (skill_level > 0) {
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/atfighter/appendage/ap_atfighter_comminterrupt.nut", true);
		}
		break;

	case SKILL_BENYUAN:
		if (skill_level > 0) {
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/common/ap_benyuan.nut", true);
		}
		break;
	
	case 238:
		if (skill_level > 0) {
			local Appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/atfighter/nenmaster2nd/ap_spiralinhale.nut", true);
		}
		break;

	}
	return true;
};