
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_swordman_zigadvent") 
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_swordman_zigadvent") 
 appendage.sq_AddFunctionName("onStart", "onStart_appendage_swordman_zigadvent") 
}



 
function onStart_appendage_swordman_zigadvent(EDq5_97qD_mN3lf0BDW)
{
 if (!EDq5_97qD_mN3lf0BDW) return;
 local o4NrUi5co6vg5h37_Ss = EDq5_97qD_mN3lf0BDW.getParent(); 
 local iQtQgAVxnbYLo1 = sq_GetCNRDObjectToCollisionObject(EDq5_97qD_mN3lf0BDW.getSource()); 
 
 if(!o4NrUi5co6vg5h37_Ss || !iQtQgAVxnbYLo1) {
 EDq5_97qD_mN3lf0BDW.setValid(false);
 return;
 }
 local nHNhP3RZUzqLTgu1 = 9999; 
 if(sq_IsNamed(o4NrUi5co6vg5h37_Ss))
 nHNhP3RZUzqLTgu1 = iQtQgAVxnbYLo1.getVar().get_vector(1); 
 else if(sq_IsHellMonster(o4NrUi5co6vg5h37_Ss))
 nHNhP3RZUzqLTgu1 = iQtQgAVxnbYLo1.getVar().get_vector(2); 
 else if(sq_IsAiCharacter(o4NrUi5co6vg5h37_Ss))
 nHNhP3RZUzqLTgu1 = iQtQgAVxnbYLo1.getVar().get_vector(3); 
 else if(!sq_IsBoss(o4NrUi5co6vg5h37_Ss) && !o4NrUi5co6vg5h37_Ss.isChampion() && !o4NrUi5co6vg5h37_Ss.isCommonChampion() && !o4NrUi5co6vg5h37_Ss.isSuperChampion())
 nHNhP3RZUzqLTgu1 = iQtQgAVxnbYLo1.getVar().get_vector(0); 
 EDq5_97qD_mN3lf0BDW.getVar().clear_vector(); 
 EDq5_97qD_mN3lf0BDW.getVar().push_vector(nHNhP3RZUzqLTgu1); 
} ;




 
function proc_appendage_swordman_zigadvent(dNQpMa99UD3NgYfALeGD5DnD)
{
 if(!dNQpMa99UD3NgYfALeGD5DnD || !dNQpMa99UD3NgYfALeGD5DnD.isValid()) return;
 local w0Vw0AJx_SfXxknWA20xqq2Y = dNQpMa99UD3NgYfALeGD5DnD.getParent(); 
 local XcntZlhGaBptNY2 = dNQpMa99UD3NgYfALeGD5DnD.getSource(); 
 if(!w0Vw0AJx_SfXxknWA20xqq2Y || !XcntZlhGaBptNY2) {
 dNQpMa99UD3NgYfALeGD5DnD.setValid(false);
 return;
 }
} ;

 
function onEnd_appendage_swordman_zigadvent(dNQpMa99UD3NgYfALeGD5DnD)
{
 if(!dNQpMa99UD3NgYfALeGD5DnD) return;
 local w0Vw0AJx_SfXxknWA20xqq2Y = dNQpMa99UD3NgYfALeGD5DnD.getParent(); 
 if(!w0Vw0AJx_SfXxknWA20xqq2Y || w0Vw0AJx_SfXxknWA20xqq2Y.isDead() || w0Vw0AJx_SfXxknWA20xqq2Y.getHp() <= 0) {
 dNQpMa99UD3NgYfALeGD5DnD.setValid(false);
 return;
 }
 local XcntZlhGaBptNY2 = dNQpMa99UD3NgYfALeGD5DnD.getVar().get_vector(0); 
 if(XcntZlhGaBptNY2!=9999)
 {
 local ngX_KfSuwdAno = w0Vw0AJx_SfXxknWA20xqq2Y.getHpMax(); 
 local ZNuG8yiu7oN59ctdDfMyI = w0Vw0AJx_SfXxknWA20xqq2Y.getHp(); 
 if(ngX_KfSuwdAno/100.0*XcntZlhGaBptNY2 > ZNuG8yiu7oN59ctdDfMyI)
 w0Vw0AJx_SfXxknWA20xqq2Y.setHp(0, null, true); 
 }
} ;

