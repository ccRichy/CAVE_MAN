stateFunction = function(){
	
	with (oPlayer){
		if place_meeting(x,y,oGenericTrigger){
			return;
		}
	}
	
	if (place_meeting(x,y,oPlayer) && oPlayer.moveY = 0){
		oCamera.follow = instance_nearest(x,y,oCamPos);
		oCamera.camSpeed = 0.1;
	}

	
}