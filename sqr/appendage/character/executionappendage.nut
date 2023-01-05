EXC_VAR_MOVE_ACTIVE		<- 0
EXC_VAR_POS_X			<- 1
EXC_VAR_POS_Y			<- 2
EXC_VAR_POS_Z			<- 3
EXC_VAR_CURRENT_STATE	<- 4
EXC_VAR_START_ANGLE		<- 5


function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("onStart", "onStart_execution");
	appendage.sq_AddFunctionName("onEnd", "onEnd_execution");
	appendage.sq_AddFunctionName("proc", "proc_execution");
	appendage.sq_AddFunctionName("onChangeState", "onChangeState_execution");
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_execution");	
	appendage.sq_AddFunctionName("onDestroyObject", "onDestroyObject_execution");
}


// �θ� ������ �ִ� ��ü������ �Ǵ��ϴ� �Լ�.
function isGrabableParent(appendage)
{
	if(!appendage) return false;
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();	
	if(sq_IsGrabable(sourceObj,parentObj) && sq_IsHoldable(sourceObj,parentObj)) //������ �ִ� ����
		return true;
	return false;
}

// ������� ���۽� �ݹ�
function onStart_execution(appendage)
{
	appendage.sq_var.setInt(EXC_VAR_CURRENT_STATE,0); //���� ������Ʈ : �ʱ�ȭ
	
	
	local parentObj = appendage.getParent();
	
	appendage.sq_var.setFloat(EXC_VAR_START_ANGLE,0.0);
		
	if(parentObj && parentObj.isApplyCustomRotate())
		appendage.sq_var.setFloat(EXC_VAR_START_ANGLE, parentObj.getCustomRotateAngle());
	else
		appendage.sq_var.setFloat(EXC_VAR_START_ANGLE, 0.0);
	
}

function onDestroyObject_execution(appendage,obj)
{
	return true;
}

function onChangeState_execution(appendage, oldState, newState, datas)
{	
	if(!appendage) return;
	
	appendage.sq_var.setBool(EXC_VAR_MOVE_ACTIVE,true);
	appendage.sq_var.setInt(EXC_VAR_CURRENT_STATE,newState);  //���� ������Ʈ : �θ��� Ű�����Ӱ�


	// ��� �Ұ����� �ڷ� ������ ���� Ǯ���ش�.
	if(newState >= 7 && !isGrabableParent(appendage))
	{
		appendage.setValid(false);
		return;
	}
	
	setNewState_execution(appendage, oldState ,newState, false);
}

function setNewState_execution(appendage, oldState ,newState, isLast)
{	
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();


	if(!parentObj || !sourceObj) {
		appendage.setValid(false);
		return;
	}
	
	local startX = 195;	 // �ϵ��ڵ��� 
	local height = parentObj.getObjectHeight()/2;
	
		// ���� ��ǥ �ϵ��ڵ�;
	if(newState == 1) {				
		setPosFromObject(appendage,99,-1,90 - height);		
	}
	else if(newState == 2) {		
		setPosFromObject(appendage,240,-1,90 - height);
	}
	else if(newState == 3) {
		setPosFromObject(appendage,240,-1,90 - height);
	}
	else if(newState == 4) {
		local x = sq_GetDistancePos(240, parentObj.getDirection(), 2);
		setPosFromObject(appendage,x,-1,90 - height);
	}
	else if(newState == 5) {		
		setPosFromObject(appendage,240,-1,90 - height);
	}
	else if(newState == 6) {
		local x = sq_GetDistancePos(240, parentObj.getDirection(), 1);
		setPosFromObject(appendage,x,-1,90 - height); 
	}
	else if(newState == 7) {
		local x = sq_GetDistancePos(240, parentObj.getDirection(), 2);
		setPosFromObject(appendage,x,-1,90 - height); 
	}
	else if(newState == 8) {	
		setPosFromObject(appendage,193,-1,193 - height);
	}
	else if(newState == 9) {
		setPosFromObject(appendage,0 - height,1,286);		
		local rotate = 105 * 0.017453;		
		parentObj.setCustomRotate(true,rotate);
	}
	else if(newState == 10) {
		setPosFromObject(appendage,-45 - height,1,275);
		local rotate = 90 * 0.017453;		
		parentObj.setCustomRotate(true,rotate);
	}
	else if(newState == 11) {
		setPosFromObject(appendage,-startX - height,1,25);
	}
	else if(newState == 12) {
		setPosFromObject(appendage,-startX - height,1,25);
	}
	else if(newState == 13) {
		setPosFromObject(appendage,-startX - height,1,25);
	}
	else if(newState == 14) {
		setPosFromObject(appendage,-startX - height,1,25);
	}
	else if(newState == 15) {
		setPosFromObject(appendage,-startX - height,1,25);
	}
	else if(newState == 16) {
		setPosFromObject(appendage,-startX - height,1,25);
	}
	else if(newState == 17) {
		setPosFromObject(appendage,-startX - height,1,25);
	}	
	else if(newState == 18) {
		setPosFromObject(appendage,-startX + 10 - height,-1,5);
	}	
	else if(newState == 19) { // �޸��� ����
		setPosFromObject(appendage,-startX + 10 - height,-1,2);		
	}	
	else if(newState == 20) {
		setPosFromObject(appendage,-startX + 10 - height,-1,0);
	}
	else if(newState == 21) {
		setPosFromObject(appendage,-startX + 10 - height,-1,2);		
	}
	else if(newState == 22) {
		setPosFromObject(appendage,-startX + 10 - height,-1,0);		
	}
	else if(newState == 23) {
		setPosFromObject(appendage,-startX + 10 - height,-1,2);		
	}
	else if(newState == 24) { // �޸��� ��
		setPosFromObject(appendage,-startX + 10 - height,-1,0);
	}
	else if(newState == 25) {
		setPosFromObject(appendage,-startX + 10 - height,-1,5);
	}
	else if(newState == 26) {
		setPosFromObject(appendage,111 - height,-1,25);		
	}
	else if(newState == 28) {
	}
	else if(newState == 29) {	
		appendage.sq_var.setBool(0,false);	
	}		
	else if(newState >= 31) {
		setPosFromObject(appendage,240,-1,90 - height);
	}
	else 
	{
		if(isLast)
			return;
		else
			setNewState_execution(appendage, oldState, oldState, true); // �̱��� ������ ��������Ʈ�� ����. �õ�� ó��.		
	}
}

// ������� ���� �ɶ�.
function onEnd_execution(appendage)
{
	if(!appendage) return;
	
	local parentObj = appendage.getParent();	
	
	if(!parentObj) {
		appendage.setValid(false);
		return;
	}
	
	// ��� ���� ���� ��ǥ�� ���� ���ش�. ���ӹ���
	if(isGrabableParent(appendage)) {
		parentObj.setCustomRotate(false,0.0);	
		local x = sq_GetDistancePos(parentObj.getXPos(), parentObj.getDirection(), -200);
		sq_SetCurrentPos(parentObj,x,parentObj.getYPos(),parentObj.getZPos());	
			
		if(parentObj.isMyControlObject())
			sq_SimpleMoveToNearMovablePos(parentObj,300);
	}
	
	local oldAngle = appendage.sq_var.getFloat(EXC_VAR_START_ANGLE);
	if(oldAngle != parentObj.getCustomRotateAngle())
		parentObj.setCustomRotate(true,oldAngle);
}


function proc_execution(appendage)
{
	if(!appendage)
		return;
	
	
	local active = appendage.sq_var.getBool(EXC_VAR_MOVE_ACTIVE);
	local currentKeyIndex = appendage.sq_var.getInt(EXC_VAR_CURRENT_STATE);

	if((active && currentKeyIndex >= 1))
	{
		if (isGrabableParent(appendage) || (currentKeyIndex < 7 && !isGrabableParent(appendage)) ) //��� �������̳� ��� �Ұ���
		{		
			local parentObj = appendage.getParent();
			local sourceObj = appendage.getSource();
			
			if(!sq_IsFixture(parentObj)) // �������� �ƴϸ� ������ ��ǥ�� �̵� ���ٰ�
			{
				local x = appendage.sq_var.getInt(EXC_VAR_POS_X);
				local y = appendage.sq_var.getInt(EXC_VAR_POS_Y);
				local z = appendage.sq_var.getInt(EXC_VAR_POS_Z);	
				
				x = sq_GetDistancePos(sourceObj.getXPos(), sourceObj.getDirection(), x);
				y = sourceObj.getYPos() + y;
					
				if(isGrabableParent(appendage))
					z = sourceObj.getZPos() + z;
				else
					z = parentObj.getZPos();	
				
				
				sq_SetCurrentPos(parentObj,x,y,z);
			}
		}
	}
}

function setPosFromObject(appendage, addX, addY, addZ) 
{
	if(!appendage) return;
	appendage.sq_var.setInt(EXC_VAR_POS_X,addX);
	appendage.sq_var.setInt(EXC_VAR_POS_Y,addY);
	appendage.sq_var.setInt(EXC_VAR_POS_Z,addZ);
}


