ZHAN_DI_GONG_XUN_COUNT		<- 0;

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_zhandixunzhang")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_zhandixunzhang")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_zhandixunzhang")
	appendage.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_zhandixunzhang")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_zhandixunzhang(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onStart_appendage_zhandixunzhang(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onEnd_appendage_zhandixunzhang(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onAttackParent_appendage_zhandixunzhang(appendage, realAttacker, damager, boundingBox, isStuck)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(obj);
	local activeObj = sq_GetCNRDObjectToActiveObject(damager);

	local skillLevel = sqrChr.sq_GetSkillLevel(SKILL_ZHAN_DI_GONG_XUN);
	local max_count = sq_GetLevelData(sqrChr, SKILL_ZHAN_DI_GONG_XUN, 1, skillLevel);
	if(activeObj.isDead() && (activeObj.isSuperChampion() || activeObj.isCommonChampion() || activeObj.isChampion()))
	{
		if (ZHAN_DI_GONG_XUN_COUNT >= max_count) {
			return;
		}
		ZHAN_DI_GONG_XUN_COUNT+=1;
		sq_IntVectorClear(sq_GetGlobalIntVector());
		sq_IntVectorPush(sq_GetGlobalIntVector(),1);
		sq_AddSetStatePacketActiveObject(activeObj, STATE_DIE, sq_GetGlobalIntVector(), STATE_PRIORITY_FORCE);
	}
}

function onStartDungeon_GunnerSkill(obj)
{
	if(!obj) return;
	ZHAN_DI_GONG_XUN_COUNT = 0;
}

