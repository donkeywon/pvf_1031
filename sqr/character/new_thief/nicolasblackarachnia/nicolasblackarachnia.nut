
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學1500一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。




 
function checkExecutableSkill_thief_nicolasblackarachnia(nL9rSuIVN9gSikY)
{
 if(!nL9rSuIVN9gSikY) return false; 
 
 
 
 
 
 
 
 local vyQMJBsxESFb = getMyMonsterObject_Character_jsqq506807329(nL9rSuIVN9gSikY, 61531, "character/new_thief/appendage/ap_monster_nicolas.nut");
 if(vyQMJBsxESFb)
 {
 if(vyQMJBsxESFb.getState() == 8 && (vyQMJBsxESFb.getAttackIndex() == 7 || vyQMJBsxESFb.getAttackIndex() == 8))
 return false;
 local cn8JIhCWErbrR36DMOyqC = CNSquirrelAppendage.sq_GetAppendage(vyQMJBsxESFb, "character/new_thief/appendage/ap_monster_nicolas.nut");
 if(!cn8JIhCWErbrR36DMOyqC)return false;
 local VPgnvbYW0x98nEyCQ1SnH = nL9rSuIVN9gSikY.sq_IsUseSkill(224); 
 if(VPgnvbYW0x98nEyCQ1SnH) 
 {
 nL9rSuIVN9gSikY.sq_IsEnterSkillLastKeyUnits(224); 
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(2); 
 sq_BinaryWriteDword(sq_GetGroup(vyQMJBsxESFb)); 
 sq_BinaryWriteDword(sq_GetUniqueId(vyQMJBsxESFb)); 
 sq_SendChangeSkillEffectPacket(nL9rSuIVN9gSikY, 224); 
 return true; 
 }
 }
 else if(nL9rSuIVN9gSikY.isMessage()) 
 sq_AddMessage(71099);
 return false; 
} 

 
function checkCommandEnable_thief_nicolasblackarachnia(nL9rSuIVN9gSikY)
{
 if(!nL9rSuIVN9gSikY) return false; 
 local vyQMJBsxESFb = nL9rSuIVN9gSikY.sq_GetState(); 
 if(vyQMJBsxESFb == STATE_STAND) 
 return true; 
 if(vyQMJBsxESFb == STATE_ATTACK) 
 {
 return nL9rSuIVN9gSikY.sq_IsCommandEnable(223); 
 }
 return true; 
} 




