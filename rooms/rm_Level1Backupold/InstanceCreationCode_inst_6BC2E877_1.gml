stateFunction = function(){

	if (place_meeting(x,y,oPlayer)){
		oRope.extendTimer = 1;
		instance_destroy();
	}
	
}