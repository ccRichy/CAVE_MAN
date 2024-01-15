stateFunction = function(){

	if (place_meeting(x,y, oPlayer)){
		oCamera.follow = instance_nearest(x,y, oCamPos);
	}

}