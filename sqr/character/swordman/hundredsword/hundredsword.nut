
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



function onAfterSetState_swordman_hundredsword(p1Grv8OyQF, t_zyVB_HjJHROZa, bNGULH7t2EVh, AnVDtU03cx_wdNq)
{
 if(!p1Grv8OyQF) return;
 
 p1Grv8OyQF.getVar("speedRate").clear_vector(); 
 p1Grv8OyQF.getVar("speedRate").push_vector(0); 
 p1Grv8OyQF.getVar("speedRate").push_vector(5); 
 p1Grv8OyQF.getVar("speedRate").push_vector(150); 
 p1Grv8OyQF.getVar("speedRate").push_vector(800); 
 
 local c5awBuiF8biZtrp = 240; 
 local YzAoZLxra8 = 75; 
 local mHcvKBLRvErgku9ROh8HoqMQ = 300; 
 local dZznE7LHpHNT1jVfQFhf4p1 = sq_GetDistancePos(sq_GetXPos(p1Grv8OyQF), p1Grv8OyQF.getDirection(), 150); 
 local dDHepToJCRR3g5XcdQ7k = sq_GetYPos(p1Grv8OyQF); 
 local _IMelOgQrHVJ = p1Grv8OyQF.getObjectManager();
 for(local jKpYvYv8PhGLMcZX0xwQb = 0; jKpYvYv8PhGLMcZX0xwQb < _IMelOgQrHVJ.getCollisionObjectNumber(); jKpYvYv8PhGLMcZX0xwQb++)
 {
 
 local tJ_KBCyOGIrTS = _IMelOgQrHVJ.getCollisionObject(jKpYvYv8PhGLMcZX0xwQb);
 if(!tJ_KBCyOGIrTS 
 || !p1Grv8OyQF.isEnemy(tJ_KBCyOGIrTS) 
 || !tJ_KBCyOGIrTS.isObjectType(OBJECTTYPE_ACTIVE) 
 || !tJ_KBCyOGIrTS.isInDamagableState(p1Grv8OyQF) 
 || !sq_IsHoldable(p1Grv8OyQF, tJ_KBCyOGIrTS) 
 || sq_IsFixture(tJ_KBCyOGIrTS) 
 || !sq_IsGrabable(p1Grv8OyQF, tJ_KBCyOGIrTS) 
 ) continue; 
 local aI4lV3uoqa = sq_GetXPos(tJ_KBCyOGIrTS); 
 local scUeaAue4DzYYPWZ1 = sq_GetYPos(tJ_KBCyOGIrTS); 
 local yYaAJOajPTxMFUUfPh = sq_GetZPos(tJ_KBCyOGIrTS); 
 if(sq_Abs(dZznE7LHpHNT1jVfQFhf4p1 - aI4lV3uoqa)> c5awBuiF8biZtrp
 || sq_Abs(dDHepToJCRR3g5XcdQ7k - scUeaAue4DzYYPWZ1) > YzAoZLxra8
 || yYaAJOajPTxMFUUfPh > mHcvKBLRvErgku9ROh8HoqMQ)
 continue; 
 
 if(!CNSquirrelAppendage.sq_IsAppendAppendage(tJ_KBCyOGIrTS, "character/swordman/hundredsword/ap_hundredsword.nut"))
 {
 local WzBBkIoA2hAswtI3U9 = CNSquirrelAppendage.sq_AppendAppendage(tJ_KBCyOGIrTS, p1Grv8OyQF, 86, true, "character/swordman/hundredsword/ap_hundredsword.nut", true);
 sq_HoldAndDelayDie(tJ_KBCyOGIrTS, p1Grv8OyQF, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, WzBBkIoA2hAswtI3U9); 
 WzBBkIoA2hAswtI3U9.getVar().clear_vector(); 
 local PMZC1RP6_F_i_wpv7 = WzBBkIoA2hAswtI3U9.getVar(); 
 PMZC1RP6_F_i_wpv7.push_vector(aI4lV3uoqa); 
 PMZC1RP6_F_i_wpv7.push_vector(scUeaAue4DzYYPWZ1); 
 PMZC1RP6_F_i_wpv7.push_vector(yYaAJOajPTxMFUUfPh); 
 PMZC1RP6_F_i_wpv7.push_vector(dZznE7LHpHNT1jVfQFhf4p1); 
 PMZC1RP6_F_i_wpv7.push_vector(dDHepToJCRR3g5XcdQ7k); 
 PMZC1RP6_F_i_wpv7.push_vector(0); 
 PMZC1RP6_F_i_wpv7.push_vector(20); 
 }
 }
} ;

