stateFunction = function(){

	if (place_meeting(x,y,oPlayer)){
		oCamera.camSpeed = 1;
		oCamera.follow = instance_nearest(x,y,oCamPos);
	}else{
		oCamera.camSpeed = oCamera.camSpeedDefault;
	}
	

}