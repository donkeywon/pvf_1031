
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_swordman_tombstoneswamp(mKg_bMUuI0X5Uuue1mE)
{
 if(!mKg_bMUuI0X5Uuue1mE) return false; 
 
 local C729WQi14Xlkjv = onGetMyPassiveObject_My(mKg_bMUuI0X5Uuue1mE, 24370, 247, 0); 
 if(C729WQi14Xlkjv)
 {
 if(C729WQi14Xlkjv.getState() == 11) 
 C729WQi14Xlkjv.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "");
 return false;
 }
 local HOea3yg7a9tScgRFn5 = mKg_bMUuI0X5Uuue1mE.sq_IsUseSkill(247); 
 if(HOea3yg7a9tScgRFn5) 
 {
 mKg_bMUuI0X5Uuue1mE.sq_AddSetStatePacket(247, STATE_PRIORITY_USER, false); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_swordman_tombstoneswamp(p1Grv8OyQF)
{
 if(!p1Grv8OyQF) return false; 
 local t_zyVB_HjJHROZa = p1Grv8OyQF.sq_GetState(); 
 if(t_zyVB_HjJHROZa == STATE_STAND) 
 return true; 
 if(t_zyVB_HjJHROZa == STATE_ATTACK) 
 {
 return p1Grv8OyQF.sq_IsCommandEnable(247); 
 }
 return true; 
} ;


 
function onSetState_swordman_tombstoneswamp(p1Grv8OyQF, t_zyVB_HjJHROZa, bNGULH7t2EVh, AnVDtU03cx_wdNq)
{
 if(!p1Grv8OyQF) return; 
 p1Grv8OyQF.sq_StopMove(); 
 p1Grv8OyQF.sq_SetCurrentAnimation(169); 
 p1Grv8OyQF.sq_PlaySound("SM_TOMBSTONE"); 
 p1Grv8OyQF.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

 
function onKeyFrameFlag_swordman_tombstoneswamp(XrtkcpPtxWZ5aYy, Zk0nSvriw56LKOZorOC)
{
 if(!XrtkcpPtxWZ5aYy)return false;
 if(Zk0nSvriw56LKOZorOC == 1&& XrtkcpPtxWZ5aYy.sq_IsMyControlObject())
 {
 local WUxR8IAea7uRRs = sq_GetSkillLevel(XrtkcpPtxWZ5aYy, 247); 
 
 XrtkcpPtxWZ5aYy.sq_StartWrite();
 XrtkcpPtxWZ5aYy.sq_WriteDword(247); 
 XrtkcpPtxWZ5aYy.sq_WriteDword(sq_GetLevelData(XrtkcpPtxWZ5aYy, 247, 0, WUxR8IAea7uRRs)); 
 XrtkcpPtxWZ5aYy.sq_WriteDword(sq_GetLevelData(XrtkcpPtxWZ5aYy, 247, 1, WUxR8IAea7uRRs)); 
 XrtkcpPtxWZ5aYy.sq_WriteDword(sq_GetLevelData(XrtkcpPtxWZ5aYy, 247, 2, WUxR8IAea7uRRs)); 
 XrtkcpPtxWZ5aYy.sq_WriteDword(XrtkcpPtxWZ5aYy.sq_GetBonusRateWithPassive(247, 247, 3, 1.0)); 
 local JEqEd0BuheLfS = 0; 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL)) 
 JEqEd0BuheLfS = sq_GetLevelData(XrtkcpPtxWZ5aYy, 247, 5, WUxR8IAea7uRRs); 
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL)) 
 JEqEd0BuheLfS = sq_GetLevelData(XrtkcpPtxWZ5aYy, 247, 4, WUxR8IAea7uRRs); 
 XrtkcpPtxWZ5aYy.sq_SendCreatePassiveObjectPacket(24370, 0, sq_GetDistancePos(0, XrtkcpPtxWZ5aYy.getDirection(), JEqEd0BuheLfS), 0, 0);
 }
 else if(Zk0nSvriw56LKOZorOC == 2)
 sq_SetMyShake(XrtkcpPtxWZ5aYy, 5, 200); 
 return true;
} ;


 
function onEndCurrentAni_swordman_tombstoneswamp(gOjrE1u40TWg)
{
 if(!gOjrE1u40TWg)return;
 if(!gOjrE1u40TWg.sq_IsMyControlObject())return;
 gOjrE1u40TWg.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;


