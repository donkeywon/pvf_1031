
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_fighter_comminterrupt")
}

function proc_appendage_fighter_comminterrupt(appendage)
{
	if(!appendage) return;
	fighter_comminterrupt(appendage);
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

function fighter_comminterrupt(appendage)
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

		EnableSoften(obj,46,48);//��?
		SetSkillState(obj,46,48,[]);
		EnableSoften(obj,6,21);//��ӫ?
		SetSkillState(obj,6,21,[6]);
		EnableSoften(obj,9,22);//��?
		SetSkillState(obj,9,22,[9]);
		EnableSoften(obj,86,56);//��˧��
		SetSkillState(obj,86,56,[4]);
		EnableSoften(obj,13,13);//?��
		SetSkillState(obj,13,13,[0,0,13,150,300,0,2,2]);
		//EnableSoften(obj,17,28);//���� ������������ �����������cd
		SetSkillState(obj,17,28,[]);
		EnableSoften(obj,58,34);//����?
		SetSkillState(obj,58,34,[]);
		EnableSoften(obj,2,19);//?��
		SetSkillState(obj,2,19,[]);

	switch (type)
	{

		case 1:
		EnableSoften(obj,90,60);//ҷ� ��ף����
		SetSkillState(obj,90,60,[]);
		EnableSoften(obj,67,49);//��֥��ۯ
		SetSkillState(obj,67,49,[]);
		EnableSoften(obj,225,225);//������
		SetSkillState(obj,225,225,[0,1,2,3,4]);
		EnableSoften(obj,226,226);//������
		SetSkillState(obj,226,226,[0,1,2,3,4]);
		EnableSoften(obj,227,227);//����ҷѨ?
		SetSkillState(obj,227,227,[0,1,2]);
		EnableSoften(obj,228,228);//ҷ�������
		SetSkillState(obj,228,228,[0,1,2,29]);
		break;

		case 2:
		EnableSoften(obj,80,51);//����
		SetSkillState(obj,80,51,[]);
		EnableSoften(obj,4,21);//����
		SetSkillState(obj,4,21,[4]);
		EnableSoften(obj,68,42);//�������
		SetSkillState(obj,68,42,[0,1,2,3,4,5,6,7,8,9,10]);
		EnableSoften(obj,82,53);//���֧��?
		SetSkillState(obj,82,53,[0,1,2]);
		EnableSoften(obj,19,29);//����
		SetSkillState(obj,19,29,[]);
		EnableSoften(obj,83,54);//�ף��
		SetSkillState(obj,83,54,[0,1]);
		EnableSoften(obj,103,66);//�ף?��
		SetSkillState(obj,103,66,[0,1]);
		EnableSoften(obj,102,65);//������
		SetSkillState(obj,102,65,[]);
		EnableSoften(obj,71,61);//����??
		SetSkillState(obj,71,61,[0,1,2]);
		EnableSoften(obj,229,229);//����֧��̪
		SetSkillState(obj,229,229,[0,1]);
		EnableSoften(obj,230,230);//�������
		SetSkillState(obj,230,230,[0,1,2]);
		EnableSoften(obj,231,231);//���?
		SetSkillState(obj,231,231,[0,1,2]);
		EnableSoften(obj,232,232);//?��Ө����
		SetSkillState(obj,232,232,[0,1,2]);
		break;

		case 3:
		EnableSoften(obj,3,31);//������
		SetSkillState(obj,3,31,[0,1,0]);
		EnableSoften(obj,75,44);//Ը���
		SetSkillState(obj,75,44,[]);
		EnableSoften(obj,60,35);//?�
		SetSkillState(obj,60,35,[]);
		EnableSoften(obj,14,26);//����?����
		SetSkillState(obj,14,26,[]);
		EnableSoften(obj,53,43);//����
		SetSkillState(obj,53,43,[]);
		EnableSoften(obj,106,69);//֮�ޫ��
		SetSkillState(obj,106,69,[94,95]);
		EnableSoften(obj,77,46);//ʶ������
		SetSkillState(obj,77,46,[25]);
		//EnableSoften(obj,64,40);//����Ը�� ���������ۯ������
		SetSkillState(obj,64,40,[]);
		EnableSoften(obj,99,62);//��Ը������
		SetSkillState(obj,99,62,[0,1,529,40725,0]);
		EnableSoften(obj,104,67);//����?֮
		SetSkillState(obj,104,67,[0,1,2]);
		//EnableSoften(obj,236,236);//���� ؿԸ����
		SetSkillState(obj,236,236,[0,1,80,4]);
		EnableSoften(obj,234,234);//Ըף������
		SetSkillState(obj,234,234,[0,1,2,3,4]);

		break;

		case 4:
		//EnableSoften(obj,49,22);//?��
		SetSkillState(obj,49,22,[49]);
		EnableSoften(obj,81,52);//���
		SetSkillState(obj,81,52,[]);
		EnableSoften(obj,54,33);//�������
		SetSkillState(obj,54,33,[0,54]);
		EnableSoften(obj,87,57);//ܤ��?̪
		SetSkillState(obj,87,57,[0,1,2]);
		EnableSoften(obj,88,58);//֮�����
		SetSkillState(obj,88,58,[0,1,2]);
		EnableSoften(obj,18,22);//բ������ժ
		SetSkillState(obj,18,22,[18]);
		EnableSoften(obj,89,22);//����վ
		SetSkillState(obj,89,22,[89]);
		EnableSoften(obj,63,22);//��������
		SetSkillState(obj,63,22,[63]);
		EnableSoften(obj,105,22);//������վ
		SetSkillState(obj,105,22,[105]);
		EnableSoften(obj,237,237);//������վ
		SetSkillState(obj,237,237,[0,1,2]);
		EnableSoften(obj,238,238);//��������
		SetSkillState(obj,238,238,[0,2,4,3]);
		//EnableSoften(obj,239,239);//��������ժ ����������?����?�
		//SetSkillState(obj,239,239,[0,1,2,4,3,5]);
		break;

	default:
		break;
	}

	return;
}



