stateFunction = function(){
	var nearCam = instance_nearest(x,y, oCamPos);
	var dist = point_distance(oPlayer.x, oPlayer.y, nearCam.x, nearCam.y);
	
	if (place_meeting(x,y, oPlayer)){
		oCamera.aimX = -dist/4;
		oCamera.moveX = 0;
		oCamera.aimY = -1000;
	}
}