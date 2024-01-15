stateFunction = function(){
	
	if (place_meeting(x,y, oPlayer)){
		oPlayer.moveY = 10;
		camera_set_view_size(VIEW, 160, 90);
		oCamera.follow = instance_nearest(x,y, oCamPos);
	}
	
}