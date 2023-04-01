
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學1500一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。


 
 

 
 


 
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

