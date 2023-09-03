
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function onAfterSetState_atfighter_buff(b5auQt29ZJBGNtERo, WCDjwRh3IWyTM_NtayN5VXM, dl7PghGm37E8P1XOK, EkXyLNJAXdUeNRCuw)
{
 local QIUiGIQKfHcpduyhdnE_Q = b5auQt29ZJBGNtERo.getBuffSkillIndex(); 
} ;



function onEndCurrentAni_atfighter_buff(b5auQt29ZJBGNtERo)
{
 if(!b5auQt29ZJBGNtERo) return;
 if(!b5auQt29ZJBGNtERo.sq_IsMyControlObject()) return;
 local WCDjwRh3IWyTM_NtayN5VXM = b5auQt29ZJBGNtERo.getBuffSkillIndex(); 
 switch(WCDjwRh3IWyTM_NtayN5VXM)
 {
 case 50: 
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1); 
 sq_SendChangeSkillEffectPacket(b5auQt29ZJBGNtERo, WCDjwRh3IWyTM_NtayN5VXM); 
 break;
 }
} ;
function procSkill_ATFighter(obj)
{
    procSkill_ATFighter_SHC(obj);
}




function onAttack_NenSpearEx(CQ_751675335_nxAV2XOZ, CQ_751675335_7bCuI, CQ_751675335_GrnixZ3, CQ_751675335_vZVTi)
{
if(!CQ_751675335_nxAV2XOZ || CQ_751675335_vZVTi)return false;
local CQ_751675335_DPWrYQ2 = "character/atfighter/nenmaster2nd/ap_spiralgaleforce.nut";
local CQ_751675335_Ry8C = CNSquirrelAppendage.sq_IsAppendAppendage(CQ_751675335_nxAV2XOZ, CQ_751675335_DPWrYQ2);
if(!CQ_751675335_Ry8C) return;
local CQ_751675335_inOfKJ = sq_GetSkillLevel(CQ_751675335_nxAV2XOZ, 237);
local CQ_751675335_1jzUoph9 = CQ_751675335_nxAV2XOZ.sq_GetLevelData(237, 1, CQ_751675335_inOfKJ)/1000.0;
local CQ_751675335_U6LEb = CQ_751675335_7bCuI.getXPos();
local CQ_751675335_H7lZB1X = CQ_751675335_7bCuI.getYPos();
local CQ_751675335_3VL8O = sq_GetCenterZPos(CQ_751675335_GrnixZ3);
CQ_751675335_nxAV2XOZ.sq_StartWrite();
CQ_751675335_nxAV2XOZ.sq_WriteDword(117);
CQ_751675335_nxAV2XOZ.sq_WriteDword(CQ_751675335_nxAV2XOZ.sq_GetBonusRateWithPassive(117, -1, 0, CQ_751675335_1jzUoph9)+CQ_751675335_nxAV2XOZ.sq_GetBonusRateWithPassive(117, -1, 5, CQ_751675335_1jzUoph9));
CQ_751675335_nxAV2XOZ.sq_WriteBool(sq_IsGrabable(CQ_751675335_7bCuI,CQ_751675335_nxAV2XOZ)); 
sq_SendCreatePassiveObjectPacketPos(CQ_751675335_nxAV2XOZ, 24375, 0, CQ_751675335_U6LEb, CQ_751675335_H7lZB1X+1, CQ_751675335_3VL8O);
}

function onAfterSetState_NenFlower(CQ_751675335_qDQvQbD, CQ_751675335_Ko4o, CQ_751675335_TqpJNB, CQ_751675335_slh6PyMp)
{
CQ_751675335_qDQvQbD.setSkillSubState(CQ_751675335_qDQvQbD.sq_GetVectorData(CQ_751675335_TqpJNB, 0));
local CQ_751675335_68Gcz = "character/atfighter/nenmaster2nd/ap_spiralgaleforce.nut";
local CQ_751675335_eBny48K = CNSquirrelAppendage.sq_IsAppendAppendage(CQ_751675335_qDQvQbD, CQ_751675335_68Gcz);
if(!CQ_751675335_eBny48K) return;
if(CQ_751675335_qDQvQbD.sq_GetVectorData(CQ_751675335_TqpJNB, 0) == 0)
{
if(CQ_751675335_qDQvQbD.getVar("SpiralInhaleEnergy").size_vector() == 0)
CQ_751675335_qDQvQbD.getVar("SpiralInhaleEnergy").push_vector(0);
local CQ_751675335_XFFG = CQ_751675335_qDQvQbD.getVar("SpiralInhaleEnergy").get_vector(0);
if(CQ_751675335_XFFG >= 200)
CQ_751675335_qDQvQbD.getVar("SpiralInhaleEnergy").set_vector(0,CQ_751675335_XFFG - 200);
else
CNSquirrelAppendage.sq_RemoveAppendage(CQ_751675335_qDQvQbD, CQ_751675335_68Gcz);
}
}

function onKeyFrameFlag_NenFlower(CQ_751675335_xpb4ue, CQ_751675335_PQNlcl4f)
{
if (!CQ_751675335_xpb4ue) return false;
local CQ_751675335_9zyW6 = "character/atfighter/nenmaster2nd/ap_spiralgaleforce.nut";
local CQ_751675335_t9dSaaC = CNSquirrelAppendage.sq_IsAppendAppendage(CQ_751675335_xpb4ue, CQ_751675335_9zyW6);
if(!CQ_751675335_t9dSaaC) return;
if(CQ_751675335_PQNlcl4f == 1)
{
local CQ_751675335_BMP1 = sq_GetSkillLevel(CQ_751675335_xpb4ue, 237);
local CQ_751675335_vHxkf4 = CQ_751675335_xpb4ue.sq_GetLevelData(237, 1, CQ_751675335_BMP1)/1000.0;
local CQ_751675335_DaXwCJ9X = CQ_751675335_xpb4ue.sq_GetBonusRateWithPassive(67, -1, 0, CQ_751675335_vHxkf4);
local CQ_751675335_RexPs = CQ_751675335_xpb4ue.sq_GetBonusRateWithPassive(67, -1, 1, CQ_751675335_vHxkf4);
local CQ_751675335_icXNmh1 = CQ_751675335_xpb4ue.sq_GetBonusRateWithPassive(67, -1, 3, CQ_751675335_vHxkf4);
local CQ_751675335_1Ywg = CQ_751675335_xpb4ue.sq_GetLevelData(67, 7, sq_GetSkillLevel(CQ_751675335_xpb4ue, 67));
CQ_751675335_xpb4ue.sq_StartWrite();
CQ_751675335_xpb4ue.sq_WriteDword(67);
CQ_751675335_xpb4ue.sq_WriteDword(CQ_751675335_DaXwCJ9X);
CQ_751675335_xpb4ue.sq_WriteDword(CQ_751675335_RexPs);
CQ_751675335_xpb4ue.sq_WriteDword(CQ_751675335_icXNmh1);
CQ_751675335_xpb4ue.sq_WriteDword(CQ_751675335_1Ywg);
CQ_751675335_xpb4ue.sq_SendCreatePassiveObjectPacket(24375,0, 0, 1, 100);
}
return true;
}

function onAfterSetState_LightningDragon(CQ_751675335_UR5qDi, CQ_751675335_E2asWbhp, CQ_751675335_4KkClft, CQ_751675335_QIJf)
{
local CQ_751675335_LWUnFt = "character/atfighter/nenmaster2nd/ap_spiralgaleforce.nut";
local CQ_751675335_lvHEvcSN = CNSquirrelAppendage.sq_IsAppendAppendage(CQ_751675335_UR5qDi, CQ_751675335_LWUnFt);
if(!CQ_751675335_lvHEvcSN) return;

if(CQ_751675335_UR5qDi.getVar("SpiralInhaleEnergy").size_vector() == 0)
CQ_751675335_UR5qDi.getVar("SpiralInhaleEnergy").push_vector(0);
local CQ_751675335_IgUZ8 = CQ_751675335_UR5qDi.getVar("SpiralInhaleEnergy").get_vector(0);
if(CQ_751675335_IgUZ8 >= 200)
CQ_751675335_UR5qDi.getVar("SpiralInhaleEnergy").set_vector(0,CQ_751675335_IgUZ8 - 200);
else
CNSquirrelAppendage.sq_RemoveAppendage(CQ_751675335_UR5qDi, CQ_751675335_LWUnFt);
}

function onKeyFrameFlag_LightningDragon(CQ_751675335_7318LOp, CQ_751675335_rLuv)
{
if (!CQ_751675335_7318LOp) return false;
local CQ_751675335_CPfob7 = "character/atfighter/nenmaster2nd/ap_spiralgaleforce.nut";
local CQ_751675335_cySJdLJr = CNSquirrelAppendage.sq_IsAppendAppendage(CQ_751675335_7318LOp, CQ_751675335_CPfob7);
if(!CQ_751675335_cySJdLJr) return;
if(CQ_751675335_rLuv == 2)
{
local CQ_751675335_AnY6P = sq_GetSkillLevel(CQ_751675335_7318LOp, 237);
local CQ_751675335_djVxwTO = CQ_751675335_7318LOp.sq_GetLevelData(237, 1, CQ_751675335_AnY6P)/1000.0;
local CQ_751675335_y5cy = CQ_751675335_7318LOp.sq_GetBonusRateWithPassive(90, -1, 0, CQ_751675335_djVxwTO)*CQ_751675335_7318LOp.sq_GetIntData(90, 0);
CQ_751675335_7318LOp.sq_StartWrite();
CQ_751675335_7318LOp.sq_WriteDword(90);
CQ_751675335_7318LOp.sq_WriteDword(CQ_751675335_y5cy);
CQ_751675335_7318LOp.sq_SendCreatePassiveObjectPacket(24375,0, 300, 1, 70);
return true;
}
return false;
}

function onCreateObject_SpiralColumnEx(CQ_751675335_NXCGME, CQ_751675335_bAr3AmXk)
{
local CQ_751675335_Fu7le = "character/atfighter/nenmaster2nd/ap_spiralgaleforce.nut";
local CQ_751675335_giIW5GD = CNSquirrelAppendage.sq_IsAppendAppendage(CQ_751675335_NXCGME, CQ_751675335_Fu7le);
if(!CQ_751675335_giIW5GD) return;
if(CQ_751675335_bAr3AmXk.isObjectType(OBJECTTYPE_PASSIVE))
{
local CQ_751675335_bAr3AmXk = sq_GetCNRDObjectToCollisionObject(CQ_751675335_bAr3AmXk);
if(CQ_751675335_bAr3AmXk)
{
local CQ_751675335_2TK1ub = CQ_751675335_bAr3AmXk.getCollisionObjectIndex();
if(CQ_751675335_2TK1ub == 21067)
{
local CQ_751675335_m7qkYNMN = sq_GetUniqueId(CQ_751675335_bAr3AmXk);
local CQ_751675335_aVKw7 = sq_GetGroup(CQ_751675335_bAr3AmXk);
CQ_751675335_NXCGME.getVar("SpiralColumnEx").setInt(0, CQ_751675335_m7qkYNMN);
CQ_751675335_NXCGME.getVar("SpiralColumnEx").setInt(1, CQ_751675335_aVKw7);
}
}
}
}

function onEndCurrentAni_SpiralColumnEx(CQ_751675335_5DqP)
{
local CQ_751675335_wp2Bm9 = "character/atfighter/nenmaster2nd/ap_spiralgaleforce.nut";
local CQ_751675335_LQogRCtx = CNSquirrelAppendage.sq_IsAppendAppendage(CQ_751675335_5DqP, CQ_751675335_wp2Bm9);
if(!CQ_751675335_LQogRCtx) return;

local CQ_751675335_lzgq = sq_GetSkillLevel(CQ_751675335_5DqP, 237);
local CQ_751675335_I9FsIz = CQ_751675335_5DqP.sq_GetLevelData(237, 1, CQ_751675335_lzgq)/1000.0;
local CQ_751675335_7NvCq6Al = CQ_751675335_5DqP.getVar("SpiralColumnEx").getInt(0);
local CQ_751675335_rGDfg = CQ_751675335_5DqP.getVar("SpiralColumnEx").getInt(1);
local CQ_751675335_CEvnDQo = sq_GetObject(CQ_751675335_5DqP, CQ_751675335_rGDfg, CQ_751675335_7NvCq6Al);
if(CQ_751675335_CEvnDQo)
{
local CQ_751675335_cwBE = CQ_751675335_CEvnDQo.getXPos();
local CQ_751675335_AxtLzK = CQ_751675335_CEvnDQo.getYPos();
CQ_751675335_5DqP.sq_StartWrite();
CQ_751675335_5DqP.sq_WriteDword(120);
CQ_751675335_5DqP.sq_WriteDword(CQ_751675335_5DqP.sq_GetBonusRateWithPassive(120, -1, 0, CQ_751675335_I9FsIz)*CQ_751675335_5DqP.sq_GetIntData(120, 3));
sq_SendCreatePassiveObjectPacketPos(CQ_751675335_5DqP, 24375, 0, CQ_751675335_cwBE, CQ_751675335_AxtLzK+1, 0);
}
}

function onAfterSetState_atfighter_Throw(CQ_751675335_dd884EH1, CQ_751675335_yMOvG, CQ_751675335_NHziy2I, CQ_751675335_bJZJ)
{
local CQ_751675335_Fsz6Zu = CQ_751675335_dd884EH1.getThrowIndex();
switch(CQ_751675335_Fsz6Zu)
{
case 236:
AfterSetState_CqLightToleranceUp(CQ_751675335_dd884EH1, CQ_751675335_yMOvG, CQ_751675335_NHziy2I, CQ_751675335_bJZJ);
break;
case 16:
local CQ_751675335_gWLxERZt = "character/atfighter/nenmaster2nd/ap_spiralgaleforce.nut";
local CQ_751675335_ovQyn = CNSquirrelAppendage.sq_IsAppendAppendage(CQ_751675335_dd884EH1, CQ_751675335_gWLxERZt);
if(!CQ_751675335_ovQyn || CQ_751675335_dd884EH1.getThrowState() != 1) return;
local CQ_751675335_2g4GfyS = sq_GetSkillLevel(CQ_751675335_dd884EH1, 237);
local CQ_751675335_m3E3 = CQ_751675335_dd884EH1.sq_GetLevelData(237, 1, CQ_751675335_2g4GfyS)/1000.0;
local CQ_751675335_aLjls9pZ = CQ_751675335_dd884EH1.getMyPassiveObjectCount(21085);
local CQ_751675335_5OGrk = CQ_751675335_dd884EH1.sq_GetLevelData(40, 5, sq_GetSkillLevel(CQ_751675335_dd884EH1, 40))/100.0*CQ_751675335_aLjls9pZ;
CQ_751675335_dd884EH1.sq_StartWrite();
CQ_751675335_dd884EH1.sq_WriteDword(16);
CQ_751675335_dd884EH1.sq_WriteDword(CQ_751675335_dd884EH1.sq_GetBonusRateWithPassive(16, -1, 0, CQ_751675335_m3E3+CQ_751675335_5OGrk)*CQ_751675335_dd884EH1.sq_GetLevelData(16, 3, sq_GetSkillLevel(CQ_751675335_dd884EH1, 16)));
CQ_751675335_dd884EH1.sq_SendCreatePassiveObjectPacket(24375,0, 90, 1, 70);
break;
case 15:
local CQ_751675335_gWLxERZt = "character/atfighter/nenmaster2nd/ap_spiralgaleforce.nut";
local CQ_751675335_ovQyn = CNSquirrelAppendage.sq_IsAppendAppendage(CQ_751675335_dd884EH1, CQ_751675335_gWLxERZt);
if(!CQ_751675335_ovQyn || CQ_751675335_dd884EH1.getThrowState() != 1) return;
local CQ_751675335_2g4GfyS = sq_GetSkillLevel(CQ_751675335_dd884EH1, 237);
local CQ_751675335_m3E3 = CQ_751675335_dd884EH1.sq_GetLevelData(237, 1, CQ_751675335_2g4GfyS)/1000.0;
CQ_751675335_dd884EH1.sq_StartWrite();
CQ_751675335_dd884EH1.sq_WriteDword(15);
CQ_751675335_dd884EH1.sq_WriteDword(CQ_751675335_dd884EH1.sq_GetBonusRateWithPassive(15, -1, 3, CQ_751675335_m3E3));
CQ_751675335_dd884EH1.sq_SendCreatePassiveObjectPacket(24375,0, 0, 1, 70);
break;
}
}



function onCreateObject_atfighter_Throw(obj, createObject)
{
	if (!obj) return false;

    if(obj.getVar("throw_skillIndex").get_vector(0) == 69)
        if (createObject.isObjectType(OBJECTTYPE_MONSTER))
            obj.getVar("fighter_illusionbomb").push_obj_vector(createObject);
}
