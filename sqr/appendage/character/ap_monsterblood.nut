function sq_AddFunctionName(appendage) {
    appendage.sq_AddFunctionName("proc", "proc_appendage_monsterblood")
    appendage.sq_AddFunctionName("onStart", "onStart_appendage_monsterblood")
    appendage.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_monsterblood")
}

function sq_AddEffect(appendage) {

}

function proc_appendage_monsterblood(appendage) {
    if (!appendage) {
        return;
    }

    local parentObj = appendage.getParent();
    local sourceObj = appendage.getSource();
    parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);

    local target = appendage.getVar("damager").get_vector(1);
    local object = sq_GetObjectByObjectId(parentObj, target);
    object = sq_GetCNRDObjectToActiveObject(object);
    if (object) {
        local currhp = object.getHp();
        if (currhp <= 0) {
            appendage.getVar("damager").set_vector(0, 1);
        } else {
            appendage.getVar("damager").set_vector(0, 0);
        }
    }
}

function onAttackParent_appendage_monsterblood(appendage, realAttacker, damager, boundingBox, isStuck) {
    if (!appendage) {
        return;
    }
    local parentObj = appendage.getParent();
    local sourceObj = appendage.getSource();
    parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);

    local object = sq_GetCNRDObjectToActiveObject(damager);
    local id = sq_GetObjectId(object);
    appendage.getVar("damager").set_vector(1, id);
}

function onStart_appendage_monsterblood(appendage) {
    if (!appendage) {
        return;
    }

    local parentObj = appendage.getParent();
    local sourceObj = appendage.getSource();
    parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);

    appendage.getVar("damager").clear_vector();
    appendage.getVar("damager").push_vector(0);
    appendage.getVar("damager").push_vector(0);
}