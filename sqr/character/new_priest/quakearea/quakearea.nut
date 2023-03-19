
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


function onAfterSetState_priest_quakearea(O5osjcUv2FAVq, ZLU_t5nZ74ocUe62iBCOxB7, g46Mc_ZLdLogQiKQUDNt, VJzj0cG0lf)
{
 if(!O5osjcUv2FAVq) return;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(O5osjcUv2FAVq, "character/new_priest/jupiter/ap_jupiter.nut") == true) 
 {
 O5osjcUv2FAVq.sq_SetCurrentAnimation(195); 
 local DBP9Mmf8wj8GCPl05a1P_XY = sq_GetCurrentAnimation(O5osjcUv2FAVq); 
 sq_Rewind(DBP9Mmf8wj8GCPl05a1P_XY); 
 O5osjcUv2FAVq.sq_SetCurrentAttackInfo(120); 
 O5osjcUv2FAVq.sq_SetCurrentAttackBonusRate(O5osjcUv2FAVq.sq_GetBonusRateWithPassive(250, 26, 3, 1.0)); 
 O5osjcUv2FAVq.getVar().setBool(0, false); 
 }
} ;

function onProcCon_priest_quakearea(FSCacgtdzRBtomrZ)
{
 if(!FSCacgtdzRBtomrZ) return;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(FSCacgtdzRBtomrZ, "character/new_priest/jupiter/ap_jupiter.nut") == true) 
 {
 if(FSCacgtdzRBtomrZ.getVar().getBool(0) == false)
 if(sq_GetCurrentFrameIndex(FSCacgtdzRBtomrZ) >= 5 && FSCacgtdzRBtomrZ.getZPos() <= 0)
 {
 FSCacgtdzRBtomrZ.getVar().setBool(0, true); 
 FSCacgtdzRBtomrZ.sq_StartWrite();
 FSCacgtdzRBtomrZ.sq_WriteDword(250); 
 FSCacgtdzRBtomrZ.sq_WriteDword(4); 
 FSCacgtdzRBtomrZ.sq_WriteDword(FSCacgtdzRBtomrZ.sq_GetBonusRateWithPassive(250, 26, 4, 1.0)); 
 FSCacgtdzRBtomrZ.sq_SendCreatePassiveObjectPacket(24374, 0, 40, 0, 0);
 }
 local Lte97N6t9ZD4xlhIbJRy1ZL = FSCacgtdzRBtomrZ.getMyPassiveObjectCount(24001); 
 if(Lte97N6t9ZD4xlhIbJRy1ZL > 0)
 {
 for(local D0awhJXgMnG9GiRGG6dc = 0; D0awhJXgMnG9GiRGG6dc < Lte97N6t9ZD4xlhIbJRy1ZL; D0awhJXgMnG9GiRGG6dc++)
 {
 local h_qbnSAWTKNdxk7E = FSCacgtdzRBtomrZ.getMyPassiveObject(24001, D0awhJXgMnG9GiRGG6dc); 
 if(!h_qbnSAWTKNdxk7E) continue; 
 sq_SendDestroyPacketPassiveObject(h_qbnSAWTKNdxk7E); 
 }
 }
 }
} ;

