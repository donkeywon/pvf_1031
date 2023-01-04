function setCustomData_po_ATIceOrbExPrickle(obj, reciveData)
{
	if(!obj) return;	
	
	local currentIndex = reciveData.readWord();
	local attackPower  = reciveData.readFloat();
	local isFirst	   = reciveData.readBool(); // ó�� ������ ��ü�� ���� ���¿��� ����.
	
	local var = obj.getVar();
	var.setInt(0,currentIndex);
	setCurrentAnimationFromCutomIndex(obj, currentIndex);
	
	if(isFirst)
	{
		local ani = sq_GetCurrentAnimation(obj);
		if(ani) {
			local aniFrameIndex = currentIndex - PO_ICE_ORB_CONST_START_FRAME;
			aniFrameIndex = aniFrameIndex < 0 ? 0 : aniFrameIndex;
			ani.setCurrentFrameWithChildLayer(aniFrameIndex+1); 
			//sq_SetFrameDelayTime(ani,aniFrameIndex+1,);
			
			ani.Proc();
						
			local frame = ani.GetCurrentFrame();
			if(frame) 
			{
				local rgb = sq_ALPHA(255,255,255,0);
				ani.setCurrentEffectNoChild(GRAPHICEFFECT_NONE,rgb);
				
			}			
		}
	}
	
	local currentAttackInfo = sq_GetCurrentAttackInfo(obj);
	sq_SetCurrentAttackBonusRate(currentAttackInfo, attackPower.tointeger());
	sq_SetCurrentAttackeHitStunTime(currentAttackInfo, 0);
	
	//if(currentIndex%4 == 0) // �ʹ� �Ҹ��� ���� ���� ���� ����.
	//	obj.sq_PlaySound("ICESPEAR_ATK");
}


function procAppend_po_ATIceOrbExPrickle(obj)
{
	if(!obj) return;
	//local ani = sq_GetCurrentAnimation(obj);
	//sq_drawCurrentFrameEffectColor(ani, GRAPHICEFFECT_MONOCHROME, true, sq_RGB(255,255,255), sq_ALPHA(255));
	//obj.setCurrentAnimation(ani,1.0);
}

function onKeyFrameFlag_po_ATIceOrbExPrickle(obj, flagIndex)
{
	if(!obj)
		return false;


	if(flagIndex == 1)
	{		
		local parentObj = obj.getParent();
		if(parentObj) {
			local var = obj.getVar(); 
			local currentIndex = var.getInt(0); // ���� ���� ������Ʈ�� �ε���
			sq_CreateDrawOnlyObject(parentObj, "PassiveObject/Character/Mage/Animation/ATIceOrbEx/2_attack/08_light_dodge_" + currentIndex + ".ani", ENUM_DRAWLAYER_NORMAL, true);
		}		
	}
	else if(flagIndex == 2)
	{
		// ��� ��. �� ���� ����.
		sq_SetCurrentAttackInfoFromCustomIndex(obj, 0);
		
	}
	return true;	
}

function onEndCurrentAni_po_ATIceOrbExPrickle(obj)
{
	if(!obj) return;
	
	if(obj.isMyControlObject()) {
		sq_SendDestroyPacketPassiveObject(obj);
	}
}
