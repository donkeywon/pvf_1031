
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


function onAfterSetState_priest_antiairupper(Viu4cE1FwJvz, yatWdrs8QfRgx, cTD5yy7KKbrnYP_9ws5BAt35, zm1sCTU0TE9j)
{
 if(!Viu4cE1FwJvz) return;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(Viu4cE1FwJvz, "character/new_priest/jupiter/ap_jupiter.nut") == true) 
 {
 Viu4cE1FwJvz.sq_SetCurrentAnimation(194); 
 local gt7yzIfGnE9kwopnywQUV = sq_GetCurrentAnimation(Viu4cE1FwJvz); 
 sq_Rewind(gt7yzIfGnE9kwopnywQUV); 
 }
} ;

function onKeyFrameFlag_priest_antiairupper(kDzKEanTPZ, H2WObZD1aH7E6)
{
 if(!kDzKEanTPZ) return false;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(kDzKEanTPZ, "character/new_priest/jupiter/ap_jupiter.nut") == true && kDzKEanTPZ.sq_IsMyControlObject()) 
 {
 switch(H2WObZD1aH7E6)
 {
 case 0:
 kDzKEanTPZ.sq_StartWrite();
 kDzKEanTPZ.sq_WriteDword(250); 
 kDzKEanTPZ.sq_WriteDword(1); 
 kDzKEanTPZ.sq_WriteDword(kDzKEanTPZ.sq_GetBonusRateWithPassive(250, 20, 1, 1.0)); 
 kDzKEanTPZ.sq_SendCreatePassiveObjectPacket(24374, 0, 120, 0, 0);
 break;
 case 1:
 kDzKEanTPZ.sq_StartWrite();
 kDzKEanTPZ.sq_WriteDword(250); 
 kDzKEanTPZ.sq_WriteDword(1); 
 kDzKEanTPZ.sq_WriteDword(kDzKEanTPZ.sq_GetBonusRateWithPassive(250, 20, 1, 1.0)); 
 kDzKEanTPZ.sq_SendCreatePassiveObjectPacket(24374, 0, -180, 0, 0);
 kDzKEanTPZ.sq_StartWrite();
 kDzKEanTPZ.sq_WriteDword(250); 
 kDzKEanTPZ.sq_WriteDword(2); 
 kDzKEanTPZ.sq_WriteDword(kDzKEanTPZ.sq_GetBonusRateWithPassive(250, 20, 2, 1.0)); 
 kDzKEanTPZ.sq_SendCreatePassiveObjectPacket(24374, 0, -180, 0, 0);
 break;
 }
 }
 return true;
} ;

