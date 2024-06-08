// 어펜디지만을 붙이고 상세기능은 어펜디지에서 다 한다.


function checkExecutableSkill_LightningWall(obj)
{
	if(!obj) return false;

	local b_useskill = obj.sq_IsUseSkill(SKILL_LIGHTNING_WALL);
	if(b_useskill) {
		obj.sq_AddSetStatePacket(STATE_LIGHTNING_WALL , STATE_PRIORITY_USER, false);
		return true;
	}	
	return false;

}

function checkCommandEnable_LightningWall(obj)
{
	if(!obj)
		return false;
	if(sq_GetSkillLevel(obj, SKILL_ELEMENTAL_BOMBING) > 3){
		return true;
	}
	local state = obj.sq_GetState();
	
	if(state == STATE_ATTACK) {
		// 결투장에서는 특정스킬만 캔슬이 가능합니다. 작업자:정진수 [2012.04.20]
		return obj.sq_IsCommandEnable(SKILL_LIGHTNING_WALL);
	}
	
	return true;
}

function onSetState_LightningWall(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	
	obj.sq_StopMove();
	obj.sq_SetCurrentAnimation(CUSTOM_ANI_LIGHTNING_WALL);
	
	// 캐스팅 속도를 따라가도록 설정
	// 캐스팅 속도가 변경되면, 에니메이션 속도도 변경 됩니다.
	// 캐스팅 게이지도 표시를 해줍니다.
	local skillLevel = sq_GetSkillLevel(obj, SKILL_LIGHTNING_WALL);
	local castTime  = sq_GetCastTime(obj, SKILL_LIGHTNING_WALL, skillLevel);
	local animation = sq_GetCurrentAnimation(obj);
	local castAniTime = sq_GetFrameStartTime(animation, 6);
	local speedRate = castAniTime.tofloat() / castTime.tofloat();
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.2, 1.2);

	sq_StartDrawCastGauge(obj, castAniTime, true);
	
	local var = obj.getVar();
	obj.getVar("lastT").setInt(0,0);
	var.setBool(0,false);
	var.setBool(1,false);
	var.setBool(2,false);
	var.setBool(3,false);
	var.setBool(4,false);
	local wallNum = obj.sq_GetIntData(SKILL_LIGHTNING_WALL, 4);	//i³ißa|Oa
	local wallDelay = obj.sq_GetIntData(SKILL_LIGHTNING_WALL, 5); //i³ißi¹ONæAoAaAEa
	obj.getVar("wall").setInt(0, wallNum);
	obj.getVar("wall").setInt(1, wallDelay);
	
	addElementalChain_ATMage(obj, ENUM_ELEMENT_LIGHT);
	obj.getVar("lightwall").clear_vector();
	obj.getVar("lightwall").push_vector(0);
	//FLAG_PASSIVE_CREATE_LIGHTNING_WALL = 0;
}

function setLightningWallState(obj, state)
{
	if(!obj || !obj.isMyControlObject())
		return;
		
	local count = obj.getMyPassiveObjectCount(24218);
	
	for(local i =0; i<count ; ++i) {
		local wall = obj.getMyPassiveObject(24218,i);
		if(wall) {
			local var = obj.getVar();	
			local isSendMove = var.getBool(0);
	
			if(state == PO_LIGHTNING_WALL_DESTROY) // 이미 이동중일땐 모션이 취소 됐다고 사라지지 않는다.
			{
				if(wall.getState() != PO_LIGHTNING_WALL_MOVE)
					wall.sendStateOnlyPacket(PO_LIGHTNING_WALL_DESTROY);
			}
			else
			{
				wall.sendStateOnlyPacket(state);
			}
		}
	}
}

function onEndCurrentAni_LightningWall(obj)
{
	if(!obj) return;
	obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
}

function onProc_LightningWall(obj)
{
	if(!obj) return;		
	if(!obj.isMyControlObject()) return;
    if (sq_GetCurrentFrameIndex(obj) <= 20) return;

	//uoo￠i³ißa|Ea
	local var = obj.getVar();
	local wallNum = obj.getVar("wall").getInt(0);
	local wallDelay = obj.getVar("wall").getInt(1);

	//aIæAoAaAEai¹ONi³iß
	for (local i = 0; i <= wallNum; i++)
	{
		//÷÷O¨u±IDi³ißaAUui≪Iei¹ON
		if(var.getBool(i)) continue;

		//÷÷O¨ß¾o­i¹ONi³ißaAEauuiIo­aAUuOÞeIOoeIÐ®iOiUEaI°aAEa
		if (sq_GetObjectTime(obj) - obj.getVar("lastT").getInt(0) < wallDelay) continue;
		
		//aaoCi³ißo¸i¹ONßO÷¾
		local wall = obj.getMyPassiveObject(24218,i);	
		if (wall) wall.sendStateOnlyPacket(PO_LIGHTNING_WALL_MOVE);

		//NAOai¹ONøoaUÐaEaI°aAEa
		var.setBool(i,true);
		obj.getVar("lastT").setInt(0, sq_GetObjectTime(obj));

		sq_flashScreen(obj, 0, 1000,500, 180, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
		obj.sq_PlaySound("LIGHTWALL_SHOT");
		break;
	}
}

function onKeyFrameFlag_LightningWall(obj, flagIndex)
{
	if(!obj) return true;	
	if (flagIndex == 1) {
		sq_EndDrawCastGauge(obj);
		sq_EffectLayerAppendageOnlyBody(obj, sq_RGB(255,255,255), 255, 0, 0, 320);
		
		if(obj.isMyControlObject()) {			
			local yByDirection = -1; 
			if(obj.getDirection() != ENUM_DIRECTION_RIGHT)
				yByDirection = 1;
						
			local moveDistance	= sq_GetIntData(obj, SKILL_LIGHTNING_WALL, 2); //2: 이동 거리
			local wallNum = obj.sq_GetIntData(SKILL_LIGHTNING_WALL, 4);
			local attackPower	= obj.sq_GetBonusRateWithPassive(SKILL_LIGHTNING_WALL , STATE_LIGHTNING_WALL, 0, 1.0);		
			local skill_level	= sq_GetSkillLevel(obj, SKILL_LIGHTNING_WALL);
			local prob			= sq_GetLevelData(obj, SKILL_LIGHTNING_WALL, 2, skill_level)/10.0; // 2. 감전 확률 (0.1%)
			local level			= sq_GetLevelData(obj, SKILL_LIGHTNING_WALL, 1, skill_level); // 1. 감전 레벨
			local duration		= sq_GetLevelData(obj, SKILL_LIGHTNING_WALL, 4, skill_level); // 4. 지속시간
			local lightDamage	= obj.sq_GetPowerWithPassive(SKILL_LIGHTNING_WALL, -1, 3, -1, 1.0); // 3. 감전 공격력
	
							
			// 라이트닝 월 생성
			obj.sq_StartWrite();
			obj.sq_WriteDword(moveDistance); // 목적지 x 좌표
			obj.sq_WriteDword(attackPower);
			obj.sq_WriteDword(skill_level);
			obj.sq_WriteFloat(prob);
			obj.sq_WriteDword(level);
			obj.sq_WriteDword(duration);
			obj.sq_WriteDword(lightDamage);
			obj.sq_SendCreatePassiveObjectPacket(24218, 0, 50, -1, 0);
				obj.getVar("lightwall").set_vector(0, 1);
				//FLAG_PASSIVE_CREATE_LIGHTNING_WALL = 1;
		}
	}
	else if (flagIndex == 2) {		
		sq_EffectLayerAppendageOnlyBody(obj, sq_RGB(255,255,255), 255, 0, 0, 400);
	}
	else if (flagIndex == 3) {
		// 라이트닝 월 이동	
		sq_SetMyShake(obj,4,300);
	}	
	return true;
}

function onEndState_LightningWall(obj, newState) {
	if (!obj)
		return;

	if (newState != STATE_LIGHTNING_WALL) {
		//setLightningWallState(obj, PO_LIGHTNING_WALL_DESTROY);
		if (newState == STATE_DAMAGE || newState == STATE_DOWN || newState == STATE_DIE)
			return;
		if (obj.getVar("lightwall").get_vector(0) != 1 && obj.isMyControlObject()) {
			local yByDirection = -1;
			if (obj.getDirection() != ENUM_DIRECTION_RIGHT)
				yByDirection = 1;

			local moveDistance = sq_GetIntData(obj, SKILL_LIGHTNING_WALL, 2); 
			local attackPower = obj.sq_GetBonusRateWithPassive(SKILL_LIGHTNING_WALL, STATE_LIGHTNING_WALL, 0, 1.0);
			local skill_level = sq_GetSkillLevel(obj, SKILL_LIGHTNING_WALL);
			local prob = sq_GetLevelData(obj, SKILL_LIGHTNING_WALL, 2, skill_level) / 10.0; 
			local level = sq_GetLevelData(obj, SKILL_LIGHTNING_WALL, 1, skill_level); 
			local duration = sq_GetLevelData(obj, SKILL_LIGHTNING_WALL, 4, skill_level); 
			local lightDamage = obj.sq_GetPowerWithPassive(SKILL_LIGHTNING_WALL, -1, 3, -1, 1.0); 

			obj.sq_StartWrite();
			obj.sq_WriteDword(moveDistance); 
			obj.sq_WriteDword(attackPower);
			obj.sq_WriteDword(skill_level);
			obj.sq_WriteFloat(prob);
			obj.sq_WriteDword(level);
			obj.sq_WriteDword(duration);
			obj.sq_WriteDword(lightDamage);
			obj.sq_SendCreatePassiveObjectPacket(24218, 0, 50, -1, 0);
			//FLAG_PASSIVE_CREATE_LIGHTNING_WALL = 1;
			obj.getVar("lightwall").set_vector(0, 1);
		}
		if(obj.isMyControlObject())
		{
			setLightningWallState(obj,PO_LIGHTNING_WALL_MOVE);
		}
	}

}
