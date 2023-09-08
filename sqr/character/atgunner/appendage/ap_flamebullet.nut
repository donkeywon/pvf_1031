//////////////////////////////////////////////////////////////////////////////////////////////////
//									By Uncle Bang
//////////////////////////////////////////////////////////////////////////////////////////////////








function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_flamebullet")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_flamebullet")
	appendage.sq_AddFunctionName("isEnd", "isEnd_appendage_flamebullet")
}



function sq_AddEffect(appendage)
{

}



function onStart_appendage_flamebullet(appendage)
{
	if(!appendage)
	{
		return;
	}
}



function onEnd_appendage_flamebullet(appendage)
{
	if(!appendage) 
	{
		return;
	}
}



function isEnd_appendage_flamebullet(appendage)
{
	if(!appendage) return false;

	return false;
}