
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function onAfterSetState_swordman_throw(uFPW55kl1uKc, mLYBIhDJ3ErccxoBV7i0tO, mcnQak3sSvuFfsN6mFd3q, yQE9v68QxmS5ql8Jk)
{
 if(!uFPW55kl1uKc) return;
 local qil_yICWN0OrZUW = uFPW55kl1uKc.getThrowIndex(); 
 local cNNqCNeq1I1owvNPsN2X36sX = uFPW55kl1uKc.getThrowState(); 
 switch(qil_yICWN0OrZUW)
 {
 case 47: 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(uFPW55kl1uKc, "character/swordman/appendage/ap_wavemark.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(uFPW55kl1uKc, "character/swordman/appendage/ap_wavemark.nut");
 local B88LiI5xw3wLi = CNSquirrelAppendage.sq_AppendAppendage(uFPW55kl1uKc, uFPW55kl1uKc, 47, true, "character/swordman/appendage/ap_wavemark.nut", false);
 CNSquirrelAppendage.sq_Append(B88LiI5xw3wLi, uFPW55kl1uKc, uFPW55kl1uKc, false);
 break;
 case 82: 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(uFPW55kl1uKc, "character/swordman/appendage/ap_kalla.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(uFPW55kl1uKc, "character/swordman/appendage/ap_kalla.nut");
 local e5iMmYEhk2_ZCROCo = uFPW55kl1uKc.sq_GetLevelData(82, 0, sq_GetSkillLevel(uFPW55kl1uKc, 82)); 
 local B88LiI5xw3wLi = CNSquirrelAppendage.sq_AppendAppendage(uFPW55kl1uKc, uFPW55kl1uKc, 82, true, "character/swordman/appendage/ap_kalla.nut", false);
 B88LiI5xw3wLi.sq_SetValidTime(e5iMmYEhk2_ZCROCo); 
 CNSquirrelAppendage.sq_Append(B88LiI5xw3wLi, uFPW55kl1uKc, uFPW55kl1uKc, false);
 break;
 case 18: 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(uFPW55kl1uKc, "character/swordman/appendage/ap_ghoststep.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(uFPW55kl1uKc, "character/swordman/appendage/ap_ghoststep.nut");
 local e5iMmYEhk2_ZCROCo = uFPW55kl1uKc.sq_GetLevelData(18, 0, sq_GetSkillLevel(uFPW55kl1uKc, 18)); 
 local B88LiI5xw3wLi = CNSquirrelAppendage.sq_AppendAppendage(uFPW55kl1uKc, uFPW55kl1uKc, 18, true, "character/swordman/appendage/ap_ghoststep.nut", false);
 B88LiI5xw3wLi.sq_SetValidTime(e5iMmYEhk2_ZCROCo); 
 CNSquirrelAppendage.sq_Append(B88LiI5xw3wLi, uFPW55kl1uKc, uFPW55kl1uKc, false);
 break;
 }
} ;




function onProcCon_swordman_throw(slsWw__ol53HVwr)
{
 if(!slsWw__ol53HVwr) return;
 local obhXkplykqIKXfiAF34l = slsWw__ol53HVwr.getThrowIndex(); 
 if(obhXkplykqIKXfiAF34l == 74) 
 {
 
 if(!sq_GetSkill(slsWw__ol53HVwr, 57).isInCoolTime())
 { 
 slsWw__ol53HVwr.setSkillCommandEnable(57, true); 
 if(slsWw__ol53HVwr.sq_IsEnterSkill(57) != -1) 
 {
 local J9fVqmU33AHxBBTZ0BX = slsWw__ol53HVwr.sq_IsUseSkill(57); 
 if(J9fVqmU33AHxBBTZ0BX)
 {
 slsWw__ol53HVwr.sq_IntVectClear();
 slsWw__ol53HVwr.sq_IntVectPush(0);
 slsWw__ol53HVwr.sq_AddSetStatePacket(31, STATE_PRIORITY_USER, true); 
 }
 }
 }
 
 if(!sq_GetSkill(slsWw__ol53HVwr, 62).isInCoolTime())
 { 
 slsWw__ol53HVwr.setSkillCommandEnable(62, true); 
 if(slsWw__ol53HVwr.sq_IsEnterSkill(62) != -1) 
 {
 local J9fVqmU33AHxBBTZ0BX = slsWw__ol53HVwr.sq_IsUseSkill(62); 
 if(J9fVqmU33AHxBBTZ0BX)
 {
 slsWw__ol53HVwr.sq_IntVectClear();
 slsWw__ol53HVwr.sq_IntVectPush(0);
 slsWw__ol53HVwr.sq_AddSetStatePacket(34, STATE_PRIORITY_USER, true); 
 }
 }
 }
 }
} ;
