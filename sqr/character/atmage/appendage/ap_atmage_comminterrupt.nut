
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_atmage_comminterrupt")
}

function proc_appendage_atmage_comminterrupt(appendage)
{
	if(!appendage) return;
	atmage_comminterrupt(appendage);
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

function atmage_comminterrupt(appendage)
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

		EnableSoften(obj,1,20);//ت������
		SetSkillState(obj,1,20,[]);
		EnableSoften(obj,17,36);//������
		SetSkillState(obj,17,36,[0,1,2]);
		EnableSoften(obj,26,43);//ت��?Ϲ
		SetSkillState(obj,26,43,[]);
		//EnableSoften(obj,25,50);//ت��֧��
		SetSkillState(obj,25,50,[4,1023,253,0]);
		EnableSoften(obj,20,39);//����
		SetSkillState(obj,20,39,[0,1]);
		EnableSoften(obj,27,47);//������
		SetSkillState(obj,27,47,[0,1,2]);


	switch (type)
	{

		case 1:
		EnableSoften(obj,8,27);//?����
		SetSkillState(obj,8,27,[]);
		EnableSoften(obj,3,21);//?����
		SetSkillState(obj,3,21,[]);
		EnableSoften(obj,6,24);//���
		SetSkillState(obj,6,24,[0,1]);
		EnableSoften(obj,2,25);//����?
		SetSkillState(obj,2,25,[0,1,2]);
		EnableSoften(obj,4,23);//�������
		SetSkillState(obj,4,23,[0,1]);
		EnableSoften(obj,11,30);//������
		SetSkillState(obj,11,30,[5,0,1,2]);
		EnableSoften(obj,14,33);//?�����
		SetSkillState(obj,14,33,[]);
		EnableSoften(obj,29,46);//����?�
		SetSkillState(obj,29,46,[]);
		EnableSoften(obj,24,42);//�������
		SetSkillState(obj,24,42,[5,0]);
		EnableSoften(obj,30,49);//�������
		SetSkillState(obj,30,49,[0,1,2,3,0,4]);
		EnableSoften(obj,49,54);//��ت�����
		SetSkillState(obj,49,54,[0,0,1,2,3,4,5,6,7]);
		EnableSoften(obj,61,61);//�������Ϲ
		SetSkillState(obj,61,61,[]);
		EnableSoften(obj,243,243);//������
		SetSkillState(obj,243,243,[0]);
		EnableSoften(obj,62,62);//�������
		SetSkillState(obj,62,62,[0]);
		EnableSoften(obj,244,244);//����ت?
		SetSkillState(obj,244,244,[0,1,2]);
		//EnableSoften(obj,245,245);//�������� ����������obj����̿��
		//SetSkillState(obj,245,245,[0,1,2]);
		break;

		case 2:
		EnableSoften(obj,8,27);//?����
		SetSkillState(obj,8,27,[]);
		EnableSoften(obj,21,40);//��?֧��
		SetSkillState(obj,21,40,[0,1,2]);
		EnableSoften(obj,23,41);//?������
		SetSkillState(obj,23,41,[0,1]);
		EnableSoften(obj,16,35);//?������
		SetSkillState(obj,16,35,[0,1]);
		EnableSoften(obj,10,29);//��?ޫ��
		SetSkillState(obj,10,29,[]);
		EnableSoften(obj,15,34);//��?����
		SetSkillState(obj,15,34,[0,1,2,3]);
		EnableSoften(obj,12,31);//?����̪
		SetSkillState(obj,12,31,[0,1,2]);
		EnableSoften(obj,13,32);//?ף����
		SetSkillState(obj,13,32,[0,1,2,3]);
		EnableSoften(obj,48,53);//��Ҵ��?��
		SetSkillState(obj,48,53,[0,1,2,3,1]);
		EnableSoften(obj,60,60);//?����
		SetSkillState(obj,60,60,[]);
		EnableSoften(obj,63,63);//����?��
		SetSkillState(obj,63,63,[]);
		EnableSoften(obj,246,246);//��?��
		SetSkillState(obj,246,246,[0]);
		EnableSoften(obj,247,247);//п?���
		SetSkillState(obj,247,247,[0,1]);
		EnableSoften(obj,248,248);//��?�
		SetSkillState(obj,248,248,[0,1]);
		break;

	default:
		break;
	}

	return;
}



