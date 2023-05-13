STATE_FFRENZY 	<- 0		//��Ө������������ܨ��


function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_swordman_comminterrupt")
}

function proc_appendage_swordman_comminterrupt(appendage)
{
	if(!appendage) return;
	swordman_comminterrupt(appendage);
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

function swordman_comminterrupt(appendage)
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
		if(mystate == 3||mystate == 4||mystate == 5||mystate == 9||mystate == 16||mystate == 236) return;

		EnableSoften(obj,5,20);//С��
		SetSkillState(obj,5,20,[0,0]);
		EnableSoften(obj,65,36);//��ߣ̪
		SetSkillState(obj,65,36,[0]);
		EnableSoften(obj,58,32);//֮����
		SetSkillState(obj,58,32,[0]);
		EnableSoften(obj,64,35);//�����
		SetSkillState(obj,64,35,[]);
		EnableSoften(obj,77,42);//������
		SetSkillState(obj,77,42,[0]);
		EnableSoften(obj,20,24);//�֮ ������
		SetSkillState(obj,20,24,[20]);
		//EnableSoften(obj,16,25);//����ժ��
		//SetSkillState(obj,16,25,[]);
	switch (type)
	{

		case 1:
		EnableSoften(obj,67,8);//��С����
		SetSkillState(obj,67,8,[0,67]);
		EnableSoften(obj,68,37);//�����ף̪
		SetSkillState(obj,68,37,[0,0]);
		EnableSoften(obj,9,23);//������
		SetSkillState(obj,9,23,[0,0]);
		EnableSoften(obj,72,39);//��ףӨ����
		SetSkillState(obj,72,39,[0,1]);
		EnableSoften(obj,73,40);//�������
		SetSkillState(obj,73,40,[0]);
		EnableSoften(obj,97,56);//����������
		SetSkillState(obj,97,56,[0]);
		//EnableSoften(obj,105,61);//׵��
		//SetSkillState(obj,105,61,[0,104]);
		if(mystate == 63 || mystate == 62)//��׵����
		{
		//EnableSoften(obj,107,62);//׵����
		//SetSkillState(obj,107,62,[0,61]);
		//EnableSoften(obj,108,63);//׵���
		//SetSkillState(obj,108,63,[0,61,62,104,0]);
		EnableSoften(obj,109,64);//׵���
		SetSkillState(obj,109,64,[0,6,61]);
		}
		EnableSoften(obj,236,236);//����
		SetSkillState(obj,236,236,[0]);
		EnableSoften(obj,235,235);//׵��ժ
		SetSkillState(obj,235,235,[0,5]);
		EnableSoften(obj,234,234);//������
		SetSkillState(obj,234,234,[0,5]);
		break;

		case 2:
		EnableSoften(obj,112,66);//С�߲����
		SetSkillState(obj,112,66,[]);
		EnableSoften(obj,111,65);//С���
		SetSkillState(obj,111,65,[]);
		EnableSoften(obj,60,33);//С���
		SetSkillState(obj,60,33,[0]);
		EnableSoften(obj,95,55);//����߲?��
		SetSkillState(obj,95,55,[]);
		EnableSoften(obj,87,50);//������
		SetSkillState(obj,87,50,[0]);
		EnableSoften(obj,237,237);//С�� ����
		SetSkillState(obj,237,237,[0]);
		EnableSoften(obj,238,238);//С�� ֡�
		SetSkillState(obj,238,238,[]);
		EnableSoften(obj,239,239);//������������
		SetSkillState(obj,239,239,[]);
		EnableSoften(obj,247,247);//٢����
		SetSkillState(obj,247,247,[]);
		EnableSoften(obj,240,240);//����˽�� ��
		SetSkillState(obj,240,240,[0]);
		EnableSoften(obj,241,241);//������ֵ ��̫˽��
		SetSkillState(obj,241,241,[]);

		break;

		case 3:
		EnableSoften(obj,232,232);//��������
		SetSkillState(obj,232,232,[0]);
		EnableSoften(obj,233,233);//��������
		SetSkillState(obj,233,233,[0]);
		EnableSoften(obj,31,26);//�������
		SetSkillState(obj,31,26,[0,31]);
		EnableSoften(obj,102,26);//�������
		SetSkillState(obj,102,26,[0,102]);
		EnableSoften(obj,229,229);//����
		SetSkillState(obj,229,229,[]);
		EnableSoften(obj,245,245);//��٤���
		SetSkillState(obj,245,245,[0]);
		EnableSoften(obj,231,231);//��ت?��
		SetSkillState(obj,231,231,[0]);
		if(obj.sq_IsEnterSkill(76) != -1)//������������
		{
		if(STATE_FFRENZY == 0)
		{STATE_FFRENZY=1;}
		else if(STATE_FFRENZY == 1)
		{STATE_FFRENZY=0;}
		}
		if(STATE_FFRENZY)
		{
		EnableSoften(obj,79,43);//������ت��
		EnableSoften(obj,103,60);//��Ѩ����
		EnableSoften(obj,81,45);//��ߣ֮���
		SetSkillState(obj,79,43,[0]);//������ت��
		SetSkillState(obj,103,60,[102]);//��Ѩ����
		SetSkillState(obj,81,45,[0,1]);//��ߣ֮���
		}
		break;

		case 4:

		break;

	default:
		break;
	}

	return;

}



