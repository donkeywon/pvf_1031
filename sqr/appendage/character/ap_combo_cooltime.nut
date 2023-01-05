function sq_AddFunctionName(appendage) {
    appendage.sq_AddFunctionName("proc", "proc_appendage_ComboUi")
    appendage.sq_AddFunctionName("onStart", "onStart_appendage_ComboUi")
    appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_ComboUi")
    appendage.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_ComboUi")
}

function sq_AddEffect(appendage) {}

function onAttackParent_appendage_ComboUi(appendage, realAttacker, damager, boundingBox, isStuck) {
    if (!damager || !damager.isObjectType(OBJECTTYPE_ACTIVE))
        return;
    local parentObj = appendage.getParent();
    parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);
    if (!parentObj.isEnemy(damager)) return;
    local damager = sq_GetCNRDObjectToActiveObject(damager);
    setCharacterComboEffect(appendage);
    setCharacterSkyComboEffect(appendage, damager);
    checkUpCharacterBackHit(appendage, realAttacker, damager);
    appendage.getVar("yellowNum").set_vector(0, setComboUIRate(appendage, damager));
}

function proc_appendage_ComboUi(appendage) {
    if (!appendage) return;
    createNewStyleLightEffect(appendage);
    setKillPowerTimeEvent(appendage);
    setGreatRankTimeEvent(appendage);
}

function onEnd_appendage_ComboUi(appendage) {
    if (!appendage) return;
}

function onStart_appendage_ComboUi(appendage) {
    if (!appendage) return;
    appendage.getVar("yellowNum").clear_vector();
    appendage.getVar("yellowNum").push_vector(0);

    appendage.getVar("comboNum").clear_vector();
    appendage.getVar("comboNum").push_vector(0);
    appendage.getVar("comboNum").push_vector(0);
    appendage.getVar("comboNum").push_vector(0);
    appendage.getVar("comboNum").push_vector(0);


    appendage.getVar("FcomboNum").clear_vector();
    appendage.getVar("FcomboNum").push_vector(0);
    appendage.getVar("FcomboNum").push_vector(0);
    appendage.getVar("FcomboNum").push_vector(0);
    appendage.getVar("FcomboNum").push_vector(0);

    appendage.getVar("printID").clear_vector();
    appendage.getVar("printID").push_vector(0);
    appendage.getVar("printID").push_vector(0);
    appendage.getVar("printID").push_vector(0);
    appendage.getVar("printID").push_vector(0);
    appendage.getVar("printID").push_vector(0);
    appendage.getVar("printID").push_vector(0);
    //1 drawComboNumber


    appendage.getVar("YellowAlpha").clear_vector();
    appendage.getVar("YellowAlpha").push_vector(100);

    appendage.getVar("scoreSize").clear_vector();
    appendage.getVar("scoreSize").push_vector(0);
    appendage.getVar("scoreSize").push_vector(100);
    appendage.getVar("scoreSize").push_vector(0);
    appendage.getVar("scoreSize").push_vector(0);

    appendage.getVar("killRateFlag").clear_vector();
    appendage.getVar("killRateFlag").push_vector(0);
    appendage.getVar("killRateFlag").push_vector(0);
    appendage.getVar("killRateFlag").push_vector(0);

    appendage.getVar("numFlag").clear_vector();
    appendage.getVar("numFlag").push_vector(0);
    appendage.getVar("numFlag").push_vector(0);
    appendage.getVar("numFlag").push_vector(0);
    appendage.getVar("numFlag").push_vector(0);
    appendage.getVar("numFlag").push_vector(0);
    appendage.getVar("numFlag").push_vector(0);
    appendage.getVar("numFlag").push_vector(0);

    appendage.getVar("lightEffect").clear_vector();
    for (local i = 0; i <= 18; i++)
        appendage.getVar("lightEffect").push_vector(0);

    appendage.getVar("greatEffect").clear_vector();
    appendage.getVar("greatEffect").push_vector(0);
    appendage.getVar("greatEffect").push_vector(0);
    appendage.getVar("greatEffect").push_vector(0);

}