
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function onAfterSetState_atfighter_flamelegs(jGyI00KoJEBs, ugttNVST1vNUH, fKUtwTvk9h77lBch3F, jUvos1OQnoio0ql)
{
 if (!jGyI00KoJEBs) return;
 local bqgSIAIyJ7KzH9Rz9sv = jGyI00KoJEBs.sq_GetVectorData(fKUtwTvk9h77lBch3F, 0);
 jGyI00KoJEBs.getVar().clear_vector(); 
 jGyI00KoJEBs.getVar().push_vector(bqgSIAIyJ7KzH9Rz9sv); 
 jGyI00KoJEBs.getVar().setBool(0,false);
 jGyI00KoJEBs.getVar().setBool(1,false);
 if (bqgSIAIyJ7KzH9Rz9sv == 0)
 {
 local Fmaez4M9L66B_s4tU2TQMul = sq_GetCustomAni(jGyI00KoJEBs, 198);
 sq_Rewind(Fmaez4M9L66B_s4tU2TQMul); 
 jGyI00KoJEBs.setCurrentAnimation(Fmaez4M9L66B_s4tU2TQMul); 
 }
} ;


function onProc_atfighter_flamelegs(jGyI00KoJEBs)
{
 if (!jGyI00KoJEBs) return;
 local ugttNVST1vNUH = jGyI00KoJEBs.getVar().get_vector(0);
 local fKUtwTvk9h77lBch3F = sq_GetCurrentFrameIndex(jGyI00KoJEBs);
 switch (ugttNVST1vNUH)
 {
 case -1:
 if (jGyI00KoJEBs.getVar().getBool(0) != false) break;
 if (fKUtwTvk9h77lBch3F < 15) break;
 jGyI00KoJEBs.getVar().setBool(0, true);
 if (CNSquirrelAppendage.sq_IsAppendAppendage(jGyI00KoJEBs, "character/atfighter/appendage/ap_flamelegs.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(jGyI00KoJEBs, "character/atfighter/appendage/ap_flamelegs.nut");
 local jUvos1OQnoio0ql = CNSquirrelAppendage.sq_AppendAppendage(jGyI00KoJEBs, jGyI00KoJEBs, -1, true, "character/atfighter/appendage/ap_flamelegs.nut", true);
 local bqgSIAIyJ7KzH9Rz9sv = sq_GetSkillLevel(jGyI00KoJEBs, 41); 
 local Fmaez4M9L66B_s4tU2TQMul = sq_GetSkillLevel(jGyI00KoJEBs, 65); 
 local ptDgYH8UYQLLH = jGyI00KoJEBs.sq_GetLevelData(41, 0, bqgSIAIyJ7KzH9Rz9sv) + jGyI00KoJEBs.sq_GetLevelData(65, 0, Fmaez4M9L66B_s4tU2TQMul);
 jUvos1OQnoio0ql.sq_SetValidTime(ptDgYH8UYQLLH);
 break;
 case 0:
 if (jGyI00KoJEBs.getVar().getBool(0) == false && fKUtwTvk9h77lBch3F >= 1)
 {
 jGyI00KoJEBs.getVar().setBool(0, true);
 sq_SetMyShake(jGyI00KoJEBs, 5, 160); 
 sq_flashScreen(jGyI00KoJEBs, 0, 80, 0, 178, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 if (jGyI00KoJEBs.getVar().getBool(1) == false && fKUtwTvk9h77lBch3F >= 3)
 {
 jGyI00KoJEBs.getVar().setBool(1, true);
 
 local jUvos1OQnoio0ql = CNSquirrelAppendage.sq_GetAppendage(jGyI00KoJEBs, "character/atfighter/appendage/ap_flamelegs.nut");
 jUvos1OQnoio0ql.getVar().setBool(1, true);
 if (CNSquirrelAppendage.sq_IsAppendAppendage(jGyI00KoJEBs, "character/atfighter/appendage/ap_flamelegs_add.nut"))
 sq_RemoveChangeStatus(jGyI00KoJEBs, 41); 
 
 }
 break;
 }
} ;
