function onAfterSetState_PriestState13(obj, state, datas, isResetTimer) {
	if (!obj) return;
	local skillIndex = obj.getThrowIndex();
	local throwState = obj.getThrowState();
	local SkillLevel = sq_GetSkillLevel(obj, 46);

	switch (skillIndex) {
	case 7:
	case 19:
	case 20:
	case 21:
	case 22:
	case 23:
	case 45:
	case 24:
	case 51:
	case 53:
	case 112:
		if(obj.getThrowState() == 1 && obj.sq_GetSkillLevel(112) > 0)
			Set_DivineFlash(obj, state, datas, isResetTimer)
		break;
	}

	if (SkillLevel > 0) {
		switch (throwState) {
		case 0:
			switch (skillIndex) {
			case 7:
			case 19:
			case 20:
			case 51:
			case 21:
			case 53:
			case 22:
			case 23:
			case 24:
				local px = obj.sq_GetIntData(skillIndex, 0);
				local xPos = obj.getXPos();
				local yPos = obj.getYPos();
				obj.getVar("app").clear_obj_vector();
				obj.getVar("app").push_obj_vector(obj);

				local objectManager = obj.getObjectManager();
				for (local i = 0; i < objectManager.getCollisionObjectNumber(); i++) {
					local object = objectManager.getCollisionObject(i);
					if (object && object.isObjectType(OBJECTTYPE_CHARACTER) && !obj.isEnemy(object) && sq_GetDistance(xPos, yPos, object.getXPos(), object.getYPos(), true) <= px) {
						local activeObj = sq_GetCNRDObjectToActiveObject(object);
						if (!activeObj.isDead() && !sq_IsAiCharacter(activeObj)) {
							obj.getVar("app").push_obj_vector(activeObj);
						}
					}
				}

				obj.sq_IntVectClear();
				obj.sq_IntVectPush(1);
				obj.sq_IntVectPush(sq_GetObjectId(obj));
				obj.sq_AddSetStatePacket(13, STATE_PRIORITY_USER, true);
				obj.flushSetStatePacket();

				break;
			default:
				break;
			}
			break;
		case 1:
			local id = sq_GetVectorData(datas, 1);
			obj.getVar("app").remove_obj_vector(sq_GetObjectByObjectId(obj, id));
			local appObj = obj.getVar("app").get_obj_vector(0);
			if (appObj) {
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(1);
				obj.sq_IntVectPush(sq_GetObjectId(appObj));
				obj.sq_AddSetStatePacket(13, STATE_PRIORITY_USER, true);
				obj.flushSetStatePacket();
			}
			break;
		}
	}
}