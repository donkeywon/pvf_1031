
IRDSQRCharacter.pushPassiveObj("Character/Fighter/NenChargee/po_NenChargee.nut", 24396);
IRDSQRCharacter.pushPassiveObj("js60_qq506807329/share_obj/share_po_fighter_24373.nut", 24373);
sq_RunScript("js60_qq506807329/share_obj/fighter/setcustomdata.nut");
sq_RunScript("js60_qq506807329/share_obj/fighter/setstate.nut");
sq_RunScript("js60_qq506807329/share_obj/fighter/procappend.nut");
sq_RunScript("js60_qq506807329/share_obj/fighter/onendcurrentani.nut");
sq_RunScript("js60_qq506807329/share_obj/fighter/else.nut");

 
 
 
IRDSQRCharacter.pushScriptFiles("character/fighter/fighter_header.nut");  
IRDSQRCharacter.pushScriptFiles("character/fighter/fighter_common.nut");  
IRDSQRCharacter.pushScriptFiles("Character/fighter/passive_skill_fighter.nut"); 

 
 
 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_FIGHTER, "character/fighter/nenchargee/nenchargee.nut", "NenChargee", STATE_NENCHARGEE, SKILL_NENCHARGEE);
 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_FIGHTER, "character/fighter/lightdragonthirteen/lightdragonthirteen.nut", "fighter_lightdragonthirteen", 225, 225);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_FIGHTER, "character/fighter/saintillusion/saintillusion.nut", "fighter_saintillusion", 226, 226);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_FIGHTER, "character/fighter/absorbenergyball/absorbenergyball.nut", "fighter_absorbenergyball", 227, 227);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_FIGHTER, "character/fighter/nenofbrilliance/nenofbrilliance.nut", "fighter_nenofbrilliance", 228, 228);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_FIGHTER, "character/fighter/oneelbowchainhit/oneelbowchainhit.nut", "fighter_oneelbowchainhit", 229, 229);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_FIGHTER, "character/fighter/tigerstrike/tigerstrike.nut", "fighter_tigerstrike", 230, 230);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_FIGHTER, "character/fighter/chaindestruction/chaindestruction.nut", "fighter_chaindestruction", 231, 231);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_FIGHTER, "character/fighter/finalheaven/finalheaven.nut", "fighter_finalheaven", 232, 232);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_FIGHTER, "character/fighter/poisonexplosion/poisonexplosion.nut", "fighter_poisonexplosion", 233, 233);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_FIGHTER, "character/fighter/dragonmine/dragonmine.nut", "fighter_dragonmine", 234, 234);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_FIGHTER, "character/fighter/poisonsnake/poisonsnake.nut", "fighter_poisonsnake", 235, 235);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_FIGHTER, "character/fighter/poisonsnake/snakecave.nut", "fighter_snakecave", 236, 236);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_FIGHTER, "character/fighter/elbowthrow/elbowthrow.nut", "fighter_elbowthrow", 237, 237);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_FIGHTER, "character/fighter/torbellino/torbellino.nut", "fighter_torbellino", 238, 238);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_FIGHTER, "character/fighter/hurricanesupersuplex/hurricanesupersuplex.nut", "fighter_hurricanesupersuplex", 239, 239);




 
 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_FIGHTER, "character/fighter/Attack/Attack.nut", "FighterAttack", 8, -1);
 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_FIGHTER, "character/fighter/Jump/JumpAttack.nut", "FighterJumpAttack", 7, -1);
 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_FIGHTER, "character/fighter/Dash/DashAttack.nut", "FighterDashAttack", 15, -1);
 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_FIGHTER, "Character/Fighter/Fighter_Throw.nut", "Fighter_Throw", 13, -1);


 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_FIGHTER, "character/fighter/SuplexCyclone/SuplexCyclone.nut", "FighterSuplexCyclone", 59, -1);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_FIGHTER, "character/fighter/WildCannonSpike/WildCannonSpike.nut", "FighterWildCannonSpike", 58, -1);

//CNAvenger.pushPassiveObj("character/fighter/passiveobject/po_illusionbomb.nut", 24150);

sq_RunScript("character/fighter/nencharge/nencharge.nut");
