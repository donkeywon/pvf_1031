STATE_GUNNER_HUASHI	<- 0
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_gunner_comminterrupt")
}


function sq_AddEffect(appendage)
{

}

function proc_appendage_gunner_comminterrupt(appendage)
{
	if(!appendage) return;
	gunner_comminterrupt(appendage);
}

function EnableSoften(obj,skillindex,state)
{
	if(obj.sq_GetState() == state)//��������������������� �������������������
		return false;
	obj.setSkillCommandEnable(skillindex ,true);//��������������������ʦ����ģ�
		return true;
}

function SetSkillState(obj,skillindex,state,Arr)
{

	local iEnterSkill = obj.sq_IsEnterSkill(skillindex);
	if(iEnterSkill == -1)
	return false;
	local nowstate = obj.sq_GetState()
	if(nowstate == state)//��������������������� �������������������
	return false;
	if(obj.sq_IsUseSkill(skillindex))//��Ө������������ʦ�ģ�cd ���������죩
	{
		if(nowstate == 19 || nowstate == 8 || nowstate == 24 || nowstate == 37 || nowstate == 41 || nowstate == 33 || nowstate == 58 || nowstate == 236 ||nowstate == 237 ||nowstate == 238 ||nowstate == 240  	)
		gunner_skill_huashi(obj);
		obj.sq_IntVectClear();//?����ᣨ������
		if(Arr.len() < 1)//�����������������1
		{
			obj.sq_AddSetStatePacket(state,STATE_PRIORITY_USER,true);
			return true;
		}
		else
		{
			foreach(sub in Arr)//���������Arr�����������sub��������������
			obj.sq_IntVectPush(sub);//���������sub 
			obj.sq_AddSetStatePacket(state,STATE_PRIORITY_USER,true);//������������
			return true;
		}
	}

}

function gunner_skill_huashi(obj)
{
	if(STATE_GUNNER_HUASHI < 5)
	STATE_GUNNER_HUASHI++;
	sq_SetMyShake(obj,8,50);//���� ������������
	local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_GUNNER_HUASHI, false,"character/gunner/appendage/ap_gunner_huashi.nut", false);
	local skill_level = sq_GetSkillLevel(obj, SKILL_GUNNER_HUASHI);
	appendage.sq_SetValidTime(sq_GetLevelData(obj, SKILL_GUNNER_HUASHI, 6, skill_level));//ap������� BUFF������ࡣ
	if(appendage && skill_level > 0)
		{
		//����buff����
		appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_GUNNER_HUASHI, skill_level);
		CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, SKILL_GUNNER_HUASHI, true);
		}

}


function gunner_comminterrupt(appendage)
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
		if(isTower) return;//��������������������
		if(mystate == 3||mystate == 4||mystate == 5||mystate == 16) return;



	EnableSoften(obj,3,19);				//����?
	SetSkillState(obj,3,19,[0,3]);
	EnableSoften(obj,47,8);				//ݩ����
	SetSkillState(obj,47,8,[0]);
	EnableSoften(obj,6,21);				//����
	SetSkillState(obj,6,21,[0]);
	EnableSoften(obj,4,20);				//���
	SetSkillState(obj,4,20,[4]);
	EnableSoften(obj,14,20);			//BBQ
	SetSkillState(obj,14,20,[14]);

	switch (type)
	{
	
		case 1://ؼ��
		EnableSoften(obj,5,8);			//������̪
		if(mystate == 6)	
 		SetSkillState(obj,5,169,[1,5,0]);
			else			
		 SetSkillState(obj,5,8,[1,5,0]);
		EnableSoften(obj,20,8);			//������̪
		 SetSkillState(obj,20,8,[1,20,0]);
		EnableSoften(obj,9,24);			//կ��
		 SetSkillState(obj,9,24,[15,1,0,100]);
		EnableSoften(obj,72,37);			//��������
		 SetSkillState(obj,72,37,[0,0]);
		EnableSoften(obj,72,37);			//��������
		 SetSkillState(obj,72,37,[0,0]);
		EnableSoften(obj,51,41);			//�������
		 SetSkillState(obj,51,41,[0,1,4]);
		EnableSoften(obj,64,33);			//?������
		 SetSkillState(obj,64,33,[0]);
		EnableSoften(obj,104,58);			//п����������
		 SetSkillState(obj,104,58,[1,97]);
		EnableSoften(obj,236,236);			//�������
		 SetSkillState(obj,236,236,[0]);
		EnableSoften(obj,237,237);			//��߯
		 SetSkillState(obj,237,237,[0]);
		EnableSoften(obj,238,238);			//�����̪
		 SetSkillState(obj,238,238,[0]);
		 EnableSoften(obj,239,239);			//��������
		 SetSkillState(obj,239,239,[0]);
		EnableSoften(obj,240,240);			//�������
		 SetSkillState(obj,240,240,[0]);
	if(STATE_GUNNER_HUASHI > 0)
	{
		local isAppend = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/gunner/appendage/ap_gunner_huashi.nut");
		if(isAppend == false)
		{
				STATE_GUNNER_HUASHI = 0;
		}
	}
		break;

		case 2://����
		EnableSoften(obj,39,26);			//?��? �������� ۡ��������������?30
		SetSkillState(obj,39,26,[39,0,1,600]);
		EnableSoften(obj,38,26);			//״��ۡ����
		SetSkillState(obj,38,26,[38,0,1]);
		EnableSoften(obj,75,26);			//���?
		SetSkillState(obj,75,26,[75,0,1]);
		EnableSoften(obj,40,26);			//����к? �������� ۡ��������������?30
		SetSkillState(obj,40,26,[40,0,0]);
		EnableSoften(obj,234,234);			//�����ۡ����
		SetSkillState(obj,234,234,[0,1,2]);
		EnableSoften(obj,108,26);			//SW���?
		SetSkillState(obj,108,26,[108,0,1]);
		EnableSoften(obj,232,232);			//MSC-7
		SetSkillState(obj,232,232,[0,1]);
		EnableSoften(obj,235,235);			//?������
		SetSkillState(obj,235,235,[0,1,2,3]);
		EnableSoften(obj,71,36);			//�������?
		SetSkillState(obj,71,36,[0,2]);
		break;

		case 3://Ѧ����
		break;

		case 4://�����ʫ
		EnableSoften(obj,244,244);			//������ ���������
		SetSkillState(obj,244,244,[]);
		EnableSoften(obj,245,245);			//���������� ���������
		SetSkillState(obj,245,245,[]);
		EnableSoften(obj,241,241);			//����������
		SetSkillState(obj,241,241,[0,1,2]);
		EnableSoften(obj,48,31);			//�����̪ ���������
		SetSkillState(obj,48,31,[]);
		EnableSoften(obj,109,59);			//��֮��̪
		SetSkillState(obj,109,59,[0,1,4]);
		EnableSoften(obj,53,8);			//��֭��
		SetSkillState(obj,53,8,[1,53,1]);
		EnableSoften(obj,78,13);			//�����̪
		SetSkillState(obj,78,13,[1]);
		break;

	default:
		break;
	}



	return;

}









