function procSkill_Swordman(obj) {
	procSkill_MysticEquip(obj);
}

function procSkill_MysticEquip(obj) {
	if (obj.sq_GetSkillLevel(SKILL_SWORDMAN_MYSTICEQUIP) > 0) {
		if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "Character/Swordman/WeaponMaster/MysticEquip/MysticEquip.nut")) {
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_SWORDMAN_MYSTICEQUIP, false, "Character/Swordman/WeaponMaster/MysticEquip/MysticEquip.nut", true);
		}
	}
}

function setEnableCancelSkill_Swordman(JM8H4uzkC2sc8UKfL7, CSDeDFugOHJaOjHj1gt) {
	if (!JM8H4uzkC2sc8UKfL7) return false;
	if (!JM8H4uzkC2sc8UKfL7.isMyControlObject()) return false;
	if (!CSDeDFugOHJaOjHj1gt) return true;
	JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(229, CSDeDFugOHJaOjHj1gt);
	JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(230, CSDeDFugOHJaOjHj1gt);
	JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(231, CSDeDFugOHJaOjHj1gt);
	JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(232, CSDeDFugOHJaOjHj1gt);
	JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(233, CSDeDFugOHJaOjHj1gt);
	JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(234, CSDeDFugOHJaOjHj1gt);
	JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(235, CSDeDFugOHJaOjHj1gt);
	JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(236, CSDeDFugOHJaOjHj1gt);
	JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(237, CSDeDFugOHJaOjHj1gt);
	JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(238, CSDeDFugOHJaOjHj1gt);
	JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(239, CSDeDFugOHJaOjHj1gt);
	JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(240, CSDeDFugOHJaOjHj1gt);
	JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(241, CSDeDFugOHJaOjHj1gt);
	JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(242, CSDeDFugOHJaOjHj1gt);
	JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(243, CSDeDFugOHJaOjHj1gt);
	JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(244, CSDeDFugOHJaOjHj1gt);
	JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(245, CSDeDFugOHJaOjHj1gt);
	JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(246, CSDeDFugOHJaOjHj1gt);
	JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(247, CSDeDFugOHJaOjHj1gt);
	return true;
};

function addSetStatePacket_Swordman(obj, state, datas) {
	if (!obj) return -1;
	switch (state) {
	case STATE_ATTACK:
		local isResetTimer = obj.sq_GetVectorData(datas, 0);
		local xfRERcXbPBR = obj.sq_GetVectorData(datas, 1);
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/swordman/appendage/ap_kalla.nut") && CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/swordman/appendage/ap_ghoststep.nut")) {
			if (obj.sq_IsMyControlObject()) {
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(0);
				obj.sq_IntVectPush(0);
				obj.sq_AddSetStatePacket(44, STATE_PRIORITY_USER, true);
			}
			return -1;
		}
		switch (isResetTimer) {
		case 2:
			if (obj.isCurrentCutomAniIndex(58) && xfRERcXbPBR == -1) {
				local ICUtVtUM7t = sq_GetSkill(obj, 76);
				if (ICUtVtUM7t && !ICUtVtUM7t.isSealFunction()) {
					if (obj.sq_IsMyControlObject()) {
						obj.sq_IntVectClear();
						obj.sq_IntVectPush(0);
						obj.sq_AddSetStatePacket(STATE_ATTACK, STATE_PRIORITY_USER, true);
					}
					return -1;
				}
			}
			break;
		}
		break;
	}
	return 1;
};

function useSkill_after_Swordman(obj, skillIndex, consumeMp, consumeItem, oldSkillMpRate)
{
	if(!obj) return false;
	if(skillIndex == 20 || skillIndex == 21 || skillIndex == 22 || skillIndex == 242)
	{
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skillIndex, false, "Character/Swordman/icewave/ap_asura_wave.nut", true);
	}
	return true;
}