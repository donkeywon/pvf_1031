

 

function getMyMonsterObject_Character(E4bfx7uQzohHz9o2AtmldE, BdUS7iApQxJ, T88mtZZDWBF11K)
{
 if(!E4bfx7uQzohHz9o2AtmldE) return null;
 local QOvjxC_E1Gd8o = E4bfx7uQzohHz9o2AtmldE.getObjectManager(); 
 for(local MHsELPXEUamxKcMQYPu0t = 0; MHsELPXEUamxKcMQYPu0t < QOvjxC_E1Gd8o.getCollisionObjectNumber(); MHsELPXEUamxKcMQYPu0t++)
 {
 local r3ffQb7DLAQ1E7kj98d = QOvjxC_E1Gd8o.getCollisionObject(MHsELPXEUamxKcMQYPu0t); 
 if(r3ffQb7DLAQ1E7kj98d 
 && r3ffQb7DLAQ1E7kj98d.isObjectType(OBJECTTYPE_MONSTER) 
 && !E4bfx7uQzohHz9o2AtmldE.isEnemy(r3ffQb7DLAQ1E7kj98d) 
 && r3ffQb7DLAQ1E7kj98d.getCollisionObjectIndex() == BdUS7iApQxJ) 
 {
 local weK03cRk9RLovfSiyc8fxCl = sq_GetCNRDObjectToActiveObject(r3ffQb7DLAQ1E7kj98d); 
 if(weK03cRk9RLovfSiyc8fxCl && !weK03cRk9RLovfSiyc8fxCl.isDead()) 
 {
 local CHZK8ym7YamLrda4CURtZo = CNSquirrelAppendage.sq_GetAppendage(weK03cRk9RLovfSiyc8fxCl, T88mtZZDWBF11K); 
 if(!CHZK8ym7YamLrda4CURtZo)continue; 
 if(isSameObject(E4bfx7uQzohHz9o2AtmldE, CHZK8ym7YamLrda4CURtZo.getVar("sqrChr").get_obj_vector(0))) 
 return weK03cRk9RLovfSiyc8fxCl;
 }
 }
 }
 return null;
} 

