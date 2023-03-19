
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


function onAfterSetState_priest_attack(wuwWndgc5uQvq, NOZoRDxEi6Ru4YgXAs, NqlchM1GTjOK, q3oXejoUPjM5Ni)
{
 if(!wuwWndgc5uQvq) return;
} ;


if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onKeyFrameFlag_priest_attack(DkEHbbjx_24vxFBkGP, ChaLUV1_4iGNDnbLOh93py)
{
 if(!DkEHbbjx_24vxFBkGP) return false;
 if(DkEHbbjx_24vxFBkGP.isCurrentCutomAniIndex(191) 
 && CNSquirrelAppendage.sq_IsAppendAppendage(DkEHbbjx_24vxFBkGP, "character/new_priest/jupiter/ap_jupiter.nut") == true
 && DkEHbbjx_24vxFBkGP.sq_IsMyControlObject()) 
 {
 if(ChaLUV1_4iGNDnbLOh93py == 0)
 {
 sq_SetMyShake(DkEHbbjx_24vxFBkGP, 5, 80); 
 DkEHbbjx_24vxFBkGP.sq_StartWrite();
 DkEHbbjx_24vxFBkGP.sq_WriteDword(250); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(1); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(DkEHbbjx_24vxFBkGP.sq_GetBonusRateWithPassive(250, 8, 1, 1.0)); 
 DkEHbbjx_24vxFBkGP.sq_SendCreatePassiveObjectPacket(24374, 0, 190, 0, 0);
 DkEHbbjx_24vxFBkGP.sq_StartWrite();
 DkEHbbjx_24vxFBkGP.sq_WriteDword(250); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(2); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(DkEHbbjx_24vxFBkGP.sq_GetBonusRateWithPassive(250, 8, 2, 1.0)); 
 DkEHbbjx_24vxFBkGP.sq_SendCreatePassiveObjectPacket(24374, 0, 190, 0, 0);
 }
 }
 return true;
} ;

