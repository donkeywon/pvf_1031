
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學1500一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_thief_distribution")
}




function proc_appendage_thief_distribution(rgBkTbq4k6UkzBoJ8J)
{
 if(!rgBkTbq4k6UkzBoJ8J) return;
 local M9h61NKxgPZW6llDxf2O0 = rgBkTbq4k6UkzBoJ8J.getParent();
 local edenLzFww0 = sq_GetCNRDObjectToSQRCharacter(rgBkTbq4k6UkzBoJ8J.getSource()); 
 if(!M9h61NKxgPZW6llDxf2O0 || !edenLzFww0 )
 {
 rgBkTbq4k6UkzBoJ8J.setValid(false);
 return;
 }
 local PggYiVzG3S = edenLzFww0.getSkillSubState(); 
 if(PggYiVzG3S == 3) 
 {
 if(sq_GetCurrentFrameIndex(edenLzFww0) >= 2) 
 rgBkTbq4k6UkzBoJ8J.setValid(false);
 }
 else if(edenLzFww0.getState() != 221) 
 {
 rgBkTbq4k6UkzBoJ8J.setValid(false);
 }
} 


