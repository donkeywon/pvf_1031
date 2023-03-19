
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



function onAfterSetState_gunner_aerialknee(TRBHDfekE4Z5wOHW7z1n, qZY4yCvWgk, trhWvqpRjOpi8L524cS, IvYmSoSbzUJ)
{
 if (!TRBHDfekE4Z5wOHW7z1n) return;
 local Ii0Mor4B9g9oU = TRBHDfekE4Z5wOHW7z1n.sq_GetVectorData(trhWvqpRjOpi8L524cS, 0); 
 TRBHDfekE4Z5wOHW7z1n.getVar().clear_vector(); 
 TRBHDfekE4Z5wOHW7z1n.getVar().push_vector(Ii0Mor4B9g9oU); 
} ;



function onProcCon_gunner_aerialknee(TRBHDfekE4Z5wOHW7z1n)
{
 if (!TRBHDfekE4Z5wOHW7z1n) return;
 local qZY4yCvWgk = TRBHDfekE4Z5wOHW7z1n.getVar().get_vector(0);
 if (qZY4yCvWgk == 4) 
 onProcIsSub_My_gunner_stylish(TRBHDfekE4Z5wOHW7z1n)
} ;