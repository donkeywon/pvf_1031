
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function setEnableCancelSkill_ATFighter(b5auQt29ZJBGNtERo, WCDjwRh3IWyTM_NtayN5VXM)
{
 if(!b5auQt29ZJBGNtERo)
 return false;
 
 if(!b5auQt29ZJBGNtERo.isMyControlObject())
 return false;
 if(!WCDjwRh3IWyTM_NtayN5VXM)
 return true;
 b5auQt29ZJBGNtERo.setSkillCommandEnable(220, WCDjwRh3IWyTM_NtayN5VXM); 
 b5auQt29ZJBGNtERo.setSkillCommandEnable(221, WCDjwRh3IWyTM_NtayN5VXM); 
 b5auQt29ZJBGNtERo.setSkillCommandEnable(222, WCDjwRh3IWyTM_NtayN5VXM); 
 b5auQt29ZJBGNtERo.setSkillCommandEnable(223, WCDjwRh3IWyTM_NtayN5VXM); 
 b5auQt29ZJBGNtERo.setSkillCommandEnable(224, WCDjwRh3IWyTM_NtayN5VXM); 
 b5auQt29ZJBGNtERo.setSkillCommandEnable(225, WCDjwRh3IWyTM_NtayN5VXM); 
 b5auQt29ZJBGNtERo.setSkillCommandEnable(226, WCDjwRh3IWyTM_NtayN5VXM); 
 b5auQt29ZJBGNtERo.setSkillCommandEnable(227, WCDjwRh3IWyTM_NtayN5VXM); 
 b5auQt29ZJBGNtERo.setSkillCommandEnable(228, WCDjwRh3IWyTM_NtayN5VXM); 
 b5auQt29ZJBGNtERo.setSkillCommandEnable(229, WCDjwRh3IWyTM_NtayN5VXM); 
 b5auQt29ZJBGNtERo.setSkillCommandEnable(230, WCDjwRh3IWyTM_NtayN5VXM); 
 
 return true;
} ;


function onChangeSkillEffect_ATFighter(Lmb1IBm0hXY6DPN, YpaXlNk63NMAawV1szMUwYl, o5VdaHELFpH1U9ZZ)
{
 if(!Lmb1IBm0hXY6DPN) return;
 switch(YpaXlNk63NMAawV1szMUwYl)
 {
 case 50: 
 local vMANHUtMTDpA = o5VdaHELFpH1U9ZZ.readWord(); 
 switch(vMANHUtMTDpA)
 {
 case 1:
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(Lmb1IBm0hXY6DPN, "character/atfighter/appendage/ap_definitegrab.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(Lmb1IBm0hXY6DPN, "character/atfighter/appendage/ap_definitegrab.nut");
 local FVKCAd14Dts6N1 = Lmb1IBm0hXY6DPN.sq_GetLevelData(YpaXlNk63NMAawV1szMUwYl, 0, sq_GetSkillLevel(Lmb1IBm0hXY6DPN, YpaXlNk63NMAawV1szMUwYl)); 
 local CdeQ5bSIOksjOgU = CNSquirrelAppendage.sq_AppendAppendage(Lmb1IBm0hXY6DPN, Lmb1IBm0hXY6DPN, YpaXlNk63NMAawV1szMUwYl, false, "character/atfighter/appendage/ap_definitegrab.nut", false);
 CdeQ5bSIOksjOgU.sq_SetValidTime(FVKCAd14Dts6N1); 
 CNSquirrelAppendage.sq_Append(CdeQ5bSIOksjOgU, Lmb1IBm0hXY6DPN, Lmb1IBm0hXY6DPN, false);
 break;
 }
 break;
 }
} ;




function addSetStatePacket_ATFighter(ESBuU7W_pU965VMYvAv1, O1YsOXqr58lA3UC, cbIEyAGjuLj)
{
 if (!ESBuU7W_pU965VMYvAv1) return -1;
if (CNSquirrelAppendage.sq_IsAppendAppendage(ESBuU7W_pU965VMYvAv1, "character/atfighter/appendage/ap_flamelegs.nut"))
 {
 if (O1YsOXqr58lA3UC == 62 && ESBuU7W_pU965VMYvAv1.sq_GetVectorData(cbIEyAGjuLj, 0) == -1)
 return -1;
 else
 {
 local o2TVsaZAiCNtkDtnOf2u2Q6 = CNSquirrelAppendage.sq_GetAppendage(ESBuU7W_pU965VMYvAv1, "character/atfighter/appendage/ap_flamelegs.nut");
 if (!o2TVsaZAiCNtkDtnOf2u2Q6 || o2TVsaZAiCNtkDtnOf2u2Q6.getVar().getBool(1) != true) return 1;
 
 switch (O1YsOXqr58lA3UC)
 {
 case 223:
 case 224:
 case 225:
 case 49:
 case 72:
 case 67:
 if (CNSquirrelAppendage.sq_IsAppendAppendage(ESBuU7W_pU965VMYvAv1, "character/atfighter/appendage/ap_flamelegs_add.nut"))
return 1;
 local Kj8Cry4Jzu33x = CNSquirrelAppendage.sq_AppendAppendage(ESBuU7W_pU965VMYvAv1, ESBuU7W_pU965VMYvAv1, -1, false, "character/atfighter/appendage/ap_flamelegs_add.nut", true);
 Kj8Cry4Jzu33x.sq_SetValidTime(2000); 
 local xPFeGxQzwzvuPXJwJ = sq_GetSkillLevel(ESBuU7W_pU965VMYvAv1, 41); 
 Kj8Cry4Jzu33x.setAppendCauseSkill(BUFF_CAUSE_SKILL, ENUM_CHARACTERJOB_AT_FIGHTER, 41, xPFeGxQzwzvuPXJwJ); 
 CNSquirrelAppendage.sq_AppendAppendageID(Kj8Cry4Jzu33x, ESBuU7W_pU965VMYvAv1, ESBuU7W_pU965VMYvAv1, 41, true); 
 local Vl6VwNv2J7DqPw3wMp = ESBuU7W_pU965VMYvAv1.sq_GetLevelData(41, 9, xPFeGxQzwzvuPXJwJ);
 local ZDRRdyYhNbq0ihz7 = Kj8Cry4Jzu33x.sq_getChangeStatus("changeStatus"); 
 if (!ZDRRdyYhNbq0ihz7) 
 ZDRRdyYhNbq0ihz7 = Kj8Cry4Jzu33x.sq_AddChangeStatusAppendageID(ESBuU7W_pU965VMYvAv1, ESBuU7W_pU965VMYvAv1, 0, CHANGE_STATUS_TYPE_MAGICAL_ATTACK_BONUS, true, Vl6VwNv2J7DqPw3wMp, APID_COMMON);
 if (ZDRRdyYhNbq0ihz7) 
 {
 ZDRRdyYhNbq0ihz7.clearParameter(); 
 ZDRRdyYhNbq0ihz7.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK_BONUS, true, Vl6VwNv2J7DqPw3wMp.tofloat());
 ZDRRdyYhNbq0ihz7.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK_BONUS, true, Vl6VwNv2J7DqPw3wMp.tofloat());
 }
 break;
 }
 }
 }
 return 1;
} ;

 
