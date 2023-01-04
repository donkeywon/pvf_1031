
// state�� �����ϰ� ó������ ������ �˴ϴ�. ���� ���ҽ��� �����մϴ�. 
function onSetState_AwakenningTurnOff(obj, state, datas, isResetTimer)
{	
	if(!obj) return;
	local substate = obj.sq_getVectorData(datas, 0); // ù��° substate�Դϴ�..	
	obj.setSkillSubState(substate); //set substate
	obj.sq_stopMove();	
	
	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();
	local sq_var = obj.getVar();	
	
	
	if(obj.getVar("takingAwakenSkillBack").size_vector() > 0) {	
		obj.getVar("takingAwakenSkillBack").set_vector(0, 0);
	}
	
	sq_var.clear_vector();
	sq_var.push_vector(0);
	
	local appendage = obj.GetSquirrelAppendage("Appendage/Character/ap_avenger_awakening.nut");
	
	if(appendage) {
		if(appendage.isValid()) {
			appendage.setValid(false);
		}
		
		// ���� �븮�� �÷��׷� �� ����Դϴ�.. �� �̷����� �Ƴĸ�.. 
		// ����� state_stand���¿����� ���������� �Ǿ�� �մϴ� 
		// �׷��� valid�� false�� �ȴٰ� �ؼ� ���� �������� �ƴٰ� �����ؼ��� �ȵ˴ϴ� ��������� �����س� ��� �� ����� ���� ����Ұ� ���Ƽ� �Դϴ�.. 
		// �� ���̴� ���� �����ϱ�
		appendage.sq_var.set_vector(I_AVENGER_AWAKENING_VALID, 0);
		obj.setObjectHeight(-1);
	}
	
	
	if(substate == 0) {
		//obj.sq_setCurrentAnimation(CUSTOM_ANI_AWAKENING_TURN_OFF);
		local turn_off_ani = obj.getVar().GetAnimationMap("AWAKENING_TURN_OFF", "Character/Priest/Animation/AwakeningTurnoff.ani"); // ��Ų�ƹ�Ÿ ������ �ܺο��� �ִϸ��̼��� ������ �;� �մϴ�..
		obj.setCurrentAnimation(turn_off_ani);
	}
	else if(substate == 1) {
		obj.sq_setCurrentAnimation(CUSTOM_ANI_AWAKENING_TURN_OFF_2);
		

		
		//if(sq_var.get_vector(0) == 0) {			
		//	sq_var.set_vector(0, 1);
			
			//�׾Ƴ� ���������� ȿ��
			local particleCreater = sq_var.GetparticleCreaterMap("BellatrixGlass", "Character/Priest/Effect/Particle/AwakeningTurnOff.ptl", obj);
				
			particleCreater.Restart(0);
			//local dstX = sq_GetDistancePos(posX, obj.getDirection(), -20);				
			particleCreater.SetPos(posX, posY + 2, posZ+70);
			
			sq_AddParticleObject(obj, particleCreater);
		//}
	}

	
}


// prepareDraw �Լ� �Դϴ�..
function prepareDraw_AwakenningTurnOff(obj)
{
	if(!obj) return;
}


// loop �κ��Դϴ� ismycontrol�� ������ ���� ����� ��� object���� �̰��� ��ġ�Ե˴ϴ�.
function onProc_AwakenningTurnOff(obj)
{
	if(!obj) return;
	local substate = obj.getSkillSubState();
	
	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();
	
	local pAni = obj.sq_getCurrentAni();
    local frmIndex = obj.sq_ani_GetCurrentFrameIndex(pAni);

	local currentT = sq_GetCurrentTime(pAni);
	local sq_var = obj.getVar();
	
}

// loop �κ��Դϴ� ismycontrol ȣ��Ʈ�� ������ object�� �̰��� ���ϴ�. setstate �����̳� �нú������Ʈ ���� , ��� ó���մϴ�.
function onProcCon_AwakenningTurnOff(obj)
{
	if(!obj) return;
	local substate = obj.getSkillSubState();
	
	local pAni = obj.sq_getCurrentAni();
	local bEnd = obj.sq_ani_IsEnd(pAni);
    local frmIndex = obj.sq_ani_GetCurrentFrameIndex(pAni);
	
    local substate = obj.getSkillSubState();
        
	if(bEnd) {
		if(substate == 0) {
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(1);
			obj.sq_addSetStatePacket(STATE_AWAKENING_TURN_OFF, STATE_PRIORITY_USER, true);
		}
		else if(substate == 1) {
			obj.setObjectHeight(-1);
			obj.sq_addSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		}
	}
}



// irdcharacter����  setstate() -> IRDActiveObject::setState -> aftersetstate() �̷��������� ������ setstate�Դϴ�. skillƯ���� ���� ȣ���� �ʿ䰡 
// �ִٸ� �� �Լ��� �̿��մϴ�.

function onAfterSetState_AwakenningTurnOff(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	
}

// onbeforeattack �ݹ��Լ� �Դϴ�
function onBeforeAttack_AwakenningTurnOff(obj, damager, boundingBox)
{
	
}

// onAttack �ݹ��Լ� �Դϴ�
function onAttack_AwakenningTurnOff(obj, damager, boundingBox)
{
	
}

// onAfterAttack �ݹ��Լ� �Դϴ�
function onAfterAttack_AwakenningTurnOff(obj, damager, boundingBox)
{
	
}

// onBeforeDamage �ݹ��Լ� �Դϴ�
function onBeforeDamage_AwakenningTurnOff(obj, attacker, boundingBox)
{
	
}

// onDamage �ݹ��Լ� �Դϴ�
function onDamage_AwakenningTurnOff(obj, attacker, boundingBox)
{
	
}

// onAfterDamage �ݹ��Լ� �Դϴ�
function onAfterDamage_AwakenningTurnOff(obj, attacker, boundingBox)
{
	
}


