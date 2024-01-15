stateFunction = function(){

	if (place_meeting(x,y,oPlayer)){
		instance_create_layer(x,y,"Camera",oMouse);
		instance_destroy();
		oCamera.camSpeed = 0.05;
		oCamera.follow = instance_furthest(x,y,oCamPos);
		
	}

}		