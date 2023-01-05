IRDSQRCharacter.pushPassiveObj("js60_qq506807329/share_obj/share_po_swordman_24370.nut", 24370);
sq_RunScript("js60_qq506807329/share_obj/swordman/setcustomdata.nut");
sq_RunScript("js60_qq506807329/share_obj/swordman/setstate.nut");
sq_RunScript("js60_qq506807329/share_obj/swordman/procappend.nut");
sq_RunScript("js60_qq506807329/share_obj/swordman/onendcurrentani.nut");
sq_RunScript("js60_qq506807329/share_obj/swordman/else.nut");

IRDSQRCharacter.pushScriptFiles("character/swordman/swordman_header.nut");

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/attack/attack.nut", "swordman_attack", 8, -1);