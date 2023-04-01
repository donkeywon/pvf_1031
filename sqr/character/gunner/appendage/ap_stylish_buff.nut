
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
    appendage.sq_AddFunctionName("proc", "proc_appendage_gunner_stylish_buff")
}


function proc_appendage_gunner_stylish_buff(TRBHDfekE4Z5wOHW7z1n)
{
 if(!TRBHDfekE4Z5wOHW7z1n) return;
 if(TRBHDfekE4Z5wOHW7z1n.getVar().size_vector() <= 0)return;
 local qZY4yCvWgk = TRBHDfekE4Z5wOHW7z1n.getVar().get_timer_vector(0); 
 if(qZY4yCvWgk)
 if(qZY4yCvWgk.isOnEvent(TRBHDfekE4Z5wOHW7z1n.getTimer().Get()) == true)
 if(TRBHDfekE4Z5wOHW7z1n.getVar().get_vector(0) < TRBHDfekE4Z5wOHW7z1n.getVar().get_vector(1)) 
 TRBHDfekE4Z5wOHW7z1n.getVar().set_vector(0, TRBHDfekE4Z5wOHW7z1n.getVar().get_vector(0) + 1); 
 local trhWvqpRjOpi8L524cS = TRBHDfekE4Z5wOHW7z1n.getParent();
 if(!trhWvqpRjOpi8L524cS)
 {
 TRBHDfekE4Z5wOHW7z1n.setValid(false);
 return;
 }
} ;