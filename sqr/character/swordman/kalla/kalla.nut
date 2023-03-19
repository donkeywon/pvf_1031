
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



function onAfterSetState_swordman_kalla(MZJkWei3Ck5hldWU5u, PdS2a7ApkG, eD_buMT_5jAj, ERYATPBqaVfee)
{
 if(!MZJkWei3Ck5hldWU5u) return;
 local WpKZKySfahC6R26wQVVvcI = MZJkWei3Ck5hldWU5u.sq_GetVectorData(eD_buMT_5jAj, 0); 
 local _YOLMPJEs387UynZ = MZJkWei3Ck5hldWU5u.sq_GetVectorData(eD_buMT_5jAj, 1); 
 MZJkWei3Ck5hldWU5u.getVar().clear_vector(); 
 MZJkWei3Ck5hldWU5u.getVar().push_vector(WpKZKySfahC6R26wQVVvcI); 
 MZJkWei3Ck5hldWU5u.getVar().push_vector(_YOLMPJEs387UynZ); 
 if(WpKZKySfahC6R26wQVVvcI == 0 && _YOLMPJEs387UynZ!=-1) 
 {
 local QqpuHn5C49sl = null; 
 switch(_YOLMPJEs387UynZ)
 {
 case 0:
 QqpuHn5C49sl = MZJkWei3Ck5hldWU5u.sq_GetAttackAni(1); 
 break;
 case 1:
 QqpuHn5C49sl = MZJkWei3Ck5hldWU5u.sq_GetAttackAni(0); 
 break;
 case 2:
 QqpuHn5C49sl = sq_GetCustomAni(MZJkWei3Ck5hldWU5u, 57); 
 break;
 }
 if(QqpuHn5C49sl != null)
 {
 sq_Rewind(QqpuHn5C49sl); 
 MZJkWei3Ck5hldWU5u.setCurrentAnimation(QqpuHn5C49sl); 
 }
 }
 MZJkWei3Ck5hldWU5u.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

function onProcCon_swordman_kalla(P4uYQfp2HrQhDmWh0OeGozR)
{
 if(!P4uYQfp2HrQhDmWh0OeGozR) return;
 local cctKI3ueg7NtnPwOwW3MP6M = P4uYQfp2HrQhDmWh0OeGozR.getVar().get_vector(0); 
 local LGgNwQRekfy48 = P4uYQfp2HrQhDmWh0OeGozR.getVar().get_vector(1); 
 
 if(cctKI3ueg7NtnPwOwW3MP6M == 0 && LGgNwQRekfy48 != -1
 && CNSquirrelAppendage.sq_IsAppendAppendage(P4uYQfp2HrQhDmWh0OeGozR, "character/swordman/appendage/ap_kalla.nut")
 && CNSquirrelAppendage.sq_IsAppendAppendage(P4uYQfp2HrQhDmWh0OeGozR, "character/swordman/appendage/ap_ghoststep.nut"))
 {
 local lSNf0YWfLibcEOhT = sq_GetCurrentAnimation(P4uYQfp2HrQhDmWh0OeGozR); 
 local hc01XUp0HxSD = 0; 
 switch(LGgNwQRekfy48)
 {
 case 0:hc01XUp0HxSD = -8; break;
 case 1:hc01XUp0HxSD = -7; break;
 }
 if(hc01XUp0HxSD != 0)
 {
 local m6mAyp1s6sEl = sq_GetAniFrameNumber(lSNf0YWfLibcEOhT, 0) + hc01XUp0HxSD; 
 if(sq_GetAnimationFrameIndex(lSNf0YWfLibcEOhT) >= m6mAyp1s6sEl) 
 {
 sq_SetKeyxEnable(P4uYQfp2HrQhDmWh0OeGozR, E_ATTACK_COMMAND, true); 
 if(sq_IsEnterCommand(P4uYQfp2HrQhDmWh0OeGozR, E_ATTACK_COMMAND)) 
 {
 P4uYQfp2HrQhDmWh0OeGozR.sq_IntVectClear();
 P4uYQfp2HrQhDmWh0OeGozR.sq_IntVectPush(0); 
 P4uYQfp2HrQhDmWh0OeGozR.sq_IntVectPush(LGgNwQRekfy48+1); 
 P4uYQfp2HrQhDmWh0OeGozR.sq_AddSetStatePacket(44, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 }
 
 if(!sq_GetSkill(P4uYQfp2HrQhDmWh0OeGozR, 169).isInCoolTime())
 { 
 P4uYQfp2HrQhDmWh0OeGozR.setSkillCommandEnable(169, true); 
 if(P4uYQfp2HrQhDmWh0OeGozR.sq_IsEnterSkill(169) != -1) 
 {
 local ykIMVGFeBQ8kl4YfeqKQUGjC = P4uYQfp2HrQhDmWh0OeGozR.sq_IsUseSkill(169); 
 if(ykIMVGFeBQ8kl4YfeqKQUGjC)
 {
 P4uYQfp2HrQhDmWh0OeGozR.sq_IntVectClear(); 
 P4uYQfp2HrQhDmWh0OeGozR.sq_IntVectPush(1); 
 P4uYQfp2HrQhDmWh0OeGozR.sq_IntVectPush(1); 
 P4uYQfp2HrQhDmWh0OeGozR.sq_IntVectPush(200); 
 P4uYQfp2HrQhDmWh0OeGozR.sq_AddSetStatePacket(STATE_JUMP, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
} ;



