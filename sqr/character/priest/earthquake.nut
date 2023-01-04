EARTHQUAKE_ROCK_MAX <- 3;
// ��ų ���ιߵ� ������ ������ִ� �Լ��Դϴ�.. �ߵ� ���� state�� �̹� �ҽ����� �����Ǿ� �ֽ��ϴ�. �̰����� useskill�� setstate�� �������ָ� �˴ϴ�.
function checkExecutableSkill_EarthQuake(obj)  
{
	if(!obj) return false;
	local b_useskill = obj.sq_IsUseSkill(SKILL_EARTH_QUAKE);
	if(b_useskill) {
		obj.sq_addSetStatePacket(STATE_EARTHQUAKE , STATE_PRIORITY_USER, false);
		return true;
	}	
	
	return false;
}

// ��ų������ Ȱ��ȭ ������ ������ �Լ��Դϴ�. true�� �����ϸ� ��ų �������� Ȱ��ȭ�� �˴ϴ�. (�ߵ����� state��  �ҽ����� ó���˴ϴ�.)
function checkCommandEnable_EarthQuake(obj)
{
	if(!obj) return false;

	local state = obj.sq_GetSTATE();
	
	if(state == STATE_ATTACK) {
		return obj.sq_IsCommandEnable(SKILL_EARTH_QUAKE); // �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20] obj.sq_IsCommandEnable(SKILL_EARTH_QUAKE);
	}
	
	return true;
}

//------------------------------------------------------------------------------

// state�� �����ϰ� ó������ ������ �˴ϴ�. ���� ���ҽ��� �����մϴ�. 
function onSetState_EarthQuake(obj, state, datas, isResetTimer)
{	
	if(!obj) return;
	obj.sq_stopMove();
	obj.sq_setCurrentAnimation(CUSTOM_ANI_EARTH_QUAKE);
	obj.sq_setXScroll(50,200,200,0);	
}

function onEndCurrentAni_EarthQuake(obj)
{
	obj.sq_addSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	
	local x = sq_GetDistancePos(obj.getXPos(),obj.getDirection(),40);
	if(obj.isMovablePos(x,obj.getYPos()))		
		obj.setCurrentPos(x, obj.getYPos(), obj.getZPos());
}

function onKeyFrameFlag_EarthQuake(obj,flagIndex)
{
	local isMycontrolObject = obj.sq_isMyControlObject();

	if(isMycontrolObject && flagIndex == 1) // ����,��½ ����Ʈ�� �����Ը� ���δ�.
	{
		local gap = obj.sq_getIntData(SKILL_EARTH_QUAKE,0); // �нú� ���� ����			
		local state = obj.sq_GetSTATE();
		local dmg = obj.sq_getBonusRateWithPassive(SKILL_EARTH_QUAKE, state, 0,1.0);
		
				
		obj.sq_binaryData_startWrite();
		obj.sq_binaryData_writeWord(EARTHQUAKE_ROCK_MAX); // �нú� ��� ���� ����
		obj.sq_binaryData_writeWord(gap); // �нú� ���� ����
		obj.sq_binaryData_writeDword(dmg); // �нú� ���� ����		
		obj.sq_p00_sendCreatePassiveObjectPacket(24103, 0, 120, 1, 0);
	}
	return true;
}
