
function onEndCurrentAni_po_qq506807329new_mage_24372(obj) {
	if (!obj) return;
	sq_IntVectorClear(sq_GetGlobalIntVector());
	local aTXgCO5MIXMm9XRC2 = obj.getVar("skill").get_vector(0);
	switch (aTXgCO5MIXMm9XRC2) {
	case 245:
		if (!obj.isMyControlObject()) return;
		if (obj.getVar().get_obj_vector_size() <= 0) sq_SendDestroyPacketPassiveObject(obj);
		else obj.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
		break;
	case 55:
		switch (obj.getState()) {
		case 10:
			sq_SendDestroyPacketPassiveObject(obj);
			break;
		case 11:
			sq_SendDestroyPacketPassiveObject(obj);
			break;
		}
		break;
	case 58:
		switch (obj.getState()) {
		case 10:
			obj.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
			break;
		case 12:
			sq_SendDestroyPacketPassiveObject(obj);
			break;
		}
		break;
	case 27:
		switch (obj.getState()) {
		case 12:
			obj.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
			break;
		case 11:
			sq_SendDestroyPacketPassiveObject(obj);
			break;
		}
		break;
	case 59:
		switch (obj.getState()) {
		case 10:
			obj.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
			break;
		case 12:
			sq_SendDestroyPacketPassiveObject(obj);
			break;
		case 20:
			sq_SendDestroyPacketPassiveObject(obj);
			break;
		case 21:
			sq_SendDestroyPacketPassiveObject(obj);
			break;
		case 22:
			sq_SendDestroyPacketPassiveObject(obj);
			break;
		}
		break;
	case 247:
		if (obj.isMyControlObject()) sq_SendDestroyPacketPassiveObject(obj);
		break;
	case 249:
		local PfQkLZrEBwQpBgT4o = obj.getVar("state").get_vector(0);
		if (obj.isMyControlObject() && PfQkLZrEBwQpBgT4o == 10) sq_SendDestroyPacketPassiveObject(obj);
		break;
	case 250:
		if (!obj.isMyControlObject()) return;
		local PfQkLZrEBwQpBgT4o = obj.getVar("state").get_vector(0);
		if (PfQkLZrEBwQpBgT4o == 10) obj.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
		else if (PfQkLZrEBwQpBgT4o == 11) sq_SendDestroyPacketPassiveObject(obj);
		break;
	case 251:
		if (!obj.isMyControlObject()) return;
		local PfQkLZrEBwQpBgT4o = obj.getVar("state").get_vector(0);
		if (PfQkLZrEBwQpBgT4o == 13) obj.addSetStatePacket(14, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
		else if (PfQkLZrEBwQpBgT4o == 14) sq_SendDestroyPacketPassiveObject(obj);
		break;
	case 252:
		if (!obj.isMyControlObject()) return;
		local TBu7C7vrv88tgEB = obj.getVar("subType").get_vector(0);
		local PfQkLZrEBwQpBgT4o = obj.getVar("state").get_vector(0);
		switch (TBu7C7vrv88tgEB) {
		case 1:
			switch (PfQkLZrEBwQpBgT4o) {
			case 10:
				obj.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
				break;
			case 12:
				sq_SendDestroyPacketPassiveObject(obj);
				break;
			}
			break;
		}
		break;
	case 253:
		if (!obj.isMyControlObject()) return;
		local PfQkLZrEBwQpBgT4o = obj.getVar("state").get_vector(0);
		if (PfQkLZrEBwQpBgT4o == 10) sq_SendDestroyPacketPassiveObject(obj);
		break;
	case 131:
		if (!obj.isMyControlObject()) return;
		local PfQkLZrEBwQpBgT4o = obj.getState();
		if (PfQkLZrEBwQpBgT4o != 13) obj.addSetStatePacket(PfQkLZrEBwQpBgT4o + 1, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
		else sq_SendDestroyPacketPassiveObject(obj);
		break;
	case 133:
		if (!obj.isMyControlObject()) return;
		local PfQkLZrEBwQpBgT4o = obj.getVar("state").get_vector(0);
		if (PfQkLZrEBwQpBgT4o == 10) {
			local xethX82VAryurBt1LeE2sx = obj.sq_FindFirstTarget(-400, 400, 400, 400);
			if (xethX82VAryurBt1LeE2sx) {
				local ggquBgodiTGucejLfl = sq_GetGlobalIntVector();
				sq_IntVectorClear(ggquBgodiTGucejLfl);
				sq_IntVectorPush(ggquBgodiTGucejLfl, xethX82VAryurBt1LeE2sx.getXPos());
				sq_IntVectorPush(ggquBgodiTGucejLfl, xethX82VAryurBt1LeE2sx.getYPos());
				sq_IntVectorPush(ggquBgodiTGucejLfl, xethX82VAryurBt1LeE2sx.getZPos() + sq_GetObjectHeight(xethX82VAryurBt1LeE2sx) / 2);
				obj.addSetStatePacket(11, ggquBgodiTGucejLfl, STATE_PRIORITY_AUTO, false, "");
			}
			else obj.addSetStatePacket(12, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
		}
		else sq_SendDestroyPacketPassiveObject(obj);
		break;
	case 134:
		if (!obj.isMyControlObject()) return;
		sq_SendDestroyPacketPassiveObject(obj);
		break;
	case 132:
		if (!obj.isMyControlObject()) return;
		local TBu7C7vrv88tgEB = obj.getVar("subType").get_vector(0);
		local PfQkLZrEBwQpBgT4o = obj.getVar("state").get_vector(0);
		switch (PfQkLZrEBwQpBgT4o) {
		case 10:
			obj.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
			break;
		case 12:
			sq_SendDestroyPacketPassiveObject(obj);
			break;
		}
		break;
	case 135:
		if (!obj.isMyControlObject()) return;
		local PfQkLZrEBwQpBgT4o = obj.getVar("state").get_vector(0);
		switch (PfQkLZrEBwQpBgT4o) {
		case 10:
			obj.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
			break;
		case 12:
			sq_SendDestroyPacketPassiveObject(obj);
			break;
		}
		break;
	case 136:
		if (!obj.isMyControlObject()) return;
		local TBu7C7vrv88tgEB = obj.getVar("subType").get_vector(0);
		switch (TBu7C7vrv88tgEB) {
		case 2:
			sq_SendDestroyPacketPassiveObject(obj);
			break;
		}
		break;
	case 139:
		local TBu7C7vrv88tgEB = obj.getVar("subType").get_vector(0);
		local PfQkLZrEBwQpBgT4o = obj.getVar("state").get_vector(0);
		switch (TBu7C7vrv88tgEB) {
		case 1:
			if (PfQkLZrEBwQpBgT4o != 13) obj.addSetStatePacket(PfQkLZrEBwQpBgT4o + 1, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
			else sq_SendDestroyPacketPassiveObject(obj);
			break;
		case 3:
			if (PfQkLZrEBwQpBgT4o != 12) obj.addSetStatePacket(PfQkLZrEBwQpBgT4o + 1, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
			else sq_SendDestroyPacketPassiveObject(obj);
			break;
		}
		break;
	}
};
