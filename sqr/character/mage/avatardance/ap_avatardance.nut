

function sq_AddFunctionName(appendage)
{
    appendage.sq_AddFunctionName("proc", "proc_appendage_mage_avatardance")
}


function proc_appendage_mage_avatardance(appendage)
{
 if(!appendage) return;
 local ParentObj = appendage.getParent();
 local SourceObj = appendage.getSource(); 
 if(!ParentObj
 || !SourceObj
 || SourceObj.getState() != 243
 || sq_GetCNRDObjectToSQRCharacter(SourceObj).getSkillSubState() >= 5)
 {
 appendage.setValid(false);
 return;
 }
} ;