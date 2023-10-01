
 
function setEnableCancelSkill_Gunner(obj, isEnable)
{
 if(!obj)
 return false;
 
 if(!obj.isMyControlObject())
 return false;
 if(!isEnable)
 return true;
 obj.setSkillCommandEnable(53, isEnable); 
 obj.setSkillCommandEnable(232, isEnable); 
 obj.setSkillCommandEnable(233, isEnable); 
 obj.setSkillCommandEnable(234, isEnable); 
 obj.setSkillCommandEnable(235, isEnable); 
 obj.setSkillCommandEnable(236, isEnable); 
 obj.setSkillCommandEnable(237, isEnable); 
 obj.setSkillCommandEnable(238, isEnable); 
 obj.setSkillCommandEnable(239, isEnable); 
 obj.setSkillCommandEnable(240, isEnable); 
 obj.setSkillCommandEnable(241, isEnable); 
 obj.setSkillCommandEnable(242, isEnable); 
 obj.setSkillCommandEnable(243, isEnable); 
 obj.setSkillCommandEnable(244, isEnable); 
 obj.setSkillCommandEnable(245, isEnable); 
 obj.setSkillCommandEnable(246, isEnable); 
 obj.setSkillCommandEnable(247, isEnable); 
 return true;
} ;



 