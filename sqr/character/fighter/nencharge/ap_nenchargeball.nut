function sq_AddFunctionName(appendage) {
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_nenchargeball")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_nenchargeball")
	appendage.sq_AddFunctionName("onDestroyObject", "onDestroyObject_appendage_nenchargeball")
}

function sq_AddEffect(appendage) {}

function onStart_appendage_nenchargeball(appendage) {
	if (!appendage) return;
	local obj = appendage.getParent();
	local count = appendage.getVar("skillData").get_vector(0);
	local superArmorTime = appendage.getVar("skillData").get_vector(2);
	local addAttackSpeed = appendage.getVar("skillData").get_vector(3) * count;
	local addAttackRate = appendage.getVar("skillData").get_vector(4) * count;

	sq_SendMessage(obj, OBJECT_MESSAGE_SUPERARMOR, 1, 0);
	sq_PostDelayedMessage(obj, OBJECT_MESSAGE_SUPERARMOR, 0, 0, superArmorTime);

	local change_appendage = appendage.sq_getChangeStatus("nencharge");
	if (!change_appendage) {
		change_appendage = appendage.sq_AddChangeStatus("nencharge", obj, obj, 0, CHANGE_STATUS_TYPE_ATTACK_SPEED, false, addAttackSpeed);
	}
	if (change_appendage) {
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, false, addAttackSpeed.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, true, addAttackRate.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, true, addAttackRate.tofloat());
	}
}

function onEnd_appendage_nenchargeball(appendage) {
	if (!appendage) return;
	local count = appendage.getVar("skillData").get_vector(0);
	if (count == 1) NENCHARGE_BALL_COUNT = 0;
}

function onDestroyObject_appendage_nenchargeball(appendage, destroyObj) {
	if (!appendage) return true;
	local obj = appendage.getParent();
	local cObj = sq_GetCNRDObjectToCollisionObject(destroyObj);
	local index = cObj.getCollisionObjectIndex();
	if (destroyObj.isMyControlObject() && destroyObj.isObjectType(OBJECTTYPE_PASSIVE) && index == 21044) {
		local objectManager = obj.getObjectManager();
		for (local i = 0; i < objectManager.getCollisionObjectNumber(); i += 1) {
			local object = objectManager.getCollisionObject(i);
			if (object && !obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_CHARACTER)) {
				local sqrChr = sq_GetCNRDObjectToSQRCharacter(object);
				sq_BinaryStartWrite();
				sq_BinaryWriteDword(241);
				sq_SendChangeSkillEffectPacket(sqrChr, 241);
			}
		}
	}
	return true;
}