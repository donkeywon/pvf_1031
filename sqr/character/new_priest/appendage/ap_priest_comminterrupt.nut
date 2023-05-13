
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_priest_comminterrupt")
}

function proc_appendage_priest_comminterrupt(appendage)
{
	if(!appendage) return;
	priest_comminterrupt(appendage);
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

function priest_comminterrupt(appendage)
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

		EnableSoften(obj,8,25);//���
		SetSkillState(obj,8,25,[0]);
		EnableSoften(obj,43,36);//��������
		SetSkillState(obj,43,36,[]);
		EnableSoften(obj,11,26);//ժ����
		SetSkillState(obj,11,26,[]);


	switch (type)
	{

		case 1:
		EnableSoften(obj,73,40);//�������
		SetSkillState(obj,73,40,[0]);
		EnableSoften(obj,27,39);//?������
		SetSkillState(obj,27,39,[]);
		EnableSoften(obj,246,246);//?������
		SetSkillState(obj,246,246,[0,1]);
		EnableSoften(obj,74,41);//��������
		SetSkillState(obj,74,41,[]);
		EnableSoften(obj,84,47);//��?����
		SetSkillState(obj,84,47,[0,1]);
		EnableSoften(obj,247,247);//?�����
		SetSkillState(obj,247,247,[0,1]);
		EnableSoften(obj,248,248);//?��̿ͣ
		SetSkillState(obj,248,248,[0,1]);
		EnableSoften(obj,249,249);//��?����
		SetSkillState(obj,249,249,[]);
		EnableSoften(obj,251,251);//��������
		SetSkillState(obj,251,251,[0,1,2,3,4,5]);
		break;

		case 2:
		EnableSoften(obj,76,43);//?����̪
		SetSkillState(obj,76,43,[]);
		EnableSoften(obj,77,44);//����
		SetSkillState(obj,77,44,[0,1]);
		EnableSoften(obj,31,32);//?��֧̪
		SetSkillState(obj,31,32,[]);
		EnableSoften(obj,78,45);//������̪
		SetSkillState(obj,78,45,[0,1]);
		EnableSoften(obj,75,42);//��?������
		SetSkillState(obj,75,42,[]);
		EnableSoften(obj,4,37);//п��?����
		SetSkillState(obj,4,37,[0,1]);
		EnableSoften(obj,90,50);//������̪
		SetSkillState(obj,90,50,[0,1,0,2,0,3,0,4,0]);
		EnableSoften(obj,103,54);//������̪
		SetSkillState(obj,103,54,[73,75]);
		EnableSoften(obj,104,55);//����������
		SetSkillState(obj,104,55,[]);
		EnableSoften(obj,242,242);//�����̪
		SetSkillState(obj,242,242,[0,1,2]);
		EnableSoften(obj,243,243);//��������
		SetSkillState(obj,243,243,[0,1]);
		EnableSoften(obj,244,244);//������
		SetSkillState(obj,244,244,[0,1,2]);
		EnableSoften(obj,245,245);//��������
		SetSkillState(obj,245,245,[0]);
		break;

		case 3:
		EnableSoften(obj,111,58);//Ө����̪
		SetSkillState(obj,111,58,[]);
		EnableSoften(obj,41,35);//��ժ��
		SetSkillState(obj,41,35,[0]);
		EnableSoften(obj,50,38);//������
		SetSkillState(obj,50,38,[0,3,0]);
		EnableSoften(obj,5,23);//����������
		SetSkillState(obj,5,23,[0,1,2,100]);
		EnableSoften(obj,85,48);//������
		SetSkillState(obj,85,48,[0,1]);
		EnableSoften(obj,49,24);//��կ��̪
		SetSkillState(obj,49,24,[0,1,4]);
		EnableSoften(obj,100,53);//�������
		SetSkillState(obj,100,53,[0,1]);
		EnableSoften(obj,88,49);//���̪
		SetSkillState(obj,88,49,[]);
		EnableSoften(obj,105,56);//������̪
		SetSkillState(obj,105,56,[0,1,4,2]);
		EnableSoften(obj,239,239);//�ף��߯
		SetSkillState(obj,239,239,[0,1,2,3,4,5,6]);
		EnableSoften(obj,237,237);//����ݬ
		SetSkillState(obj,237,237,[]);
		EnableSoften(obj,240,240);//�����
		SetSkillState(obj,240,240,[0,1,2]);
		EnableSoften(obj,238,238);//����������
		SetSkillState(obj,238,238,[0,1]);
		//EnableSoften(obj,241,241);//?ף����
		SetSkillState(obj,241,241,[0,1]);
		break;

		case 4:
		EnableSoften(obj,124,70);//�������
		SetSkillState(obj,124,70,[0,1,2,3,4,1,5]);
		EnableSoften(obj,113,61);//����ޫ֯
		SetSkillState(obj,113,61,[0,1,1,1,2,1]);
		EnableSoften(obj,118,66);//֮�?
		SetSkillState(obj,118,66,[0]);
		EnableSoften(obj,116,63);//��������
		SetSkillState(obj,116,63,[2,2]);
		EnableSoften(obj,115,64);//�������
		SetSkillState(obj,115,64,[0,2,2,1,2,0,3]);
		EnableSoften(obj,117,65);//��������
		SetSkillState(obj,117,65,[]);
		EnableSoften(obj,125,71);//��������
		SetSkillState(obj,125,71,[0]);
		EnableSoften(obj,135,135);//��ت����
		SetSkillState(obj,135,135,[0]);
		EnableSoften(obj,132,132);//��ت����
		SetSkillState(obj,132,132,[0]);
		EnableSoften(obj,120,68);//����
		SetSkillState(obj,120,68,[0,2,3,4]);
		EnableSoften(obj,133,73);//����ڦ
		SetSkillState(obj,133,73,[0,1]);
		EnableSoften(obj,136,136);//��������
		SetSkillState(obj,136,136,[0,2]);
		EnableSoften(obj,134,74);//������̤
		SetSkillState(obj,134,74,[0,1,2,1,3,1,4,1]);
		EnableSoften(obj,137,137);//?��?̪
		SetSkillState(obj,137,137,[0]);
		EnableSoften(obj,138,138);//��������
		SetSkillState(obj,138,138,[0,0]);
		break;

	default:
		break;
	}

	return;
}



