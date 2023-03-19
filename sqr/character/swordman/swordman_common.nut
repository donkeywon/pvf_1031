
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function procSkill_Swordman(obj)
{
	procSkill_MysticEquip(obj);
}

function procSkill_MysticEquip(obj)
{
	if (obj.sq_GetSkillLevel(SKILL_SWORDMAN_MYSTICEQUIP) > 0  )
	{
		if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "Character/Swordman/WeaponMaster/MysticEquip/MysticEquip.nut"))
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_SWORDMAN_MYSTICEQUIP, false, "Character/Swordman/WeaponMaster/MysticEquip/MysticEquip.nut", true);
		}
	}
}

function setEnableCancelSkill_Swordman(JM8H4uzkC2sc8UKfL7, CSDeDFugOHJaOjHj1gt)
{
 if(!JM8H4uzkC2sc8UKfL7)
 return false;
 if(!JM8H4uzkC2sc8UKfL7.isMyControlObject())
 return false;
 if(!CSDeDFugOHJaOjHj1gt)
 return true;
 JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(229, CSDeDFugOHJaOjHj1gt); 
 JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(230, CSDeDFugOHJaOjHj1gt); 
 JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(231, CSDeDFugOHJaOjHj1gt); 
 JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(232, CSDeDFugOHJaOjHj1gt); 
 JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(233, CSDeDFugOHJaOjHj1gt); 
 JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(234, CSDeDFugOHJaOjHj1gt); 
 JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(235, CSDeDFugOHJaOjHj1gt); 
 JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(236, CSDeDFugOHJaOjHj1gt); 
 JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(237, CSDeDFugOHJaOjHj1gt); 
 JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(238, CSDeDFugOHJaOjHj1gt); 
 JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(239, CSDeDFugOHJaOjHj1gt); 
 JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(240, CSDeDFugOHJaOjHj1gt); 
 JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(241, CSDeDFugOHJaOjHj1gt); 
 JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(242, CSDeDFugOHJaOjHj1gt); 
 JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(243, CSDeDFugOHJaOjHj1gt); 
 JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(244, CSDeDFugOHJaOjHj1gt); 
 JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(245, CSDeDFugOHJaOjHj1gt); 
 JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(246, CSDeDFugOHJaOjHj1gt); 
 JM8H4uzkC2sc8UKfL7.setSkillCommandEnable(247, CSDeDFugOHJaOjHj1gt); 
 return true;
} ;


 
function setState_Swordman(obj, state, datas, isResetTimer)
{
 if(!obj) return;
//P(obj, state, datas);
	local substate = obj.sq_GetVectorData(datas, 0);
	local substate1 = obj.sq_GetVectorData(datas, 1);
	local substate2 = obj.sq_GetVectorData(datas, 2);
	setState_Swordman_swordman_handlingsword(obj, state, datas, isResetTimer);
	obj.getVar("Swordman_substate").clear_vector();
	obj.getVar("Swordman_substate").push_vector(substate);
	obj.getVar("Swordman_substate").push_vector(substate1);
	obj.getVar("Swordman_substate").push_vector(substate2);
 return 0;
} ;


function addSetStatePacket_Swordman(obj, state, datas)
{
 if(!obj) return -1;
 switch(state)
 {
 case STATE_ATTACK:
 local isResetTimer = obj.sq_GetVectorData(datas, 0); 
 local xfRERcXbPBR = obj.sq_GetVectorData(datas, 1); 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/swordman/appendage/ap_kalla.nut") 
 && CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/swordman/appendage/ap_ghoststep.nut")) 
 {
 if(obj.sq_IsMyControlObject()) 
 {
 obj.sq_IntVectClear();
 obj.sq_IntVectPush(0); 
 obj.sq_IntVectPush(0); 
 obj.sq_AddSetStatePacket(44, STATE_PRIORITY_USER, true); 
 }
 return -1;
 }
 switch(isResetTimer)
 {
 case 2: 
 if(obj.isCurrentCutomAniIndex(58) && xfRERcXbPBR == -1) 
 {
 local ICUtVtUM7t = sq_GetSkill(obj, 76); 
 if(ICUtVtUM7t && !ICUtVtUM7t.isSealFunction()) 
 {
 if(obj.sq_IsMyControlObject())
 {
 obj.sq_IntVectClear();
 obj.sq_IntVectPush(0);
 obj.sq_AddSetStatePacket(STATE_ATTACK, STATE_PRIORITY_USER, true);
 }
 return -1;
 }
 }
 break;
 }
 break;
 }
 return 1;
} ;




function procAppend_Swordman(YJq29a2yyU2)
{
 if(!YJq29a2yyU2) return 1;
 local TQe80hG8iORg1UvIUwOEWt = YJq29a2yyU2.sq_IsMyControlObject();
 local NjiaBHxwntByBOUd = YJq29a2yyU2.getState(); 
 if(TQe80hG8iORg1UvIUwOEWt)
 switch(NjiaBHxwntByBOUd)
 {
 case 0:
 case 8:
 case 14:
 local xhHZeF1zGdQ4Nkrs8yOP4Lp = sq_GetSkill(YJq29a2yyU2, 62); 
 if(xhHZeF1zGdQ4Nkrs8yOP4Lp)
 { 
 
 if(!xhHZeF1zGdQ4Nkrs8yOP4Lp.isInCoolTime())
 { 
 YJq29a2yyU2.setSkillCommandEnable(62, true); 
 if(YJq29a2yyU2.sq_IsEnterSkill(62) != -1) 
 {
 local W494kQM0HHrwjmSTuK8zX7 = YJq29a2yyU2.sq_IsUseSkill(62); 
 if(W494kQM0HHrwjmSTuK8zX7)
 {
 YJq29a2yyU2.sq_IntVectClear();
 YJq29a2yyU2.sq_IntVectPush(0);
 YJq29a2yyU2.sq_AddSetStatePacket(34, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 }
 break;
 }
 return 0;
} ;





 



