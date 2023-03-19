
function onSetState_step_headshot(obj, state, datas, isResetTimer)
{	
//dofile("head.nut");
onSetState_FastDraw(obj, state, datas, isResetTimer);
}

function onEndCurrentAni_step_headshot(obj)
{
onEndCurrentAni_FastDraw(obj);
}

function onKeyFrameFlag_step_headshot(obj,flagIndex)
{
onKeyFrameFlag_Manlin(obj,flagIndex);
}
function onEnterFrame_step_headshot(obj, frameIndex)
{
onEnterFrame(obj, frameIndex);
}
function onProcCon_step_headshot(obj)
{
procAppend(obj);

}
function onSetState_FastDraw(obj, state, datas, isResetTimer)
{	
	if(!obj) return;
	local substate = obj.getVar().get_vector(0);
	//printp("substate="+substate+"  ");
	//printp("state="+state+"  ");
	//printp("datas="+datas+"\n");

	//local num2 = obj.getVar().get_vector(1);
	//local num3 = obj.getVar().get_vector(2);
	//local num3 = obj.getVar().get_vector(3);
	obj.setSkillSubState(substate);
	obj.sq_StopMove();
	obj.sq_SetCurrentAnimation(158);
	return;
	if(substate == 0)
	{
		obj.sq_SetCurrentAnimation(159);
		obj.sq_SetStaticMoveInfo(0, -400, -500, false);
		obj.sq_SetStaticMoveInfo(1, 0, 0, false);
		sq_SetZVelocity(obj, 300, 800);
		obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
	}
	if(substate == 1)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_DEADLYAPPROACH_AIR_BODY);
		obj.sq_SetStaticMoveInfo(0, -200, -300, false);
		obj.sq_SetStaticMoveInfo(1, 0, 0, false);
		obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
		//obj.sq_SendCreatePassiveObjectPacket(2018125, 0, 0, 0, 0);
	}	
	if(substate == 2)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_DEADLYAPPROACH_FALL_BODY);
	}
	else if(substate == 3)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_DEADLYAPPROACH_END_BODY);
	}	
}
function onEnterFrame(obj, frameIndex)
{

//printp("frameIndex="+frameIndex+"\n");


	if(frameIndex == 0)
	{
		//obj.sq_SetCurrentAnimation(159);
		obj.sq_SetStaticMoveInfo(0, -400, -500, false);
		obj.sq_SetStaticMoveInfo(1, 0, 0, false);
		sq_SetZVelocity(obj, 300, 300);
		obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
	}
	if(frameIndex == 5)
	{
		//obj.sq_SetCurrentAnimation(CUSTOM_ANI_DEADLYAPPROACH_AIR_BODY);
		obj.sq_SetStaticMoveInfo(0, -500, -500, false);
		obj.sq_SetStaticMoveInfo(1, 0, 0, false);
		sq_SetZVelocity(obj, -400, -400);
		obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
		//obj.sq_SendCreatePassiveObjectPacket(2018125, 0, 0, 0, 0);
		obj.sq_StartWrite();
		obj.sq_WriteDword(169); 
		obj.sq_SendCreatePassiveObjectPacket(24371, 0, 100, -20, 0); 
		//obj.sq_SendCreatePassiveObjectPacket(24371, 80, 0, -65, 0); 
		
	}	
	if(frameIndex == 7)
	{
		//obj.sq_SetCurrentAnimation(CUSTOM_ANI_DEADLYAPPROACH_FALL_BODY);;
	}
	else if(frameIndex == 9)
	{
		//printp("frameIndex="+frameIndex+"\n")
		//obj.getVar().get_vector(1)=1;
	}	

}

function onEndCurrentAni_FastDraw(obj)
{

	
	local substate = obj.getSkillSubState();


		//printp("substate="+substate+"\n");

		//obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	
}

function onKeyFrameFlag_Manlin(obj,flagIndex)
{
	if(!obj)
		return false;

	local isMyControlObject = obj.sq_IsMyControlObject();

	//printp("flagIndex="+flagIndex+"\n")
	if (isMyControlObject())
	{
	}
	return true;
}

function procAppend(obj)
{


	if (!obj) return;

	if(obj.sq_GetState() == 169)
	{
		//printp("obj.getVar().get_vector(1)="+obj.getVar().get_vector(1)+"\n");
		if(obj.getZPos()==0 )
		{
		 obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		}

	}

}