
function onSetState_FixAfterUpperSlash(obj, state, datas, isResetTimer)
{	
	if(!obj) return;
	
	obj.sq_StopMove();
	obj.sq_SetCurrentAnimation(16);
	obj.sq_SetCurrentAttackInfo(19);
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
	local damage = obj.sq_GetBonusRateWithPassive(12 , STATE_FIX_AFTER_UPPER_SLASH, 2, 1.0);
	obj.sq_SetCurrentAttackBonusRate(damage);
}

function onAfterSetState_FixAfterUpperSlash(obj, state, datas, isResetTimer)
{
	if(!obj) return;

	local attackInfo = sq_GetCurrentAttackInfo(obj);
	sq_SetCurrentAttacknUpForce(attackInfo, 300);//打击高度
	sq_SetCurrentAttackDirection(attackInfo, ATTACK_DIRECTION_UP);
	sq_SetCurrentAttackInfo(obj, attackInfo);
}

function onEndCurrentAni_FixAfterUpperSlash(obj)
{
	obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
}