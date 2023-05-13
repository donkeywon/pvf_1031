
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_atfighter_comminterrupt")
}

function proc_appendage_atfighter_comminterrupt(appendage)
{
	if(!appendage) return;
	atfighter_comminterrupt(appendage);
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

function atfighter_comminterrupt(appendage)
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

		EnableSoften(obj,5,30);//��?
		SetSkillState(obj,5,30,[]);
		EnableSoften(obj,46,44);//��?
		SetSkillState(obj,46,44,[]);
		EnableSoften(obj,6,21);//��ӫ?
		SetSkillState(obj,6,21,[6]);
		EnableSoften(obj,9,22);//�̪
		SetSkillState(obj,9,22,[9]);
		//EnableSoften(obj,17,28);//���� ������������ ����������cd���������
		SetSkillState(obj,17,28,[]);
		EnableSoften(obj,108,59);//����
		SetSkillState(obj,108,59,[]);
		EnableSoften(obj,2,19);//?��
		SetSkillState(obj,2,19,[]);
		EnableSoften(obj,86,52);//��˧��
		SetSkillState(obj,86,52,[4]);
		EnableSoften(obj,13,63);//?��
		SetSkillState(obj,13,63,[0]);
		EnableSoften(obj,58,34);//������
		SetSkillState(obj,58,34,[]);

	switch (type)
	{

		case 1:
		EnableSoften(obj,111,65);//ҷѨ��� �
		SetSkillState(obj,111,65,[0,1]);
		EnableSoften(obj,15,13);//������
		SetSkillState(obj,15,13,[0,0,15,300,350,2,4,4]);
		EnableSoften(obj,90,56);//ҷ� �������
		SetSkillState(obj,90,56,[]);
		EnableSoften(obj,117,66);//ҷѨ����
		SetSkillState(obj,117,66,[]);
		EnableSoften(obj,220,220);//����բ��̪
		SetSkillState(obj,220,220,[0,1]);
		EnableSoften(obj,120,70);//����ҷѨ��
		SetSkillState(obj,120,70,[]);
		EnableSoften(obj,221,221);//����ҷѨ��
		SetSkillState(obj,221,221,[0,1,2]);
		EnableSoften(obj,67,45);//ҷ� ������������
		SetSkillState(obj,67,45,[0,1,2]);
		EnableSoften(obj,222,222);//��������
		SetSkillState(obj,222,222,[0,1,2,3]);
		break;

		case 2:
		EnableSoften(obj,80,47);//?̪
		SetSkillState(obj,80,47,[]);
		EnableSoften(obj,4,21);//����
		SetSkillState(obj,4,21,[4,0]);
		EnableSoften(obj,1,43);//��ߣ?
		SetSkillState(obj,1,43,[]);
		EnableSoften(obj,83,50);//����������
		SetSkillState(obj,83,50,[0,1,2]);
		EnableSoften(obj,124,72);//ܤ��߲��?
		SetSkillState(obj,124,72,[]);
		EnableSoften(obj,122,67);//��������?
		SetSkillState(obj,122,67,[]);
		EnableSoften(obj,19,29);//���
		SetSkillState(obj,19,29,[]);
		EnableSoften(obj,68,38);//�������
		SetSkillState(obj,68,38,[0,4]);
		EnableSoften(obj,82,49);//���֧��?
		SetSkillState(obj,82,49,[3]);
		EnableSoften(obj,223,223);//֭��??
		SetSkillState(obj,223,223,[0,1]);
		EnableSoften(obj,224,224);//֭��?��
		SetSkillState(obj,224,224,[0,1,2,3,4]);
		EnableSoften(obj,225,225);//п��?��?
		SetSkillState(obj,225,225,[0,1,2]);
		break;

		case 3:
		EnableSoften(obj,3,31);//������
		SetSkillState(obj,3,31,[0,1,2,0]);
		EnableSoften(obj,106,58);//բ����?
		SetSkillState(obj,106,58,[99,100,101]);
		EnableSoften(obj,76,41);//Ը������
		SetSkillState(obj,76,41,[]);
		EnableSoften(obj,77,42);//��������
		SetSkillState(obj,77,42,[0,1]);
		EnableSoften(obj,105,60);//�����֮
		SetSkillState(obj,105,60,[0,1,2]);
		EnableSoften(obj,119,71);//������Ϲ
		SetSkillState(obj,119,71,[]);
		EnableSoften(obj,123,68);//����կ��
		SetSkillState(obj,123,68,[0,1,2,35]);
		EnableSoften(obj,226,226);//��ʶ��٤��
		SetSkillState(obj,226,226,[0,66]);
		EnableSoften(obj,227,227);//ޫ�����
		SetSkillState(obj,227,227,[0]);
		EnableSoften(obj,228,228);//��������?
		SetSkillState(obj,228,228,[0,1,2,3]);
		break;

		case 4:
		EnableSoften(obj,49,22);//?��
		SetSkillState(obj,49,22,[49,0,1,1,4]);
		EnableSoften(obj,87,53);//ܤ����?
		SetSkillState(obj,87,53,[0,1,2]);
		EnableSoften(obj,81,48);//���
		SetSkillState(obj,81,48,[]);
		EnableSoften(obj,54,33);//�������
		SetSkillState(obj,54,33,[0,1,54,53]);
		EnableSoften(obj,18,22);//ݩ������?
		SetSkillState(obj,18,22,[18]);
		EnableSoften(obj,89,22);//��������
		SetSkillState(obj,89,22,[89]);
		//EnableSoften(obj,88,54);//֮�����
		SetSkillState(obj,88,54,[0,1,2]);
		EnableSoften(obj,63,22);//��������
		SetSkillState(obj,63,22,[63,0,1,2,3,4,5,6,7]);
		EnableSoften(obj,118,69);//������̪
		SetSkillState(obj,118,69,[0,1,2]);
		EnableSoften(obj,121,73);//��֥��
		SetSkillState(obj,121,73,[0,1,2,3,4,5]);
		EnableSoften(obj,229,229);//��������
		SetSkillState(obj,229,229,[0,2]);
		EnableSoften(obj,230,230);//�������
		SetSkillState(obj,230,230,[0,1,4,5,6,7]);
		//EnableSoften(obj,231,231);//п��������
		SetSkillState(obj,231,231,[0,3,5,6,7,9,10,12]);
		break;

	default:
		break;
	}

	return;

}



