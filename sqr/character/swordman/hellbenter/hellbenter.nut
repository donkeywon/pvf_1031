
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



function onCreateObject_swordman_hellbenter(BDG7Zw9YR9pEdLh2Q7G, zg2mVaNKGPiNWW0s5DqnmL)
{
 if(!BDG7Zw9YR9pEdLh2Q7G) return;
 if(zg2mVaNKGPiNWW0s5DqnmL.isObjectType(OBJECTTYPE_PASSIVE))
 {
 local Lg5L09fqGboonPtenroLCL = sq_GetCNRDObjectToCollisionObject(zg2mVaNKGPiNWW0s5DqnmL); 
 if(Lg5L09fqGboonPtenroLCL && Lg5L09fqGboonPtenroLCL.getCollisionObjectIndex() == 20052)
 {
 
 if(Lg5L09fqGboonPtenroLCL.isMyControlObject())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(85); 
 sq_BinaryWriteDword(1); 
 sq_SendCreatePassiveObjectPacket(Lg5L09fqGboonPtenroLCL, 24370, 0, 0, 0, 0, Lg5L09fqGboonPtenroLCL.getDirection());
 }
 }
 }
} ;

function onAfterSetState_hellbenter(obj , state , datas , isResetTimer)
{
 if (!obj) return;
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = obj.getMyPassiveObjectCount(20052);
 for(local i = 0;i < Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1;i++)
 
{
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 = obj.getMyPassiveObject(20052 , i);
 if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.getState() != 5)
 sq_SendDestroyPacketPassiveObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);
 
}
 obj.getVar("hellbenter").clear_obj_vector();
 if(CNSquirrelAppendage.sq_IsAppendAppendage(obj , "character/swordman/hellbenter/ap_hellbenter.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(obj , "character/swordman/hellbenter/ap_hellbenter.nut");
 
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 = CNSquirrelAppendage.sq_AppendAppendage(obj , obj , 85 , true , "character/swordman/hellbenter/ap_hellbenter.nut" , true);
 Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3.getVar("yes").setBool(0 , false);
}
