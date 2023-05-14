function sq_AddFunctionName(appendage) {
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_fighter_groundkickhold")
}

function onStart_appendage_fighter_groundkickhold(appendage) {
	if (!appendage) {
		return;
	}

	local obj = appendage.getParent();
	local x = obj.getXPos();
	local y = obj.getYPos();
	if (obj.getDirection() == ENUM_DIRECTION_RIGHT) {
		x = x + 50;
	} else {
		x = x - 50;
	}
	sq_SendCreatePassiveObjectPacketPos(obj, 90010010, 0, x, y, 0);
}