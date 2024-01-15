stateFunction = function(){

	if (place_meeting(x,y,oPlayer)){
		camera_set_view_size(VIEW,160,90);
		oCamera.follow = instance_nearest(x,y,oCamPos);
		oCamera.camSpeed = 0.01;
		//oCamera.aimY = 100;
		if (instance_exists(oMouse)){
			instance_destroy(oMouse);
		}
	}
	
}