
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學1500一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_thief_novaremnant")
}




function proc_appendage_thief_novaremnant(RbDrK9ySg_Q3h81qY5)
{
 if(!RbDrK9ySg_Q3h81qY5) return;
 local tkwqbnh_6DKOWEvSWO = RbDrK9ySg_Q3h81qY5.getParent();
 local KaJdml3vwiuvAl2E8fdyYl9 = sq_GetCNRDObjectToSQRCharacter(RbDrK9ySg_Q3h81qY5.getSource()); 
 if(!tkwqbnh_6DKOWEvSWO || !KaJdml3vwiuvAl2E8fdyYl9 || KaJdml3vwiuvAl2E8fdyYl9.getSkillSubState() == 5)
 {
 RbDrK9ySg_Q3h81qY5.setValid(false);
 return;
 }
} 
