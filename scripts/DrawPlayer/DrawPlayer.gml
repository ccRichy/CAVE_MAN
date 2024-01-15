///@desc
function DrawPlayer(spriteIdle, spriteMove){
	if (moveX != 0){
		image_speed = 1;
		sprite_index = spriteMove;
		image_xscale = sign(moveX);
	}else{
		image_speed = 0;
		sprite_index = spriteIdle;
	};
}