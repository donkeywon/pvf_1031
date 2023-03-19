
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



function onAfterSetState_gunner_windmill(zFomHoW8jik, bgkGsJR7iSf, YDVeyjp9hRjlg6HiBvht, EjVyw5MGJGRhWN2fhZ_No)
{
 if (!zFomHoW8jik) return;
 local KN_ht1swSs9V4d0B3ssa = zFomHoW8jik.sq_GetVectorData(YDVeyjp9hRjlg6HiBvht, 0); 
 zFomHoW8jik.getVar().clear_vector(); 
 zFomHoW8jik.getVar().push_vector(KN_ht1swSs9V4d0B3ssa); 
 local KG2G8DCnThulGWNuFJ = sq_GetSkillLevel(zFomHoW8jik, 248); 
 if(KG2G8DCnThulGWNuFJ > 0)
 {
 local nY2iuYXUflJTRNq_qBE6ykT7 = zFomHoW8jik.sq_GetLevelData(248, 0, KG2G8DCnThulGWNuFJ);;
 local XzuD2IicgZXFbF8t6b5GSTcR = zFomHoW8jik.sq_GetLevelData(248, 1, KG2G8DCnThulGWNuFJ);;
 zFomHoW8jik.sq_SetStaticMoveInfo(0, nY2iuYXUflJTRNq_qBE6ykT7, nY2iuYXUflJTRNq_qBE6ykT7, true);
 zFomHoW8jik.sq_SetStaticMoveInfo(1, XzuD2IicgZXFbF8t6b5GSTcR, XzuD2IicgZXFbF8t6b5GSTcR, true);
 zFomHoW8jik.sq_SetMoveDirection(zFomHoW8jik.getDirection(), ENUM_DIRECTION_NEUTRAL); 
 }
} ;




if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onProcCon_gunner_windmill(rMOFGzE7p4B7DWkv)
{
 if (!rMOFGzE7p4B7DWkv) return;
 local gHyelMuZbJE8a = rMOFGzE7p4B7DWkv.getVar().get_vector(0);
 if (gHyelMuZbJE8a == 3) 
 onProcIsSub_My_gunner_stylish(rMOFGzE7p4B7DWkv);
} ;