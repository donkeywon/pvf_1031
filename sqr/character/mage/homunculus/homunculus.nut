
function HomunCulus(obj)
{
local RadA = [260111,260112,260113,260114];
local R = sq_getRandom(0, 3);
local Index = RadA[R];
sq_SendCreatePassiveObjectPacketPos(obj, Index, 0,  0, 0, 0);
}

function getMonsterObject(obj)
{
if(!obj) return;
local ObjectManager = obj.getObjectManager();
for(local i = 0; i < ObjectManager.getCollisionObjectNumber(); ++i)
{
local Object = ObjectManager.getCollisionObject(i);
if(Object && Object.isObjectType(OBJECTTYPE_MONSTER) && !obj.isEnemy(Object))
{
local MontA = {[5000003] = true, [5000004] = true, [5000005] = true, [5000006] = true };
local index = Object.getCollisionObjectIndex();
if(MontA.rawin(index))
{
Object.setMapFollowParent(obj);
Object.setMapFollowType(1);
}
}
}
}




function onSetState_TransformFlapper(obj, state, datas, isResetTimer)
{
if(!obj) return;
local substate = obj.sq_GetVectorData(datas, 0);
obj.setSkillSubState(substate);

}

function onAfterAttack_TransformFlapper(obj, damager, boundingBox, isStuck)
{
if(!obj)return false;
local substate = obj.getSkillSubState();
switch(substate)
{
case 2:
if(sq_GetSkillLevel(obj, 33) < 1)
break;
local isSeal = sq_GetSkill(obj, 33).isSealFunction();
if(!damager.isObjectType(OBJECTTYPE_ACTIVE) || isSeal)
break;

local damager = sq_GetCNRDObjectToActiveObject(damager);
if(damager && damager.isDead())
{
sq_IntVectorClear(sq_GetGlobalIntVector());
sq_IntVectorPush(sq_GetGlobalIntVector(),1);
sq_AddSetStatePacketActiveObject(damager, STATE_DIE, sq_GetGlobalIntVector(), STATE_PRIORITY_FORCE);
HomunCulus(obj);
}
break;
}
}

function onCreateObject_TransformFlapper(obj, createObject)
{
if(sq_GetSkillLevel(obj, 33) < 1 || sq_GetSkill(obj, 33).isSealFunction())
return;
local substate = obj.getSkillSubState();
if(createObject.isObjectType(OBJECTTYPE_PASSIVE) && substate == 2)
{
local createObject = sq_GetCNRDObjectToCollisionObject(createObject); 
local cuid = createObject.getCollisionObjectIndex();
if(cuid == 48024) createObject.sendDestroyPacket(true);
}
}
