
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_defaneblood")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_defaneblood")
	appendage.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_defaneblood")	
	appendage.sq_AddFunctionName("getImmuneTypeDamageRate", "getImmuneTypeDamageRate_appendage_defaneblood")
}

function sq_AddEffect(appendage)
{
	appendage.sq_AddEffectFront("character/swordman/animation/ani_als/berserk/berserk.ani");
}

function getImmuneTypeDamageRate_appendage_defaneblood(appendage, damageRate, attacker)
{

	local parentObj = appendage.getParent();	
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);

    local hp = appendage.getVar("hpMax").get_vector(0);

    local subHp = hp * parentObj.getHpMax() / 100;



    if (parentObj.getHp() -  damageRate <= 0)
        return 0;
    if (subHp > parentObj.getHp())
        return 1;
    return damageRate;

//    if (damageRate > 0 && hp - damageRate >= 0)
//    {
//        appendage.getVar("hpMax").set_vector(0,hp - damageRate);
//        damageRate = 0;
//    }
//        return damageRate;
}


function onDamageParent_appendage_defaneblood(appendage ,attacker, boundingBox, isStuck) 
{
	local parentObj = appendage.getParent();	
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);
//    parentObj.setHp(1000, null, true);
	if (!parentObj) {
		appendage.setValid(false);
		return;
	}

}

function proc_appendage_defaneblood(appendage)
{
	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();


	if(!sourceObj || !parentObj ) 
    {
		appendage.setValid(false);
		return;
	}
}



function onStart_appendage_defaneblood(appendage)
{
	if(!appendage) {
		return;
	}
	
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}	
    
//    appendage.getVar("hpMax").push_vector(10000);
}

