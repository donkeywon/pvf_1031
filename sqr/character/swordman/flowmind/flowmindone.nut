

function onAfterSetState_swordman_flowmindone(obj, Vars, Bool, objvector)
{
 if(!obj) return;
 local ANI_01 = obj.sq_GetVectorData(Bool, 0);
 switch(ANI_01)
 {
 case 0:
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/swordman/appendage/ap_stateoflimit.nut"))
 {
 obj.sq_SetSuperArmorUntilTime(obj, obj.sq_GetLevelData(SKILL_SWORDMAN_STATEOFLIMIT, 1, sq_GetSkillLevel(obj, SKILL_SWORDMAN_STATEOFLIMIT))); 
 }
 local ANI = obj.sq_GetVectorData(Bool, 1) == 0;
 obj.getVar().setBool(0,ANI); 
 if(ANI)
 {
 obj.sq_StopMove();
 obj.sq_SetCurrentAnimation(181);
 local anidelay = obj.getCurrentAnimation();
 sq_Rewind(anidelay);
 local lavue = obj.getXPos();
 local Pos = obj.getZPos();
 obj.getVar().clear_vector(); 
 obj.getVar().push_vector(lavue); 
 obj.getVar().push_vector(Pos); 
 obj.getVar().push_vector((tan(sq_ToRadian(35.0)) * Pos).tointeger()); 
 obj.getVar().setBool(1,false); 
 
 sq_CreateDrawOnlyObject(obj, "character/swordman/effect/animation/flowmindone/fallstate_one_leap.ani", ENUM_DRAWLAYER_NORMAL, true);
 
 local Uni = sq_CreateDrawOnlyObject(obj, "character/swordman/effect/animation/flowmindone/fallstate_one_start.ani", ENUM_DRAWLAYER_NORMAL, true);
 sq_moveWithParent(obj, Uni); 
 obj.getVar().clear_obj_vector(); 
 obj.getVar().push_obj_vector(Uni); 
 obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
 }
 break;
 }
} 

function onEndState_swordman_flowmindone(obj, Vars)
{
	if(!obj) return;
	local Bool = obj.getVar().getBool(0);
	if(Bool)
	{
		local objvector = obj.getVar().get_obj_vector(0); 
		if(objvector)objvector.setValid(false); 
	}
}



function onProc_swordman_flowmindone(obj)
{
	if(!obj) return;
	local Vars = obj.getVar();
	local Bool = obj.getSkillSubState(); 
	local objvector = Vars.getBool(0);
	switch(Bool)
		{
		case 0:
		if(objvector)
			{
			local ANI_01 = obj.getCurrentAnimation(); 
			local ANI = sq_GetCurrentTime(ANI_01); 
			local anidelay = ANI_01.getDelaySum(0, 2); 
			local lavue = Vars.get_vector(0);
				if(lavue != 0)
					{
					local Pos = sq_GetDistancePos(Vars.get_vector(0), obj.getDirection(), sq_GetUniformVelocity(0, Vars.get_vector(2), ANI, anidelay)) ;
					if(obj.isMovablePos(Pos, obj.getYPos()))
						{
						sq_setCurrentAxisPos(obj, 0, Pos); 
						}
					else
					Vars.set_vector(0, 0); 
					}
			local Uni = sq_GetUniformVelocity(Vars.get_vector(1), 0, ANI, anidelay);
			sq_setCurrentAxisPos(obj, 2, Uni); 
				if(Uni == 0)
					{
				if(Vars.getBool(1) != true) 
					{
						Vars.setBool(1, true);
						local Var_02 = obj.getVar().get_obj_vector(0); 
				if(Var_02)Var_02.setValid(false); 
						sq_CreateDrawOnlyObject(obj, "character/swordman/effect/animation/flowmindone/fallstate_one_end.ani", ENUM_DRAWLAYER_NORMAL, true);
					}
				if(sq_IsEnd(ANI_01) && obj.isMyControlObject())
				obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, true);
					}
			}
			break;
		}
}


function onProcCon_swordman_kong_liu85431480(obj)
{
	if(!obj) return;

	if(obj.sq_GetState() ==  6)//åýÍýä²îÜzñ¦øöÓÞéÍ0
	{
    obj.setSkillCommandEnable(105,true);//ö¦Ðåä²ïÇÕÕ
	if(obj.sq_IsEnterSkill(105) != -1)//ä²äÎù»×µãý Ê¦ì¤ã¿Û¯×µãýí©
		{
			local skill = obj.sq_IsUseSkill(107);
		if(skill)
			{
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(0); 
			obj.sq_IntVectPush(0); 
			obj.sq_AddSetStatePacket(62, STATE_PRIORITY_USER, true);
			}
		}
   }
}