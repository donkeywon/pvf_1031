function Common_drawMainCustomUI(obj) {
    local objectManager = obj.getObjectManager();
    if (!objectManager) return;
    local CollisionObjectNumber = objectManager.getCollisionObjectNumber();
    for (local i = 0; i < CollisionObjectNumber; i += 1) {
        local object = objectManager.getCollisionObject(i);
        if (object && object.isObjectType(OBJECTTYPE_ACTIVE) && obj.isEnemy(object) && object.isInDamagableState(obj) && object.getTeam() != 0) {
            if (!CNSquirrelAppendage.sq_IsAppendAppendage(object, "appendage/character/ap_mob_effect.nut")) {
                local append = CNSquirrelAppendage.sq_AppendAppendage(object, obj, -1, true, "appendage/character/ap_mob_effect.nut", false);
                CNSquirrelAppendage.sq_AppendAppendageID(append, object, obj, 255, false);
            }
        }
    }
}

function drawMainCustomUI_Swordman(obj) {
    if (!obj)
        return;

    Common_drawMainCustomUI(obj);

}


function drawMainCustomUI_Fighter(obj) {
    if (!obj)
        return;


    Common_drawMainCustomUI(obj);

}

function drawMainCustomUI_Gunner(obj) {
    if (!obj)
        return;



    Common_drawMainCustomUI(obj);

}

function drawMainCustomUI_Mage(obj) {
    if (!obj)
        return;


    Common_drawMainCustomUI(obj);

}

function drawMainCustomUI_Priest(obj) {
    if (!obj)
        return;

    Common_drawMainCustomUI(obj);

}

function drawMainCustomUI_ATGunner(obj) {
    if (!obj)
        return;



    Common_drawMainCustomUI(obj);

}

function drawMainCustomUI_Thief(obj) {
    if (!obj)
        return;

    Common_drawMainCustomUI(obj);

}

function drawMainCustomUI_ATFighter(obj) {
    if (!obj)
        return;


    Common_drawMainCustomUI(obj);

}

function drawMainCustomUI_ATMage(obj) {
    if (!obj)
        return;



    Common_drawMainCustomUI(obj);

}

function drawMainCustomUI_DemonicSwordman(obj) {
    if (!obj)
        return;


    Common_drawMainCustomUI(obj);

}