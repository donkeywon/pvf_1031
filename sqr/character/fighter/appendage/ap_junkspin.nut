
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_junkspin")
}

function proc_appendage_junkspin(appendage)
{
	if(!appendage) {
		return;		
	}
    local obj = sq_GetCNRDObjectToSQRCharacter(appendage.getParent());
    //üòÔðñ¦øöÕÎãùúÞì¹ÔÑ
    local x = obj.getXPos();
    local x1 = x;
    local y = obj.getYPos();
    local y1 = y;
    local z = obj.getZPos();
	local xSpeed = 5;
	local ySpeed = 1;
    if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL)) {
        x1 = x1 + xSpeed;
    }
    if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL)) {
        x1 = x1 - xSpeed;
    }
    if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL)) {
        y1 = y1 - ySpeed;
    }
    if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL)) {
        y1 = y1 + ySpeed;
    }
    //ìÑÚªÐÆËàñ¦øöì¹ÔÑ
    sq_MoveToNearMovablePos(obj, x1, y1, z, x, y, z, 1, 1, 1);
	return;
} 
