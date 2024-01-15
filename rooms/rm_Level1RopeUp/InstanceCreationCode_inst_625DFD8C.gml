stateFunction = function(){
	
	if (place_meeting(x,y,oPlayer)){
		oCamera.follow = instance_nearest(x,y,oCamPos);
		oCamera.camSpeed = 0.1;
		if (!instance_exists(oMouse)){
			instance_create_depth(x,y,depth, oMouse);
		}
	}
	
}