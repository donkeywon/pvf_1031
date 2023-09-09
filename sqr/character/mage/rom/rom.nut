function checkExecutableSkill_ROM(obj)
{
	if (!obj) return false;
	local isUse = obj.sq_IsUseSkill(128);
	if (isUse)
	{
		local Vec = sq_GetGlobalIntVector();
		sq_IntVectorClear(Vec);
		sq_IntVectorPush(Vec, 0);
		obj.addSetStatePacket(128 , Vec,  STATE_PRIORITY_USER, false, "");
		return true;
	}
	return false;
}


function checkCommandEnable_ROM(obj)
{
	return true;
}



function onSetState_ROM(obj, state, datas, isResetTimer)
{
	obj.sq_StopMove();
	local state = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(state);

	if (state == 0)
	{
		obj.sq_SetCurrentAnimation(144);
		obj.getVar("count").clear_vector();
		obj.getVar("count").push_vector(20);
		
		obj.getVar("Pool").clear_obj_vector();
		obj.getVar("Pool").push_obj_vector(createStartCircleFront(obj,210,1,0) );
		obj.getVar("Pool").push_obj_vector(createStartCircleFrontLight(obj,210,2,0) );
		obj.getVar("Pool").push_obj_vector(createStartCircleBack(obj,210,-2,0) );
		obj.getVar("Pool").push_obj_vector(createStartCircleFloor(obj,210,3,0) );
		
		obj.getVar("summon").clear_vector();
		for (local i = 0;i < 20;i++)
			obj.getVar("summon").push_vector(0);
		
		
	}else if (state == 1)
	{
		obj.sq_SetCurrentAnimation(145);
		createStartCircleFloor(obj,210,2,0);

	}else if (state == 2)
	{
		obj.sq_SetCurrentAnimation(147);
		local count = obj.getVar("count").get_vector(0);
		obj.getVar("count").set_vector(0,count - 20);
		createLoopCircleFloor(obj,210,-1,0);
		SummonMonster(obj,count);
	}else if (state == 3)
	{
		obj.sq_SetCurrentAnimation(146);
		createEndCircleFront(obj,210,2,0);
		createEndCircleBack(obj,210,-1,0);
		createEndCircleFloor(obj,210,2,0);
	}
}


function SummonMonster(obj,count)
{
	local MonsterID = [50680731,50680733,904,900,60030,901,903,902,909,60020,60021,60022,60023,-1];
	local isEnd = false;
	local i = 0;
	while (MonsterID[i] != -1)
	{
		local monsterID = MonsterID[i];
		i = i + 1;
		if (!MonsIsAlive(obj,monsterID) && MIsCasting(obj,monsterID) && obj.getVar("summon").get_vector(0) == 0)
		{
			obj.getVar("summon").set_vector(i,0);
			sq_BinaryStartWrite();//?ç¯ä¹Ð¥××ÞÙ
			sq_BinaryWriteByte(0);
			sq_BinaryWriteDword(60020);
			sq_BinaryWriteWord(0);
			sq_BinaryWriteByte(86);
			sq_BinaryWriteWord(-1);
			sq_BinaryWriteWord(0);
			sq_BinaryWriteByte(1);
			sq_BinaryWriteByte(2);
			sq_BinaryWriteByte(0);
			sq_BinaryWriteDword(99999);
			sq_BinaryWriteDword(-1);
			sq_BinaryWriteByte(1);
			sq_SendCreatePassiveObjectPacket(obj, 48024, 0, 210, 0, 0, obj.getDirection());

			sq_BinaryStartWrite();//ØÌûëÙùÐºì³
			sq_BinaryWriteByte(0);
			sq_BinaryWriteDword(60021);
			sq_BinaryWriteWord(0);
			sq_BinaryWriteByte(86);
			sq_BinaryWriteWord(-1);
			sq_BinaryWriteWord(0);
			sq_BinaryWriteByte(1);
			sq_BinaryWriteByte(2);
			sq_BinaryWriteByte(0);
			sq_BinaryWriteDword(99999);
			sq_BinaryWriteDword(-1);
			sq_BinaryWriteByte(1);
			sq_SendCreatePassiveObjectPacket(obj, 48024, 0, 210, 0, 0, obj.getDirection());

			sq_BinaryStartWrite();//Ð¿ÎÃÌ«Öô×ù
			sq_BinaryWriteByte(0);
			sq_BinaryWriteDword(60022);
			sq_BinaryWriteWord(0);
			sq_BinaryWriteByte(86);
			sq_BinaryWriteWord(-1);
			sq_BinaryWriteWord(0);
			sq_BinaryWriteByte(1);
			sq_BinaryWriteByte(2);
			sq_BinaryWriteByte(0);
			sq_BinaryWriteDword(99999);
			sq_BinaryWriteDword(-1);
			sq_BinaryWriteByte(1);
			sq_SendCreatePassiveObjectPacket(obj, 48024, 0, 210, 0, 0, obj.getDirection());

			sq_BinaryStartWrite();//
			sq_BinaryWriteByte(0);
			sq_BinaryWriteDword(60023);
			sq_BinaryWriteWord(0);
			sq_BinaryWriteByte(86);
			sq_BinaryWriteWord(-1);
			sq_BinaryWriteWord(0);
			sq_BinaryWriteByte(1);
			sq_BinaryWriteByte(2);
			sq_BinaryWriteByte(0);
			sq_BinaryWriteDword(99999);
			sq_BinaryWriteDword(-1);
			sq_BinaryWriteByte(1);
			sq_SendCreatePassiveObjectPacket(obj, 48024, 0, 210, 0, 0, obj.getDirection());

			sq_BinaryStartWrite();//
			sq_BinaryWriteByte(0);
			sq_BinaryWriteDword(904);
			sq_BinaryWriteWord(0);
			sq_BinaryWriteByte(86);
			sq_BinaryWriteWord(-1);
			sq_BinaryWriteWord(0);
			sq_BinaryWriteByte(1);
			sq_BinaryWriteByte(2);
			sq_BinaryWriteByte(0);
			sq_BinaryWriteDword(99999);
			sq_BinaryWriteDword(-1);
			sq_BinaryWriteByte(1);
			sq_SendCreatePassiveObjectPacket(obj, 48024, 0, 210, 0, 0, obj.getDirection());

			sq_BinaryStartWrite();//
			sq_BinaryWriteByte(0);
			sq_BinaryWriteDword(900);
			sq_BinaryWriteWord(0);
			sq_BinaryWriteByte(86);
			sq_BinaryWriteWord(-1);
			sq_BinaryWriteWord(0);
			sq_BinaryWriteByte(1);
			sq_BinaryWriteByte(2);
			sq_BinaryWriteByte(0);
			sq_BinaryWriteDword(99999);
			sq_BinaryWriteDword(-1);
			sq_BinaryWriteByte(1);
			sq_SendCreatePassiveObjectPacket(obj, 48024, 0, 210, 0, 0, obj.getDirection());

			sq_BinaryStartWrite();//
			sq_BinaryWriteByte(0);
			sq_BinaryWriteDword(60030);
			sq_BinaryWriteWord(0);
			sq_BinaryWriteByte(86);
			sq_BinaryWriteWord(-1);
			sq_BinaryWriteWord(0);
			sq_BinaryWriteByte(1);
			sq_BinaryWriteByte(2);
			sq_BinaryWriteByte(0);
			sq_BinaryWriteDword(99999);
			sq_BinaryWriteDword(-1);
			sq_BinaryWriteByte(1);
			sq_SendCreatePassiveObjectPacket(obj, 48024, 0, 210, 0, 0, obj.getDirection());

			sq_BinaryStartWrite();//
			sq_BinaryWriteByte(0);
			sq_BinaryWriteDword(901);
			sq_BinaryWriteWord(0);
			sq_BinaryWriteByte(86);
			sq_BinaryWriteWord(-1);
			sq_BinaryWriteWord(0);
			sq_BinaryWriteByte(1);
			sq_BinaryWriteByte(2);
			sq_BinaryWriteByte(0);
			sq_BinaryWriteDword(99999);
			sq_BinaryWriteDword(-1);
			sq_BinaryWriteByte(1);
			sq_SendCreatePassiveObjectPacket(obj, 48024, 0, 210, 0, 0, obj.getDirection());

			sq_BinaryStartWrite();//
			sq_BinaryWriteByte(0);
			sq_BinaryWriteDword(903);
			sq_BinaryWriteWord(0);
			sq_BinaryWriteByte(86);
			sq_BinaryWriteWord(-1);
			sq_BinaryWriteWord(0);
			sq_BinaryWriteByte(1);
			sq_BinaryWriteByte(2);
			sq_BinaryWriteByte(0);
			sq_BinaryWriteDword(99999);
			sq_BinaryWriteDword(-1);
			sq_BinaryWriteByte(1);
			sq_SendCreatePassiveObjectPacket(obj, 48024, 0, 210, 0, 0, obj.getDirection());

			sq_BinaryStartWrite();//
			sq_BinaryWriteByte(0);
			sq_BinaryWriteDword(902);
			sq_BinaryWriteWord(0);
			sq_BinaryWriteByte(86);
			sq_BinaryWriteWord(-1);
			sq_BinaryWriteWord(0);
			sq_BinaryWriteByte(1);
			sq_BinaryWriteByte(2);
			sq_BinaryWriteByte(0);
			sq_BinaryWriteDword(99999);
			sq_BinaryWriteDword(-1);
			sq_BinaryWriteByte(1);
			sq_SendCreatePassiveObjectPacket(obj, 48024, 0, 210, 0, 0, obj.getDirection());

			sq_BinaryStartWrite();//
			sq_BinaryWriteByte(0);
			sq_BinaryWriteDword(909);
			sq_BinaryWriteWord(0);
			sq_BinaryWriteByte(86);
			sq_BinaryWriteWord(-1);
			sq_BinaryWriteWord(0);
			sq_BinaryWriteByte(1);
			sq_BinaryWriteByte(2);
			sq_BinaryWriteByte(0);
			sq_BinaryWriteDword(99999);
			sq_BinaryWriteDword(-1);
			sq_BinaryWriteByte(1);
			sq_SendCreatePassiveObjectPacket(obj, 48024, 0, 210, 0, 0, obj.getDirection());

			sq_BinaryStartWrite();//
			sq_BinaryWriteByte(0);
			sq_BinaryWriteDword(50680731);
			sq_BinaryWriteWord(0);
			sq_BinaryWriteByte(86);
			sq_BinaryWriteWord(-1);
			sq_BinaryWriteWord(0);
			sq_BinaryWriteByte(1);
			sq_BinaryWriteByte(2);
			sq_BinaryWriteByte(0);
			sq_BinaryWriteDword(99999);
			sq_BinaryWriteDword(-1);
			sq_BinaryWriteByte(1);
			sq_SendCreatePassiveObjectPacket(obj, 48024, 0, 210, 0, 0, obj.getDirection());

			sq_BinaryStartWrite();//
			sq_BinaryWriteByte(0);
			sq_BinaryWriteDword(50680733);
			sq_BinaryWriteWord(0);
			sq_BinaryWriteByte(86);
			sq_BinaryWriteWord(-1);
			sq_BinaryWriteWord(0);
			sq_BinaryWriteByte(1);
			sq_BinaryWriteByte(2);
			sq_BinaryWriteByte(0);
			sq_BinaryWriteDword(99999);
			sq_BinaryWriteDword(-1);
			sq_BinaryWriteByte(1);
			sq_SendCreatePassiveObjectPacket(obj, 48024, 0, 210, 0, 0, obj.getDirection());


			return;
		}
	}
	obj.getVar("count").set_vector(0,-9);
	local Vec = sq_GetGlobalIntVector();
	sq_IntVectorClear(Vec);
	sq_IntVectorPush(Vec, 3);
	obj.addSetStatePacket(128, Vec, STATE_PRIORITY_USER, false, "");
}

function MIsCasting(obj,monsterID)
{
	if (monsterID == 60020)//???Ð¥????
	{
		if (sq_GetSkillLevel(obj, 78 ) > 0 )
		{
			obj.startSkillCoolTime(78, sq_GetSkillLevel(obj, 78 ), -1);
			return true;
		}
	}else if (monsterID == 60021)//??????Ðº?
	{
		if (sq_GetSkillLevel(obj, 76 ) > 0 )
		{
			obj.startSkillCoolTime(76, sq_GetSkillLevel(obj, 76 ), -1);
			return true;
		}
	}else if (monsterID == 60022)//Ð¿???????
	{
		if (sq_GetSkillLevel(obj, 77 ) > 0 )
		{
			obj.startSkillCoolTime(77, sq_GetSkillLevel(obj, 77 ), -1);
			return true;
		}
		
	}else if (monsterID == 60023)//????????Ðº
	{
		if (sq_GetSkillLevel(obj, 79 ) > 0)
		{
			obj.startSkillCoolTime(79, sq_GetSkillLevel(obj, 79 ), -1);
			return true;
		}
		
	}else if (monsterID == 904)//????????????
	{
		if (sq_GetSkillLevel(obj, 47 ) > 0)
		{
			obj.startSkillCoolTime(47, sq_GetSkillLevel(obj, 47 ), -1);
			return true;
		}
		
	}else if (monsterID == 900)//?????
	{
		if (sq_GetSkillLevel(obj, 25 ) > 0)
		{
			obj.startSkillCoolTime(25, sq_GetSkillLevel(obj, 25 ), -1);
			return true;
		}
		
	}else if (monsterID == 60030)//??????
	{
		if (sq_GetSkillLevel(obj, 80 ) > 0)
		{
			obj.startSkillCoolTime(80, sq_GetSkillLevel(obj, 80 ), -1);
			return true;
		}
		
	}else if (monsterID == 901)//?????? ?????
	{
		if (sq_GetSkillLevel(obj, 44 ) > 0)
		{
			obj.startSkillCoolTime(44, sq_GetSkillLevel(obj, 44 ), -1);
			return true;
		}
		
	}else if (monsterID == 903)//???????
	{
		if (sq_GetSkillLevel(obj, 45 ) > 0)
		{
			obj.startSkillCoolTime(45, sq_GetSkillLevel(obj, 45 ), -1);
			return true;
		}
		
	}else if (monsterID == 902)//????????
	{
		if (sq_GetSkillLevel(obj, 46 ) > 0)
		{
			obj.startSkillCoolTime(46, sq_GetSkillLevel(obj, 46 ), -1);
			return true;
		}
		
	}else if (monsterID == 909)//???????????
	{
		if (sq_GetSkillLevel(obj, 118 ) > 0)
		{
			obj.startSkillCoolTime(118, sq_GetSkillLevel(obj, 118 ), -1);
			return true;
		}
		
	}else if (monsterID == 50680731)//???????????
	{
		if (sq_GetSkillLevel(obj, 136 ) > 0)
		{
			obj.startSkillCoolTime(136, sq_GetSkillLevel(obj, 136 ), -1);
			return true;
		}
		
	}else if (monsterID == 50680733)//?????????????
	{
		if (sq_GetSkillLevel(obj, 138 ) > 0)
		{
			obj.startSkillCoolTime(138, sq_GetSkillLevel(obj, 138 ), -1);
			return true;
		}
		
	}
	return false;
}



function MonsIsAlive(obj,checkupid)
{
	local objectManager = obj.getObjectManager();
	if (objectManager)
	{
		for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
		{
			local object = objectManager.getCollisionObject(i);
			local id = object.getCollisionObjectIndex(object);
			if (object && object.isObjectType(OBJECTTYPE_ACTIVE) && id == checkupid )
			{
				if (sq_IsMyControlObject(object) )
					return object;
			}
		}
	}
}


function onProc_ROM(obj)
{
	local state = obj.getSkillSubState();
	if (state == 0)
	{
	
	}else if (state == 1)
	{
		local pAni = obj.sq_GetCurrentAni();
		local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
		local currentT = sq_GetCurrentTime(pAni);
		
		if (currentT > 500)
		{
			local Vec = sq_GetGlobalIntVector();
			sq_IntVectorClear(Vec);
			sq_IntVectorPush(Vec, 2);
			obj.addSetStatePacket(128 , Vec,  STATE_PRIORITY_USER, false, "");
		
		}
	}
	if (state == 0 || state == 1 || state == 2)
	{
	
		local isPress = sq_IsKeyDown(OPTION_HOTKEY_JUMP, ENUM_SUBKEY_TYPE_ALL);
		if (isPress)
		{

		}
	}else if (state == 3)
	{
		local size = obj.getVar("Pool").get_obj_vector_size();
		if (size > 0)
		{
			setVliadEffectPassiveObject(obj);
		}
	}
}

function setVliadEffectPassiveObject(obj)
{
	local var = obj.getVar("Pool");
	local objectsSize = var.get_obj_vector_size();
	for(local i=0;i<objectsSize;++i)
	{
		local effectObj = var.get_obj_vector(i);
		if (effectObj)
		{
			effectObj.setValid(false);
		}
	}
}

function onEndCurrentAni_ROM(obj)
{
	local state = obj.getSkillSubState();
	if (state == 0)
	{
		local Vec = sq_GetGlobalIntVector();
		sq_IntVectorClear(Vec);
		sq_IntVectorPush(Vec, 1);
		obj.addSetStatePacket(128 , Vec,  STATE_PRIORITY_USER, false, "");

		obj.getVar("Pool").clear_obj_vector();
		obj.getVar("Pool").push_obj_vector(createLoopCircleFront(obj,210,2,0) );
		obj.getVar("Pool").push_obj_vector(creatLoopCircleBack(obj,210,-1,0) );
		createLoopCircleFloor(obj,210,-1,0);

	}else if (state == 1)
	{
	
	}else if (state == 2)
	{

		local isPress = sq_IsKeyDown(OPTION_HOTKEY_JUMP, ENUM_SUBKEY_TYPE_ALL);
		if (obj.getVar("count").get_vector(0) > 0 && !isPress )
		{
			local Vec = sq_GetGlobalIntVector();
			sq_IntVectorClear(Vec);
			sq_IntVectorPush(Vec, 1);
			obj.addSetStatePacket(128, Vec,  STATE_PRIORITY_USER, false, "");
		}else
		{
			local Vec = sq_GetGlobalIntVector();
			sq_IntVectorClear(Vec);
			sq_IntVectorPush(Vec, 3);
			obj.addSetStatePacket(128, Vec,  STATE_PRIORITY_USER, false, "");
		}
	}else if (state == 3)
	{
		local Vec = sq_GetGlobalIntVector();
		sq_IntVectorClear(Vec);
		sq_IntVectorPush(Vec, 1);
		obj.addSetStatePacket(0, Vec,  STATE_PRIORITY_USER, false, "");
	}
}


function createEndCircleFloor(obj,disX,disY,disZ)
{

	local ani = sq_CreateAnimation("","character/mage/effect/animation/ringofdomination/end/rodendfloor_01.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	

	return pooledObj;
}

function createEndCircleBack(obj,disX,disY,disZ)
{

	local ani = sq_CreateAnimation("","character/mage/effect/animation/ringofdomination/end/rodendringb_01.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	

	return pooledObj;
}



function createEndCircleFront(obj,disX,disY,disZ)
{

	local ani = sq_CreateAnimation("","character/mage/effect/animation/ringofdomination/end/rodendringa_01.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	

	return pooledObj;
}


function createLoopCircleFront(obj,disX,disY,disZ)
{

	local ani = sq_CreateAnimation("","character/mage/effect/animation/ringofdomination/loop/rodloopringa_01.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	

	return pooledObj;
}



function createLoopCircleFloor(obj,disX,disY,disZ)
{

	local ani = sq_CreateAnimation("","character/mage/effect/animation/ringofdomination/loop/rodsummonefffloor_01.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	

	return pooledObj;
}

function creatLoopCircleBack(obj,disX,disY,disZ)
{

	local ani = sq_CreateAnimation("","character/mage/effect/animation/ringofdomination/loop/rodloopringb_01.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	

	return pooledObj;
}





function createStartCircleFront(obj,disX,disY,disZ)
{

	local ani = sq_CreateAnimation("","character/mage/effect/animation/ringofdomination/start/rodstartringa_01.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	

	return pooledObj;
}



function createStartCircleFloor(obj,disX,disY,disZ)
{

	local ani = sq_CreateAnimation("","character/mage/effect/animation/ringofdomination/start/rodstartfloor_01.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	

	return pooledObj;
}

function createStartCircleBack(obj,disX,disY,disZ)
{

	local ani = sq_CreateAnimation("","character/mage/effect/animation/ringofdomination/start/rodstartringb_01.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	

	return pooledObj;
}



function createStartCircleFrontLight(obj,disX,disY,disZ)
{

	local ani = sq_CreateAnimation("","character/mage/effect/animation/ringofdomination/start/rodstarta_p01.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	

	return pooledObj;
}


function createRingOfDominationSummonCircleBack(obj,disX,disY,disZ)
{

	local ani = sq_CreateAnimation("","character/mage/effect/animation/ringofdomination/loop/rodsummoneffb_01.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	

	return pooledObj;
}



function createSummonCircleFront(obj,disX,disY,disZ)
{

	local ani = sq_CreateAnimation("","character/mage/effect/animation/ringofdomination/loop/rodsummoneffa_01.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	

	return pooledObj;
}
