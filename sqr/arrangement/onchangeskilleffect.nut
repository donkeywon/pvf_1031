


function onChangeSkillEffect_Swordman(obj, skillIndex, receiveData)
{
	if(!obj) return;

}



function onChangeSkillEffect_Fighter(obj, skillIndex, receiveData) {
    if (!obj) return;
    switch (skillIndex) {
        case 235:
            local J7diZ5_WiqUD3dzsG = receiveData.readWord();
            switch (J7diZ5_WiqUD3dzsG) {
                case 1:
                    onAppendApEff_qq506807329_fighter_poisonsnake(obj);
                    break;
            }
            break;
    }

    if (sq_getGrowType(obj) == 1)
	{
		if(skillIndex == 241 && reciveData.readDword() == 241 && obj.isMyControlObject())
        {
            sq_SendCreatePassiveObjectPacket(obj, 30517, 0, 0, 0, 0, obj.getDirection());
        }
	}
};

function onChangeSkillEffect_ATFighter(obj, skillIndex, receiveData)
{
 if (!obj) return;
 onChangeSkillEffect_ATFighter_New(obj, skillIndex, reciveData);
  switch (skillIndex) {
      case 50:
          local vMANHUtMTDpA = receiveData.readWord();
          switch (vMANHUtMTDpA) {
              case 1:
                  if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/appendage/ap_definitegrab.nut"))
                      CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/atfighter/appendage/ap_definitegrab.nut");
                  local FVKCAd14Dts6N1 = obj.sq_GetLevelData(skillIndex, 0, sq_GetSkillLevel(
                      obj, skillIndex));
                  local CdeQ5bSIOksjOgU = CNSquirrelAppendage.sq_AppendAppendage(obj, obj,
                      skillIndex, false, "character/atfighter/appendage/ap_definitegrab.nut", false);
                  CdeQ5bSIOksjOgU.sq_SetValidTime(FVKCAd14Dts6N1);
                  CNSquirrelAppendage.sq_Append(CdeQ5bSIOksjOgU, obj, obj, false);
                  break;
          }
          break;
  }
} ;



function onChangeSkillEffect_Gunner(obj, skillIndex, receiveData)
{
	if(!obj) return;

}

function onChangeSkillEffect_ATGunner(obj, skillIndex, receiveData) {
    if (!obj) return;
    switch (skillIndex) {
        case 250:
            local dLv6UkXZwiv8mMlwXVb = CNSquirrelAppendage.sq_GetAppendage(obj, "character/atgunner/appendage/ap_stylish_buff.nut");
            if (dLv6UkXZwiv8mMlwXVb) {
                local RMx2Im0jsxbIJje = receiveData.readWord();
                if (RMx2Im0jsxbIJje == 1)
                    dLv6UkXZwiv8mMlwXVb.getVar().set_vector(0, dLv6UkXZwiv8mMlwXVb.getVar().get_vector(0) - 1);
                onStartGhost_My_atgunner_stylish(obj);
            }
            break;
    }
};



function onChangeSkillEffect_Mage(obj, skillIndex, receiveData) {
    if (!obj) return;
    onChangeSkillEffect_Mage_New(obj, skillIndex, reciveData);
};



function onChangeSkillEffect_ATMage(obj, skillIndex, receiveData)
{
	if(!obj) return;

	onChangeSkillEffect_ATMage_ARR(obj, skillIndex, receiveData);
}



function onChangeSkillEffect_Priest(obj, skillIndex, receiveData) {
    if (!obj) return;
    switch (skillIndex) {
        case 250:
            local _gUGXlzQafRL = receiveData.readWord();
            switch (_gUGXlzQafRL) {
                case 1:
                    onAppendAppendage_priest_jupiter(obj);
                    break;
            }
            break;
        case 47:
            local _gUGXlzQafRL = receiveData.readWord();
            switch (_gUGXlzQafRL) {
                case 1:
                    if (CNSquirrelAppendage.sq_IsAppendAppendage(obj,
                            "character/new_priest/appendage/ap_buff_chakraofcalmness.nut"))
                        CNSquirrelAppendage.sq_RemoveAppendage(obj,
                            "character/new_priest/appendage/ap_buff_chakraofcalmness.nut");
                    else if (CNSquirrelAppendage.sq_IsAppendAppendage(obj,
                            "character/new_priest/appendage/ap_buff_chakraofpassion.nut"))
                        CNSquirrelAppendage.sq_RemoveAppendage(obj,
                            "character/new_priest/appendage/ap_buff_chakraofpassion.nut");
                    local h2JPoeRQTtPI = obj.sq_GetLevelData(skillIndex, 0, sq_GetSkillLevel(
                        obj, skillIndex));
                    local MGLrgZMuLhFPpFY4LlZAooi = CNSquirrelAppendage.sq_AppendAppendage(obj,
                        obj, skillIndex, true,
                        "character/new_priest/appendage/ap_buff_chakraofpassion.nut", false);
                    MGLrgZMuLhFPpFY4LlZAooi.sq_SetValidTime(h2JPoeRQTtPI);
                    CNSquirrelAppendage.sq_Append(MGLrgZMuLhFPpFY4LlZAooi, obj,
                        obj, false);
                    break;
            }
            break;
        case 48:
            local _gUGXlzQafRL = receiveData.readWord();
            switch (_gUGXlzQafRL) {
                case 1:
                    if (CNSquirrelAppendage.sq_IsAppendAppendage(obj,
                            "character/new_priest/appendage/ap_buff_chakraofpassion.nut"))
                        CNSquirrelAppendage.sq_RemoveAppendage(obj,
                            "character/new_priest/appendage/ap_buff_chakraofpassion.nut");
                    else if (CNSquirrelAppendage.sq_IsAppendAppendage(obj,
                            "character/new_priest/appendage/ap_buff_chakraofcalmness.nut"))
                        CNSquirrelAppendage.sq_RemoveAppendage(obj,
                            "character/new_priest/appendage/ap_buff_chakraofcalmness.nut");
                    local h2JPoeRQTtPI = obj.sq_GetLevelData(skillIndex, 0, sq_GetSkillLevel(
                        obj, skillIndex));
                    local MGLrgZMuLhFPpFY4LlZAooi = CNSquirrelAppendage.sq_AppendAppendage(obj,
                        obj, skillIndex, true,
                        "character/new_priest/appendage/ap_buff_chakraofcalmness.nut", false);
                    MGLrgZMuLhFPpFY4LlZAooi.sq_SetValidTime(h2JPoeRQTtPI);
                    CNSquirrelAppendage.sq_Append(MGLrgZMuLhFPpFY4LlZAooi, obj,
                        obj, false);
                    break;
            }
            break;
        case 139:
            local _gUGXlzQafRL = receiveData.readWord();
            switch (_gUGXlzQafRL) {
                case 1:
                    addAppendAppendage_priest_metamorphosis(obj);
                    break;
                case 2:

                    if (CNSquirrelAppendage.sq_IsAppendAppendage(obj,
                            "character/new_priest/metamorphosis/ap_metamorphosis.nut"))
                        CNSquirrelAppendage.sq_RemoveAppendage(obj,
                            "character/new_priest/metamorphosis/ap_metamorphosis.nut");
                    break;
            }
            break;
    }
};



function onChangeSkillEffect_Thief(obj, skillIndex, receiveData) {
    if (!obj) return;
    switch (skillIndex) {
        case 224:
            local UPEZnSzjrt4aFf = receiveData.readWord();
            switch (UPEZnSzjrt4aFf) {
                case 1:
                    local aNYI5nmGqumVvgiY = sq_GetCNRDObjectToActiveObject(sq_GetObject(obj, receiveData.readDword(),
                        receiveData.readDword()));
                    if (aNYI5nmGqumVvgiY.isDead()) return;
                    local OCFKys9S_yL = CNSquirrelAppendage.sq_AppendAppendage(aNYI5nmGqumVvgiY, aNYI5nmGqumVvgiY, 224,
                        true, "character/new_thief/appendage/ap_monster_nicolas.nut", false);
                    CNSquirrelAppendage.sq_Append(OCFKys9S_yL, aNYI5nmGqumVvgiY, aNYI5nmGqumVvgiY, false);

                    OCFKys9S_yL.getVar("sqrChr").clear_obj_vector();
                    OCFKys9S_yL.getVar("sqrChr").push_obj_vector(obj);
                    break;
                case 2:
                    local aNYI5nmGqumVvgiY = sq_GetCNRDObjectToActiveObject(sq_GetObject(obj, receiveData.readDword(),
                        receiveData.readDword()));
                    if (aNYI5nmGqumVvgiY.isDead()) return;
                    if (aNYI5nmGqumVvgiY.isMyControlObject()) {
                        local KB2Bn0UZWmBEcV6oIluSgBuv = sq_GetGlobalIntVector();
                        sq_IntVectorClear(KB2Bn0UZWmBEcV6oIluSgBuv);
                        sq_IntVectorPush(KB2Bn0UZWmBEcV6oIluSgBuv, 7);
                        sq_AddSetStatePacketActiveObject(aNYI5nmGqumVvgiY, 8, KB2Bn0UZWmBEcV6oIluSgBuv,
                            STATE_PRIORITY_USER);
                    }
                    break;
                case 3:
                    local aNYI5nmGqumVvgiY = sq_GetCNRDObjectToActiveObject(sq_GetObject(obj, receiveData.readDword(),
                        receiveData.readDword()));
                    if (aNYI5nmGqumVvgiY.isDead()) return;
                    sq_SetCurrentDirection(aNYI5nmGqumVvgiY, obj.getDirection());
                    sq_MoveToNearMovablePos(aNYI5nmGqumVvgiY,
                        sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 100), obj.getYPos(),
                        0,
                        obj.getXPos(), obj.getYPos(), 0, 100, -1, 5);
                    sq_AddDrawOnlyAniFromParent(aNYI5nmGqumVvgiY,
                        "monster/newmonsters/thief/nicolas/animation/effect/blackarachnia/start_smokenormal.ani", 0,
                        -1, 0);
                    sq_CreateDrawOnlyObject(aNYI5nmGqumVvgiY,
                        "monster/newmonsters/thief/nicolas/animation/effect/blackarachnia/start_blackground.ani",
                        ENUM_DRAWLAYER_BOTTOM, true);
                    break;
            }
            break;
    }
}



function onChangeSkillEffect_DemonicSwordman(obj, skillIndex, receiveData)
{
	if(!obj) return;

}

