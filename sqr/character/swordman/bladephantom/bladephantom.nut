
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function checkExecutableSkill_swordman_bladephantom(AcF2yrW5Icy7Oi)
{
 if(!AcF2yrW5Icy7Oi) return false; 
 
 local otyGuZBljNaPyTRZ4d = onGetMyPassiveObject_My(AcF2yrW5Icy7Oi, 24370, 239, 1); 
 if(otyGuZBljNaPyTRZ4d)
 {
 if(otyGuZBljNaPyTRZ4d.getState() == 11) 
 otyGuZBljNaPyTRZ4d.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "");
 return false;
 }
 local JTnWVAkrIZ = AcF2yrW5Icy7Oi.sq_IsUseSkill(239); 
 if(JTnWVAkrIZ) 
 {
 AcF2yrW5Icy7Oi.sq_AddSetStatePacket(239, STATE_PRIORITY_USER, false); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_swordman_bladephantom(AcF2yrW5Icy7Oi)
{
 if(!AcF2yrW5Icy7Oi) return false; 
 local otyGuZBljNaPyTRZ4d = AcF2yrW5Icy7Oi.sq_GetState(); 
 if(otyGuZBljNaPyTRZ4d == STATE_STAND) 
 return true; 
 if(otyGuZBljNaPyTRZ4d == STATE_ATTACK) 
 {
 return AcF2yrW5Icy7Oi.sq_IsCommandEnable(239); 
 }
 return true; 
} ;

 
function onSetState_swordman_bladephantom(yM_GsV7BrmV, WFVzbTEymxIXEt1g, oH6Aol4DqkyWGgGAWNkD, taDEmEo6e7)
{
 if(!yM_GsV7BrmV) return; 
 yM_GsV7BrmV.sq_StopMove(); 
 yM_GsV7BrmV.sq_SetCurrentAnimation(10); 
 local Dr3AKIraLOdedYD5Z90uQEO = (yM_GsV7BrmV.getCurrentAnimation()).getDelaySum(0, 7); 
 sq_StartDrawCastGauge(yM_GsV7BrmV, Dr3AKIraLOdedYD5Z90uQEO, true); 
 yM_GsV7BrmV.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

function onKeyFrameFlag_swordman_bladephantom(yM_GsV7BrmV, WFVzbTEymxIXEt1g)
{
 if(!yM_GsV7BrmV) return false;
 if(WFVzbTEymxIXEt1g == 100)
 {
 if(yM_GsV7BrmV.sq_IsMyControlObject())
 {
 local oH6Aol4DqkyWGgGAWNkD = sq_GetSkillLevel(yM_GsV7BrmV, 239); 
 local taDEmEo6e7 = 240; 
 local Dr3AKIraLOdedYD5Z90uQEO = 70; 
 local Qs7AJFUNpsL = sq_GetLevelData(yM_GsV7BrmV, 239, 5, oH6Aol4DqkyWGgGAWNkD); 
 local l4XXS6CpP7hNFvhNwK = Qs7AJFUNpsL.tofloat() / taDEmEo6e7.tofloat(); 
 local uvMtvmxc51hZ1D = (l4XXS6CpP7hNFvhNwK * 100.0).tointeger(); 
 local FHy6vxIhsgV9 = (Dr3AKIraLOdedYD5Z90uQEO.tofloat() * l4XXS6CpP7hNFvhNwK).tointeger(); 
 
 yM_GsV7BrmV.sq_StartWrite();
 yM_GsV7BrmV.sq_WriteDword(239); 
 yM_GsV7BrmV.sq_WriteDword(1); 
 yM_GsV7BrmV.sq_WriteDword(yM_GsV7BrmV.sq_GetBonusRateWithPassive(239, 239, 1, 1.0)); 
 yM_GsV7BrmV.sq_WriteDword(yM_GsV7BrmV.sq_GetBonusRateWithPassive(239, 239, 2, 1.0)); 
 yM_GsV7BrmV.sq_WriteDword(yM_GsV7BrmV.sq_GetBonusRateWithPassive(239, 239, 3, 1.0)); 
 yM_GsV7BrmV.sq_WriteDword(sq_GetLevelData(yM_GsV7BrmV, 239, 4, oH6Aol4DqkyWGgGAWNkD)); 
 yM_GsV7BrmV.sq_WriteDword(Qs7AJFUNpsL); 
 yM_GsV7BrmV.sq_WriteDword(sq_GetLevelData(yM_GsV7BrmV, 239, 6, oH6Aol4DqkyWGgGAWNkD)); 
 yM_GsV7BrmV.sq_WriteDword(uvMtvmxc51hZ1D); 
 yM_GsV7BrmV.sq_WriteDword(FHy6vxIhsgV9); 
 yM_GsV7BrmV.sq_WriteDword(sq_GetLevelData(yM_GsV7BrmV, 239, 0, oH6Aol4DqkyWGgGAWNkD)); 
 yM_GsV7BrmV.sq_SendCreatePassiveObjectPacket(24370, 0, 125, 0, 0); 
 }
 yM_GsV7BrmV.sq_PlaySound("SM_PHANTOMBLADE"); 
 }
 return true;
} ;

 
function onEndCurrentAni_swordman_bladephantom(msHupiwX08VkqwCVdv0cjZ)
{
 if(!msHupiwX08VkqwCVdv0cjZ) return; 
 if(!msHupiwX08VkqwCVdv0cjZ.sq_IsMyControlObject()) return;
 msHupiwX08VkqwCVdv0cjZ.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

function onEndState_swordman_bladephantom(msHupiwX08VkqwCVdv0cjZ, wwAKtcMyMnzJQQTEHc60UVz)
{
 if(!msHupiwX08VkqwCVdv0cjZ) return;
 if(wwAKtcMyMnzJQQTEHc60UVz != 239)
 {
 sq_EndDrawCastGauge(msHupiwX08VkqwCVdv0cjZ); 
 }
} ;

