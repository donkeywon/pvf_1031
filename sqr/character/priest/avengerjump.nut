

// state�� �����ϰ� ó������ ������ �˴ϴ�. ���� ���ҽ��� �����մϴ�. 
function onSetState_AvengerJump(obj, state, datas, isResetTimer)
{	
	if(!obj) return;
	if(isAvengerAwakenning(obj) == false) {
		return;
	}
	
	
	obj.sq_stopMove();
	
	obj.setAttackXVelocity(0);
	obj.setAttackXAccel(0);
	obj.setAttackXVelocityFast(0);
	obj.setAttackXAccelFast(0);
}


// prepareDraw �Լ� �Դϴ�..
function prepareDraw_AvengerJump(obj)
{
	if(!obj) return;
}


// loop �κ��Դϴ� ismycontrol�� ������ ���� ����� ��� object���� �̰��� ��ġ�Ե˴ϴ�.
function onProc_AvengerJump(obj)
{
	if(!obj) return;
	if(isAvengerAwakenning(obj) == false) {
		return;
	}		
}

// loop �κ��Դϴ� ismycontrol ȣ��Ʈ�� ������ object�� �̰��� ���ϴ�. setstate �����̳� �нú������Ʈ ���� , ��� ó���մϴ�.
function onProcCon_AvengerJump(obj)
{
	if(!obj) return;
	if(isAvengerAwakenning(obj) == false) {
		return;
	}
	
	
	if(obj.getAttackIndex() != 3) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(3); // substate����
		obj.sq_addSetStatePacket(STATE_ATTACK, STATE_PRIORITY_USER, true);
	}
	
	local pAni = obj.sq_getCurrentAni();
	local bEnd = obj.sq_ani_IsEnd(pAni);
    local frmIndex = obj.sq_ani_GetCurrentFrameIndex(pAni);
	
    local substate = obj.getSkillSubState();
        
	if(bEnd) {
		
	}
}

// state����� ���ÿ� �ѹ� ȣ��Ǵ� �Լ��Դϴ�. oldstate�� ����Ǵ� state�Դϴ�. ���� �߻�Ȱ��� �ְų� ����ó���ɰ��� �ִٸ� �̰����� ó���մϴ�.
function onEndState_AvengerJump(obj, new_state)
{
	if(!obj) return;
	if(isAvengerAwakenning(obj) == false) {
		return;
	}
	
	//obj.sq_IntVectClear();
	//obj.sq_IntVectPush(2); // substate����
	//obj.sq_addSetStatePacket(STATE_ATTACK, STATE_PRIORITY_USER, true);
//
}

function onAfterSetState_AvengerJump(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	obj.sq_stopMove();
	
	obj.setAttackXVelocity(0);
	obj.setAttackXAccel(0);
	obj.setAttackXVelocityFast(0);
	obj.setAttackXAccelFast(0);
}

