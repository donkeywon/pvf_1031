
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function checkExecutableSkill_gunner_seventhflow(d_Ru0gCCOqz1reZ8EKjqU8nX)
{
 if(!d_Ru0gCCOqz1reZ8EKjqU8nX) return false; 
 local Sd3ibfZrLJ9OQiW8 = d_Ru0gCCOqz1reZ8EKjqU8nX.sq_IsUseSkill(240); 
 if(Sd3ibfZrLJ9OQiW8) 
 {
 d_Ru0gCCOqz1reZ8EKjqU8nX.sq_IntVectClear();
 d_Ru0gCCOqz1reZ8EKjqU8nX.sq_IntVectPush(0); 
 d_Ru0gCCOqz1reZ8EKjqU8nX.sq_AddSetStatePacket(240, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_gunner_seventhflow(OxJ176kStrwa1OykCytqdY)
{
 if(!OxJ176kStrwa1OykCytqdY) return false; 
 local z6EYed4aCW6xmV8G7pH95 = OxJ176kStrwa1OykCytqdY.sq_GetState(); 
 if(z6EYed4aCW6xmV8G7pH95 == STATE_STAND) 
 return true; 
 if(z6EYed4aCW6xmV8G7pH95 == STATE_ATTACK) 
 {
 return OxJ176kStrwa1OykCytqdY.sq_IsCommandEnable(240); 
 }
 return true; 
} ;

 
function onSetState_gunner_seventhflow(OxJ176kStrwa1OykCytqdY, z6EYed4aCW6xmV8G7pH95, QoPmDKH9nlMOlVck, cqXiAVtIvDl7J)
{
 if(!OxJ176kStrwa1OykCytqdY) return; 
 local WOBEaVRWrcD2TcLzro = OxJ176kStrwa1OykCytqdY.sq_GetVectorData(QoPmDKH9nlMOlVck, 0); 
 OxJ176kStrwa1OykCytqdY.setSkillSubState(WOBEaVRWrcD2TcLzro); 
 local rh_w9DdcZy5d2ICz_vp = OxJ176kStrwa1OykCytqdY.sq_GetVectorData(QoPmDKH9nlMOlVck, 1); 
 if(rh_w9DdcZy5d2ICz_vp != -1)OxJ176kStrwa1OykCytqdY.setDirection(rh_w9DdcZy5d2ICz_vp); 
 local WEHBgvIiPH2n = OxJ176kStrwa1OykCytqdY.sq_GetVectorData(QoPmDKH9nlMOlVck, 2); 
 OxJ176kStrwa1OykCytqdY.getVar("state").clear_vector(); 
 OxJ176kStrwa1OykCytqdY.getVar("state").push_vector(WEHBgvIiPH2n); 
 
 if(WEHBgvIiPH2n == -1)
 OxJ176kStrwa1OykCytqdY.sq_StopMove(); 
 OxJ176kStrwa1OykCytqdY.getVar("move").clear_vector(); 
 OxJ176kStrwa1OykCytqdY.getVar("move").push_vector(OxJ176kStrwa1OykCytqdY.getXPos()); 
 OxJ176kStrwa1OykCytqdY.getVar("move").push_vector(OxJ176kStrwa1OykCytqdY.getYPos()); 
 switch(WOBEaVRWrcD2TcLzro)
 {
 case 0: 
 OxJ176kStrwa1OykCytqdY.sq_SetCurrentAnimation(149); 
 local nF8vvFJNkAs8 = sq_GetSkillLevel(OxJ176kStrwa1OykCytqdY, 240); 
 OxJ176kStrwa1OykCytqdY.getVar().clear_vector(); 
 OxJ176kStrwa1OykCytqdY.getVar().push_vector(100); 
 OxJ176kStrwa1OykCytqdY.getVar().push_vector(sq_GetLevelData(OxJ176kStrwa1OykCytqdY, 240, 2, nF8vvFJNkAs8)); 
 OxJ176kStrwa1OykCytqdY.getVar().push_vector(sq_GetLevelData(OxJ176kStrwa1OykCytqdY, 240, 3, nF8vvFJNkAs8)); 
 break;
 case 1: 
 switch(WEHBgvIiPH2n)
 {
 case 0: 
 OxJ176kStrwa1OykCytqdY.sq_SetCurrentAnimation(136); 
 OxJ176kStrwa1OykCytqdY.getVar("move").push_vector(100); 
 OxJ176kStrwa1OykCytqdY.getVar("move").push_vector(-100); 
 
 sq_CreateParticle("character/gunner/effect/animation/seventhflow/dust_particle/dust.ptl", OxJ176kStrwa1OykCytqdY, 0, 0, 0, true, 250, 0, 25);
 break;
 case 1: 
 OxJ176kStrwa1OykCytqdY.sq_SetCurrentAnimation(137); 
 break;
 }
 break;
 case 2: 
 switch(WEHBgvIiPH2n)
 {
 case 0: 
 OxJ176kStrwa1OykCytqdY.sq_SetCurrentAnimation(138); 
 OxJ176kStrwa1OykCytqdY.getVar("move").push_vector(100); 
 OxJ176kStrwa1OykCytqdY.getVar("move").push_vector(200); 
 break;
 case 1: 
 OxJ176kStrwa1OykCytqdY.sq_SetCurrentAnimation(139); 
 break;
 }
 break;
 case 3: 
 switch(WEHBgvIiPH2n)
 {
 case 0: 
 OxJ176kStrwa1OykCytqdY.sq_SetCurrentAnimation(140); 
 OxJ176kStrwa1OykCytqdY.getVar("move").push_vector(100); 
 OxJ176kStrwa1OykCytqdY.getVar("move").push_vector(-200); 
 break;
 case 1: 
 OxJ176kStrwa1OykCytqdY.sq_SetCurrentAnimation(141); 
 break;
 }
 break;
 case 4: 
 switch(WEHBgvIiPH2n)
 {
 case 0: 
 OxJ176kStrwa1OykCytqdY.sq_SetCurrentAnimation(142); 
 OxJ176kStrwa1OykCytqdY.getVar("move").push_vector(100); 
 OxJ176kStrwa1OykCytqdY.getVar("move").push_vector(150); 
 break;
 case 1: 
 OxJ176kStrwa1OykCytqdY.sq_SetCurrentAnimation(143); 
 break;
 }
 break;
 case 5: 
 switch(WEHBgvIiPH2n)
 {
 case 0: 
 OxJ176kStrwa1OykCytqdY.sq_SetCurrentAnimation(144); 
 OxJ176kStrwa1OykCytqdY.getVar("move").push_vector(100); 
 OxJ176kStrwa1OykCytqdY.getVar("move").push_vector(-150); 
 break;
 case 1: 
 OxJ176kStrwa1OykCytqdY.sq_SetCurrentAnimation(145); 
 break;
 }
 break;
 case 6: 
 switch(WEHBgvIiPH2n)
 {
 case 0: 
 OxJ176kStrwa1OykCytqdY.sq_SetCurrentAnimation(146); 
 OxJ176kStrwa1OykCytqdY.getVar("move").push_vector(25); 
 OxJ176kStrwa1OykCytqdY.getVar("move").push_vector(20); 
 break;
 case 1: 
 OxJ176kStrwa1OykCytqdY.sq_SetCurrentAnimation(147); 
 OxJ176kStrwa1OykCytqdY.getVar("move").push_vector(75); 
 OxJ176kStrwa1OykCytqdY.getVar("move").push_vector(55); 
 if(OxJ176kStrwa1OykCytqdY.sq_IsMyControlObject())
 sq_flashScreen(OxJ176kStrwa1OykCytqdY, 0, OxJ176kStrwa1OykCytqdY.sq_GetDelaySum(), 200, 120, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 }
 break;
 case 7: 
 OxJ176kStrwa1OykCytqdY.sq_SetCurrentAnimation(148); 
 
 sq_RemoveParticle("character/gunner/effect/animation/seventhflow/dust_particle/dust.ptl", OxJ176kStrwa1OykCytqdY); 
 break;
 }
} ;

 
function onKeyFrameFlag_gunner_seventhflow(VfpIygEfGu4ByI, P7tHFsur9LwHQBIo9dcyIXMu)
{
 if(!VfpIygEfGu4ByI) return false;
 local XSE4oV0z6nkSmQVYq9 = VfpIygEfGu4ByI.getSkillSubState(); 
 switch(XSE4oV0z6nkSmQVYq9)
 {
 case 0: 
 if(VfpIygEfGu4ByI.sq_IsMyControlObject())
 if(P7tHFsur9LwHQBIo9dcyIXMu == 1) 
 sq_flashScreen(VfpIygEfGu4ByI, 0, 60, 0, 255, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 else if(P7tHFsur9LwHQBIo9dcyIXMu == 2) 
 sq_flashScreen(VfpIygEfGu4ByI, 0, 60, 180, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 break;
 case 1: 
 case 2: 
 case 3: 
 case 4: 
 case 5: 
 if(P7tHFsur9LwHQBIo9dcyIXMu == 1)
 if(VfpIygEfGu4ByI.sq_IsMyControlObject())
 {
 sq_SetMyShake(VfpIygEfGu4ByI, 2, 80); 
 sq_flashScreen(VfpIygEfGu4ByI, 0, 0, 80, 70, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 
 VfpIygEfGu4ByI.sq_StartWrite();
 VfpIygEfGu4ByI.sq_WriteDword(240); 
 VfpIygEfGu4ByI.sq_WriteDword(XSE4oV0z6nkSmQVYq9); 
 VfpIygEfGu4ByI.sq_WriteDword(VfpIygEfGu4ByI.sq_GetBonusRateWithPassive(240, 240, 0, 1.0)); 
 VfpIygEfGu4ByI.sq_SendCreatePassiveObjectPacket(24371, 0, 0, 0, 0); 
 }
 break;
 case 6: 
 local rQ2k7NCWAluF8MuCWY8KVq = 0.0; 
 switch(P7tHFsur9LwHQBIo9dcyIXMu)
 {
 case 1: rQ2k7NCWAluF8MuCWY8KVq = 2.6179799999999998; break;
 case 2: rQ2k7NCWAluF8MuCWY8KVq = 2.094384; break;
 case 3: rQ2k7NCWAluF8MuCWY8KVq = 1.5707879999999999; break;
 case 4: rQ2k7NCWAluF8MuCWY8KVq = 1.047192; break;
 case 5: rQ2k7NCWAluF8MuCWY8KVq = 0.8726599999999999; break;
 }
 
 local nhybWFmQbA9eMJp = sq_AddDrawOnlyAniFromParent(VfpIygEfGu4ByI, "character/gunner/effect/animation/seventhflow/6/6_shoot_2.ani", 0, 0, 120);
 sq_SetCustomRotate(nhybWFmQbA9eMJp, rQ2k7NCWAluF8MuCWY8KVq); 
 
 if(VfpIygEfGu4ByI.sq_IsMyControlObject())
 {
 sq_SetMyShake(VfpIygEfGu4ByI, 5, 80); 
 sq_flashScreen(VfpIygEfGu4ByI, 0, 0, 30, 100, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 
 VfpIygEfGu4ByI.sq_StartWrite();
 VfpIygEfGu4ByI.sq_WriteDword(240); 
 VfpIygEfGu4ByI.sq_WriteDword(XSE4oV0z6nkSmQVYq9); 
 VfpIygEfGu4ByI.sq_WriteDword(VfpIygEfGu4ByI.sq_GetBonusRateWithPassive(240, 240, 0, 1.0)); 
 VfpIygEfGu4ByI.sq_SendCreatePassiveObjectPacket(24371, 0, 0, 0, 0); 
 }
 break;
 case 7: 
 if(P7tHFsur9LwHQBIo9dcyIXMu == 2)
 if(VfpIygEfGu4ByI.sq_IsMyControlObject())
 {
 sq_flashScreen(VfpIygEfGu4ByI, 0, 150, 200, 120, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 
 VfpIygEfGu4ByI.sq_StartWrite();
 VfpIygEfGu4ByI.sq_WriteDword(240); 
 VfpIygEfGu4ByI.sq_WriteDword(XSE4oV0z6nkSmQVYq9); 
 VfpIygEfGu4ByI.sq_WriteDword(VfpIygEfGu4ByI.sq_GetBonusRateWithPassive(240, 240, 1, 1.0)); 
 VfpIygEfGu4ByI.sq_SendCreatePassiveObjectPacket(24371, 0, 0, 0, 0); 
 }
 break;
 }
 return true;
} ;

 
function onProc_gunner_seventhflow(yOnIjqP2YVzQc6UAnCH)
{
 if(!yOnIjqP2YVzQc6UAnCH) return;
 if(yOnIjqP2YVzQc6UAnCH.getVar("move").size_vector() != 4) return; 
 local RALtAxtOZm = yOnIjqP2YVzQc6UAnCH.getCurrentAnimation(); 
 local tC9V29Wz96tRDX1MboA = sq_GetCurrentTime(RALtAxtOZm); 
 local Ke_7fJpBBB1q5pg = RALtAxtOZm.getDelaySum(false); 
 local lqRWNlUVa76aPcOh7eG = yOnIjqP2YVzQc6UAnCH.getVar("move"); 
 local V2mrJTvr43bzvdRdU9jfv4D = sq_GetDistancePos(lqRWNlUVa76aPcOh7eG.get_vector(0), yOnIjqP2YVzQc6UAnCH.getDirection(), 
 sq_GetUniformVelocity(0, lqRWNlUVa76aPcOh7eG.get_vector(2), tC9V29Wz96tRDX1MboA, Ke_7fJpBBB1q5pg));
 local DMtkyR2XccSpW = lqRWNlUVa76aPcOh7eG.get_vector(1) + sq_GetUniformVelocity(0, lqRWNlUVa76aPcOh7eG.get_vector(3), tC9V29Wz96tRDX1MboA, Ke_7fJpBBB1q5pg);
 if(yOnIjqP2YVzQc6UAnCH.isMovablePos(V2mrJTvr43bzvdRdU9jfv4D, DMtkyR2XccSpW)) 
 {
 sq_setCurrentAxisPos(yOnIjqP2YVzQc6UAnCH, 0, V2mrJTvr43bzvdRdU9jfv4D); 
 sq_setCurrentAxisPos(yOnIjqP2YVzQc6UAnCH, 1, DMtkyR2XccSpW); 
 }else
 yOnIjqP2YVzQc6UAnCH.getVar("move").clear_vector(); 
} ;

 
function onProcCon_gunner_seventhflow(JXNChsS1mO)
{
 if(!JXNChsS1mO) return;
 sq_SetKeyxEnable(JXNChsS1mO, E_DASH_COMMANDS_1, true); 
 sq_SetKeyxEnable(JXNChsS1mO, E_DASH_COMMANDS_2, true); 
 
 if(sq_IsEnterCommand(JXNChsS1mO, E_DASH_COMMANDS_1) || sq_IsEnterCommand(JXNChsS1mO, E_DASH_COMMANDS_2))
 {
 local TJoYzzs19zkzG1y87SxJvpAE = JXNChsS1mO.getVar().get_vector(0); 
 
 if(TJoYzzs19zkzG1y87SxJvpAE < JXNChsS1mO.getVar().get_vector(2))
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1);
 sq_BinaryWriteDword(TJoYzzs19zkzG1y87SxJvpAE + JXNChsS1mO.getVar().get_vector(1)); 
 sq_SendChangeSkillEffectPacket(JXNChsS1mO, 240); 
 }
 }
} ;

function onChangeSkillEffect_gunner_seventhflow(JXNChsS1mO, TJoYzzs19zkzG1y87SxJvpAE, esnknfke_zt5jW)
{
 if(!JXNChsS1mO) return;
 local blenfkqZqeRu5Zlu5Y = JXNChsS1mO.getVar("state").get_vector(0); 
 if(blenfkqZqeRu5Zlu5Y == 0 && TJoYzzs19zkzG1y87SxJvpAE == 240)
 {
 local v8GQW60uGm03O9Z = esnknfke_zt5jW.readWord(); 
 switch(v8GQW60uGm03O9Z)
 {
 case 1:
 local r7euLZlgyC7dane = esnknfke_zt5jW.readDword(); 
 JXNChsS1mO.sq_SetStaticSpeedInfo(0, 0, 0, (1000 * r7euLZlgyC7dane/ 100.0).tointeger(), 0.0, 0.0); 
 JXNChsS1mO.getVar().set_vector(0, r7euLZlgyC7dane); 
 break;
 }
 }
} ;

 
function onEndCurrentAni_gunner_seventhflow(sfqIv3iZ5DUZRG1DDSJ89N)
{
 if(!sfqIv3iZ5DUZRG1DDSJ89N) return;
 if(!sfqIv3iZ5DUZRG1DDSJ89N.sq_IsMyControlObject()) return;
 local gU8kuJ1FnIMiPiC4NON8 = sfqIv3iZ5DUZRG1DDSJ89N.getSkillSubState(); 
 switch(gU8kuJ1FnIMiPiC4NON8)
 {
 case 0: 
 sfqIv3iZ5DUZRG1DDSJ89N.sq_IntVectClear();
 sfqIv3iZ5DUZRG1DDSJ89N.sq_IntVectPush(1); 
 sfqIv3iZ5DUZRG1DDSJ89N.sq_IntVectPush(onGetMoveDirection_gunner_seventhflow(sfqIv3iZ5DUZRG1DDSJ89N)); 
 sfqIv3iZ5DUZRG1DDSJ89N.sq_IntVectPush(0); 
 sfqIv3iZ5DUZRG1DDSJ89N.sq_AddSetStatePacket(240, STATE_PRIORITY_USER, true); 
 break;
 case 7: 
 sfqIv3iZ5DUZRG1DDSJ89N.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 default: 
 local amznhsssceI = -1; 
 local PX0fR024M7eYv = -1; 
 
 switch(sfqIv3iZ5DUZRG1DDSJ89N.getVar("state").get_vector(0))
 {
 case 0: 
 amznhsssceI = 1; 
 break;
 case 1: 
 if(gU8kuJ1FnIMiPiC4NON8 != 6) 
 amznhsssceI = 0; 
 PX0fR024M7eYv = onGetMoveDirection_gunner_seventhflow(sfqIv3iZ5DUZRG1DDSJ89N); 
 gU8kuJ1FnIMiPiC4NON8 += 1; 
 break;
 }
 sfqIv3iZ5DUZRG1DDSJ89N.sq_IntVectClear();
 sfqIv3iZ5DUZRG1DDSJ89N.sq_IntVectPush(gU8kuJ1FnIMiPiC4NON8); 
 sfqIv3iZ5DUZRG1DDSJ89N.sq_IntVectPush(PX0fR024M7eYv); 
 sfqIv3iZ5DUZRG1DDSJ89N.sq_IntVectPush(amznhsssceI); 
 sfqIv3iZ5DUZRG1DDSJ89N.sq_AddSetStatePacket(240, STATE_PRIORITY_USER, true); 
 break;
 }
} ;

function onEndState_gunner_seventhflow(YS_8xhaJXsYZie1tEE, x0gZhuYu6EJrh)
{
 if(!YS_8xhaJXsYZie1tEE) return;
 if(x0gZhuYu6EJrh != 240)
 sq_RemoveParticle("character/gunner/effect/animation/seventhflow/dust_particle/dust.ptl", YS_8xhaJXsYZie1tEE); 
} ;

 
function onGetMoveDirection_gunner_seventhflow(YS_8xhaJXsYZie1tEE)
{
 if(!YS_8xhaJXsYZie1tEE) return;
 local x0gZhuYu6EJrh = YS_8xhaJXsYZie1tEE.getDirection(); 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL)) 
 x0gZhuYu6EJrh = ENUM_DIRECTION_LEFT; 
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL)) 
 x0gZhuYu6EJrh = ENUM_DIRECTION_RIGHT; 
 return x0gZhuYu6EJrh;
} ;


