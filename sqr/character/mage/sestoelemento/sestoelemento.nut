
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function checkExecutableSkill_mage_sestoelemento(obj)
{
 if(!obj) return false;
 local f_qymQQUOix3z9I7MEKrv = obj.sq_IsUseSkill(253);
 if(f_qymQQUOix3z9I7MEKrv)
 {

 obj.sq_IsEnterSkillLastKeyUnits(253);
 obj.sq_IntVectClear();
 obj.sq_IntVectPush(0);
 obj.sq_AddSetStatePacket(253, STATE_PRIORITY_USER, true);
 return true;
 }
 return false;
} ;


function checkCommandEnable_mage_sestoelemento(obj)
{
 if(!obj) return false;
 local f_qymQQUOix3z9I7MEKrv = obj.sq_GetState();
 if(f_qymQQUOix3z9I7MEKrv == STATE_STAND)
 return true;
 if(f_qymQQUOix3z9I7MEKrv == STATE_ATTACK)
 {
 return obj.sq_IsCommandEnable(253);
 }
 return true;
} ;



function onSetState_mage_sestoelemento(obj, y3_u39GyX_aFwiNBL, rQ3zhJ7SyAj_nKAXeCEv, pCxq4qAfQ2l)
{
 if(!obj) return;
 obj.sq_StopMove();
 local SS8zTT98oC3JXkx3i53as = obj.sq_GetVectorData(rQ3zhJ7SyAj_nKAXeCEv, 0);
 obj.setSkillSubState(SS8zTT98oC3JXkx3i53as);
 switch(SS8zTT98oC3JXkx3i53as)
 {
 case 0:
 obj.sq_SetCurrentAnimation(120);
 local XUmoaYggYONrJ5Wknu = sq_GetSkillLevel(obj, 253);
 local xFiKYuRII6cM8k7K = sq_GetCastTime(obj, 253, XUmoaYggYONrJ5Wknu);
 sq_StartDrawCastGauge(obj, xFiKYuRII6cM8k7K, true);
 local CdpcACydLIWglKbFK = obj.sq_GetLevelData(253, 5, XUmoaYggYONrJ5Wknu);
 local JEHC1IMIi9PJDPr8beBNTZ1x = obj.getCurrentAnimation();
 local T2oyyMeuzpyTMsRv3R6T1 = JEHC1IMIi9PJDPr8beBNTZ1x.getDelaySum(false);

 obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
 local XwpasKXaVWa7lYIl2wbmphB = JEHC1IMIi9PJDPr8beBNTZ1x.getDelaySum(false);
 local RLalWyVKDY97VVTsd = XwpasKXaVWa7lYIl2wbmphB.tofloat() / T2oyyMeuzpyTMsRv3R6T1.tofloat();
 local xYaKXNJEWC7l = (xFiKYuRII6cM8k7K.tofloat() * RLalWyVKDY97VVTsd).tointeger();
 obj.getVar().setBool(0, false);
 obj.getVar().clear_vector();
 obj.getVar().push_vector(xYaKXNJEWC7l);
 obj.getVar().push_vector(CdpcACydLIWglKbFK);
 break;
 case 1:
 local nrJDzvlPUUxdFvQv6nw = obj.sq_GetVectorData(rQ3zhJ7SyAj_nKAXeCEv, 1);
 local xFiKYuRII6cM8k7K = obj.getVar().get_vector(0);
 local CdpcACydLIWglKbFK = obj.getVar().get_vector(1);
 obj.sq_SetCurrentAnimation(119);
 local XUmoaYggYONrJ5Wknu = sq_GetSkillLevel(obj, 253);
 local KYkBgdoAaaaeLVdCqTG2Q = obj.sq_GetLevelData(253, 3, XUmoaYggYONrJ5Wknu);
 local qj5YU4UIa4kdE = obj.sq_GetLevelData(253, 4, XUmoaYggYONrJ5Wknu);
 local On_QMP7QsZTtzJK1N0 = sq_GetUniformVelocity(KYkBgdoAaaaeLVdCqTG2Q, qj5YU4UIa4kdE, nrJDzvlPUUxdFvQv6nw - xFiKYuRII6cM8k7K, CdpcACydLIWglKbFK);
 obj.getVar().clear_vector();
 obj.getVar().push_vector(On_QMP7QsZTtzJK1N0);
 obj.sq_PlaySound("WZ_SESTOELEMENTO_CAST");
 break;
 case 2:
 obj.sq_SetCurrentAnimation(121);
 obj.sq_PlaySound("WZ_SESTOELEMENTO");
 break;
 case 3:
 obj.sq_SetCurrentAnimation(122);
 break;
 }
 if(SS8zTT98oC3JXkx3i53as != 0)
 obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
} ;

function onKeyFrameFlag_mage_sestoelemento(icLS0JfVn7CfJWZ2VIF2Jl, ARr1YFhgQx_3M64ApfOw)
{
 if(!icLS0JfVn7CfJWZ2VIF2Jl)return false;
 local EXg_l5RvyE0UDq7GGP89P = icLS0JfVn7CfJWZ2VIF2Jl.getSkillSubState();
 switch(EXg_l5RvyE0UDq7GGP89P)
 {
 case 1:
 if(ARr1YFhgQx_3M64ApfOw == 2)
 {
 if(icLS0JfVn7CfJWZ2VIF2Jl.sq_IsMyControlObject())
 {
 local CKbXVKNxY7iVqP = sq_GetSkillLevel(icLS0JfVn7CfJWZ2VIF2Jl, 253);

 icLS0JfVn7CfJWZ2VIF2Jl.sq_StartWrite();
 icLS0JfVn7CfJWZ2VIF2Jl.sq_WriteDword(253);
 icLS0JfVn7CfJWZ2VIF2Jl.sq_WriteDword(icLS0JfVn7CfJWZ2VIF2Jl.sq_GetBonusRateWithPassive(253, 253, 1, 1.0));
 icLS0JfVn7CfJWZ2VIF2Jl.sq_WriteDword(icLS0JfVn7CfJWZ2VIF2Jl.sq_GetBonusRateWithPassive(253, 253, 2, 1.0));
 icLS0JfVn7CfJWZ2VIF2Jl.sq_WriteDword(icLS0JfVn7CfJWZ2VIF2Jl.sq_GetLevelData(253, 0, CKbXVKNxY7iVqP));
 icLS0JfVn7CfJWZ2VIF2Jl.sq_WriteDword(icLS0JfVn7CfJWZ2VIF2Jl.getVar().get_vector(0));
 icLS0JfVn7CfJWZ2VIF2Jl.sq_SendCreatePassiveObjectPacket(24372, 0, 290, -150, 0);
 }
 }
 break;
 case 3:
 if(ARr1YFhgQx_3M64ApfOw == 1)
 {
 if(icLS0JfVn7CfJWZ2VIF2Jl.sq_IsMyControlObject())
 {
 local eeODLaLMfrBBVcYQ24e_bk = icLS0JfVn7CfJWZ2VIF2Jl.getMyPassiveObjectCount(24372);
 if(eeODLaLMfrBBVcYQ24e_bk > 0)
 {
 for(local oFnDNZhJ0gMDvjfL02 = 0; oFnDNZhJ0gMDvjfL02 < eeODLaLMfrBBVcYQ24e_bk; oFnDNZhJ0gMDvjfL02++)
 {
 local oI_C2_0ntLNAoWYn_anC6Nf = icLS0JfVn7CfJWZ2VIF2Jl.getMyPassiveObject(24372, oFnDNZhJ0gMDvjfL02);
 if(!oI_C2_0ntLNAoWYn_anC6Nf) continue;
 if(oI_C2_0ntLNAoWYn_anC6Nf.getVar("skill").get_vector(0) == 253
 && oI_C2_0ntLNAoWYn_anC6Nf.getVar("state").get_vector(0) != 10)
 {

 local RNP89YeeNUoLqLvFNswM2TU = sq_GetGlobalIntVector();
 sq_IntVectorClear(RNP89YeeNUoLqLvFNswM2TU);
 oI_C2_0ntLNAoWYn_anC6Nf.addSetStatePacket(10, RNP89YeeNUoLqLvFNswM2TU, STATE_PRIORITY_AUTO, false, "");
 }
 }
 }
 }
 }
 break;
 }
 return true;
} ;

function onEndState_mage_sestoelemento(BsXM5XNAZSWIoct, rMMifh9oLR9TTSDxYh5C8)
{
 if(!BsXM5XNAZSWIoct) return;
 if(rMMifh9oLR9TTSDxYh5C8 != 253)
 sq_EndDrawCastGauge(BsXM5XNAZSWIoct);

 if(CNSquirrelAppendage.sq_IsAppendAppendage(BsXM5XNAZSWIoct, "character/mage/appendage/ap_chargingeffect.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(BsXM5XNAZSWIoct, "character/mage/appendage/ap_chargingeffect.nut");
} ;

function onProcCon_mage_sestoelemento(BsXM5XNAZSWIoct)
{
 if(!BsXM5XNAZSWIoct) return;
 local rMMifh9oLR9TTSDxYh5C8 = BsXM5XNAZSWIoct.getSkillSubState();
 if(rMMifh9oLR9TTSDxYh5C8 == 0)
 {
 local vgkEvQCZ7QY = BsXM5XNAZSWIoct.getVar().get_vector(0);
 local KUJ11beW7zAa68M72Z = BsXM5XNAZSWIoct.sq_GetStateTimer();

 if(KUJ11beW7zAa68M72Z >= vgkEvQCZ7QY)
 {
 if(BsXM5XNAZSWIoct.isDownSkillLastKey())
 {

 if(BsXM5XNAZSWIoct.getVar().getBool(0) == false)
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1);
 sq_BinaryWriteDword(BsXM5XNAZSWIoct.getVar().get_vector(1));
 sq_SendChangeSkillEffectPacket(BsXM5XNAZSWIoct, 253);
 BsXM5XNAZSWIoct.getVar().setBool(0, true);
 }
 }
 else
 {
 BsXM5XNAZSWIoct.sq_IntVectClear();
 BsXM5XNAZSWIoct.sq_IntVectPush(1);
 BsXM5XNAZSWIoct.sq_IntVectPush(KUJ11beW7zAa68M72Z);
 BsXM5XNAZSWIoct.sq_AddSetStatePacket(253, STATE_PRIORITY_USER, true);
 }
 }
 }
} ;


function onEndCurrentAni_mage_sestoelemento(obj)
{
 if(!obj) return;
 if(!obj.sq_IsMyControlObject()) return;
 local SubState = obj.getSkillSubState();
 if(SubState == 2)
 {
 obj.sq_IntVectClear();
 obj.sq_IntVectPush(3);
 obj.sq_AddSetStatePacket(253, STATE_PRIORITY_USER, true);
 }
 else if(SubState == 3)
 obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
} ;


function getScrollBasisPos_mage_sestoelemento(obj)
{
 if(!obj) return;
 if(!obj.sq_IsMyControlObject()) return;
 local SubState = obj.getSkillSubState();
 switch(SubState)
 {
 case 1:
 case 2:
 local skEES9Fe9tRg2wqXjpN7YLm = (SubState == 1)
 ?obj.sq_GetStateTimer()
 : 200;
 local F0mKFGsRR37d = sq_GetDistancePos(obj.getXPos(),
 obj.getDirection(),
 sq_GetUniformVelocity(0, 300, skEES9Fe9tRg2wqXjpN7YLm, 200));
 obj.sq_SetCameraScrollPosition(F0mKFGsRR37d, obj.getYPos(), 0);
 return true;
 case 3:
 local FkzhAGeE3n5u7SAfXid = obj.sq_GetCurrentAni();
 local skEES9Fe9tRg2wqXjpN7YLm = sq_GetCurrentTime(FkzhAGeE3n5u7SAfXid);
 local nzWU3EuPFScyXUZxpzaE = FkzhAGeE3n5u7SAfXid.getDelaySum(0, 0);
 local F0mKFGsRR37d = sq_GetDistancePos(obj.getXPos(),
 obj.getDirection(),
 sq_GetUniformVelocity(380, 0, skEES9Fe9tRg2wqXjpN7YLm, nzWU3EuPFScyXUZxpzaE));
 obj.sq_SetCameraScrollPosition(F0mKFGsRR37d, obj.getYPos(), 0);
 return true;
 }
 return false;
} ;


