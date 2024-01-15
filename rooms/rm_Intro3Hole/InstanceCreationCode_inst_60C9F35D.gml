stateFunction = function(){
	var nearCam = instance_nearest(x,y, oCamPos);
	if (place_meeting(x,y, oPlayer)){
		oCamera.follow = nearCam;
		oCamera.camSpeed = 0.05;
		oCamera.aimX = -1000;
		oCamPos.aimY = 0;
	}
}