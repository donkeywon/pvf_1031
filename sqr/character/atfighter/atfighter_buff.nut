
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function onAfterSetState_atfighter_buff(b5auQt29ZJBGNtERo, WCDjwRh3IWyTM_NtayN5VXM, dl7PghGm37E8P1XOK, EkXyLNJAXdUeNRCuw)
{
 local QIUiGIQKfHcpduyhdnE_Q = b5auQt29ZJBGNtERo.getBuffSkillIndex(); 
} ;



function onEndCurrentAni_atfighter_buff(b5auQt29ZJBGNtERo)
{
 if(!b5auQt29ZJBGNtERo) return;
 if(!b5auQt29ZJBGNtERo.sq_IsMyControlObject()) return;
 local WCDjwRh3IWyTM_NtayN5VXM = b5auQt29ZJBGNtERo.getBuffSkillIndex(); 
 switch(WCDjwRh3IWyTM_NtayN5VXM)
 {
 case 50: 
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1); 
 sq_SendChangeSkillEffectPacket(b5auQt29ZJBGNtERo, WCDjwRh3IWyTM_NtayN5VXM); 
 break;
 }
} ;
