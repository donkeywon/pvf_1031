
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
 

 
 


 
IRDSQRCharacter.pushPassiveObj("js60_qq506807329/share_obj/share_po_new_thief_24378.nut", 24378);
sq_RunScript("js60_qq506807329/share_obj/new_thief/setcustomdata.nut");
sq_RunScript("js60_qq506807329/share_obj/new_thief/setstate.nut");
sq_RunScript("js60_qq506807329/share_obj/new_thief/procappend.nut");
sq_RunScript("js60_qq506807329/share_obj/new_thief/onendcurrentani.nut");
sq_RunScript("js60_qq506807329/share_obj/new_thief/else.nut");

 
 
IRDSQRCharacter.pushScriptFiles("character/new_thief/new_thief_header.nut");  
IRDSQRCharacter.pushScriptFiles("character/new_thief/new_thief_common.nut");  
IRDSQRCharacter.pushScriptFiles("character/new_thief/passive_skill_new_thief.nut");  

 
 
 
 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_THIEF, "character/new_thief/exoticrampant/exoticrampant.nut", "thief_exoticrampant", 220, 220);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_THIEF, "character/new_thief/distribution/distribution.nut", "thief_distribution", 221, 221);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_THIEF, "character/new_thief/novaremnant/novaremnant.nut", "thief_novaremnant", 222, 222);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_THIEF, "character/new_thief/executionerslash/executionerslash.nut", "thief_executionerslash", 223, 223);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_THIEF, "character/new_thief/nicolasblackarachnia/nicolasblackarachnia.nut", "thief_nicolasblackarachnia", 224, 224);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_THIEF, "character/new_thief/ballacreadvent/ballacreadvent.nut", "thief_ballacreadvent", 225, 225);

