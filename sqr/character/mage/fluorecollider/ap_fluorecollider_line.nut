function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_FluoreColliderline")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_FluoreColliderline")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_FluoreColliderline")
}

function sq_AddEffect(appendage)
{
	appendage.sq_AddEffectFront("character/swordman/effect/animation/atfistofexplosion/hit02loop.ani")
}


function proc_appendage_FluoreColliderline(appendage)
{

	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
    parentObj = sq_GetCNRDObjectToActiveObject(parentObj);



	local ani = sq_CreateAnimation("","passiveobject/character/mage/animation/homonculous/fluorecollider/thunder7.ani");
	local startX = sourceObj.getXPos();
	local startY = sourceObj.getYPos();
	local startZ = sourceObj.getZPos() + 200;

	local lastX  = sq_GetDistancePos(parentObj.getXPos(), sourceObj.getDirection(), 0);

	local lastY = parentObj.getYPos();
	local lastZ = 0;

	local rotateAngle = getRorateAngleByCurrentPos(sourceObj,
					startX,startY,startZ,
					lastX,lastY,lastZ );
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(sourceObj.getXPos(), sourceObj.getDirection(), 0);
	pooledObj.setCurrentPos(posX,sourceObj.getYPos() + 2,0);
	pooledObj.setCurrentDirection(sourceObj.getDirection());
	sq_AddObject(sourceObj,pooledObj,2,false);

	local distance = sq_GetDistance(startX, startY - startZ,lastX,lastY - lastZ, true);

	local lenX = 400;
	local lenY = 100;

	local pAni = sq_GetCurrentAnimation(pooledObj);
	sq_SetfRotateAngle(pAni, rotateAngle);
	pAni.setImageRate(distance.tofloat() / lenX.tofloat(), lenY.tofloat() / 100.0 );



}

function onStart_appendage_FluoreColliderline(appendage)
{
	if(!appendage) return;
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

}



function onEnd_appendage_FluoreColliderline(appendage)
{
    local xzdx = appendage.getVar("hw").get_obj_vector(0);
    if (xzdx)
        xzdx.setValid(false);

	appendage.setValid(false);
}






function proc1_appendage_FluoreColliderline(appendage)
{

	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
    parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

    local dq = appendage.getVar("hw").get_obj_vector(0);
    if (parentObj && sourceObj )
    {
        local damaX = parentObj.getXPos();
        local damaY = parentObj.getYPos();
        local damaZ = parentObj.getZPos();
        local damaSize = parentObj.getObjectHeight();
        dq.setCurrentDirection(parentObj.getDirection());

        dq.setCurrentPos(damaX, damaY + 1,damaZ + damaSize);

        local headX = sourceObj.getXPos();
        local headY = sourceObj.getYPos();
        local headZ = sourceObj.getZPos();
        local headSize = 200;

        local offset = headX - damaX;

        if(offset < 0)
        {
            dq.setCurrentDirection(ENUM_DIRECTION_LEFT);
        }else{
            dq.setCurrentDirection(ENUM_DIRECTION_RIGHT);
        }

        local pAni = sq_GetCurrentAnimation(dq);
        


        local X = damaX;
        local Y = damaY;
        local Z = damaZ + damaSize;

        local posX = headX;
        local posY = headY;
        local posZ = headZ + headSize;

        local distance = sq_GetDistance( X, Y - Z, posX, posY - posZ, true);
        
        local w = posX - X;		
        if(w < 0) w = -w;


        local h = (posY - posZ) - (Y - Z);
        local width = sq_Abs(posX - X);
        local angle = sq_Atan2( h.tofloat(), width.tofloat());

        if((posY - posZ) > (Y - Z)) {
            angle = -angle;
        }
        local nRevision = distance;
        local cos = nRevision.tofloat() * sq_Cos(angle);
        local sin = nRevision.tofloat() * sq_Sin(angle);
        local nX = sq_Abs( cos.tointeger() );
        local nY = sq_Abs( sin.tointeger() );
        sq_SetfRotateAngle(pAni, angle);		
        pAni.setImageRate(1.0, 1.0);

        local dis = 300;

        local cos_x = dis.tofloat() * sq_Cos(angle);
        local sin_y = dis.tofloat() * sq_Sin(angle);
        local nW = sq_Abs( cos_x.tointeger() );
        local nH = sq_Abs( sin_y.tointeger() );


        local wRate = width.tofloat() / nW.tofloat();
        local hRate = h.tofloat() / nH.tofloat();

        pAni.setImageRate(wRate.tofloat(), hRate.tofloat());

    }else{
        dq.setValid(false);
		appendage.setValid(false);
    }
}

