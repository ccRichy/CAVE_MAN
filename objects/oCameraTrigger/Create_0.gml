/// @desc
image_alpha = 0.3;

flag = false;
stateFunction = function(){
	if (place_meeting(x,y,oPlayer)){
		oCamera.follow = instance_nearest(x,y, oCamPos);
	}
}

state = stateFunction;
