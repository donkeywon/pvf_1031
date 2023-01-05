function setBloodMonsterAppend(obj)
{
	local objectManager = obj.getObjectManager();

	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i++)
	{
		local object = objectManager.getCollisionObject(i);

		if (object.isObjectType(OBJECTTYPE_ACTIVE) && obj.isEnemy(object))
		{
			if (!CNSquirrelAppendage.sq_IsAppendAppendage(object, DRAW_MONSTER_AP) )
			{
				local appendage = CNSquirrelAppendage.sq_AppendAppendage(object, obj, -1, false, DRAW_MONSTER_AP, true);

				object = sq_GetCNRDObjectToActiveObject(object);
				if(DRAW_MONSTER_LEVEL == 0 && sq_IsBoss(object))
				{
					appendage.getVar("drawMonsterFlag").setInt(0,1);
					appendage.getVar("drawMonsterId").setInt(0,sq_GetObjectId(object));
				}else if(DRAW_MONSTER_LEVEL == 1 && (sq_IsBoss(object) || sq_IsNamed(object)))
				{
					appendage.getVar("drawMonsterFlag").setInt(0,1);
					appendage.getVar("drawMonsterId").setInt(0,sq_GetObjectId(object));
				}
			}
		}
	}
}

function onStartMap_Swordman(obj)
{
	if(!obj) return;
	setBloodMonsterAppend(obj);
}



function onStartMap_Fighter(obj)
{
	if(!obj) return;
	setBloodMonsterAppend(obj);
}



function onStartMap_ATFighter(obj)
{
	if(!obj) return;
	setBloodMonsterAppend(obj);
}



function onStartMap_Gunner(obj)
{
	if(!obj) return;
	setBloodMonsterAppend(obj);
}



function onStartMap_ATGunner(obj)
{
	if(!obj) return;
	setBloodMonsterAppend(obj);
}



function onStartMap_Mage(obj)
{
	if(!obj) return;
	setBloodMonsterAppend(obj);
}



function onStartMap_ATMage(obj)
{
	if(!obj) return;
	setBloodMonsterAppend(obj);
}



function onStartMap_Priest(obj)
{
	if(!obj) return;
	setBloodMonsterAppend(obj);
}



function onStartMap_Thief(obj)
{
	if(!obj) return;
	setBloodMonsterAppend(obj);
}



function onStartMap_DemonicSwordman(obj)
{
	if(!obj) return;
	setBloodMonsterAppend(obj);
}

