stateFunction = function(){
	
	if (place_meeting(x,y, oPlayer)){
		camera_set_view_size(VIEW, 160, 90);
		oCamera.follow = instance_furthest(x,y, oCamPos);
		oCamera.camSpeed = 1;
	}
	
}