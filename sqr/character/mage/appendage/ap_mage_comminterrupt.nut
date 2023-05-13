
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_mage_comminterrupt")
}

function proc_appendage_mage_comminterrupt(appendage)
{
	if(!appendage) return;
	mage_comminterrupt(appendage);
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

function mage_comminterrupt(appendage)
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

		EnableSoften(obj,4,22);//ף�
		SetSkillState(obj,4,22,[4]);
		EnableSoften(obj,20,24);//��ӵ
		SetSkillState(obj,20,24,[20]);
		EnableSoften(obj,14,25);//֥����
		SetSkillState(obj,14,25,[0,14,1]);

	switch (type)
	{

		case 1:
		EnableSoften(obj,111,46);//���?��
		SetSkillState(obj,111,46,[0,1]);
		EnableSoften(obj,249,249);//�����ح
		SetSkillState(obj,249,249,[0,1]);
		EnableSoften(obj,250,250);//�������
		SetSkillState(obj,250,250,[0,1,2,3]);
		EnableSoften(obj,251,251);//?�����
		SetSkillState(obj,251,251,[0,1]);
		EnableSoften(obj,253,253);//�׿���
		SetSkillState(obj,253,253,[0,1,2,3]);
		break;

		case 2:

		break;

		case 3:

		EnableSoften(obj,65,26);//�����
		SetSkillState(obj,65,26,[0]);
		EnableSoften(obj,13,24);//��?
		SetSkillState(obj,13,24,[13]);
		EnableSoften(obj,125,51);//�����̪
		SetSkillState(obj,125,51,[0,1]);
		EnableSoften(obj,69,29);//��ף������
		SetSkillState(obj,69,29,[0,1]);
		//EnableSoften(obj,123,50);//��ڣ����
		SetSkillState(obj,123,50,[]);
		//EnableSoften(obj,10,28);//��ڣ?��
		SetSkillState(obj,10,28,[0,1,2]);
		EnableSoften(obj,127,52);//��������
		SetSkillState(obj,127,52,[]);
		EnableSoften(obj,66,27);//׵�����̪
		SetSkillState(obj,66,27,[0,1,2]);
		EnableSoften(obj,68,25);//?�׵����
		SetSkillState(obj,68,25,[0,68]);
		EnableSoften(obj,247,247);//��ڣ���
		SetSkillState(obj,247,247,[0]);
		EnableSoften(obj,117,24);//��ڣ��?
		SetSkillState(obj,117,24,[117,4]);
		EnableSoften(obj,244,244);//��̪��?
		SetSkillState(obj,244,244,[]);
		EnableSoften(obj,242,242);//��ڣ��
		SetSkillState(obj,242,242,[0]);
		EnableSoften(obj,112,47);//׵����֧̪
		SetSkillState(obj,112,47,[0,1,2,3]);
		EnableSoften(obj,243,243);//��������
		SetSkillState(obj,243,243,[0,1,2,3,4,5,6,7]);
		break;

		case 4:
		EnableSoften(obj,92,35);//�����?
		SetSkillState(obj,92,35,[]);
		EnableSoften(obj,95,36);//ܨ������
		SetSkillState(obj,95,36,[1]);
		EnableSoften(obj,115,49);//���������
		SetSkillState(obj,115,49,[1]);
		EnableSoften(obj,133,133);//����������
		SetSkillState(obj,133,133,[0]);
		EnableSoften(obj,98,37);//������
		SetSkillState(obj,98,37,[0,1,2]);
		EnableSoften(obj,114,48);//��ԯ������
		SetSkillState(obj,114,48,[0,1,2,3]);
		break;

	default:
		break;
	}

	return;
}



