///@desc
function PlayerCollNoLedge(){
	
	// Horizontal Collison + Nudge
	if (place_meeting(x + moveX, y, oCollision)){
		while (abs(moveX) > 0.001) {
			moveX *= 0.5;
			if (!place_meeting(x + moveX, y, oCollision)){
				x += moveX;
			}	
		}
		moveX = 0;
	}
	x += moveX;

	//Vertical Collison + Nudge
	if (place_meeting(x, y + moveY, oCollision)){
		if (moveY > 0){
			canJump = coyoteFrames;
		}
		while (abs(moveY) > 0.001){
			moveY *= 0.5;
			if (!place_meeting(x, y + moveY, oCollision)){
				y += moveY;
			}
		}
		moveY = 0;
	}
	y += moveY;

}