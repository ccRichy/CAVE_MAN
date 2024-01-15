stateFunction = function(){
	if place_meeting(x,y,oPlayer){
		camera_set_view_size(VIEW, 160, 90);
		oCamera.aimY = -100;
		oCamera.follow = instance_nearest(x,y,oCamPos);
	}
}	
