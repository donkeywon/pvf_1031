

function sq_AddFunctionName(XspZuFmH5BQQk89rr)
{
XspZuFmH5BQQk89rr.sq_AddFunctionName("proc", "proc_appendage_SpiralInhale")
XspZuFmH5BQQk89rr.sq_AddFunctionName("onStart", "onStart_appendage_SpiralInhale")
XspZuFmH5BQQk89rr.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_SpiralInhale")
}

function onStart_appendage_SpiralInhale(XsRwPtvh5CECuBXX)
{
if(!XsRwPtvh5CECuBXX) {
return;
}
local XsA3qhp1OoaxKj = XsRwPtvh5CECuBXX.getParent();
local XsA3qhp1OoaxKj = sq_GetCNRDObjectToCharacter(XsA3qhp1OoaxKj);
XsA3qhp1OoaxKj.getVar("SpiralInhaleEnergy").clear_vector();
XsA3qhp1OoaxKj.getVar("SpiralInhaleEnergy").push_vector(0);
}

function proc_appendage_SpiralInhale(XsyOpOdyubD3IlhqBG)
{
if(!XsyOpOdyubD3IlhqBG) return;
local XsFthVXfCuYZFMh = XsyOpOdyubD3IlhqBG.getParent();
if(!XsFthVXfCuYZFMh) 
{
XsyOpOdyubD3IlhqBG.setValid(false);
return;
}

}

function onAttackParent_appendage_SpiralInhale(XsgbpRaBTBXAOr, XsojgUUPFYQop3Rm, Xs15Fafc9P2QyPRtUU, XsUXbXA8QCixak, XsHAN9eZMzdRuDdi)
{
if(!XsgbpRaBTBXAOr || !XsgbpRaBTBXAOr.isValid()) return;
local XsjutbkecIO3ezdWFo = XsgbpRaBTBXAOr.getParent();
local XsjutbkecIO3ezdWFo = sq_GetCNRDObjectToCharacter(XsjutbkecIO3ezdWFo);

if(XsojgUUPFYQop3Rm.isObjectType(OBJECTTYPE_PASSIVE))
{
XsojgUUPFYQop3Rm = sq_GetCNRDObjectToCollisionObject(XsojgUUPFYQop3Rm);
local Xs4ktKSLgTHArW9uV = XsojgUUPFYQop3Rm.getCollisionObjectIndex();

local XsQ697WatanFm4 = XsjutbkecIO3ezdWFo.getVar("SpiralInhaleEnergy").get_vector(0);
local XsLCPc7q53BEWSlp = "character/atfighter/nenmaster2nd/ap_spiralgaleforce.nut";
local XslSzuK4UUreqllyxG = CNSquirrelAppendage.sq_IsAppendAppendage(XsjutbkecIO3ezdWFo, XsLCPc7q53BEWSlp);
if(Xs4ktKSLgTHArW9uV == 46004 || Xs4ktKSLgTHArW9uV == 21054 || Xs4ktKSLgTHArW9uV == 21055 || Xs4ktKSLgTHArW9uV == 21056 || Xs4ktKSLgTHArW9uV == 21079 || Xs4ktKSLgTHArW9uV == 21067 || Xs4ktKSLgTHArW9uV == 21062)
{
if(!XsojgUUPFYQop3Rm.getVar("SpiralInhaleIs").getBool(0) && !XslSzuK4UUreqllyxG)
{
XsjutbkecIO3ezdWFo.getVar("SpiralInhaleEnergy").set_vector(0,XsQ697WatanFm4 + 100);
XsojgUUPFYQop3Rm.getVar("SpiralInhaleIs").setBool(0,true);
}
}
else if(Xs4ktKSLgTHArW9uV == 21085 && !XslSzuK4UUreqllyxG)
{
if(!XsjutbkecIO3ezdWFo.getVar("SpiralInhaleIs").getBool(0))
{
XsjutbkecIO3ezdWFo.getVar("SpiralInhaleEnergy").set_vector(0,XsQ697WatanFm4 + 100);
XsjutbkecIO3ezdWFo.getVar("SpiralInhaleIs").setBool(0,true);
}
}
else if(Xs4ktKSLgTHArW9uV == 21053)
{
if(!XsojgUUPFYQop3Rm.getVar("SpiralInhaleIs").getBool(0))
{
XsjutbkecIO3ezdWFo.getVar("SpiralInhaleEnergy").set_vector(0,XsQ697WatanFm4 + 100);
XsojgUUPFYQop3Rm.getVar("SpiralInhaleIs").setBool(0,true);
}
}
}
else if(XsojgUUPFYQop3Rm.isObjectType(OBJECTTYPE_CHARACTER))
{
local XsQ697WatanFm4 = XsjutbkecIO3ezdWFo.getVar("SpiralInhaleEnergy").get_vector(0);
local Xs7mw4vol1EhQekop = XsjutbkecIO3ezdWFo.getCurrentSkillIndex();
if(XsjutbkecIO3ezdWFo.isCurrentCutomAniIndex(52))
XsjutbkecIO3ezdWFo.getVar("SpiralInhaleEnergy").set_vector(0,XsQ697WatanFm4 + 20);
else if(XsjutbkecIO3ezdWFo.isCurrentCutomAniIndex(53))
XsjutbkecIO3ezdWFo.getVar("SpiralInhaleEnergy").set_vector(0,XsQ697WatanFm4 + 20);
else if(XsjutbkecIO3ezdWFo.isCurrentCutomAniIndex(54))
XsjutbkecIO3ezdWFo.getVar("SpiralInhaleEnergy").set_vector(0,XsQ697WatanFm4 + 20);
else if(XsjutbkecIO3ezdWFo.isCurrentCutomAniIndex(55))
XsjutbkecIO3ezdWFo.getVar("SpiralInhaleEnergy").set_vector(0,XsQ697WatanFm4 + 20);
else if(XsjutbkecIO3ezdWFo.isCurrentCutomAniIndex(57))
XsjutbkecIO3ezdWFo.getVar("SpiralInhaleEnergy").set_vector(0,XsQ697WatanFm4 + 20);
else if(XsjutbkecIO3ezdWFo.isCurrentCutomAniIndex(58))
XsjutbkecIO3ezdWFo.getVar("SpiralInhaleEnergy").set_vector(0,XsQ697WatanFm4 + 20);
}

if(XsjutbkecIO3ezdWFo.getVar("SpiralInhaleEnergy").get_vector(0) > 1000)
XsjutbkecIO3ezdWFo.getVar("SpiralInhaleEnergy").set_vector(0,1000);
}

CHANGQING_SKILL2ND <- true