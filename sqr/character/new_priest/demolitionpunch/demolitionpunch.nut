
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_priest_demolitionpunch(DkEHbbjx_24vxFBkGP)
{
 if(!DkEHbbjx_24vxFBkGP) return false; 
 if(DkEHbbjx_24vxFBkGP.isCarryWeapon())return false; 
 local ChaLUV1_4iGNDnbLOh93py = DkEHbbjx_24vxFBkGP.sq_IsUseSkill(243); 
 if(ChaLUV1_4iGNDnbLOh93py) 
 {
 DkEHbbjx_24vxFBkGP.sq_IntVectClear();
 DkEHbbjx_24vxFBkGP.sq_IntVectPush(0); 
 DkEHbbjx_24vxFBkGP.sq_AddSetStatePacket(243, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_priest_demolitionpunch(K6rGRjNpjZiHExpz1QH01)
{
 if(!K6rGRjNpjZiHExpz1QH01) return false; 
 if(K6rGRjNpjZiHExpz1QH01.isCarryWeapon())return false; 
 local SOLUeTyy7yadegblY6 = K6rGRjNpjZiHExpz1QH01.sq_GetState(); 
 if(SOLUeTyy7yadegblY6 == STATE_STAND) 
 return true; 
 if(SOLUeTyy7yadegblY6 == STATE_ATTACK) 
 {
 return K6rGRjNpjZiHExpz1QH01.sq_IsCommandEnable(243); 
 }
 return true; 
} ;

 
function onSetState_priest_demolitionpunch(VFJGPpv9KPx8AwUcyhJ8RGbA, kherIoO6wn4YDuCxiyJmJt, UNd7wos7y50gCpBqkD1n, UJx9CYdnIwN6AWuaqvG)
{
 if(!VFJGPpv9KPx8AwUcyhJ8RGbA) return; 
 VFJGPpv9KPx8AwUcyhJ8RGbA.sq_StopMove(); 
 local vHmSL0qs5hFHY107LNuT_m = VFJGPpv9KPx8AwUcyhJ8RGbA.sq_GetVectorData(UNd7wos7y50gCpBqkD1n, 0); 
 VFJGPpv9KPx8AwUcyhJ8RGbA.setSkillSubState(vHmSL0qs5hFHY107LNuT_m); 
 switch(vHmSL0qs5hFHY107LNuT_m)
 {
 case 0:
 VFJGPpv9KPx8AwUcyhJ8RGbA.sq_SetCurrentAnimation(139);
 VFJGPpv9KPx8AwUcyhJ8RGbA.getVar().clear_vector(); 
 VFJGPpv9KPx8AwUcyhJ8RGbA.getVar().push_vector(VFJGPpv9KPx8AwUcyhJ8RGbA.getXPos()); 
 VFJGPpv9KPx8AwUcyhJ8RGbA.sq_PlaySound("PR_DEMOLITION_PUNCH");
 break;
 case 1:
 VFJGPpv9KPx8AwUcyhJ8RGbA.sq_SetCurrentAnimation(140);
 VFJGPpv9KPx8AwUcyhJ8RGbA.sq_SetCurrentAttackInfo(106);
 VFJGPpv9KPx8AwUcyhJ8RGbA.sq_SetCurrentAttackBonusRate(VFJGPpv9KPx8AwUcyhJ8RGbA.sq_GetBonusRateWithPassive(243, 243, 0, 1.0)); 
 VFJGPpv9KPx8AwUcyhJ8RGbA.getVar().setBool(0, false); 
 break;
 }
 VFJGPpv9KPx8AwUcyhJ8RGbA.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

function onKeyFrameFlag_priest_demolitionpunch(QxXyLjUFvMK, OMf0bNtRIIfNu9TqCg2cl)
{
 if(!QxXyLjUFvMK) return;
 local UVPLR4W3Xg = QxXyLjUFvMK.getSkillSubState(); 
 if(UVPLR4W3Xg == 1)
 {
 if(OMf0bNtRIIfNu9TqCg2cl == 1)
 {
 sq_SetMyShake(QxXyLjUFvMK, 5, 150); 
 if(QxXyLjUFvMK.getVar().getBool(0) == true)
 {
 if(QxXyLjUFvMK.sq_IsMyControlObject())
 {
 QxXyLjUFvMK.sq_StartWrite();
 QxXyLjUFvMK.sq_WriteDword(243); 
 QxXyLjUFvMK.sq_WriteDword(QxXyLjUFvMK.sq_GetBonusRateWithPassive(243, 243, 1, 1.0)); 
 QxXyLjUFvMK.sq_SendCreatePassiveObjectPacket(24374, 0, 111, 0, 149);
 }
 }
 }
 }
 return true;
} ;

function onAttack_priest_demolitionpunch(hsVzBxuWKWm46ZPDUtj, sRFmxnD9DAjhTjYLSCa9YBe, DHkkysXQCbhY, zMgP6H6q9jIrL1SCir)
{
 if(!hsVzBxuWKWm46ZPDUtj) return;
 if(zMgP6H6q9jIrL1SCir || !sRFmxnD9DAjhTjYLSCa9YBe.isObjectType(OBJECTTYPE_ACTIVE))return;
 local vEJU7aXkJJc70M = hsVzBxuWKWm46ZPDUtj.getSkillSubState(); 
 switch(vEJU7aXkJJc70M)
 {
 case 1:
 if(hsVzBxuWKWm46ZPDUtj.getVar().getBool(0) == false) 
 hsVzBxuWKWm46ZPDUtj.getVar().setBool(0, true);
 local xVBkn760QgSrfp = hsVzBxuWKWm46ZPDUtj.getXPos();
 local ATp8yVbougeg = hsVzBxuWKWm46ZPDUtj.getYPos();
 local kYpUtnRHMJU9aW = hsVzBxuWKWm46ZPDUtj.getZPos() + 90;
 
 sq_MoveToNearMovablePos(sRFmxnD9DAjhTjYLSCa9YBe,
 sq_GetDistancePos(xVBkn760QgSrfp, hsVzBxuWKWm46ZPDUtj.getDirection(), 80), ATp8yVbougeg, kYpUtnRHMJU9aW, 
 xVBkn760QgSrfp, ATp8yVbougeg, kYpUtnRHMJU9aW,
 80, -1, 5);
 break;
 }
} ;

function onProc_priest_demolitionpunch(HffC_OLg50SfZM4yPC)
{
 if(!HffC_OLg50SfZM4yPC) return;
 local dUiGA0PGnc_1Atjg3II5v9 = HffC_OLg50SfZM4yPC.getSkillSubState(); 
 if(dUiGA0PGnc_1Atjg3II5v9 == 0 && HffC_OLg50SfZM4yPC.getVar().size_vector() > 0)
 {
 local kgryjWQYofA9LcQTXiCpZ5_0 = HffC_OLg50SfZM4yPC.getCurrentAnimation(); 
 local nW1m1Jo5UBhv = sq_GetCurrentTime(kgryjWQYofA9LcQTXiCpZ5_0); 
 local heMKOT_5nZx2GHEK6uhe5 = kgryjWQYofA9LcQTXiCpZ5_0.getDelaySum(false); 
 local qn5ubl3wmq68MOa1fs04COnv = sq_GetDistancePos(HffC_OLg50SfZM4yPC.getVar().get_vector(0), 
 HffC_OLg50SfZM4yPC.getDirection(),
 sq_GetAccel(0, 30, nW1m1Jo5UBhv, heMKOT_5nZx2GHEK6uhe5, true)); 
 if(HffC_OLg50SfZM4yPC.isMovablePos(qn5ubl3wmq68MOa1fs04COnv, HffC_OLg50SfZM4yPC.getYPos()))
 sq_setCurrentAxisPos(HffC_OLg50SfZM4yPC, 0, qn5ubl3wmq68MOa1fs04COnv); 
 else
 HffC_OLg50SfZM4yPC.getVar().clear_vector(); 
 }
} ;

 
function onEndCurrentAni_priest_demolitionpunch(MOEXwxN3BI9_8fGpqEHzZSl)
{
 if(!MOEXwxN3BI9_8fGpqEHzZSl) return;
 if(!MOEXwxN3BI9_8fGpqEHzZSl.sq_IsMyControlObject())return;
 local C1rUkZdUF44hBpo7fzd5Ga = MOEXwxN3BI9_8fGpqEHzZSl.getSkillSubState(); 
 if(C1rUkZdUF44hBpo7fzd5Ga == 0)
 {
 MOEXwxN3BI9_8fGpqEHzZSl.sq_IntVectClear();
 MOEXwxN3BI9_8fGpqEHzZSl.sq_IntVectPush(C1rUkZdUF44hBpo7fzd5Ga + 1); 
 MOEXwxN3BI9_8fGpqEHzZSl.sq_AddSetStatePacket(243, STATE_PRIORITY_USER, true); 
 }
 else
 MOEXwxN3BI9_8fGpqEHzZSl.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;


