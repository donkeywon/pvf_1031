
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



function onAfterSetState_mage_MageRandomPierceStrikeEx(ufHkoHybiK8QA6IhjnQeJ5PV, JU4FNEF42GsnKGjw, G5opvdZvRMKv, wYZ0c8qSptd)
{
 if (!ufHkoHybiK8QA6IhjnQeJ5PV) return;
 if (ufHkoHybiK8QA6IhjnQeJ5PV.sq_GetVectorData(G5opvdZvRMKv, 0) == 0) {
	ufHkoHybiK8QA6IhjnQeJ5PV.getVar("cancelCount").setInt(0, 0);
 }
 if(CNSquirrelAppendage.sq_IsAppendAppendage(ufHkoHybiK8QA6IhjnQeJ5PV, "character/mage/avatar/ap_avatar.nut"))
 {
 local AosKQAq0UaTY7oawu = ufHkoHybiK8QA6IhjnQeJ5PV.sq_GetVectorData(G5opvdZvRMKv, 0); 
 local IVnBFIYJpi1hlKC = null; 
 switch (AosKQAq0UaTY7oawu) 
 {
 case 0:
 IVnBFIYJpi1hlKC = setCurrentAnimation_avatar_eff(ufHkoHybiK8QA6IhjnQeJ5PV,"RandomPierceStrikeChargeEx",true);
 break;
 case 1:
 IVnBFIYJpi1hlKC = setCurrentAnimation_avatar_eff(ufHkoHybiK8QA6IhjnQeJ5PV,"RandomPierceStrikeLoopEx",true);
 break;
 case 2:
 IVnBFIYJpi1hlKC = setCurrentAnimation_avatar_eff(ufHkoHybiK8QA6IhjnQeJ5PV,"RandomPierceStrikeChargeEx",true);
 break;
 case 3:
 IVnBFIYJpi1hlKC = setCurrentAnimation_avatar_eff(ufHkoHybiK8QA6IhjnQeJ5PV,"RandomPierceStrikeFinishEx",true);
 break;
 }
 if(IVnBFIYJpi1hlKC!=null)
 ufHkoHybiK8QA6IhjnQeJ5PV.setCurrentAnimation(IVnBFIYJpi1hlKC); 
 }
} ;

function onProc_mage_MageRandomPierceStrikeEx(obj)
{
	if(!obj) return;
	if(sq_IsKeyDown(OPTION_HOTKEY_JUMP, ENUM_SUBKEY_TYPE_ALL) && obj.getVar("cancelCount").getInt(0) != 1) {
		obj.getVar("cancelCount").setInt(0, 1);
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(3); // substate锟??锟??
		obj.sq_AddSetStatePacket(47, STATE_PRIORITY_IGNORE_FORCE, true);
	}
}