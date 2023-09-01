function onAfterSetState_priest_quakearea(O5osjcUv2FAVq, ZLU_t5nZ74ocUe62iBCOxB7, g46Mc_ZLdLogQiKQUDNt, VJzj0cG0lf) {
	if (!O5osjcUv2FAVq) return;
	if (CNSquirrelAppendage.sq_IsAppendAppendage(O5osjcUv2FAVq, "character/new_priest/jupiter/ap_jupiter.nut") == true) {
		O5osjcUv2FAVq.sq_SetCurrentAnimation(195);
		local DBP9Mmf8wj8GCPl05a1P_XY = sq_GetCurrentAnimation(O5osjcUv2FAVq);
		sq_Rewind(DBP9Mmf8wj8GCPl05a1P_XY);
		O5osjcUv2FAVq.sq_SetCurrentAttackInfo(120);
		O5osjcUv2FAVq.sq_SetCurrentAttackBonusRate(O5osjcUv2FAVq.sq_GetBonusRateWithPassive(250, 26, 3, 1.0));
		O5osjcUv2FAVq.getVar().setBool(0, false);
	}
	else if (CNSquirrelAppendage.sq_IsAppendAppendage(O5osjcUv2FAVq, "character/new_priest/holymace/ap_holymace.nut")) {
		O5osjcUv2FAVq.sq_SetCurrentAnimation(259);
		local DBP9Mmf8wj8GCPl05a1P_XY = sq_GetCurrentAnimation(O5osjcUv2FAVq);
		sq_Rewind(DBP9Mmf8wj8GCPl05a1P_XY);
	}
};

function onProcCon_priest_quakearea(obj) {
	if (!obj) return;
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true) {
		if (obj.getVar().getBool(0) == false) if (sq_GetCurrentFrameIndex(obj) >= 5 && obj.getZPos() <= 0) {
			obj.getVar().setBool(0, true);
			obj.sq_StartWrite();
			obj.sq_WriteDword(250);
			obj.sq_WriteDword(4);
			obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(250, 26, 4, 1.0));
			obj.sq_SendCreatePassiveObjectPacket(24374, 0, 40, 0, 0);
		}
		local ObjectCount = obj.getMyPassiveObjectCount(24001);
		if (ObjectCount > 0) {
			for (local i = 0; i < ObjectCount; i++) {
				local PassiveObj = obj.getMyPassiveObject(24001, i);
				if (!PassiveObj) continue;
				sq_SendDestroyPacketPassiveObject(PassiveObj);
			}
		}
	}
	else if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/holymace/ap_holymace.nut")) {
		if(obj.getVar().getBool(0) == false)
			if(sq_GetCurrentFrameIndex(obj) >= 5 && obj.getZPos() <= 0)
			{
				obj.getVar().setBool(0, true);
				obj.sq_StartWrite();
				obj.sq_WriteDword(250);
				obj.sq_WriteDword(7);
				obj.sq_WriteDword(obj.sq_GetLevelData(253, 4, sq_GetSkillLevel(obj, 253)));
				obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(253, -1, 3, 1.0));
				obj.sq_SendCreatePassiveObjectPacket(24374, 0, 40, 0, 0);
			}
		local ObjectCount = obj.getMyPassiveObjectCount(24001);
		if (ObjectCount > 0) {
			for (local i = 0; i < ObjectCount; i++) {
				local PassiveObj = obj.getMyPassiveObject(24001, i);
				if (!PassiveObj) continue;
				sq_SendDestroyPacketPassiveObject(PassiveObj);
			}
		}
	}
}
