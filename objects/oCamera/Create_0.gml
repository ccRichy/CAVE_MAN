///@desc State Machine
follow = oPlayer;

aimX = 0; // camera move/aim Offset
aimY = 0;
moveX = 0;
moveY = 0;

windowScale = 5;
camSpeedDefault = 0.1;
camSpeed = 0.1;

window_set_size(BASE_W * windowScale, BASE_H * windowScale);
surface_resize(application_surface, BASE_W * windowScale, BASE_H * windowScale);

alarm[0] = 1;

//Cam Offset States
stateMove = function(){
	moveX = oPlayer.moveX;
	if (moveX != 0){
		if (abs(moveX) > 0.7){
			aimX = lerp(aimX, oPlayer.moveX*26/2, 0.05);
		}
	}
}

stateRecenter = function(){
	aimX = lerp(aimX, 0, 0.1);
	aimY = lerp(aimY, 0, 0.1);
	if (oPlayer.move != 0){
		state = stateMove;
	}
}

state = stateMove;