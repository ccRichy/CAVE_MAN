stateFunction = function(){
	if (place_meeting(x,y, oPlayer)){
		oCamera.follow = instance_nearest(x,y, oCamPos);
		oCamera.aimX = 0;
		oCamera.aimY = 0;
		oPlayer.jumpSpeed = -5;
	}
}