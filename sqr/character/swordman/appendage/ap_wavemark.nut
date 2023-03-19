//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc" , "proc_appendage_wavemark")
}
function proc_appendage_wavemark(appendage)
{
 if (!appendage)
 return; 
 local wavemark_jianqi1 = appendage.getParent();
 local wavemark_jianqi2 = sq_GetCNRDObjectToSQRCharacter(wavemark_jianqi1);
 
 if(!wavemark_jianqi1 || wavemark_jianqi2.getState() == STATE_DIE || wavemark_jianqi2.isDead()) 
{
 appendage.setValid(false);
 return;
 
}
 
 if(appendage.getTimer().Get() < 10000) return;
 if(wavemark_jianqi2.sq_IsEnterSkill(47) != -1)
 if(wavemark_jianqi2.sq_IsUseSkill(47))
 
{
 appendage.setValid(false);
 return;
 
}
}
