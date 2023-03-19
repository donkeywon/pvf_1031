
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_gunner_stylish") 
 appendage.sq_AddFunctionName("onStart", "onStart_appendage_gunner_stylish") 
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_gunner_stylish") 
}


function proc_appendage_gunner_stylish(M79WZ6Po87Wh_ewXh)
{
 if(!M79WZ6Po87Wh_ewXh) return;
 local KmIn77O8eYUVgTzl31AAH9Q = M79WZ6Po87Wh_ewXh.getParent()
 if(!KmIn77O8eYUVgTzl31AAH9Q)
 {
 M79WZ6Po87Wh_ewXh.setValid(false);
 return;
 }
 switch(KmIn77O8eYUVgTzl31AAH9Q.getState())
 {
 case STATE_STAND:
 case STATE_DIE:
 case STATE_HOLD:
 case STATE_JUMP:
 onEnd_appendage_gunner_stylish(M79WZ6Po87Wh_ewXh);
 return;
 }
} ;


function onStart_appendage_gunner_stylish(PomHLuSi2C5hphwRso1UEy)
{
 if(!PomHLuSi2C5hphwRso1UEy) return;
 local A0X75mJE5L2SiTzCk1lH = PomHLuSi2C5hphwRso1UEy.getParent(); 
 if(!A0X75mJE5L2SiTzCk1lH) {
 PomHLuSi2C5hphwRso1UEy.setValid(false);
 return;
 }
 local bjQ4q6PWBPyjWZHN9YI = PomHLuSi2C5hphwRso1UEy.sq_GetOcularSpectrum("ocularSpectrum"); 
 if (!bjQ4q6PWBPyjWZHN9YI) 
 {
 bjQ4q6PWBPyjWZHN9YI = PomHLuSi2C5hphwRso1UEy.sq_AddOcularSpectrum("ocularSpectrum", A0X75mJE5L2SiTzCk1lH, A0X75mJE5L2SiTzCk1lH, 100); 
 sq_SetParameterOcularSpectrum(bjQ4q6PWBPyjWZHN9YI, 400, 50, true, sq_RGBA(0, 255, 0, 255), sq_RGBA(0, 255, 0, 0), 2, 2, 2); 
 }
} ;

function onEnd_appendage_gunner_stylish(PomHLuSi2C5hphwRso1UEy)
{
 if(!PomHLuSi2C5hphwRso1UEy) return;
 local A0X75mJE5L2SiTzCk1lH = PomHLuSi2C5hphwRso1UEy.sq_GetOcularSpectrum("ocularSpectrum"); 
 if(A0X75mJE5L2SiTzCk1lH) 
 A0X75mJE5L2SiTzCk1lH.endCreateSpectrum(); 
} ;


