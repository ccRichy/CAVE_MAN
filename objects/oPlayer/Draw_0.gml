/// @desc
//draw_text(x,y-20,global.roomSave);

xx = x;
yy = y;

if (frac(x) < 0.5){
	xx = floor(x);
}else{
	xx = round(x);
}
if (frac(y) < 0.5){
	y = floor(y);
}else{
	y = round(y);
}
// draw sprite to pixel grid
draw_sprite_ext(
	sprite_index, image_index,
	xx,yy,
	image_xscale,image_yscale,
	0, c_white,
	image_alpha
);

var debug = 0;

if (global.ropeAmmo > 0 || global.wireAmmo > 0){
	if (global.leftClickHold || global.rightClickHold){
		if (mouseDir > 90 && mouseDir < 270){
			image_xscale = -1;
		}else{
			image_xscale = 1;
		}
		draw_line(x-1,y-throwOffset, mouse_x,mouse_y);
	}
}

switch (state){
	case StateFree:		#region
		image_speed = 1;
		var input = (global.moveRight - global.moveLeft);
		if (sign(moveX) != input && input != 0 && moveX != 0) && moveSpeed != 0.5{
			sprite_index = sPlayerSkid;
		}else if (!global.moveUp){
			if (moveX != 0){
				image_xscale = sign(moveX);
				if (moveSpeed = 0.5){
					sprite_index = sPlayerSlow;
				}else{
					sprite_index = sPlayerWalk;
				}
			}else{
				sprite_index = sPlayerIdle;
				image_index = 0;
			}
		}else{
			if (moveX != 0){
				image_xscale = sign(moveX);
				sprite_index = sPlayerWalkReach;
			}else{
				sprite_index = sPlayerIdle
				image_index = 1;
			}
		}
				
			break; #endregion
	case StateJump:		#region
		image_speed = 1;
		if (global.moveUp){
			if ((global.moveRight - global.moveLeft) != image_xscale && (global.moveRight - global.moveLeft) != 0){
				sprite_index = sPlayerReach;
				image_index = 1;
			}else{
				sprite_index = sPlayerReach;
				image_index = 0;
			}
		}else{
			sprite_index = sPlayerJump;
			image_index = 0;
		}
			break; #endregion
	case StateFalling:	#region
		image_speed = 1*moveY;
		if (global.moveUp){
			if ((global.moveRight - global.moveLeft) != image_xscale && (global.moveRight - global.moveLeft) != 0){
				sprite_index = sPlayerReach;
				image_index = 1;
			}else{
				sprite_index = sPlayerReach;
				image_index = 0;
			}
		}else{
			sprite_index = sPlayerJump;
		}
			break; #endregion
	case StateLedge:		#region
		sprite_index = sPlayerLedge;
		image_speed = 1;

		if (moveDir > 90 && moveDir < 270){
			image_xscale = -1;
		}else{
			image_xscale = 1;
		}

		if ((global.moveRight - global.moveLeft) != image_xscale && (global.moveRight - global.moveLeft) != 0){
			sprite_index = sPlayerLedgeReach;
			image_index = 1;
		}
			break; #endregion
	case StateRope:		#region
		var input = (global.moveRight - global.moveLeft);
		sprite_index = sPlayerRope;
		image_speed = 1;
		if (moveY != 0){
			image_speed = 1;
		}else{
			image_speed = 0;
		}
		if (moveY = 0 && input != 0){
			sprite_index = sPlayerRopeJump;
			image_xscale = sign(input);
		}

		if (moveY > 0){
			sprite_index = sPlayerRopeDown;
		}
			break; #endregion
	case StateWire:		#region
		image_speed = 1;
		if (moveX != 0){
			image_xscale = sign(moveX);
			sprite_index = sPlayerWireWalk;
		}else{
			sprite_index = sPlayerWire;
		}
			break; #endregion
	case StateTrip:		#region
		sprite_index = sPlayerTrip;
			break; #endregion
	case StateJetpack:	#region
		sprite_index = sPlayerIdle;
		image_speed = 0;
		image_index = 0;
			break;
}

//draw_text(x+20,y,$"moveX{moveX}\nmoveY{moveY}");
//draw_text(x,y-10, moveDir);
//draw_text(x,y-10,canJump);



