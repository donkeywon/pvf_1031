
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_thief_comminterrupt")
}

function proc_appendage_thief_comminterrupt(appendage)
{
	if(!appendage) return;
	thief_comminterrupt(appendage);
}

function EnableSoften(obj,skillindex,state)
{
	if(obj.sq_GetState() == state)				//��������������������� �������������������
		return false;
	obj.setSkillCommandEnable(skillindex ,true);		//��������������������ʦ����ģ�
		return true;
}

function SetSkillState(obj,skillindex,state,Arr)
{

	local iEnterSkill = obj.sq_IsEnterSkill(skillindex);
	if (iEnterSkill == -1)
		return false;
	if(obj.sq_GetState() == state)				//��������������������� �������������������
		return false;
	if(obj.sq_IsUseSkill(skillindex))				//��Ө������������ʦ�ģ�cd ���������죩
	{
		obj.sq_IntVectClear();			//?����ᣨ������
		if(Arr.len() < 1)				//�����������������1
		{
			obj.sq_AddSetStatePacket(state,STATE_PRIORITY_USER,true);
			return true;
		}
		else
		{	
			foreach(sub in Arr)				//���������Arr�����������sub��������������
				obj.sq_IntVectPush(sub);		//����������sub 
			obj.sq_AddSetStatePacket(state,STATE_PRIORITY_USER,true);	//������������
			return true;
		}
	}

}

function thief_comminterrupt(appendage)
{

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
	if(!sourceObj || !parentObj) 
	{
		appendage.setValid(false);
		return;
	}
	local obj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	local type = sq_getGrowType(obj);

		local mystate = obj.sq_GetState();
		local isTower = sq_IsTowerDungeon();//��������������������
		// if(isTower) return;//��������������������
		if(mystate == 3||mystate == 4||mystate == 5||mystate == 9||mystate == 16) return;

		EnableSoften(obj,24,47);//�����
		SetSkillState(obj,24,47,[]);
		EnableSoften(obj,5,24);//����
		SetSkillState(obj,5,24,[]);
		EnableSoften(obj,21,46);//������
		SetSkillState(obj,21,46,[0]);
		EnableSoften(obj,7,26);//��
		SetSkillState(obj,7,26,[12]);
		EnableSoften(obj,25,50);//�����
		SetSkillState(obj,25,50,[]);
		EnableSoften(obj,3,22);//������
		SetSkillState(obj,3,22,[3,0,1]);
		EnableSoften(obj,26,51);//��?
		SetSkillState(obj,26,51,[]);
		EnableSoften(obj,23,53);//��?���
		SetSkillState(obj,23,53,[0,1]);
		//EnableSoften(obj,4,23);//������
		SetSkillState(obj,4,23,[4]);
		EnableSoften(obj,8,27);//����
		SetSkillState(obj,8,27,[14]);
		EnableSoften(obj,6,25);//ޫ�
		SetSkillState(obj,6,25,[10]);

	switch (type)
	{

		case 1:
		EnableSoften(obj,27,52);//�������
		SetSkillState(obj,27,52,[0,1,2]);
		EnableSoften(obj,16,31);//?߯��
		SetSkillState(obj,16,31,[]);
		EnableSoften(obj,41,34);//����
		SetSkillState(obj,41,34,[26]);
		//EnableSoften(obj,31,54);//��������
		SetSkillState(obj,31,54,[1,0]);
		EnableSoften(obj,47,38);//?٤���߯
		SetSkillState(obj,47,38,[40,1]);
		EnableSoften(obj,44,36);//����
		SetSkillState(obj,44,36,[]);
		EnableSoften(obj,19,33);//����
		SetSkillState(obj,19,33,[]);
		EnableSoften(obj,33,56);//բ������
		SetSkillState(obj,33,56,[0,1]);
		//EnableSoften(obj,45,37);//�������
		SetSkillState(obj,45,37,[32]);
		EnableSoften(obj,34,57);//����կ��
		SetSkillState(obj,34,57,[0]);
		EnableSoften(obj,76,66);//������̪
		SetSkillState(obj,76,66,[116,117,118,119]);
		EnableSoften(obj,75,65);//�ժբ����
		SetSkillState(obj,75,65,[0,1,2,3]);
		EnableSoften(obj,220,220);//կ��߯
		SetSkillState(obj,220,220,[0,2,0]);
		EnableSoften(obj,221,221);//������
		SetSkillState(obj,221,221,[0,1,2]);
		EnableSoften(obj,222,222);//�����̤
		SetSkillState(obj,222,222,[1,2,3,4,5]);
		break;

		case 2:
		EnableSoften(obj,35,58);//��������
		SetSkillState(obj,35,58,[]);
		EnableSoften(obj,49,40);//�������
		SetSkillState(obj,49,40,[]);
		EnableSoften(obj,36,59);//��С���
		SetSkillState(obj,36,59,[0]);
		EnableSoften(obj,74,64);//��������
		SetSkillState(obj,74,64,[]);
		break;

	default:
		break;
	}

	return;
}



