
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function ProcPassiveSkill_Gunner(obj, skill_index, skill_level)
{
 switch(skill_index)
 {
 case 248:
 local IvYmSoSbzUJ = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/gunner/appendage/ap_stylish_buff.nut", true);
 local Ii0Mor4B9g9oU = obj.sq_GetLevelData(skill_index, 2, skill_level);
 local We9Ll6Rf_mnKKrhFqAL = obj.sq_GetLevelData(skill_index, 3, skill_level);
 IvYmSoSbzUJ.getVar().clear_vector();
 IvYmSoSbzUJ.getVar().push_vector(Ii0Mor4B9g9oU);
 IvYmSoSbzUJ.getVar().push_vector(Ii0Mor4B9g9oU);

 IvYmSoSbzUJ.getVar().clear_timer_vector();
 IvYmSoSbzUJ.getVar().push_timer_vector();
 local ILL7SKjHCyd = IvYmSoSbzUJ.getVar().get_timer_vector(0);
 ILL7SKjHCyd.setParameter(We9Ll6Rf_mnKKrhFqAL, -1);
 ILL7SKjHCyd.resetInstant(0);
 break;
 case SKILL_GUNNER_COMMINTERRUPT:
	if(skill_level > 0)
	{
		local IvYmSoSbzUJ = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/gunner/appendage/ap_gunner_comminterrupt.nut", true);

	}
 break;
case SKILL_CROSSBOWMASTERY:
	if(skill_level > 0)
		{

			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "Character/gunner/crossbowmastery/crossbowmastery.nut", true);
			local sqrChr = sq_GetCNRDObjectToSQRCharacter(obj);
			
			if(appendage && (sqrChr.getWeaponSubType() == 4))//î¤sqrchr = 4ãÁ(â¢ÒÀøºûÜ?4)£¬â¢ÒÀïñ÷×ßæüù
			{
				local level_crossbowmastery = sq_GetSkillLevel(obj, SKILL_CROSSBOWMASTERY);//üòö¢ÐüÒöÔõÐä
				local TYPE_STUCK 				= -(level_crossbowmastery/2) 	//Ù¤ñéáãñòÊ¥
				local EQUIPMENT_PHYSICAL_ATTACK = level_crossbowmastery 		//ÙëÐïÚª×âÍôÌªñòÊ¥
				local EQUIPMENT_MAGICAL_ATTACK 	= level_crossbowmastery 		//ÙëÐïØªÛöÍôÌªñòÊ¥
				local MAGICAL_CRITICAL_HIT_RATE = level_crossbowmastery/2 		//ØªÛöøìÌªñòÊ¥
				local ATTACK_SPEED 				= level_crossbowmastery*2 		//ÍôÌªáÜÓøñòÊ¥
				
				//ñòÊ¥Ê×ÜôÓðÓñøöîÜáÕàõ ìéÚõãÀù¬ÔÑÐüÒöüåêóìéËÁÐüÒöÓñøö£¬î¢éÄîÏËÁÊ¥ß¾ö¦ÜôüåêóäþèâîÜiconõóúÞ å¥üåÊ¥áÕàõ
				local change_appendage = appendage.sq_getChangeStatus("crossbowmastery");//üòö¢Ü¨ûùßÒ÷¾
				if(!change_appendage)//Ó×Üô?ßÒ÷¾Ü¨ûùãÁ£¬ôÕÊ¥ßÒ÷¾Ü¨ûùîÜID
				{
					change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_STUCK, false, TYPE_STUCK, APID_COMMON);								//Ù¤ñéáã
					change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, true, EQUIPMENT_PHYSICAL_ATTACK, APID_COMMON);	//ÙëÐïÚª×âÍôÌª
					change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, true, EQUIPMENT_MAGICAL_ATTACK, APID_COMMON);	//ÙëÐïØªÛöÍôÌª
					change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_HIT_RATE, false, MAGICAL_CRITICAL_HIT_RATE, APID_COMMON);	//ÙëÐïØªÛöøìÌª
					change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_ATTACK_SPEED, true, ATTACK_SPEED, APID_COMMON);							//ÍôÌªáÜÓø
				}
				if(change_appendage) //Ó×?ßÒ÷¾Ü¨ûùãÁ
				{
					change_appendage.clearParameter();//?ð¶óÑâ¦
					change_appendage.addParameter(CHANGE_STATUS_TYPE_STUCK, false, TYPE_STUCK.tofloat());								//Ý¾Ê¥óÑâ¦ -Ù¤ñéáã
					change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, true, EQUIPMENT_PHYSICAL_ATTACK.tofloat());	//Ý¾Ê¥óÑâ¦ -ÙëÐïÚª×âÍôÌª
					change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, true, EQUIPMENT_MAGICAL_ATTACK.tofloat());	//Ý¾Ê¥óÑâ¦ -ÙëÐïØªÛöÍôÌª
					change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_HIT_RATE, false, MAGICAL_CRITICAL_HIT_RATE.tofloat());	//Ý¾Ê¥óÑâ¦ -ÙëÐïØªÛöøìÌª
					change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, true, ATTACK_SPEED.tofloat());							//Ý¾Ê¥óÑâ¦ -ÍôÌªáÜÓø
				}
			}
		}
	break;
case SKILL_BENYUAN:
	if(skill_level > 0)
	{
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/common/ap_benyuan.nut", true);
	}
	break;
 }
 return true;
} ;











 
 
 
function onStartGhost_My_gunner_stylish(M79WZ6Po87Wh_ewXh)
{
 if(CNSquirrelAppendage.sq_IsAppendAppendage(M79WZ6Po87Wh_ewXh, "character/gunner/appendage/ap_stylish.nut")) 
 CNSquirrelAppendage.sq_RemoveAppendage(M79WZ6Po87Wh_ewXh, "character/gunner/appendage/ap_stylish.nut"); 
 
 local KmIn77O8eYUVgTzl31AAH9Q = CNSquirrelAppendage.sq_AppendAppendage(M79WZ6Po87Wh_ewXh, M79WZ6Po87Wh_ewXh, 248, false, "character/gunner/appendage/ap_stylish.nut", false);
 if(KmIn77O8eYUVgTzl31AAH9Q)
 {
 local qwdMav2yvMIvHj = sq_GetSkillLevel(M79WZ6Po87Wh_ewXh, 248); 
 KmIn77O8eYUVgTzl31AAH9Q.sq_SetValidTime(M79WZ6Po87Wh_ewXh.sq_GetLevelData(248, 6, qwdMav2yvMIvHj)); 
 KmIn77O8eYUVgTzl31AAH9Q.setAppendCauseSkill(BUFF_CAUSE_SKILL, ENUM_CHARACTERJOB_GUNNER, 248, qwdMav2yvMIvHj); 
 CNSquirrelAppendage.sq_AppendAppendageID(KmIn77O8eYUVgTzl31AAH9Q, M79WZ6Po87Wh_ewXh, M79WZ6Po87Wh_ewXh, 248, true); 
 local wZAX3ErPBBb9q9U2UMgbBDAG = KmIn77O8eYUVgTzl31AAH9Q.sq_getChangeStatus("changeStatus");
 if(!wZAX3ErPBBb9q9U2UMgbBDAG)
 wZAX3ErPBBb9q9U2UMgbBDAG = KmIn77O8eYUVgTzl31AAH9Q.sq_AddChangeStatusAppendageID(M79WZ6Po87Wh_ewXh, M79WZ6Po87Wh_ewXh, 0, CHANGE_STATUS_TYPE_HP_MAX, false, 0, APID_COMMON); 
 if(wZAX3ErPBBb9q9U2UMgbBDAG) 
 {
 local UkhjNBRT1OK5ubUGlh2F = M79WZ6Po87Wh_ewXh.sq_GetLevelData(248, 4, qwdMav2yvMIvHj); 
 local X5JV0nkX3u9Vekq = M79WZ6Po87Wh_ewXh.sq_GetLevelData(248, 5, qwdMav2yvMIvHj); 
 wZAX3ErPBBb9q9U2UMgbBDAG.clearParameter();
 wZAX3ErPBBb9q9U2UMgbBDAG.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK_BONUS, true, UkhjNBRT1OK5ubUGlh2F.tofloat());
 wZAX3ErPBBb9q9U2UMgbBDAG.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK_BONUS, true, UkhjNBRT1OK5ubUGlh2F.tofloat());
 wZAX3ErPBBb9q9U2UMgbBDAG.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, false, X5JV0nkX3u9Vekq.tofloat());
 wZAX3ErPBBb9q9U2UMgbBDAG.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, false, X5JV0nkX3u9Vekq.tofloat());
 }
 }
} ;

 
function onProcIsSub_My_gunner_stylish(lxM2KkDuBOQhR)
{
 local psuArGbBouoY2clAHvu = onProc_My_gunner_stylish(lxM2KkDuBOQhR);
 if(psuArGbBouoY2clAHvu != 0)
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(psuArGbBouoY2clAHvu); 
 sq_SendChangeSkillEffectPacket(lxM2KkDuBOQhR, 248); 
 }
} ;

 
 
function onProc_My_gunner_stylish(lxM2KkDuBOQhR)
{
 local psuArGbBouoY2clAHvu = CNSquirrelAppendage.sq_GetAppendage(lxM2KkDuBOQhR, "character/gunner/appendage/ap_stylish_buff.nut");
 if(!psuArGbBouoY2clAHvu) return 0;
 if(psuArGbBouoY2clAHvu.getVar().get_vector(0)<=0)return 0;
 
 if(!sq_GetSkill(lxM2KkDuBOQhR, 9).isInCoolTime()) 
 {
 lxM2KkDuBOQhR.setSkillCommandEnable(9, true); 
 if(lxM2KkDuBOQhR.sq_IsEnterSkill(9) != -1) 
 {
 lxM2KkDuBOQhR.startSkillCoolTime(9, sq_GetSkillLevel(lxM2KkDuBOQhR, 9), -1); 
 
 lxM2KkDuBOQhR.sq_IntVectClear();
 lxM2KkDuBOQhR.sq_IntVectPush(15);
 lxM2KkDuBOQhR.sq_IntVectPush(1);
 lxM2KkDuBOQhR.sq_IntVectPush(0);
 lxM2KkDuBOQhR.sq_IntVectPush(100);
 lxM2KkDuBOQhR.sq_AddSetStatePacket(24, STATE_PRIORITY_USER, true);
 return 1;
 }
 }
 
 if(!sq_GetSkill(lxM2KkDuBOQhR, 72).isInCoolTime()) 
 {
 lxM2KkDuBOQhR.setSkillCommandEnable(72, true); 
 if(lxM2KkDuBOQhR.sq_IsEnterSkill(72) != -1) 
 {
 lxM2KkDuBOQhR.startSkillCoolTime(72, sq_GetSkillLevel(lxM2KkDuBOQhR, 72), -1); 
 
 lxM2KkDuBOQhR.sq_IntVectClear();
 lxM2KkDuBOQhR.sq_IntVectPush(37);
 lxM2KkDuBOQhR.sq_IntVectPush(0);
 lxM2KkDuBOQhR.sq_IntVectPush(0);
 lxM2KkDuBOQhR.sq_AddSetStatePacket(37, STATE_PRIORITY_USER, true);
 return 1;
 }
 }
 
 if(!sq_GetSkill(lxM2KkDuBOQhR, 104).isInCoolTime()) 
 {
 lxM2KkDuBOQhR.setSkillCommandEnable(104, true); 
 if(lxM2KkDuBOQhR.sq_IsEnterSkill(104) != -1) 
 {
 lxM2KkDuBOQhR.startSkillCoolTime(104, sq_GetSkillLevel(lxM2KkDuBOQhR, 104), -1); 
 
 lxM2KkDuBOQhR.sq_IntVectClear();
 lxM2KkDuBOQhR.sq_IntVectPush(1);
 lxM2KkDuBOQhR.sq_IntVectPush(97);
 lxM2KkDuBOQhR.sq_AddSetStatePacket(58, STATE_PRIORITY_USER, true);
 return 1;
 }
 }
 
 if(!sq_GetSkill(lxM2KkDuBOQhR, 51).isInCoolTime()) 
 {
 lxM2KkDuBOQhR.setSkillCommandEnable(51, true); 
 if(lxM2KkDuBOQhR.sq_IsEnterSkill(51) != -1) 
 {
 lxM2KkDuBOQhR.startSkillCoolTime(51, sq_GetSkillLevel(lxM2KkDuBOQhR, 51), -1); 
 
 lxM2KkDuBOQhR.sq_IntVectClear();
 lxM2KkDuBOQhR.sq_IntVectPush(0);
 lxM2KkDuBOQhR.sq_IntVectPush(lxM2KkDuBOQhR.getDirection());
 lxM2KkDuBOQhR.sq_IntVectPush(4);
 lxM2KkDuBOQhR.sq_AddSetStatePacket(41, STATE_PRIORITY_USER, true);
 return 1;
 }
 }
 
 if(!sq_GetSkill(lxM2KkDuBOQhR, 64).isInCoolTime()) 
 {
 lxM2KkDuBOQhR.setSkillCommandEnable(64, true); 
 if(lxM2KkDuBOQhR.sq_IsEnterSkill(64) != -1) 
 {
 lxM2KkDuBOQhR.startSkillCoolTime(64, sq_GetSkillLevel(lxM2KkDuBOQhR, 64), -1); 
 
 lxM2KkDuBOQhR.sq_IntVectClear();
 lxM2KkDuBOQhR.sq_IntVectPush(0);
 lxM2KkDuBOQhR.sq_AddSetStatePacket(33, STATE_PRIORITY_USER, true);
 return 1;
 }
 }
 
 if(!sq_GetSkill(lxM2KkDuBOQhR, 5).isInCoolTime()) 
 {
 lxM2KkDuBOQhR.setSkillCommandEnable(5, true); 
 if(lxM2KkDuBOQhR.sq_IsEnterSkill(5) != -1) 
 {
 lxM2KkDuBOQhR.startSkillCoolTime(5, sq_GetSkillLevel(lxM2KkDuBOQhR, 5), -1); 
 
 lxM2KkDuBOQhR.sq_IntVectClear();
 lxM2KkDuBOQhR.sq_IntVectPush(1);
 lxM2KkDuBOQhR.sq_IntVectPush(5);
 lxM2KkDuBOQhR.sq_IntVectPush(0);
 lxM2KkDuBOQhR.sq_AddSetStatePacket(8, STATE_PRIORITY_USER, true);
 return 1;
 }
 }
 
 if(!sq_GetSkill(lxM2KkDuBOQhR, 236).isInCoolTime()) 
 {
 lxM2KkDuBOQhR.setSkillCommandEnable(236, true); 
 if(lxM2KkDuBOQhR.sq_IsEnterSkill(236) != -1) 
 {
 lxM2KkDuBOQhR.startSkillCoolTime(236, sq_GetSkillLevel(lxM2KkDuBOQhR, 236), -1); 
 
 lxM2KkDuBOQhR.sq_IntVectClear();
 lxM2KkDuBOQhR.sq_IntVectPush(SUB_STATE_GUNNER_DEADLYAPPROACH_0); 
 lxM2KkDuBOQhR.sq_AddSetStatePacket(236, STATE_PRIORITY_USER, true);
 return 1;
 }
 }
 
 if(!sq_GetSkill(lxM2KkDuBOQhR, 237).isInCoolTime()) 
 {
 lxM2KkDuBOQhR.setSkillCommandEnable(237, true); 
 if(lxM2KkDuBOQhR.sq_IsEnterSkill(237) != -1) 
 {
 lxM2KkDuBOQhR.startSkillCoolTime(237, sq_GetSkillLevel(lxM2KkDuBOQhR, 237), -1); 
 lxM2KkDuBOQhR.sq_AddSetStatePacket(237, STATE_PRIORITY_USER, false); 
 return 1;
 }
 }
 
 if(!sq_GetSkill(lxM2KkDuBOQhR, 238).isInCoolTime()) 
 {
 lxM2KkDuBOQhR.setSkillCommandEnable(238, true); 
 if(lxM2KkDuBOQhR.sq_IsEnterSkill(238) != -1) 
 {
 lxM2KkDuBOQhR.startSkillCoolTime(238, sq_GetSkillLevel(lxM2KkDuBOQhR, 238), -1); 
 lxM2KkDuBOQhR.sq_IntVectClear();
 lxM2KkDuBOQhR.sq_IntVectPush(SUB_STATE_GUNNER_SUPPRESSINGFIRE_0); 
 lxM2KkDuBOQhR.sq_AddSetStatePacket(238, STATE_PRIORITY_USER, true); 
 return 1;
 }
 }
 
 if(!sq_GetSkill(lxM2KkDuBOQhR, 239).isInCoolTime()) 
 {
 lxM2KkDuBOQhR.setSkillCommandEnable(239, true); 
 if(lxM2KkDuBOQhR.sq_IsEnterSkill(239) != -1) 
 {
 lxM2KkDuBOQhR.startSkillCoolTime(239, sq_GetSkillLevel(lxM2KkDuBOQhR, 239), -1); 
 lxM2KkDuBOQhR.getVar("direction").clear_vector(); 
 lxM2KkDuBOQhR.sq_IntVectClear();
 lxM2KkDuBOQhR.sq_IntVectPush(SUB_STATE_GUNNER_FASTDRAW_0); 
 lxM2KkDuBOQhR.sq_AddSetStatePacket(239, STATE_PRIORITY_USER, true); 
 return 1;
 }
 }
 
 if(!sq_GetSkill(lxM2KkDuBOQhR, 240).isInCoolTime()) 
 {
 lxM2KkDuBOQhR.setSkillCommandEnable(240, true); 
 if(lxM2KkDuBOQhR.sq_IsEnterSkill(240) != -1) 
 {
 lxM2KkDuBOQhR.startSkillCoolTime(240, sq_GetSkillLevel(lxM2KkDuBOQhR, 240), -1); 
 lxM2KkDuBOQhR.sq_IntVectClear();
 lxM2KkDuBOQhR.sq_IntVectPush(SUB_STATE_GUNNER_SEVENTHFLOW_0); 
 lxM2KkDuBOQhR.sq_AddSetStatePacket(240, STATE_PRIORITY_USER, true); 
 return 1;
 }
 }
 return 0;
} ;


