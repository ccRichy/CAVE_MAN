///@desc
function PlayerCollLedge(){
	var collision = 0;
	
	// Horizontal Collison + Ledge Check
	var atLedge = false;
	if (place_meeting(x + moveX, y, oCollision)){
		//Ledge Check
		var wallColl = instance_place(x+moveX,y,oCollision);
		if (!position_meeting(x+(sign(moveX) == 0) ? wallColl.bbox_left : wallColl.bbox_right, wallColl.bbox_top - 1, oCollision)){
			atLedge = true;
			var ledgeAboveOrBelow = sign(oPlayer.bbox_top-wallColl.bbox_top);
		}
			
		while (abs(moveX) > 0.001) {
			moveX *= 0.5;
			if (!place_meeting(x + moveX, y, oCollision)){
				x += moveX;
			}	
		}
		moveX = 0;
		collision = true;
	}else{
		collision = false;
	}
	x += moveX;


	//Vertical Collison + Ledge Check
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
		collision = true;
	}else{
		collision = false;
	}
	y += moveY;
	
	if (global.moveUp && atLedge && ledgeAboveOrBelow != sign(oPlayer.bbox_top-wallColl.bbox_top)){
		y = wallColl.bbox_top + sprite_get_yoffset(sPlayer);
		state = StateLedge;
	}
	
	return collision;
}