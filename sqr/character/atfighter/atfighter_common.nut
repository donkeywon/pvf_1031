

function setEnableCancelSkill_ATFighter(obj, isEnable)
{
 if(!obj)
 return false;

 if(!obj.isMyControlObject())
 return false;
 if(!isEnable)
 return true;
 obj.setSkillCommandEnable(220, isEnable);
 obj.setSkillCommandEnable(221, isEnable);
 obj.setSkillCommandEnable(222, isEnable);
 obj.setSkillCommandEnable(223, isEnable);
 obj.setSkillCommandEnable(224, isEnable);
 obj.setSkillCommandEnable(225, isEnable);
 obj.setSkillCommandEnable(226, isEnable);
 obj.setSkillCommandEnable(227, isEnable);
 obj.setSkillCommandEnable(228, isEnable);
 obj.setSkillCommandEnable(229, isEnable);
 obj.setSkillCommandEnable(230, isEnable);
 return true;
} ;


function onChangeSkillEffect_ATFighter_New(obj, skillIndex, reciveData)
{
 if(!obj) return;
 switch(skillIndex)
 {
 case 50:
 local vMANHUtMTDpA = reciveData.readWord();
 switch(vMANHUtMTDpA)
 {
 case 1:

 if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/appendage/ap_definitegrab.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/atfighter/appendage/ap_definitegrab.nut");
 local FVKCAd14Dts6N1 = obj.sq_GetLevelData(skillIndex, 0, sq_GetSkillLevel(obj, skillIndex));
 local CdeQ5bSIOksjOgU = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skillIndex, false, "character/atfighter/appendage/ap_definitegrab.nut", false);
 CdeQ5bSIOksjOgU.sq_SetValidTime(FVKCAd14Dts6N1);
 CNSquirrelAppendage.sq_Append(CdeQ5bSIOksjOgU, obj, obj, false);
 break;
 }
 break;
 }
} ;


function addSetStatePacket_ATFighter(obj, state, datas)
{
 if (!obj) return -1;
if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/appendage/ap_flamelegs.nut"))
 {
 if (state == 62 && obj.sq_GetVectorData(datas, 0) == -1)
 return -1;
 else
 {
 local o2TVsaZAiCNtkDtnOf2u2Q6 = CNSquirrelAppendage.sq_GetAppendage(obj, "character/atfighter/appendage/ap_flamelegs.nut");
 if (!o2TVsaZAiCNtkDtnOf2u2Q6 || o2TVsaZAiCNtkDtnOf2u2Q6.getVar().getBool(1) != true) return 1;

 switch (state)
 {
 case 223:
 case 224:
 case 225:
 case 49:
 case 72:
 case 67:
 if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/appendage/ap_flamelegs_add.nut"))
return 1;
 local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "character/atfighter/appendage/ap_flamelegs_add.nut", true);
 appendage.sq_SetValidTime(2000);
 local xPFeGxQzwzvuPXJwJ = sq_GetSkillLevel(obj, 41);
 appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, ENUM_CHARACTERJOB_AT_FIGHTER, 41, xPFeGxQzwzvuPXJwJ);
 CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, 41, true);
 local Vl6VwNv2J7DqPw3wMp = obj.sq_GetLevelData(41, 9, xPFeGxQzwzvuPXJwJ);
 local ZDRRdyYhNbq0ihz7 = appendage.sq_getChangeStatus("changeStatus");
 if (!ZDRRdyYhNbq0ihz7)
 ZDRRdyYhNbq0ihz7 = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_MAGICAL_ATTACK_BONUS, true, Vl6VwNv2J7DqPw3wMp, APID_COMMON);
 if (ZDRRdyYhNbq0ihz7)
 {
 ZDRRdyYhNbq0ihz7.clearParameter();
 ZDRRdyYhNbq0ihz7.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK_BONUS, true, Vl6VwNv2J7DqPw3wMp.tofloat());
 ZDRRdyYhNbq0ihz7.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK_BONUS, true, Vl6VwNv2J7DqPw3wMp.tofloat());
 }
 break;
 }
 }
 }
 return 1;
} ;


function SetSkill_ATFighter(obj,skillId,subArr,state)
{
	local skill = sq_GetSkill(obj, skillId);
	if(!skill.isInCoolTime())
	{
		obj.setSkillCommandEnable(skillId, true);
		if(obj.sq_IsEnterSkill(skillId) != -1)
		{
			local IsUse = obj.sq_IsUseSkill(skillId);
			if(IsUse)
			{
				obj.sq_IntVectClear();
				local ObjListSize = subArr.len();
				if(ObjListSize<1)
				{
					obj.sq_AddSetStatePacket(state, STATE_PRIORITY_USER, true);
					return;
				}
				foreach(substate in subArr)
					obj.sq_IntVectPush(substate);
				obj.sq_AddSetStatePacket(state, STATE_PRIORITY_USER, true);
			}
		}
	}
}



function procAppend_SkillState(obj)
{
	if(!obj) return;
	local CurSteta = obj.getState();

	switch(CurSteta)
	{
	case 131:
		SetSkill_ATFighter(obj,223,[0],223);
		SetSkill_ATFighter(obj,224,[0],224);
		SetSkill_ATFighter(obj,83,[0],50);
		SetSkill_ATFighter(obj,82,[0],49);
		break;

	case 59:
		SetSkill_ATFighter(obj,223,[0],223);
		SetSkill_ATFighter(obj,224,[0],224);
		SetSkill_ATFighter(obj,83,[0],50);
		SetSkill_ATFighter(obj,82,[0],49);
		break;
	case 50:
		SetSkill_ATFighter(obj,223,[0],223);
		break;
	case 223:
		SetSkill_ATFighter(obj,122,[0],67);
		break;
	case 67:
		SetSkill_ATFighter(obj,124,[0],72);
		break;
	}

}


function onStartMap_ATFighter_QC(obj)
{
	if(!obj) return;
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/nenmaster2nd/ap_spiralgaleforce.nut"))
		CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/atfighter/nenmaster2nd/ap_spiralgaleforce.nut")
}




function procSkill_ATFighter_SHC(obj)
{
if(!obj) return;

local WAWESDw2ADSDw_tzznC = sq_GetSkillLevel(obj, 238);
if(WAWESDw2ADSDw_tzznC < 1) return;

local WAWESDw2ADSDw_7sK5RpTo = "character/atfighter/nenmaster2nd/ap_spiralgaleforce.nut";
local WAWESDw2ADSDw_rrmxV = CNSquirrelAppendage.sq_IsAppendAppendage(obj, WAWESDw2ADSDw_7sK5RpTo);

local WAWESDw2ADSDw_CY2yI19 = "character/atfighter/nenmaster2nd/ap_spiralnen.nut";
local WAWESDw2ADSDw_cRoF = CNSquirrelAppendage.sq_IsAppendAppendage(obj, WAWESDw2ADSDw_CY2yI19);

local WAWESDw2ADSDw_y2g3hyMB = obj.getMyPassiveObjectCount(21085);
if(WAWESDw2ADSDw_y2g3hyMB == 0 && WAWESDw2ADSDw_cRoF)
CNSquirrelAppendage.sq_RemoveAppendage(obj, WAWESDw2ADSDw_CY2yI19);
for(local WAWESDw2ADSDw_NKFlN = 0; WAWESDw2ADSDw_NKFlN < WAWESDw2ADSDw_y2g3hyMB; ++WAWESDw2ADSDw_NKFlN)
{
local WAWESDw2ADSDw_bOvrtBK = "SpiralGaleForceBall" + WAWESDw2ADSDw_NKFlN.tostring();
local WAWESDw2ADSDw_FtDS = obj.getMyPassiveObject(21085,WAWESDw2ADSDw_NKFlN);
local WAWESDw2ADSDw_gbvM4c = WAWESDw2ADSDw_FtDS.getCurrentAnimation();
if(!WAWESDw2ADSDw_FtDS.getVar().getBool(0) && WAWESDw2ADSDw_cRoF && WAWESDw2ADSDw_rrmxV)
{
if(WAWESDw2ADSDw_gbvM4c)
{
local WAWESDw2ADSDw_ohBjG85I = "character/fighter/effect/animation/atspiralgaleforce/charge_dodge.ani";
local WAWESDw2ADSDw_24twy = createAnimationPooledForceEx(WAWESDw2ADSDw_FtDS, WAWESDw2ADSDw_ohBjG85I,true,WAWESDw2ADSDw_FtDS.getXPos(), WAWESDw2ADSDw_FtDS.getYPos()+1, WAWESDw2ADSDw_FtDS.getZPos()+65,false);

destroyObjectByVar(obj, WAWESDw2ADSDw_bOvrtBK);
obj.getVar(WAWESDw2ADSDw_bOvrtBK).clear_obj_vector();
obj.getVar(WAWESDw2ADSDw_bOvrtBK).push_obj_vector(WAWESDw2ADSDw_24twy);
WAWESDw2ADSDw_FtDS.getVar().setBool(0,true);
}
}
if(!WAWESDw2ADSDw_cRoF || !WAWESDw2ADSDw_rrmxV)
{
destroyObjectByVar(obj, WAWESDw2ADSDw_bOvrtBK);
if(WAWESDw2ADSDw_gbvM4c && WAWESDw2ADSDw_FtDS.getVar().getBool(0))
WAWESDw2ADSDw_FtDS.getVar().setBool(0,false);
}

}
}




function procAppend_Test(obj)
{
    if (!obj)
        return;

    local SkillIndex = obj.getCurrentSkillIndex();
    local state = obj.sq_GetState();              
    if (sq_getGrowType(obj) == 3)
    {
        if (SkillIndex == -1 && obj.getVar("autoSmartThrow").getInt(0) != 1 && state == STATE_STAND)
        {
            obj.sq_IntVectClear();
            obj.sq_IntVectPush(109);
            obj.sq_AddSetStatePacket(17, STATE_PRIORITY_USER, true);
            obj.getVar("autoSmartThrow").setInt(0, 1);
        }

        if (state == 35 || state == 39 || state == 64 || state == 40)
        {
            obj.getVar("autoSmartThrow").setInt(0, 0);
        }
    }
}


