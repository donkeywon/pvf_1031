

/************************************************
// ���� ���� ������Ʈ
************************************************/
function setCustomData_po_ATConcentrateExpSmall(obj, receiveData)
{
	if (!obj) return;
	local sizeRate = receiveData.readWord();
	local attackBonusRate = receiveData.readDword();
	local element = receiveData.readByte();
	
	local attackInfo = sq_GetCurrentAttackInfo(obj);
	if (attackInfo)
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
	if (element != ENUM_ELEMENT_NONE)
	{
		attackInfo.setElement(ENUM_ELEMENT_NONE);
		attackInfo.setElement(element);
	}

	obj.sq_PlaySound("FM31_HIT");
	
	local particleCreater = obj.getVar().GetparticleCreaterMap("concentrateParticle", "PassiveObject/Character/Mage/Particle/ATConcentrateSub.ptl", obj);
	particleCreater.Restart(0);
	particleCreater.SetPos(obj.getXPos(), obj.getYPos(), obj.getZPos());
	sq_AddParticleObject(obj, particleCreater);
}

function onEndCurrentAni_po_ATConcentrateExpSmall(obj)
{
	if (!obj) return;
	if (obj.isMyControlObject()) {
		sq_SendDestroyPacketPassiveObject(obj);
	}
}

function getHitDirection_po_ATConcentrateExpSmall(obj, damager)
{
	if (!obj) return 0;
	return sq_GetOppositeDirection(obj.getDirection());
}


/************************************************
// ū ���� ������Ʈ
************************************************/
function setCustomData_po_ATConcentrateExpBig(obj, receiveData)
{
	if (!obj) return;
	local sizeRate = receiveData.readWord();
	local attackBonusRate = receiveData.readDword();
	local element = receiveData.readByte();
	
	local attackInfo = sq_GetCurrentAttackInfo(obj);
	if (attackInfo)
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
	
	if (element != ENUM_ELEMENT_NONE)
	{
		attackInfo.setElement(ENUM_ELEMENT_NONE);
		attackInfo.setElement(element);
	}
	
	obj.sq_PlaySound("HWANG_FENCING_EXP");
	
	local particleCreater = obj.getVar().GetparticleCreaterMap("concentrateParticle", "PassiveObject/Character/Mage/Particle/ATConcentrateSub.ptl", obj);
	particleCreater.Restart(0);
	particleCreater.SetPos(obj.getXPos(), obj.getYPos(), obj.getZPos());
	sq_AddParticleObject(obj, particleCreater);
	
	sq_flashScreen(obj, 0, 240, 120, 150, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
	
	
	local animation = sq_GetCurrentAnimation(obj);
	if (!animation) return;
	local size = sizeRate.tofloat() / 100.0;
	animation.setImageRateFromOriginal(size, size);
	animation.setAutoLayerWorkAnimationAddSizeRate(size);
	sq_SetAttackBoundingBoxSizeRate(animation, size, size, size);
}

function onEndCurrentAni_po_ATConcentrateExpBig(obj)
{
	if (!obj) return;
	if (obj.isMyControlObject()) {
		sq_SendDestroyPacketPassiveObject(obj);
	}
}

function getHitDirection_po_ATConcentrateExpBig(obj, damager)
{
	if (!obj) return 0;
	return sq_GetOppositeDirection(obj.getDirection());
}





/************************************************
// �Ӽ� ������ ������Ʈ
************************************************/
function setCustomData_po_ATConcentrateBall(obj, receiveData)
{
	if (!obj) return;
	obj.sq_SetMoveParticle("Particle/ATConcentrate.ptl", 0.0, 0.0);
	
	
	local maxBoundNumber = receiveData.readWord();
	local smallExpBonusRate = receiveData.readDword();
	local bigExpBonusRate = receiveData.readDword();
	local bigExpSizeRate = receiveData.readWord();
	local element = receiveData.readByte();

	local var = obj.getVar();
	var.clear_vector();
	var.push_vector(0);
	var.push_vector(maxBoundNumber);
	var.push_vector(smallExpBonusRate);	
	var.push_vector(bigExpBonusRate);
	var.push_vector(bigExpSizeRate);
	var.push_vector(element);
}


function procAppend_po_ATConcentrateBall(obj)
{
	if (obj.getZPos() <= 0)
	{
		local var = obj.getVar();
		local currentBoundNumber = var.get_vector(0);
		local maxBoundNumber = var.get_vector(1);	
	
		if (currentBoundNumber + 1 < maxBoundNumber)
		{
			// �ٿ���Ǿ� �ö󰥶��� ���ӵ� ��
			local jumpVelocity = 320;			
			
			var.set_vector(0, currentBoundNumber + 1);
			sq_SetObjectBounding(obj, jumpVelocity);
			
			// ���� ���� ������Ʈ�� �����Ѵ�.
			if (obj.isMyControlObject())
			{
				sq_BinaryStartWrite();				
				// ���� ������ �׻� 100% ������� ������.
				sq_BinaryWriteWord(100);
				// ���� ���� ���ݷ�%
				sq_BinaryWriteDword(obj.getVar().get_vector(2));
				sq_BinaryWriteByte(obj.getVar().get_vector(5));
				sq_SendCreatePassiveObjectPacket(obj, 24284, 0, 0, -1, 0, obj.getDirection());
				
				// ȭ������
				sq_SetMyShake(obj, 2, 240);
			}
		}
		else
		{
			// ������ ū ���� ������Ʈ�� �����ϰ� �Ҹ��Ų��.
			if (obj.isMyControlObject())
			{
				local var = obj.getVar();
				sq_BinaryStartWrite();
				// ū ������ ������
				sq_BinaryWriteWord(var.get_vector(4));
				
				// ū ������ ���ݷ�
				sq_BinaryWriteDword(var.get_vector(3));
				sq_BinaryWriteByte(obj.getVar().get_vector(5));
				sq_SendCreatePassiveObjectPacket(obj, 24285, 0, 0, -1, 0, obj.getDirection());
				
				// ������Ʈ�� �����Ѵ�.
				sq_SendDestroyPacketPassiveObject(obj);
				
				// ȭ������
				sq_SetMyShake(obj, 5, 240);
			}
		}
	}
}

function onEndCurrentAni_po_ATConcentrateBall(obj)
{
	if (!obj) return;
	if (obj.isMyControlObject()) {
		sq_SendDestroyPacketPassiveObject(obj);
	}
}
