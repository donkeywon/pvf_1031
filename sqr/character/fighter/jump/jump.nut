//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。

function onAfterSetState_FighterJumpAttack(obj , state , datas , isResetTimer)

{

 if (!obj) return;

 if (CNSquirrelAppendage.sq_IsAppendAppendage(obj , "character/fighter/poisonsnake/ap_poisonsnake.nut") == true)
 
{

 sq_CreateDrawOnlyObject(obj , "character/fighter/effect/animation/poisonsnake/jump_b_boom01_normal_01.ani" , ENUM_DRAWLAYER_NORMAL , true);

 obj.sq_SetCurrentAttackBonusRate(obj.sq_GetBonusRateWithPassive(SKILL_POISONSNAKE , STATE_POISONSNAKE , 8 , 1.0));
 
}


}


function onKeyFrameFlag_FighterJumpAttack(obj , flagIndex)

{

 if(!obj) return false;

 if (CNSquirrelAppendage.sq_IsAppendAppendage(obj , "character/fighter/poisonsnake/ap_poisonsnake.nut") == true)
 
{

 if(flagIndex == 1)
 
{

 sq_SetMyShake(obj , 1 , 100);
 sq_flashScreen(obj , 0 , 0 , 200 , 70 , sq_RGB(0 , 0 , 0) , GRAPHICEFFECT_NONE , ENUM_DRAWLAYER_BOTTOM);
 
}

 
}

 return true;

}

