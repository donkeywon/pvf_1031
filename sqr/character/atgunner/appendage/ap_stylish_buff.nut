
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
    appendage.sq_AddFunctionName("proc", "proc_appendage_atgunner_stylish_buff")
}


function proc_appendage_atgunner_stylish_buff(K5U2VMuTmU)
{
 if(!K5U2VMuTmU) return;
 if(K5U2VMuTmU.getVar().size_vector() <= 0)return;
 local uFEX1yvudqwU9K3ow5lmjYve = K5U2VMuTmU.getVar().get_timer_vector(0); 
 if(uFEX1yvudqwU9K3ow5lmjYve)
 if(uFEX1yvudqwU9K3ow5lmjYve.isOnEvent(K5U2VMuTmU.getTimer().Get()) == true)
 if(K5U2VMuTmU.getVar().get_vector(0) < K5U2VMuTmU.getVar().get_vector(1)) 
 K5U2VMuTmU.getVar().set_vector(0, K5U2VMuTmU.getVar().get_vector(0) + 1); 
 local TsB5TWcBrZHZi = K5U2VMuTmU.getParent();
 if(!TsB5TWcBrZHZi)
 {
 K5U2VMuTmU.setValid(false);
 return;
 }
} ;