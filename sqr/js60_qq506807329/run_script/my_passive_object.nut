

 

function onGetMyPassiveObject_My(E4bfx7uQzohHz9o2AtmldE,BdUS7iApQxJ,T88mtZZDWBF11K, QOvjxC_E1Gd8o)
{
 local MHsELPXEUamxKcMQYPu0t = E4bfx7uQzohHz9o2AtmldE.getMyPassiveObjectCount(BdUS7iApQxJ); 
 for (local r3ffQb7DLAQ1E7kj98d = 0; r3ffQb7DLAQ1E7kj98d < MHsELPXEUamxKcMQYPu0t; r3ffQb7DLAQ1E7kj98d++)
 {
 local weK03cRk9RLovfSiyc8fxCl = E4bfx7uQzohHz9o2AtmldE.getMyPassiveObject(BdUS7iApQxJ, r3ffQb7DLAQ1E7kj98d); 
 if(!weK03cRk9RLovfSiyc8fxCl) continue; 
 if (weK03cRk9RLovfSiyc8fxCl.getVar("skill").get_vector(0) == T88mtZZDWBF11K)
 {
 if (QOvjxC_E1Gd8o)
 {
 if(QOvjxC_E1Gd8o == weK03cRk9RLovfSiyc8fxCl.getVar("subType").get_vector(0))
 return weK03cRk9RLovfSiyc8fxCl;
 }
 else
 return weK03cRk9RLovfSiyc8fxCl;
 }
 }
 return null;
} 
