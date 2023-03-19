
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function setEnableCancelSkill_Fighter(Eu2sIHKskIpQpfSgd, a2RdJFMnQsYHvMbnHt)
{
 if(!Eu2sIHKskIpQpfSgd)
 return false;
 
 if(!Eu2sIHKskIpQpfSgd.isMyControlObject())
 return false;
 if(!a2RdJFMnQsYHvMbnHt)
 return true;
 Eu2sIHKskIpQpfSgd.setSkillCommandEnable(225, a2RdJFMnQsYHvMbnHt); 
 Eu2sIHKskIpQpfSgd.setSkillCommandEnable(226, a2RdJFMnQsYHvMbnHt); 
 Eu2sIHKskIpQpfSgd.setSkillCommandEnable(227, a2RdJFMnQsYHvMbnHt); 
 Eu2sIHKskIpQpfSgd.setSkillCommandEnable(228, a2RdJFMnQsYHvMbnHt); 
 Eu2sIHKskIpQpfSgd.setSkillCommandEnable(229, a2RdJFMnQsYHvMbnHt); 
 Eu2sIHKskIpQpfSgd.setSkillCommandEnable(230, a2RdJFMnQsYHvMbnHt); 
 Eu2sIHKskIpQpfSgd.setSkillCommandEnable(231, a2RdJFMnQsYHvMbnHt); 
 Eu2sIHKskIpQpfSgd.setSkillCommandEnable(232, a2RdJFMnQsYHvMbnHt); 
 Eu2sIHKskIpQpfSgd.setSkillCommandEnable(233, a2RdJFMnQsYHvMbnHt); 
 Eu2sIHKskIpQpfSgd.setSkillCommandEnable(234, a2RdJFMnQsYHvMbnHt); 
 if (CNSquirrelAppendage.sq_IsAppendAppendage(Eu2sIHKskIpQpfSgd, "character/fighter/poisonsnake/ap_poisonsnake.nut") == false)
 Eu2sIHKskIpQpfSgd.setSkillCommandEnable(235, a2RdJFMnQsYHvMbnHt); 
 if (CNSquirrelAppendage.sq_IsAppendAppendage(Eu2sIHKskIpQpfSgd, "character/fighter/poisonsnake/ap_poisonsnake.nut") == true)
 Eu2sIHKskIpQpfSgd.setSkillCommandEnable(236, a2RdJFMnQsYHvMbnHt); 
 Eu2sIHKskIpQpfSgd.setSkillCommandEnable(237, a2RdJFMnQsYHvMbnHt); 
 Eu2sIHKskIpQpfSgd.setSkillCommandEnable(238, a2RdJFMnQsYHvMbnHt); 
 Eu2sIHKskIpQpfSgd.setSkillCommandEnable(239, a2RdJFMnQsYHvMbnHt); 
 return true;
} ;



function onChangeSkillEffect_Fighter(FEiaZWB1pfOemFzlGreiKJx, ZK_zWOKX5ecWfHRV6w3kcf, pPPxeed4C7jz1WxjQ)
{
 if(!FEiaZWB1pfOemFzlGreiKJx) return;
 switch(ZK_zWOKX5ecWfHRV6w3kcf)
 {
 case 235: 
 local J7diZ5_WiqUD3dzsG = pPPxeed4C7jz1WxjQ.readWord(); 
 switch(J7diZ5_WiqUD3dzsG)
 {
 case 1:
 onAppendApEff_qq506807329_fighter_poisonsnake(FEiaZWB1pfOemFzlGreiKJx); 
 break;
 }
 break;
 }
} ;

function getAttackCancelStartFrameSize_Fighter(FEiaZWB1pfOemFzlGreiKJx)
{
 local ZK_zWOKX5ecWfHRV6w3kcf = FEiaZWB1pfOemFzlGreiKJx.sq_GetAttackCancelStartFrameSize();
 if(CNSquirrelAppendage.sq_IsAppendAppendage(FEiaZWB1pfOemFzlGreiKJx, "character/fighter/poisonsnake/ap_poisonsnake.nut") == true)
 ZK_zWOKX5ecWfHRV6w3kcf = 4;
 return ZK_zWOKX5ecWfHRV6w3kcf;
} ;

function getAttackCancelStartFrame_Fighter(vFInKSM_e9eeZN, pPTghDb5k9ECXxE3)
{
 if(!vFInKSM_e9eeZN) return null;
 local mFeKimOrnaLLWJS = 0;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(vFInKSM_e9eeZN, "character/fighter/poisonsnake/ap_poisonsnake.nut") == true)
 {
 switch(pPTghDb5k9ECXxE3)
 {
 case 0:mFeKimOrnaLLWJS = 3; break;
 case 1:mFeKimOrnaLLWJS = 3; break;
 case 2:mFeKimOrnaLLWJS = 3; break;
 case 3:mFeKimOrnaLLWJS = 3; break;
 }
 }
 else
 mFeKimOrnaLLWJS = vFInKSM_e9eeZN.sq_GetAttackCancelStartFrame(pPTghDb5k9ECXxE3);
 return mFeKimOrnaLLWJS;
} ;

function getAttackAni_Fighter(vFInKSM_e9eeZN, pPTghDb5k9ECXxE3)
{
 if(!vFInKSM_e9eeZN) return null;
 local mFeKimOrnaLLWJS = vFInKSM_e9eeZN.sq_GetAttackAni(pPTghDb5k9ECXxE3);
 if(CNSquirrelAppendage.sq_IsAppendAppendage(vFInKSM_e9eeZN, "character/fighter/poisonsnake/ap_poisonsnake.nut") == true)
 mFeKimOrnaLLWJS = vFInKSM_e9eeZN.sq_GetCustomAni(130 + pPTghDb5k9ECXxE3);
 return mFeKimOrnaLLWJS;
} ;

function getDashAttackAni_Fighter(LiXaNxcKArX)
{
 if(!LiXaNxcKArX) return null;
 local AxJx13egl4aCFce2n = LiXaNxcKArX.sq_GetDashAttackAni();
 if(CNSquirrelAppendage.sq_IsAppendAppendage(LiXaNxcKArX, "character/fighter/poisonsnake/ap_poisonsnake.nut") == true)
 AxJx13egl4aCFce2n = sq_GetCustomAni(LiXaNxcKArX, 135);
 return AxJx13egl4aCFce2n;
} ;

function getJumpAttackAni_Fighter(LiXaNxcKArX)
{
 if(!LiXaNxcKArX) return null;
 local AxJx13egl4aCFce2n = LiXaNxcKArX.sq_GetJumpAttackAni();
 if(CNSquirrelAppendage.sq_IsAppendAppendage(LiXaNxcKArX, "character/fighter/poisonsnake/ap_poisonsnake.nut") == true)
 AxJx13egl4aCFce2n = LiXaNxcKArX.sq_GetCustomAni(136);
 return AxJx13egl4aCFce2n;
} ;

function getDefaultAttackInfo_Fighter(ElpnBTbJT_hv0UHrV, cvfDCz5u7ll3tGuEb)
{
 if(!ElpnBTbJT_hv0UHrV) return null;
 local cLp0q4frXfyFVwYdS = ElpnBTbJT_hv0UHrV.sq_GetDefaultAttackInfo(cvfDCz5u7ll3tGuEb);
 if(CNSquirrelAppendage.sq_IsAppendAppendage(ElpnBTbJT_hv0UHrV, "character/fighter/poisonsnake/ap_poisonsnake.nut") == true)
 {
 cLp0q4frXfyFVwYdS = sq_GetCustomAttackInfo(ElpnBTbJT_hv0UHrV, 72+ cvfDCz5u7ll3tGuEb); 
 sq_SetCurrentAttackBonusRate(cLp0q4frXfyFVwYdS, ElpnBTbJT_hv0UHrV.sq_GetBonusRateWithPassive(235, STATE_ATTACK, 2+ cvfDCz5u7ll3tGuEb, 1.0)); 
 }
 return cLp0q4frXfyFVwYdS;
} ;

function getDashAttackInfo_Fighter(sTPDVHmHbFXvsZHBLCWToz)
{
 if(!sTPDVHmHbFXvsZHBLCWToz) return null;
 local ef11ZaNkyYetFpEho = sTPDVHmHbFXvsZHBLCWToz.sq_GetDashAttackInfo();
 if(CNSquirrelAppendage.sq_IsAppendAppendage(sTPDVHmHbFXvsZHBLCWToz, "character/fighter/poisonsnake/ap_poisonsnake.nut") == true)
 {
 ef11ZaNkyYetFpEho = sq_GetCustomAttackInfo(sTPDVHmHbFXvsZHBLCWToz, 77);
 sq_SetCurrentAttackBonusRate(ef11ZaNkyYetFpEho, sTPDVHmHbFXvsZHBLCWToz.sq_GetBonusRateWithPassive(235, STATE_DASH_ATTACK, 7, 1.0)); 
 }
 return ef11ZaNkyYetFpEho;
} ;

function getJumpAttackInfo_Fighter(sTPDVHmHbFXvsZHBLCWToz)
{
 if(!sTPDVHmHbFXvsZHBLCWToz) return null;
 local ef11ZaNkyYetFpEho = sTPDVHmHbFXvsZHBLCWToz.sq_GetJumpAttackInfo();
 if(CNSquirrelAppendage.sq_IsAppendAppendage(sTPDVHmHbFXvsZHBLCWToz, "character/fighter/poisonsnake/ap_poisonsnake.nut") == true)
 {
 ef11ZaNkyYetFpEho = sq_GetCustomAttackInfo(sTPDVHmHbFXvsZHBLCWToz, 78);
 sq_SetCurrentAttackBonusRate(ef11ZaNkyYetFpEho, sTPDVHmHbFXvsZHBLCWToz.sq_GetBonusRateWithPassive(235, STATE_JUMP_ATTACK, 8, 1.0)); 
 }
 return ef11ZaNkyYetFpEho;
} ;



 
 

