function onEndCurrentAni_po_qq506807329new_swordman_24370(obj) {
	if (!obj) return;
	local PBUMZ_dch2oZdxRGn4Gjj = obj.getVar("skill").get_vector(0);
	switch (PBUMZ_dch2oZdxRGn4Gjj) {
	case 229:
		if (!obj.isMyControlObject()) return;
		sq_SendDestroyPacketPassiveObject(obj);
		break;
	case 231:
		if (!obj.isMyControlObject()) return;
		sq_SendDestroyPacketPassiveObject(obj);
		break;
	case 230:
		if (!obj.isMyControlObject()) return;
		local uv1hZ1T2SQcmvuSuujFzFAQL = obj.getVar("subType").get_vector(0);
		if (uv1hZ1T2SQcmvuSuujFzFAQL == 1) {
			local c6dutj9fAHqBx6sLd = obj.getVar("state").get_vector(0);
			if (c6dutj9fAHqBx6sLd != 13) obj.addSetStatePacket(c6dutj9fAHqBx6sLd + 1, null, STATE_PRIORITY_AUTO, false, "");
			else sq_SendDestroyPacketPassiveObject(obj);
		}
		else if (uv1hZ1T2SQcmvuSuujFzFAQL == 2) sq_SendDestroyPacketPassiveObject(obj);
		break;
	case 232:
		if (!obj.isMyControlObject()) return;
		sq_SendDestroyPacketPassiveObject(obj);
		break;
	case 233:
		if (!obj.isMyControlObject()) return;
		sq_SendDestroyPacketPassiveObject(obj);
		break;
	case 234:
		if (!obj.isMyControlObject()) return;
		local c6dutj9fAHqBx6sLd = obj.getVar("state").get_vector(0);
		if (c6dutj9fAHqBx6sLd == 11) sq_SendDestroyPacketPassiveObject(obj);
		break;
	case 235:
		if (obj.isMyControlObject()) sq_SendDestroyPacketPassiveObject(obj);
		break;
	case 236:
		if (!obj.isMyControlObject()) return;
		if (obj.getVar().get_obj_vector_size() <= 0) sq_SendDestroyPacketPassiveObject(obj);
		break;
	case 237:
		if (!obj.isMyControlObject()) return;
		sq_SendDestroyPacketPassiveObject(obj);
		break;
	case 239:
		if (!obj.isMyControlObject()) return;
		local uv1hZ1T2SQcmvuSuujFzFAQL = obj.getVar("subType").get_vector(0);
		if (uv1hZ1T2SQcmvuSuujFzFAQL == 1) {
			switch (obj.getVar("state").get_vector(0)) {
			case 10:
				obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "");
				break;
			case 13:
				sq_SendDestroyPacketPassiveObject(obj);
				break;
			}
		}
		else if (uv1hZ1T2SQcmvuSuujFzFAQL == 3) {
			local c6dutj9fAHqBx6sLd = obj.getVar("state").get_vector(0);
			if (c6dutj9fAHqBx6sLd == 10) {
				obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "");
			}
			else if (c6dutj9fAHqBx6sLd == 11) {
				local WjWkrGWRjm = obj.getParent();
				if (WjWkrGWRjm) WjWkrGWRjm.addSetStatePacket(13, null, STATE_PRIORITY_AUTO, false, "");
				sq_SendDestroyPacketPassiveObject(obj);
			}
		}
		break;
	case 240:
		if (!obj.isMyControlObject()) return;
		sq_SendDestroyPacketPassiveObject(obj);
		break;
	case 241:
		if (!obj.isMyControlObject()) return;
		local uv1hZ1T2SQcmvuSuujFzFAQL = obj.getVar("subType").get_vector(0);
		if (uv1hZ1T2SQcmvuSuujFzFAQL == 1) sq_SendDestroyPacketPassiveObject(obj);
		else if (uv1hZ1T2SQcmvuSuujFzFAQL == 2) {
			local _G68JDw0fvwY = obj.getVar("state").get_vector(0);
			if (_G68JDw0fvwY != 12) {
				obj.addSetStatePacket(_G68JDw0fvwY + 1, null, STATE_PRIORITY_AUTO, false, "");
			}
			else sq_SendDestroyPacketPassiveObject(obj);
		}
		break;
	case 242:
		if (!obj.isMyControlObject()) return;
		sq_SendDestroyPacketPassiveObject(obj);
		break;
	case 243:
		if (!obj.isMyControlObject()) return;
		local uv1hZ1T2SQcmvuSuujFzFAQL = obj.getVar("subType").get_vector(0);
		local _G68JDw0fvwY = obj.getVar("state").get_vector(0);
		switch (uv1hZ1T2SQcmvuSuujFzFAQL) {
		case 0:
			switch (_G68JDw0fvwY) {
			case 10:
				obj.addSetStatePacket(_G68JDw0fvwY + 1, null, STATE_PRIORITY_AUTO, false, "");
				break;
			case 14:
				sq_SendDestroyPacketPassiveObject(obj);
				break;
			}
			break;
		case 1:
		case 2:
			if (_G68JDw0fvwY != 11) obj.addSetStatePacket(_G68JDw0fvwY + 1, null, STATE_PRIORITY_AUTO, false, "");
			else sq_SendDestroyPacketPassiveObject(obj);
			break;
		default:
			sq_SendDestroyPacketPassiveObject(obj);
			break;
		}
		break;
	case 244:
		if (!obj.isMyControlObject()) return;
		local uv1hZ1T2SQcmvuSuujFzFAQL = obj.getVar("subType").get_vector(0);
		local _G68JDw0fvwY = obj.getVar("state").get_vector(0);
		if (uv1hZ1T2SQcmvuSuujFzFAQL == 1) {
			if (_G68JDw0fvwY != 15) obj.addSetStatePacket(_G68JDw0fvwY + 1, null, STATE_PRIORITY_AUTO, false, "");
			else sq_SendDestroyPacketPassiveObject(obj);
		}
		else if (uv1hZ1T2SQcmvuSuujFzFAQL == 2) {
			if (_G68JDw0fvwY != 13) obj.addSetStatePacket(_G68JDw0fvwY + 1, null, STATE_PRIORITY_AUTO, false, "");
		}
		break;
	case 246:
		if (!obj.isMyControlObject()) return;
		local uv1hZ1T2SQcmvuSuujFzFAQL = obj.getVar("subType").get_vector(0);
		local _G68JDw0fvwY = obj.getVar("state").get_vector(0);
		switch (uv1hZ1T2SQcmvuSuujFzFAQL) {
		case 1:
			if (_G68JDw0fvwY != 11) obj.addSetStatePacket(_G68JDw0fvwY + 1, null, STATE_PRIORITY_AUTO, false, "");
			else sq_SendDestroyPacketPassiveObject(obj);
			break;
		case 2:
			if (_G68JDw0fvwY == 10) {
				local MirXhypC148Umr = sq_GetGlobalIntVector();
				sq_IntVectorClear(MirXhypC148Umr);
				obj.getVar().clear_obj_vector();
				local EXxlrJZt9x3Gel0FD = obj.getVar().get_vector(2);
				local c8kwBIL1lJP0edl4Zc = obj.getVar().get_vector(3);
				local Akz633hsk6l1id6955dB = obj.getVar().get_vector(4);
				local Yef2c9iOd8Qc358V2f7ns = obj.getXPos();
				local V_HlY6rd_vnV6y63 = obj.getYPos();
				local C7T4MZvruNr3Othlqi = 0;
				local d2cwc083N7_ZJMG = null;
				local vOsV7ptg8_oii = -1;
				local mVMOHvhB93JH = 0;
				local tu5f4X0_AHsuVG63cO = [];

				local GGT3C7qiHxmi6oS983Erfi = obj.getObjectManager();
				for (local F6RlXPoZTsM3 = 0; F6RlXPoZTsM3 < GGT3C7qiHxmi6oS983Erfi.getCollisionObjectNumber(); F6RlXPoZTsM3++) {
					local beqyCRevwbyMwYM_ZcxxT = GGT3C7qiHxmi6oS983Erfi.getCollisionObject(F6RlXPoZTsM3);
					if (beqyCRevwbyMwYM_ZcxxT && beqyCRevwbyMwYM_ZcxxT.isObjectType(OBJECTTYPE_ACTIVE) && obj.isEnemy(beqyCRevwbyMwYM_ZcxxT) && sq_IsHoldable(obj, beqyCRevwbyMwYM_ZcxxT) && beqyCRevwbyMwYM_ZcxxT.isInDamagableState(obj)) {
						local NiUimvWCB7t0IVZfoS5TnQg = sq_GetCNRDObjectToActiveObject(beqyCRevwbyMwYM_ZcxxT);
						if (NiUimvWCB7t0IVZfoS5TnQg.isDead()) continue;
						local D3aXDJxQ5nyXmT3Y = true;
						switch (vOsV7ptg8_oii) {
						case -1:
							if (sq_IsBoss(NiUimvWCB7t0IVZfoS5TnQg)) vOsV7ptg8_oii = 2;
							else if (sq_IsNamed(NiUimvWCB7t0IVZfoS5TnQg)) vOsV7ptg8_oii = 1;
							else vOsV7ptg8_oii = 0;
							break;
						case 0:
							if (sq_IsBoss(NiUimvWCB7t0IVZfoS5TnQg)) vOsV7ptg8_oii = 2;
							else if (sq_IsNamed(NiUimvWCB7t0IVZfoS5TnQg)) vOsV7ptg8_oii = 1;
							else if (mVMOHvhB93JH > NiUimvWCB7t0IVZfoS5TnQg.getHp()) D3aXDJxQ5nyXmT3Y = false;
							break;
						case 1:
							if (sq_IsBoss(NiUimvWCB7t0IVZfoS5TnQg)) vOsV7ptg8_oii = 2;
							else if (sq_IsNamed(NiUimvWCB7t0IVZfoS5TnQg)) {

								if (mVMOHvhB93JH > NiUimvWCB7t0IVZfoS5TnQg.getHp()) D3aXDJxQ5nyXmT3Y = false;
							}
							else D3aXDJxQ5nyXmT3Y = false;
							break;
						case 2:
							if (sq_IsBoss(NiUimvWCB7t0IVZfoS5TnQg)) {
								if (mVMOHvhB93JH > NiUimvWCB7t0IVZfoS5TnQg.getHp()) D3aXDJxQ5nyXmT3Y = false;
							}
							else D3aXDJxQ5nyXmT3Y = false;
							break;
						}

						if (D3aXDJxQ5nyXmT3Y) {
							d2cwc083N7_ZJMG = NiUimvWCB7t0IVZfoS5TnQg;
							mVMOHvhB93JH = NiUimvWCB7t0IVZfoS5TnQg.getHp();
						}
					}
				}

				if (d2cwc083N7_ZJMG != null && !d2cwc083N7_ZJMG.isDead()) {

					tu5f4X0_AHsuVG63cO.push(sq_GetGroup(d2cwc083N7_ZJMG));
					tu5f4X0_AHsuVG63cO.push(sq_GetUniqueId(d2cwc083N7_ZJMG));

					Yef2c9iOd8Qc358V2f7ns = d2cwc083N7_ZJMG.getXPos();
					V_HlY6rd_vnV6y63 = d2cwc083N7_ZJMG.getYPos();
					C7T4MZvruNr3Othlqi = d2cwc083N7_ZJMG.getZPos();

					for (local F6RlXPoZTsM3 = 0; F6RlXPoZTsM3 < GGT3C7qiHxmi6oS983Erfi.getCollisionObjectNumber(); F6RlXPoZTsM3++) {
						local beqyCRevwbyMwYM_ZcxxT = GGT3C7qiHxmi6oS983Erfi.getCollisionObject(F6RlXPoZTsM3);
						if (beqyCRevwbyMwYM_ZcxxT && beqyCRevwbyMwYM_ZcxxT.isObjectType(OBJECTTYPE_ACTIVE) && obj.isEnemy(beqyCRevwbyMwYM_ZcxxT) && sq_IsHoldable(obj, beqyCRevwbyMwYM_ZcxxT) && !isSameObject(beqyCRevwbyMwYM_ZcxxT, d2cwc083N7_ZJMG) && beqyCRevwbyMwYM_ZcxxT.isInDamagableState(obj)) {
							local NiUimvWCB7t0IVZfoS5TnQg = sq_GetCNRDObjectToActiveObject(beqyCRevwbyMwYM_ZcxxT);
							if (NiUimvWCB7t0IVZfoS5TnQg.isDead()) continue;

							if (sq_Abs(Yef2c9iOd8Qc358V2f7ns - NiUimvWCB7t0IVZfoS5TnQg.getXPos()) <= EXxlrJZt9x3Gel0FD && sq_Abs(V_HlY6rd_vnV6y63 - NiUimvWCB7t0IVZfoS5TnQg.getYPos()) <= c8kwBIL1lJP0edl4Zc && sq_Abs(C7T4MZvruNr3Othlqi - NiUimvWCB7t0IVZfoS5TnQg.getZPos()) <= Akz633hsk6l1id6955dB) {
								tu5f4X0_AHsuVG63cO.push(sq_GetGroup(NiUimvWCB7t0IVZfoS5TnQg));
								tu5f4X0_AHsuVG63cO.push(sq_GetUniqueId(NiUimvWCB7t0IVZfoS5TnQg));
							}
						}
					}
				}
				sq_IntVectorPush(MirXhypC148Umr, tu5f4X0_AHsuVG63cO.len());
				foreach(member in tu5f4X0_AHsuVG63cO)
				sq_IntVectorPush(MirXhypC148Umr, member);
				sq_IntVectorPush(MirXhypC148Umr, Yef2c9iOd8Qc358V2f7ns);
				sq_IntVectorPush(MirXhypC148Umr, V_HlY6rd_vnV6y63);
				obj.addSetStatePacket(11, MirXhypC148Umr, STATE_PRIORITY_AUTO, false, "");
			}
			break;
		case 3:
			sq_SendDestroyPacketPassiveObject(obj);
			break;
		}
		break;
	case 47:
		if (!obj.isMyControlObject()) return;
		sq_SendDestroyPacketPassiveObject(obj);
		break;
	case 247:
		if (!obj.isMyControlObject()) return;
		local _G68JDw0fvwY = obj.getVar("state").get_vector(0);
		if (_G68JDw0fvwY != 13) {
			obj.addSetStatePacket(_G68JDw0fvwY + 1, null, STATE_PRIORITY_AUTO, false, "");
		}
		else sq_SendDestroyPacketPassiveObject(obj);
		break;
	case 67:
		if (!obj.isMyControlObject()) return;
		sq_SendDestroyPacketPassiveObject(obj);
		break;
	case 248:
		if (!obj.isMyControlObject()) return;
		local uv1hZ1T2SQcmvuSuujFzFAQL = obj.getVar("subType").get_vector(0);
		switch (uv1hZ1T2SQcmvuSuujFzFAQL) {
		case 2:
		case 3:
		case 5:
		case 6:
		case 7:
			sq_SendDestroyPacketPassiveObject(obj);
			break;
		}
	case 245:
		sq_SendDestroyPacketPassiveObject(obj);
		break;
	}
};
