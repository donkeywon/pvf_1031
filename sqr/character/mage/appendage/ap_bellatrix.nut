
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_bellatrix")

}



function proc_appendage_bellatrix(appendage)
{
	if(!appendage) return;
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) 
 {
		appendage.setValid(false);
		return;
 }
}