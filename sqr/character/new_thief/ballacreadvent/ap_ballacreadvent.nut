
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學1500一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_thief_ballacreadvent")
}





function proc_appendage_thief_ballacreadvent(P17_Ie67RvIkHnpfoMfPp0)
{
 if(!P17_Ie67RvIkHnpfoMfPp0) return;
 local XfsYmB3qtYof_mmblqAAafN = P17_Ie67RvIkHnpfoMfPp0.getParent();
 local PNzQS9_bU5yEsnnqmdlFbqaG = P17_Ie67RvIkHnpfoMfPp0.getSource(); 
 if(!XfsYmB3qtYof_mmblqAAafN || !PNzQS9_bU5yEsnnqmdlFbqaG || sq_GetAnimationFrameIndex(PNzQS9_bU5yEsnnqmdlFbqaG.getCurrentAnimation())>=56)
 {
 P17_Ie67RvIkHnpfoMfPp0.setValid(false);
 return;
 }
} 
