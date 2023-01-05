
function sq_InitFrameIndices(obj)
{
	if (!obj)
		return -1;

	// ������
	if (sq_getJob(obj) == ENUM_CHARACTERJOB_AT_MAGE)
	{
		// �����Ҷ� �� ���� ������Ʈ�� ������ �μ��� ����
		obj.sq_JumpUpStartFrame(1);
		obj.sq_JumpDownStartFrame(3);
		obj.sq_JumpLandStartFrame(9);
	
	
		// ĳ���� �ٿ�ɶ� �� ���� ������Ʈ�� ������ �ε��� ����
		obj.sq_SetDownUpFrame(2);
		obj.sq_SetDownDownFrame(2);
		obj.sq_SetDownBounceUpFrame(2);
		obj.sq_SetDownBounceDownFrame(3);
		obj.sq_SetDownLieFrame(4);


		obj.sq_AddAttackCancelStartFrame(3);	// 1Ÿ ĵ�� ������
		obj.sq_AddAttackCancelStartFrame(3);	// 2Ÿ ĵ�� ������
		obj.sq_AddAttackCancelStartFrame(3);	// 3Ÿ ĵ�� ������
		
		
		
		// ������ �⺻ ���� �±� ���
		obj.sq_SetSoundTagCreatureCommand("MW_CMDPET");
		obj.sq_SetSoundTagLackMp("MW_NOMANA");
		obj.sq_SetSoundTagCoolTime("R_MW_COOLTIME");
		obj.sq_SetSoundTagDie("MW_DIE");
		obj.sq_SetSoundTagBackStepStart("MW_BACK");
		obj.sq_SetSoundTagThrowItem("R_MW_THROW");
		
		
		// ������ ������ ����
		obj.setThrowObjectAnimationIndex(3);
		obj.setThrowObjectZDistance(65);
		obj.setThrowObjectXDistance(45);
		obj.setThrowObjectFrameIndex(1);
	}
	else if (sq_getJob(obj) == ENUM_CHARACTERJOB_CREATOR_MAGE)
	{
		// ������ �⺻ ���� �±� ���
		obj.sq_SetSoundTagCreatureCommand("CR_CMDPET");
		obj.sq_SetSoundTagLackMp("R_CR_NOMANA");
		obj.sq_SetSoundTagCoolTime("R_CR_COOLTIME");
		obj.sq_SetSoundTagDie("R_CR_DIE");
		obj.sq_SetSoundTagBackStepStart("R_CR_JUMP");
		obj.sq_SetSoundTagThrowItem("R_CR_THROW");
	}

	return 0;
}


// ũ�������Ͱ� �����ɶ� �ؾ����ϵ�
function create_CreatorMage(obj)
{
}

// ó�� ĳ���͸� ����Ʈ ������ ȣ��Ǵ� �ݹ��Լ� �Դϴ�.
function onSetCharacter(obj)
{
	print(" onSetCharacter:" + obj + " job:" + sq_getJob(obj));	
	
	if (sq_getJob(obj) == ENUM_CHARACTERJOB_CREATOR_MAGE)
	{
		sq_SetExSkillSlotVisible(false);	
		sq_SetSkillSlotVisible(5, false);
		sq_SetSkillSlotEnable(5, false);
		
		local SKILLICON_START_X = 540;
		local SKILLICON_START_Y = 555;
	
		for (local i = 0; i < 5; i++)
		{	
			sq_SetSkillSlotPos(i, SKILLICON_START_X + (i*36), SKILLICON_START_Y);
		}
	}
	else
	{	
		sq_SetExSkillSlotVisible(true);	
		sq_SetSkillSlotVisible(5, true);
		sq_SetSkillSlotEnable(5, true);
		
		local SKILLICON_START_X = 538;
		local SKILLICON_START_Y = 558;
		
		
		for (local i = 0; i < 6; i++)
		{	
			sq_SetSkillSlotPos(i, SKILLICON_START_X + (i*30), SKILLICON_START_Y);
		}
	}
}



