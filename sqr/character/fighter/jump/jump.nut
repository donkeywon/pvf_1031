//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�2000�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�2000�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�2000�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function onAfterSetState_FighterJumpAttack(obj , state , datas , isResetTimer)

{

 if (!obj) return;

 if (CNSquirrelAppendage.sq_IsAppendAppendage(obj , "character/fighter/poisonsnake/ap_poisonsnake.nut") == true)
 
{

 sq_CreateDrawOnlyObject(obj , "character/fighter/effect/animation/poisonsnake/jump_b_boom01_normal_01.ani" , ENUM_DRAWLAYER_NORMAL , true);

 obj.sq_SetCurrentAttackBonusRate(obj.sq_GetBonusRateWithPassive(SKILL_POISONSNAKE , STATE_POISONSNAKE , 8 , 1.0));
 
}


}


function onKeyFrameFlag_FighterJumpAttack(obj , flagIndex)

{

 if(!obj) return false;

 if (CNSquirrelAppendage.sq_IsAppendAppendage(obj , "character/fighter/poisonsnake/ap_poisonsnake.nut") == true)
 
{

 if(flagIndex == 1)
 
{

 sq_SetMyShake(obj , 1 , 100);
 sq_flashScreen(obj , 0 , 0 , 200 , 70 , sq_RGB(0 , 0 , 0) , GRAPHICEFFECT_NONE , ENUM_DRAWLAYER_BOTTOM);
 
}

 
}

 return true;

}

