// ��ų ���ιߵ� ������ ������ִ� �Լ��Դϴ�.. �ߵ� ���� state�� �̹� �ҽ����� �����Ǿ� �ֽ��ϴ�. �̰����� useskill�� setstate�� �������ָ� �˴ϴ�.
function checkExecutableSkill_Hedgehog(obj)  
{
	if(!obj) return false;
	local b_useskill = obj.sq_IsUseSkill(SKILL_HEDGEHOG);
	if(b_useskill) {
		obj.sq_addSetStatePacket(STATE_HEDGEHOG, STATE_PRIORITY_IGNORE_FORCE, false);
		return true;
	}	
	
	return false;
}

// ��ų������ Ȱ��ȭ ������ ������ �Լ��Դϴ�. true�� �����ϸ� ��ų �������� Ȱ��ȭ�� �˴ϴ�. (�ߵ����� state��  �ҽ����� ó���˴ϴ�.)
function checkCommandEnable_Hedgehog(obj)
{
	if(!obj) return false;

	local state = obj.sq_GetSTATE();
	
	if(state == STATE_ATTACK) {
		return obj.sq_IsCommandEnable(SKILL_HEDGEHOG); // �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20] obj.sq_IsCommandEnable(SKILL_HEDGEHOG);
	}
	
	return true;
}

//------------------------------------------------------------------------------


// state�� �����ϰ� ó������ ������ �˴ϴ�. ���� ���ҽ��� �����մϴ�. 
function onSetState_Hedgehog(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	obj.sq_stopMove();
	obj.sq_setCurrentAnimation(CUSTOM_ANI_HEDGEHOG);
	obj.sq_setCurrentAttackInfo(CUSTOM_ATTACKINFO_HEDGEHOG);	
	obj.sq_setAttackPowerWithPassive(SKILL_HEDGEHOG, state, -1,0,1.0);
	obj.sq_PlaySound("PR_HEDGEHOG");	
}

function onEndCurrentAni_Hedgehog(obj)
{
	obj.sq_addSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
}

function onKeyFrameFlag_Hedgehog(obj,flagIndex)
{		
	if(flagIndex == 2)
		obj.sq_setShake(obj,3,150);
		
	return true;

}
