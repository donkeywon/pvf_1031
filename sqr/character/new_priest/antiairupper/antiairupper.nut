function onAfterSetState_priest_antiairupper(obj, state, datas, zm1sCTU0TE9j) {
	if (!obj) return;
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true) {
		obj.sq_SetCurrentAnimation(194);
		local gt7yzIfGnE9kwopnywQUV = sq_GetCurrentAnimation(obj);
		sq_Rewind(gt7yzIfGnE9kwopnywQUV);
	}
	else if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/holymace/ap_holymace.nut")) {
		obj.sq_SetCurrentAnimation(260);
		local gt7yzIfGnE9kwopnywQUV = sq_GetCurrentAnimation(obj);
		sq_Rewind(gt7yzIfGnE9kwopnywQUV);
		ChangQing_751675335_BodyHolyMace(obj, "AntiairUpper");
	}
}

function onEnterFrame_priest_antiairupper(obj, frameIndex) {
	if (!obj || !obj.isMyControlObject()) return;
	if (frameIndex == 5 && CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/holymace/ap_holymace.nut")) {
		sq_SetMyShake(obj, 5, 80);
		obj.sq_StartWrite();
		obj.sq_WriteDword(250);
		obj.sq_WriteDword(6);
		obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(253, -1, 2, 1.0));
		obj.sq_SendCreatePassiveObjectPacket(24374, 0, -180, 0, 0);
		obj.sq_StartWrite();
		obj.sq_WriteDword(250);
		obj.sq_WriteDword(5);
		obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(253, -1, 2, 1.0));
		obj.sq_SendCreatePassiveObjectPacket(24374, 0, -180, 0, 0);
	}
}

function onKeyFrameFlag_priest_antiairupper(kDzKEanTPZ, H2WObZD1aH7E6) {
	if (!kDzKEanTPZ) return false;
	if (CNSquirrelAppendage.sq_IsAppendAppendage(kDzKEanTPZ, "character/new_priest/jupiter/ap_jupiter.nut") == true && kDzKEanTPZ.sq_IsMyControlObject()) {
		switch (H2WObZD1aH7E6) {
		case 0:
			kDzKEanTPZ.sq_StartWrite();
			kDzKEanTPZ.sq_WriteDword(250);
			kDzKEanTPZ.sq_WriteDword(1);
			kDzKEanTPZ.sq_WriteDword(kDzKEanTPZ.sq_GetBonusRateWithPassive(250, 20, 1, 1.0));
			kDzKEanTPZ.sq_SendCreatePassiveObjectPacket(24374, 0, 120, 0, 0);
			break;
		case 1:
			kDzKEanTPZ.sq_StartWrite();
			kDzKEanTPZ.sq_WriteDword(250);
			kDzKEanTPZ.sq_WriteDword(1);
			kDzKEanTPZ.sq_WriteDword(kDzKEanTPZ.sq_GetBonusRateWithPassive(250, 20, 1, 1.0));
			kDzKEanTPZ.sq_SendCreatePassiveObjectPacket(24374, 0, -180, 0, 0);
			kDzKEanTPZ.sq_StartWrite();
			kDzKEanTPZ.sq_WriteDword(250);
			kDzKEanTPZ.sq_WriteDword(2);
			kDzKEanTPZ.sq_WriteDword(kDzKEanTPZ.sq_GetBonusRateWithPassive(250, 20, 2, 1.0));
			kDzKEanTPZ.sq_SendCreatePassiveObjectPacket(24374, 0, -180, 0, 0);
			break;
		}
	}
	return true;
}