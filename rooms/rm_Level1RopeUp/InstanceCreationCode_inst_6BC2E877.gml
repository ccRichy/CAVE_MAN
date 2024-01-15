stateFunction = function(){

	if (place_meeting(x,y,oPlayer)){
		if (counter = 0){
			oRope.extendTimer = 1;
			counter = 1;
		}
		if (oPlayer.state == oPlayer.StateRope){
			oCamera.camSpeed = 0.03;
			oCamera.follow = oPlayer;
		}
	}

}