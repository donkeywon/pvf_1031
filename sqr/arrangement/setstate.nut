function Common_setState(obj, state, datas, isResetTimer) {
	//PrintOutSubstate(obj, state, datas);
}

function setState_Swordman(obj, state, datas, isResetTimer) {
	if (!obj) return;
	local substate = obj.sq_GetVectorData(datas, 0);
	local substate1 = obj.sq_GetVectorData(datas, 1);
	local substate2 = obj.sq_GetVectorData(datas, 2);
	setState_Swordman_swordman_handlingsword(obj, state, datas, isResetTimer);
	obj.getVar("Swordman_substate").clear_vector();
	obj.getVar("Swordman_substate").push_vector(substate);
	obj.getVar("Swordman_substate").push_vector(substate1);
	obj.getVar("Swordman_substate").push_vector(substate2);
	Common_setState(obj, state, datas, isResetTimer);
	return 0;
}

function setState_Fighter(obj, state, datas, isResetTimer) {
	if (!obj) return;
	Common_setState(obj, state, datas, isResetTimer);

	local skillIndex = obj.getCurrentSkillIndex();
	local skl = sq_GetSkill(obj, skillIndex);
	if (!skl) {
		return;
	}
	local skillLevel = sq_GetSkillLevel(obj, skillIndex);
	if (state == 13) {
		if (skillIndex == SKILL_FIGHTER_LIGHTENCHANTWEAPON) {
			local time = sq_GetLevelData(obj, skillIndex, 1, skillLevel);
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skillIndex, false, "character/fighter/lightenchantweapon/ap_lightenchantweapon.nut", false);
			CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, 243, true);

			appendage = obj.GetSquirrelAppendage("character/fighter/lightenchantweapon/ap_lightenchantweapon.nut");

			if (appendage) {
				appendage.sq_SetValidTime(time);
				local ATTACK_RATE = sq_GetLevelData(obj, skillIndex, 0, skillLevel);
				local change_appendage = appendage.sq_getChangeStatus("lightenchantweapon");
				if (!change_appendage) {
					change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, true, ATTACK_RATE - 100, APID_COMMON);
					change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_ADDITIONAL_PHYSICAL_GENUINE_ATTACK, true, ATTACK_RATE - 100, APID_COMMON);
					change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_ADDITIONAL_MAGICAL_GENUINE_ATTACK, true, ATTACK_RATE - 100, APID_COMMON);
				}
				if (change_appendage) {
					change_appendage.clearParameter();
					change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, true, ATTACK_RATE.tofloat() - 100);
					change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_PHYSICAL_GENUINE_ATTACK, true, ATTACK_RATE.tofloat() - 100);
					change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_MAGICAL_GENUINE_ATTACK, true, ATTACK_RATE.tofloat() - 100);
				}
			}
		} else if (skillIndex == SKILL_FIGHTER_LIGHTTOLERANCEUP) {
			local time = sq_GetLevelData(obj, skillIndex, 0, skillLevel);
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skillIndex, false, "character/fighter/lighttoleranceup/ap_lighttoleranceup.nut", false);
			CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, 244, true);

			appendage = obj.GetSquirrelAppendage("character/fighter/lighttoleranceup/ap_lighttoleranceup.nut");

			if (appendage) {
				appendage.sq_SetValidTime(time);
				local LIGHT_ATTACK = sq_GetLevelData(obj, skillIndex, 3, skillLevel);
				local change_appendage = appendage.sq_getChangeStatus("lighttoleranceup");
				if (!change_appendage) {
					change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_ELEMENT_ATTACK_LIGHT, false, LIGHT_ATTACK, APID_COMMON);
				}
				if (change_appendage) {
					change_appendage.clearParameter();
					change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_LIGHT, false, LIGHT_ATTACK.tofloat());
				}
			}
		}
	}
}

function setState_ATFighter(obj, state, datas, isResetTimer) {
	if (!obj) return;
	Common_setState(obj, state, datas, isResetTimer);
}

function setState_Gunner(obj, state, datas, isResetTimer) {
	if (!obj) return;
	Common_setState(obj, state, datas, isResetTimer);
}

function setState_ATGunner(obj, state, datas, isResetTimer) {
	if (!obj) return;
	Common_setState(obj, state, datas, isResetTimer);
}

function setState_Mage(obj, state, datas, isResetTimer) {
	if (!obj) return;
	Common_setState(obj, state, datas, isResetTimer);
}

function setState_ATMage(obj, state, datas, isResetTimer) {
	if (!obj) return;
	Common_setState(obj, state, datas, isResetTimer);
	setState_ATMage_ARR(obj, state, datas, isResetTimer);
}

function setState_Priest(obj, state, datas, isResetTimer) {
	Common_setState(obj, state, datas, isResetTimer);
	if (!obj) return;

}

function setState_Thief(obj, state, datas, isResetTimer) {
	if (!obj) return;
	Common_setState(obj, state, datas, isResetTimer);
}

function setState_DemonicSwordman(obj, state, datas, isResetTimer) {
	if (!obj) return;
	Common_setState(obj, state, datas, isResetTimer);
}