///@desc
function PlayerCanGrabRope(){
	if (place_meeting(x,y,oRope) && !global.jumpHold){
		if (global.moveUp){
			moveX = 0;
			moveY = 0;
			if (!place_meeting(x,y+moveY, oCollision)){
				y -= 1;
			}
			state = StateRope;
		}
	}
}