
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 





 
function setEnableCancelSkill_Mage(PQTqYWyoPjv4ektK, vQHyclEdSW)
{
 if(!PQTqYWyoPjv4ektK)
 return false;
 
 if(!PQTqYWyoPjv4ektK.isMyControlObject())
 return false;
 if(!vQHyclEdSW)
 return true;
 if (!CNSquirrelAppendage.sq_IsAppendAppendage(PQTqYWyoPjv4ektK, "character/mage/appendage/ap_bellatrix.nut")) 
 {
 PQTqYWyoPjv4ektK.setSkillCommandEnable(242, vQHyclEdSW); 
 PQTqYWyoPjv4ektK.setSkillCommandEnable(243, vQHyclEdSW); 
 PQTqYWyoPjv4ektK.setSkillCommandEnable(244, vQHyclEdSW); 
 PQTqYWyoPjv4ektK.setSkillCommandEnable(245, vQHyclEdSW); 
 }
 PQTqYWyoPjv4ektK.setSkillCommandEnable(246, vQHyclEdSW); 
 PQTqYWyoPjv4ektK.setSkillCommandEnable(247, vQHyclEdSW); 
 PQTqYWyoPjv4ektK.setSkillCommandEnable(249, vQHyclEdSW); 
 PQTqYWyoPjv4ektK.setSkillCommandEnable(250, vQHyclEdSW); 
 PQTqYWyoPjv4ektK.setSkillCommandEnable(251, vQHyclEdSW); 
 PQTqYWyoPjv4ektK.setSkillCommandEnable(252, vQHyclEdSW); 
 PQTqYWyoPjv4ektK.setSkillCommandEnable(253, vQHyclEdSW); 
 PQTqYWyoPjv4ektK.setSkillCommandEnable(131, vQHyclEdSW); 
 PQTqYWyoPjv4ektK.setSkillCommandEnable(132, vQHyclEdSW); 
 PQTqYWyoPjv4ektK.setSkillCommandEnable(133, vQHyclEdSW); 
 PQTqYWyoPjv4ektK.setSkillCommandEnable(134, vQHyclEdSW); 
 PQTqYWyoPjv4ektK.setSkillCommandEnable(135, vQHyclEdSW); 
 PQTqYWyoPjv4ektK.setSkillCommandEnable(136, vQHyclEdSW); 
 PQTqYWyoPjv4ektK.setSkillCommandEnable(137, vQHyclEdSW); 
 PQTqYWyoPjv4ektK.setSkillCommandEnable(138, vQHyclEdSW); 
 PQTqYWyoPjv4ektK.setSkillCommandEnable(139, vQHyclEdSW); 
 PQTqYWyoPjv4ektK.setSkillCommandEnable(126, vQHyclEdSW); 
 return true;
} ;
 



function addSetStatePacket_Mage(rBzERVpuv_c4, KrpKoM45CRSBujGMJsdn6m, iA3NnInwH43kdPzOKb59p)
{
 if(!rBzERVpuv_c4) return -1;
 switch(KrpKoM45CRSBujGMJsdn6m)
 {
 case 27: 
 local PdcciUT9bAyjq6t0bhdk = rBzERVpuv_c4.sq_GetVectorData(iA3NnInwH43kdPzOKb59p, 0); 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(rBzERVpuv_c4, "character/mage/appendage/ap_bellatrix.nut")) 
 {
 if(PdcciUT9bAyjq6t0bhdk == 0) 
 {
 
 rBzERVpuv_c4.sq_IntVectClear();
 rBzERVpuv_c4.sq_IntVectPush(4);
 rBzERVpuv_c4.sq_IntVectPush(1);
 rBzERVpuv_c4.sq_AddSetStatePacket(248, STATE_PRIORITY_USER, true);
 return -1;
 }
 }
 break;
 case 25: 
 local PdcciUT9bAyjq6t0bhdk = rBzERVpuv_c4.sq_GetVectorData(iA3NnInwH43kdPzOKb59p, 0);
 local EfzK_UFLFG9c21p0TvPJBS1 = rBzERVpuv_c4.sq_GetVectorData(iA3NnInwH43kdPzOKb59p, 1); 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(rBzERVpuv_c4, "character/mage/appendage/ap_bellatrix.nut")) 
 {
 if(PdcciUT9bAyjq6t0bhdk == 0 && EfzK_UFLFG9c21p0TvPJBS1 == 68)
 {
 
 rBzERVpuv_c4.sq_IntVectClear();
 rBzERVpuv_c4.sq_IntVectPush(3);
 rBzERVpuv_c4.sq_IntVectPush(1);
 rBzERVpuv_c4.sq_AddSetStatePacket(248, STATE_PRIORITY_USER, true);
 return -1;
 }
 }
 break;
 case 31: 
 local PdcciUT9bAyjq6t0bhdk = rBzERVpuv_c4.sq_GetVectorData(iA3NnInwH43kdPzOKb59p, 0);
 if(PdcciUT9bAyjq6t0bhdk == 0)
 {
 
 rBzERVpuv_c4.sq_IntVectClear();
 rBzERVpuv_c4.sq_IntVectPush(1);
 rBzERVpuv_c4.sq_AddSetStatePacket(31, STATE_PRIORITY_USER, true); 
 return -1;
 }
 break;
 case 29: 
 local PdcciUT9bAyjq6t0bhdk = rBzERVpuv_c4.sq_GetVectorData(iA3NnInwH43kdPzOKb59p, 0);
 if(PdcciUT9bAyjq6t0bhdk == 0)
 {
 
 if(!CNSquirrelAppendage.sq_IsAppendAppendage(rBzERVpuv_c4, "character/mage/dragondance/ap_dragondance_proc_skill.nut"))return 1;
 
 rBzERVpuv_c4.sq_IntVectClear();
 if(CNSquirrelAppendage.sq_IsAppendAppendage(rBzERVpuv_c4, "character/mage/avatar/ap_avatar.nut")) 
 rBzERVpuv_c4.sq_IntVectPush(1);
 else if(CNSquirrelAppendage.sq_IsAppendAppendage(rBzERVpuv_c4, "character/mage/appendage/ap_bellatrix.nut")) 
 {
 rBzERVpuv_c4.sq_IntVectPush(2);
 rBzERVpuv_c4.sq_IntVectPush(1);
 }
 else 
 rBzERVpuv_c4.sq_IntVectPush(0);
 rBzERVpuv_c4.sq_AddSetStatePacket(248, STATE_PRIORITY_USER, true);
 return -1;
 }
 break;
 }
 return 1;
} ;

function flushCommandEnable_Mage(R6ogHnfBxZjID)
{
 if(!R6ogHnfBxZjID) return 0;
 if(!R6ogHnfBxZjID.isInBattle())
 {
 sq_SetAllCommandEnable(R6ogHnfBxZjID, false);
 return 2;
 }
 local NTdbFwfIOu = null; 
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(R6ogHnfBxZjID, "character/mage/appendage/ap_bellatrix.nut"))
 {
 
 for(local KVv1HzKIqmXxRwia0 = 242; KVv1HzKIqmXxRwia0 <= 244; KVv1HzKIqmXxRwia0++)
 {
 NTdbFwfIOu = sq_GetSkill(R6ogHnfBxZjID, KVv1HzKIqmXxRwia0); 
 if(NTdbFwfIOu) NTdbFwfIOu.setCommandEnable(false); 
 }
 NTdbFwfIOu = sq_GetSkill(R6ogHnfBxZjID, 66); 
 if(NTdbFwfIOu) NTdbFwfIOu.setCommandEnable(true); 
 NTdbFwfIOu = sq_GetSkill(R6ogHnfBxZjID, 68); 
 if(NTdbFwfIOu) NTdbFwfIOu.setCommandEnable(true); 
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(R6ogHnfBxZjID, "character/mage/dragondance/ap_dragondance_proc_skill.nut"))
 {
 NTdbFwfIOu = sq_GetSkill(R6ogHnfBxZjID, 69); 
 if(NTdbFwfIOu) NTdbFwfIOu.setCommandEnable(true); 
 }
 return 2;
 }
 return 0;
} ;

 
 

function getStayAni_Mage(BYg22P7gzDcR8P0VFdfCMv)
{
 if(!BYg22P7gzDcR8P0VFdfCMv) return null;
 local tr2ozQZWnthUIQDybcUOFcIM = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(BYg22P7gzDcR8P0VFdfCMv, "character/mage/avatar/ap_avatar.nut") == true)
 {
 tr2ozQZWnthUIQDybcUOFcIM = setCurrentAnimation_avatar_eff(BYg22P7gzDcR8P0VFdfCMv, "Stay", false);
 }
 else
 {
 tr2ozQZWnthUIQDybcUOFcIM = BYg22P7gzDcR8P0VFdfCMv.sq_GetStayAni();
 }
 return tr2ozQZWnthUIQDybcUOFcIM;
} ;

function getMoveAni_Mage(BYg22P7gzDcR8P0VFdfCMv)
{
 if(!BYg22P7gzDcR8P0VFdfCMv) return null;
 local tr2ozQZWnthUIQDybcUOFcIM = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(BYg22P7gzDcR8P0VFdfCMv, "character/mage/avatar/ap_avatar.nut") == true)
 {
 tr2ozQZWnthUIQDybcUOFcIM = setCurrentAnimation_avatar_eff(BYg22P7gzDcR8P0VFdfCMv, "Move", false);
 }
 else
 {
 tr2ozQZWnthUIQDybcUOFcIM = BYg22P7gzDcR8P0VFdfCMv.sq_GetMoveAni();
 }
 return tr2ozQZWnthUIQDybcUOFcIM;
} ;

function getSitAni_Mage(IJGu1Z9ffn_El)
{
 if(!IJGu1Z9ffn_El) return null;
 local _TOFQ2XrnTvGrZzFH_R_fBx = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(IJGu1Z9ffn_El, "character/mage/avatar/ap_avatar.nut") == true)
 {
 _TOFQ2XrnTvGrZzFH_R_fBx = setCurrentAnimation_avatar_eff(IJGu1Z9ffn_El, "Sit", false);
 }
 else
 {
 _TOFQ2XrnTvGrZzFH_R_fBx = IJGu1Z9ffn_El.sq_GetSitAni();
 }
 return _TOFQ2XrnTvGrZzFH_R_fBx;
} ;

function getDamageAni_Mage(IJGu1Z9ffn_El, _TOFQ2XrnTvGrZzFH_R_fBx)
{
 if(!IJGu1Z9ffn_El) return null;
 local kGBJvrW8tuwoNtrqa = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(IJGu1Z9ffn_El, "character/mage/avatar/ap_avatar.nut") == true)
 {
 if(_TOFQ2XrnTvGrZzFH_R_fBx == 0)
 kGBJvrW8tuwoNtrqa = setCurrentAnimation_avatar_eff(IJGu1Z9ffn_El, "Damage1", false);
 else if(_TOFQ2XrnTvGrZzFH_R_fBx == 1)
 kGBJvrW8tuwoNtrqa = setCurrentAnimation_avatar_eff(IJGu1Z9ffn_El, "Damage2", false);
 }
 else
 {
 kGBJvrW8tuwoNtrqa = IJGu1Z9ffn_El.sq_GetDamageAni(_TOFQ2XrnTvGrZzFH_R_fBx);
 }
 return kGBJvrW8tuwoNtrqa;
} ;

function getDownAni_Mage(wa028EUtXW)
{
 if(!wa028EUtXW) return null;
 local BujfB0eg2QSF79Ic1naS = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(wa028EUtXW, "character/mage/avatar/ap_avatar.nut") == true)
 {
 BujfB0eg2QSF79Ic1naS = setCurrentAnimation_avatar_eff(wa028EUtXW, "Down", false);
 }
 else
 {
 BujfB0eg2QSF79Ic1naS = wa028EUtXW.sq_GetDownAni();
 }
 return BujfB0eg2QSF79Ic1naS;
} ;

function getOverturnAni_Mage(Dcju7DIrGgeVQRdU)
{
 if(!Dcju7DIrGgeVQRdU) return null;
 local IQqclgIlljkktMlhHPREHVW = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(Dcju7DIrGgeVQRdU, "character/mage/avatar/ap_avatar.nut") == true)
 {
 IQqclgIlljkktMlhHPREHVW = setCurrentAnimation_avatar_eff(Dcju7DIrGgeVQRdU, "Overturn", false);
 }
 else
 {
 IQqclgIlljkktMlhHPREHVW = Dcju7DIrGgeVQRdU.sq_GetOverturnAni();
 }
 return IQqclgIlljkktMlhHPREHVW;
} ;

function getJumpAni_Mage(Dcju7DIrGgeVQRdU)
{
 if(!Dcju7DIrGgeVQRdU) return null;
 local IQqclgIlljkktMlhHPREHVW = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(Dcju7DIrGgeVQRdU, "character/mage/avatar/ap_avatar.nut") == true)
 {
 IQqclgIlljkktMlhHPREHVW = setCurrentAnimation_avatar_eff(Dcju7DIrGgeVQRdU, "Jump", false);
 }
 else
 {
 IQqclgIlljkktMlhHPREHVW = Dcju7DIrGgeVQRdU.sq_GetJumpAni();
 }
 return IQqclgIlljkktMlhHPREHVW;
} ;

function getJumpAttackAni_Mage(vIJx6BPwOwIVCHdhK3Doj)
{
 if(!vIJx6BPwOwIVCHdhK3Doj) return null;
 local MuAeaLp8eZGg = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(vIJx6BPwOwIVCHdhK3Doj, "character/mage/avatar/ap_avatar.nut") == true)
 {
 MuAeaLp8eZGg = setCurrentAnimation_avatar_eff(vIJx6BPwOwIVCHdhK3Doj, "JumpAttack", false);
 }
 else
 {
 MuAeaLp8eZGg = vIJx6BPwOwIVCHdhK3Doj.sq_GetJumpAttackAni();
 }
 return MuAeaLp8eZGg;
} ;

function getRestAni_Mage(vIJx6BPwOwIVCHdhK3Doj)
{
 if(!vIJx6BPwOwIVCHdhK3Doj) return null;
 local MuAeaLp8eZGg = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(vIJx6BPwOwIVCHdhK3Doj, "character/mage/avatar/ap_avatar.nut") == true)
 {
 MuAeaLp8eZGg = setCurrentAnimation_avatar_eff(vIJx6BPwOwIVCHdhK3Doj, "Rest", false);
 }
 else
 {
 MuAeaLp8eZGg = vIJx6BPwOwIVCHdhK3Doj.sq_GetRestAni();
 }
 return MuAeaLp8eZGg;
} ;

function getThrowChargeAni_Mage(Kw2ueYy2ttgyOaPO9zQ, yOrPg6R0hU9CwR)
{
 if(!Kw2ueYy2ttgyOaPO9zQ) return null;
 local jA7bhqpbCw = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(Kw2ueYy2ttgyOaPO9zQ, "character/mage/avatar/ap_avatar.nut") == true)
 {
 switch(yOrPg6R0hU9CwR)
 {
 case 0: jA7bhqpbCw = setCurrentAnimation_avatar_eff(Kw2ueYy2ttgyOaPO9zQ, "OneHandThrow1", false); break;
 case 1: jA7bhqpbCw = setCurrentAnimation_avatar_eff(Kw2ueYy2ttgyOaPO9zQ, "TwoHandThrow1", false); break;
 case 2: jA7bhqpbCw = setCurrentAnimation_avatar_eff(Kw2ueYy2ttgyOaPO9zQ, "Cast1", false); break;
 case 3: jA7bhqpbCw = setCurrentAnimation_avatar_eff(Kw2ueYy2ttgyOaPO9zQ, "Wink1", false); break;
 }
 }
 else
 {
 jA7bhqpbCw = Kw2ueYy2ttgyOaPO9zQ.sq_GetThrowChargeAni(yOrPg6R0hU9CwR);
 }
 return jA7bhqpbCw;
} ;

function getThrowShootAni_Mage(WdlxwJi181Zy2vOk3XFh1hGo, ZbjiQddQrSmTLEIElssi)
{
 if(!WdlxwJi181Zy2vOk3XFh1hGo) return null;
 local nZcd7C6FB7mqGaoKAmT = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(WdlxwJi181Zy2vOk3XFh1hGo, "character/mage/avatar/ap_avatar.nut") == true)
 {
 switch(ZbjiQddQrSmTLEIElssi)
 {
 case 0: nZcd7C6FB7mqGaoKAmT = setCurrentAnimation_avatar_eff(WdlxwJi181Zy2vOk3XFh1hGo, "OneHandThrow2", false); break;
 case 1: nZcd7C6FB7mqGaoKAmT = setCurrentAnimation_avatar_eff(WdlxwJi181Zy2vOk3XFh1hGo, "TwoHandThrow2", false); break;
 case 2: nZcd7C6FB7mqGaoKAmT = setCurrentAnimation_avatar_eff(WdlxwJi181Zy2vOk3XFh1hGo, "Cast2", false); break;
 case 3: nZcd7C6FB7mqGaoKAmT = setCurrentAnimation_avatar_eff(WdlxwJi181Zy2vOk3XFh1hGo, "Wink2", false); break;
 }
 }
 else
 {
 nZcd7C6FB7mqGaoKAmT = WdlxwJi181Zy2vOk3XFh1hGo.sq_GetThrowShootAni(ZbjiQddQrSmTLEIElssi);
 }
 return nZcd7C6FB7mqGaoKAmT;
} ;

function getDashAni_Mage(VKYuonGZY4WnJ14AdpQhOV)
{
 if(!VKYuonGZY4WnJ14AdpQhOV) return null;
 local GaSJmd7pgB = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(VKYuonGZY4WnJ14AdpQhOV, "character/mage/avatar/ap_avatar.nut") == true)
 {
 GaSJmd7pgB = setCurrentAnimation_avatar_eff(VKYuonGZY4WnJ14AdpQhOV, "Dash", false);
 }
 else
 {
 GaSJmd7pgB = VKYuonGZY4WnJ14AdpQhOV.sq_GetDashAni();
 }
 return GaSJmd7pgB;
} ;

function getDashAttackAni_Mage(VKYuonGZY4WnJ14AdpQhOV)
{
 if(!VKYuonGZY4WnJ14AdpQhOV) return null;
 local GaSJmd7pgB = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(VKYuonGZY4WnJ14AdpQhOV, "character/mage/avatar/ap_avatar.nut") == true)
 {
 GaSJmd7pgB = setCurrentAnimation_avatar_eff(VKYuonGZY4WnJ14AdpQhOV, "DashAttack", false);
 }
 else
 {
 GaSJmd7pgB = VKYuonGZY4WnJ14AdpQhOV.sq_GetDashAttackAni();
 }
 return GaSJmd7pgB;
} ;

function getGetItemAni_Mage(U14xiPJLmK5n)
{
 if(!U14xiPJLmK5n) return null;
 local s4ziAFbTTRaE = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(U14xiPJLmK5n, "character/mage/avatar/ap_avatar.nut") == true)
 {
 s4ziAFbTTRaE = setCurrentAnimation_avatar_eff(U14xiPJLmK5n, "GetItem", false);
 }
 else
 {
 s4ziAFbTTRaE = U14xiPJLmK5n.sq_GetGetItemAni();
 }
 return s4ziAFbTTRaE;
} ;

function getBuffAni_Mage(U14xiPJLmK5n)
{
 if(!U14xiPJLmK5n) return null;
 local s4ziAFbTTRaE = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(U14xiPJLmK5n, "character/mage/avatar/ap_avatar.nut") == true)
 {
 s4ziAFbTTRaE = setCurrentAnimation_avatar_eff(U14xiPJLmK5n, "Buff", false);
 }
 else
 {
 s4ziAFbTTRaE = U14xiPJLmK5n.sq_GetBuffAni();
 }
 return s4ziAFbTTRaE;
} ;


