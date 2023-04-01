
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function ProcPassiveSkill_ATGunner(obj, skill_index, skill_level)
{
 switch(skill_index)
 {
 case 250:
 local EuZEQchhIO2g1V2 = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/atgunner/appendage/ap_stylish_buff.nut", true);
 local FC1eWFWuEDiMU = obj.sq_GetLevelData(skill_index, 2, skill_level);
 local LUy0opgJNM0Xbu = obj.sq_GetLevelData(skill_index, 3, skill_level);
 EuZEQchhIO2g1V2.getVar().clear_vector();
 EuZEQchhIO2g1V2.getVar().push_vector(FC1eWFWuEDiMU);
 EuZEQchhIO2g1V2.getVar().push_vector(FC1eWFWuEDiMU);

 EuZEQchhIO2g1V2.getVar().clear_timer_vector();
 EuZEQchhIO2g1V2.getVar().push_timer_vector();
 local SpeibDDQ8SST = EuZEQchhIO2g1V2.getVar().get_timer_vector(0);
 SpeibDDQ8SST.setParameter(LUy0opgJNM0Xbu, -1);
 SpeibDDQ8SST.resetInstant(0);
 break;
 case SKILL_ATGUNNER_COMMINTERRUPT:
	if(skill_level > 0)
	{
		local EuZEQchhIO2g1V2 = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/atgunner/appendage/ap_atgunner_comminterrupt.nut", true);
	}
 break;
case SKILL_ATGUNNER_CROSSBOWMASTERY:
	if(skill_level > 0)
		{

			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "Character/atgunner/crossbowmastery/crossbowmastery.nut", true);
			local sqrChr = sq_GetCNRDObjectToSQRCharacter(obj);

			if(appendage && (sqrChr.getWeaponSubType() == 4))//î¤sqrchr = 4ãÁ(â¢ÒÀøºûÜ?4)£¬â¢ÒÀïñ÷×ßæüù
			{
				local level_crossbowmastery = sq_GetSkillLevel(obj, SKILL_ATGUNNER_CROSSBOWMASTERY);//üòö¢ÐüÒöÔõÐä
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









 
 
 
function onStartGhost_My_atgunner_stylish(zLNgEXMd8NOL)
{
 if(CNSquirrelAppendage.sq_IsAppendAppendage(zLNgEXMd8NOL, "character/atgunner/appendage/ap_stylish.nut")) 
 CNSquirrelAppendage.sq_RemoveAppendage(zLNgEXMd8NOL, "character/atgunner/appendage/ap_stylish.nut"); 
 
 local szPELYvN6WprwP = CNSquirrelAppendage.sq_AppendAppendage(zLNgEXMd8NOL, zLNgEXMd8NOL, 250, false, "character/atgunner/appendage/ap_stylish.nut", false);
 if(szPELYvN6WprwP)
 {
 local RBuyszSSdXi2Kw1uAf74 = sq_GetSkillLevel(zLNgEXMd8NOL, 250); 
 szPELYvN6WprwP.sq_SetValidTime(zLNgEXMd8NOL.sq_GetLevelData(250, 6, RBuyszSSdXi2Kw1uAf74)); 
 szPELYvN6WprwP.setAppendCauseSkill(BUFF_CAUSE_SKILL, ENUM_CHARACTERJOB_AT_GUNNER, 250, RBuyszSSdXi2Kw1uAf74); 
 CNSquirrelAppendage.sq_AppendAppendageID(szPELYvN6WprwP, zLNgEXMd8NOL, zLNgEXMd8NOL, 250, true); 
 local fqpAOeyuYqkwoGeIlb = szPELYvN6WprwP.sq_getChangeStatus("changeStatus");
 if(!fqpAOeyuYqkwoGeIlb)
 fqpAOeyuYqkwoGeIlb = szPELYvN6WprwP.sq_AddChangeStatusAppendageID(zLNgEXMd8NOL, zLNgEXMd8NOL, 0, CHANGE_STATUS_TYPE_HP_MAX, false, 0, APID_COMMON); 
 if(fqpAOeyuYqkwoGeIlb) 
 {
 local nOdOQRYF5smK3Y7pFBvTux = zLNgEXMd8NOL.sq_GetLevelData(250, 4, RBuyszSSdXi2Kw1uAf74); 
 local APJLmgJmoJoEKZlA7 = zLNgEXMd8NOL.sq_GetLevelData(250, 5, RBuyszSSdXi2Kw1uAf74); 
 fqpAOeyuYqkwoGeIlb.clearParameter();
 fqpAOeyuYqkwoGeIlb.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK_BONUS, true, nOdOQRYF5smK3Y7pFBvTux.tofloat());
 fqpAOeyuYqkwoGeIlb.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK_BONUS, true, nOdOQRYF5smK3Y7pFBvTux.tofloat());
 fqpAOeyuYqkwoGeIlb.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, false, APJLmgJmoJoEKZlA7.tofloat());
 fqpAOeyuYqkwoGeIlb.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, false, APJLmgJmoJoEKZlA7.tofloat());
 }
 }
} ;



function onProcIsSub_My_atgunner_stylish(nbQfOGveQGCejCH)
{
 local KOYRmdjs9JBtbgjP7o5kx = onProc_My_atgunner_stylish(nbQfOGveQGCejCH);
 if(KOYRmdjs9JBtbgjP7o5kx != 0)
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(KOYRmdjs9JBtbgjP7o5kx); 
 sq_SendChangeSkillEffectPacket(nbQfOGveQGCejCH, 250); 
 }
} ;

 
 
function onProc_My_atgunner_stylish(nbQfOGveQGCejCH)
{
 local KOYRmdjs9JBtbgjP7o5kx = CNSquirrelAppendage.sq_GetAppendage(nbQfOGveQGCejCH, "character/atgunner/appendage/ap_stylish_buff.nut");
 if(!KOYRmdjs9JBtbgjP7o5kx) return 0;
 if(KOYRmdjs9JBtbgjP7o5kx.getVar().get_vector(0)<=0)return 0;
 
 if(!sq_GetSkill(nbQfOGveQGCejCH, 9).isInCoolTime()) 
 {
 nbQfOGveQGCejCH.setSkillCommandEnable(9, true); 
 if(nbQfOGveQGCejCH.sq_IsEnterSkill(9) != -1) 
 {
 nbQfOGveQGCejCH.startSkillCoolTime(9, sq_GetSkillLevel(nbQfOGveQGCejCH, 9), -1); 
 
 nbQfOGveQGCejCH.sq_IntVectClear();
 nbQfOGveQGCejCH.sq_IntVectPush(15);
 nbQfOGveQGCejCH.sq_IntVectPush(1);
 nbQfOGveQGCejCH.sq_IntVectPush(0);
 nbQfOGveQGCejCH.sq_IntVectPush(100);
 nbQfOGveQGCejCH.sq_AddSetStatePacket(24, STATE_PRIORITY_USER, true);
 return 1;
 }
 }
 
 if(!sq_GetSkill(nbQfOGveQGCejCH, 72).isInCoolTime()) 
 {
 nbQfOGveQGCejCH.setSkillCommandEnable(72, true); 
 if(nbQfOGveQGCejCH.sq_IsEnterSkill(72) != -1) 
 {
 nbQfOGveQGCejCH.startSkillCoolTime(72, sq_GetSkillLevel(nbQfOGveQGCejCH, 72), -1); 
 
 nbQfOGveQGCejCH.sq_IntVectClear();
 nbQfOGveQGCejCH.sq_IntVectPush(37);
 nbQfOGveQGCejCH.sq_IntVectPush(0);
 nbQfOGveQGCejCH.sq_IntVectPush(0);
 nbQfOGveQGCejCH.sq_AddSetStatePacket(37, STATE_PRIORITY_USER, true);
 return 1;
 }
 }
 
 if(!sq_GetSkill(nbQfOGveQGCejCH, 104).isInCoolTime()) 
 {
 nbQfOGveQGCejCH.setSkillCommandEnable(104, true); 
 if(nbQfOGveQGCejCH.sq_IsEnterSkill(104) != -1) 
 {
 nbQfOGveQGCejCH.startSkillCoolTime(104, sq_GetSkillLevel(nbQfOGveQGCejCH, 104), -1); 
 
 nbQfOGveQGCejCH.sq_IntVectClear();
 nbQfOGveQGCejCH.sq_IntVectPush(1);
 nbQfOGveQGCejCH.sq_IntVectPush(97);
 nbQfOGveQGCejCH.sq_AddSetStatePacket(58, STATE_PRIORITY_USER, true);
 return 1;
 }
 }
 
 if(!sq_GetSkill(nbQfOGveQGCejCH, 51).isInCoolTime()) 
 {
 nbQfOGveQGCejCH.setSkillCommandEnable(51, true); 
 if(nbQfOGveQGCejCH.sq_IsEnterSkill(51) != -1) 
 {
 nbQfOGveQGCejCH.startSkillCoolTime(51, sq_GetSkillLevel(nbQfOGveQGCejCH, 51), -1); 
 
 nbQfOGveQGCejCH.sq_IntVectClear();
 nbQfOGveQGCejCH.sq_IntVectPush(0);
 nbQfOGveQGCejCH.sq_IntVectPush(nbQfOGveQGCejCH.getDirection());
 nbQfOGveQGCejCH.sq_IntVectPush(4);
 nbQfOGveQGCejCH.sq_AddSetStatePacket(41, STATE_PRIORITY_USER, true);
 return 1;
 }
 }
 
 if(!sq_GetSkill(nbQfOGveQGCejCH, 100).isInCoolTime()) 
 {
 nbQfOGveQGCejCH.setSkillCommandEnable(100, true); 
 if(nbQfOGveQGCejCH.sq_IsEnterSkill(100) != -1) 
 {
 nbQfOGveQGCejCH.startSkillCoolTime(100, sq_GetSkillLevel(nbQfOGveQGCejCH, 100), -1); 
 
 nbQfOGveQGCejCH.sq_AddSetStatePacket(45, STATE_PRIORITY_USER, false);
 return 1;
 }
 }
 
 if(!sq_GetSkill(nbQfOGveQGCejCH, 5).isInCoolTime()) 
 {
 nbQfOGveQGCejCH.setSkillCommandEnable(5, true); 
 if(nbQfOGveQGCejCH.sq_IsEnterSkill(5) != -1) 
 {
 nbQfOGveQGCejCH.startSkillCoolTime(5, sq_GetSkillLevel(nbQfOGveQGCejCH, 5), -1); 
 
 nbQfOGveQGCejCH.sq_IntVectClear();
 nbQfOGveQGCejCH.sq_IntVectPush(1);
 nbQfOGveQGCejCH.sq_IntVectPush(5);
 nbQfOGveQGCejCH.sq_IntVectPush(0);
 nbQfOGveQGCejCH.sq_AddSetStatePacket(8, STATE_PRIORITY_USER, true);
 return 1;
 }
 }
 
 if(!sq_GetSkill(nbQfOGveQGCejCH, 236).isInCoolTime()) 
 {
 nbQfOGveQGCejCH.setSkillCommandEnable(236, true); 
 if(nbQfOGveQGCejCH.sq_IsEnterSkill(236) != -1) 
 {
 nbQfOGveQGCejCH.startSkillCoolTime(236, sq_GetSkillLevel(nbQfOGveQGCejCH, 236), -1); 
 nbQfOGveQGCejCH.sq_IntVectClear();
 nbQfOGveQGCejCH.sq_IntVectPush(0); 
 nbQfOGveQGCejCH.sq_AddSetStatePacket(236, STATE_PRIORITY_USER, true); 
 return 1;
 }
 }
 
 if(!sq_GetSkill(nbQfOGveQGCejCH, 237).isInCoolTime()) 
 {
 nbQfOGveQGCejCH.setSkillCommandEnable(237, true); 
 if(nbQfOGveQGCejCH.sq_IsEnterSkill(237) != -1) 
 {
 nbQfOGveQGCejCH.startSkillCoolTime(237, sq_GetSkillLevel(nbQfOGveQGCejCH, 237), -1); 
 if(!isSubSkill_atgunner_KILLPOINT(nbQfOGveQGCejCH))
 {
 nbQfOGveQGCejCH.sq_IntVectClear();
 nbQfOGveQGCejCH.sq_IntVectPush(0); 
 nbQfOGveQGCejCH.sq_AddSetStatePacket(237, STATE_PRIORITY_USER, true); 
 }
 return 1;
 }
 }
 
 if(!sq_GetSkill(nbQfOGveQGCejCH, 238).isInCoolTime()) 
 {
 nbQfOGveQGCejCH.setSkillCommandEnable(238, true); 
 if(nbQfOGveQGCejCH.sq_IsEnterSkill(238) != -1) 
 {
 nbQfOGveQGCejCH.startSkillCoolTime(238, sq_GetSkillLevel(nbQfOGveQGCejCH, 238), -1); 
 nbQfOGveQGCejCH.sq_IntVectClear();
 nbQfOGveQGCejCH.sq_IntVectPush(0); 
 nbQfOGveQGCejCH.sq_AddSetStatePacket(238, STATE_PRIORITY_USER, true); 
 return 1;
 }
 }
 
 if(!sq_GetSkill(nbQfOGveQGCejCH, 239).isInCoolTime()) 
 {
 nbQfOGveQGCejCH.setSkillCommandEnable(239, true); 
 if(nbQfOGveQGCejCH.sq_IsEnterSkill(239) != -1) 
 {
 nbQfOGveQGCejCH.startSkillCoolTime(239, sq_GetSkillLevel(nbQfOGveQGCejCH, 239), -1); 
 nbQfOGveQGCejCH.sq_IntVectClear();
 nbQfOGveQGCejCH.sq_IntVectPush(0); 
 nbQfOGveQGCejCH.sq_AddSetStatePacket(239, STATE_PRIORITY_USER, true); 
 return 1;
 }
 }
 return 0;
} ;


function isSubSkill_atgunner_KILLPOINT(etTHKCUHt3oHaObu)
{
 local d37RtunETwe = -1; 
 local ywvx6qpnou_QI = etTHKCUHt3oHaObu.getDirection(); 
 local oJX5o4Dc9rAH = sq_GetXPos(etTHKCUHt3oHaObu); 
 local M5rrAxW8LFsrntPG_4bV36 = []; 
 local DmX7zW1pAidal52u672o = etTHKCUHt3oHaObu.getObjectManager(); 
 local RLAK3Iq8eZ = DmX7zW1pAidal52u672o.getCollisionObjectNumber(); 
 for (local XfxTJd8nJzWVwCuPBGkH1 = 0; XfxTJd8nJzWVwCuPBGkH1 < RLAK3Iq8eZ; XfxTJd8nJzWVwCuPBGkH1++)
 {
 local AqI9ihXLqnfEl5WhkA_xz = DmX7zW1pAidal52u672o.getCollisionObject(XfxTJd8nJzWVwCuPBGkH1); 
 
 if (!etTHKCUHt3oHaObu.isEnemy(AqI9ihXLqnfEl5WhkA_xz) || !AqI9ihXLqnfEl5WhkA_xz.isObjectType(OBJECTTYPE_ACTIVE)) continue;
 local MVnBFMtsS5P5IaBI4O = CNSquirrelAppendage.sq_GetAppendage(AqI9ihXLqnfEl5WhkA_xz, "character/atgunner/killpoint/ap_killpoint.nut");
 if (MVnBFMtsS5P5IaBI4O && isSameObject(etTHKCUHt3oHaObu, MVnBFMtsS5P5IaBI4O.getSource()) && MVnBFMtsS5P5IaBI4O.isValid())
 {
 local Mp3mmlw7bfIJba6eDWs = (oJX5o4Dc9rAH > sq_GetXPos(AqI9ihXLqnfEl5WhkA_xz)) ? ENUM_DIRECTION_LEFT : ENUM_DIRECTION_RIGHT; 
 if (d37RtunETwe == -1) 
 d37RtunETwe = Mp3mmlw7bfIJba6eDWs; 
 
 if(d37RtunETwe != -1 && d37RtunETwe == Mp3mmlw7bfIJba6eDWs)
 M5rrAxW8LFsrntPG_4bV36.push(1); 
 else 
 M5rrAxW8LFsrntPG_4bV36.push(2); 
 M5rrAxW8LFsrntPG_4bV36.push(sq_GetGroup(AqI9ihXLqnfEl5WhkA_xz)); 
 M5rrAxW8LFsrntPG_4bV36.push(sq_GetUniqueId(AqI9ihXLqnfEl5WhkA_xz)); 
 }
 }
 if (M5rrAxW8LFsrntPG_4bV36.len() > 0 && d37RtunETwe != -1) 
 {
 etTHKCUHt3oHaObu.sq_IntVectClear();
 etTHKCUHt3oHaObu.sq_IntVectPush(1);
 etTHKCUHt3oHaObu.sq_IntVectPush(sq_getRandom(0,1)); 
 etTHKCUHt3oHaObu.sq_IntVectPush(d37RtunETwe); 
 etTHKCUHt3oHaObu.sq_IntVectPush(M5rrAxW8LFsrntPG_4bV36.len()); 
 foreach (val in M5rrAxW8LFsrntPG_4bV36)
 etTHKCUHt3oHaObu.sq_IntVectPush(val); 
 etTHKCUHt3oHaObu.sq_AddSetStatePacket(237, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;