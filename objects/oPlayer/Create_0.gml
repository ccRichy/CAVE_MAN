/*VARS*/ #region
moveSpeed = 1;
accel = 0.08;
jumpSpeed = -1.50;
gravDefault = 0.12;
grav = gravDefault;
airResist = 0.1;//0.15;
coyoteFrames = 10;
throwOffset = 6;
ropeSpeed = 0.54;
ropeDownMult = 2;
wireSpeed = 0.8;

moveDir = 0;
mouseDir = 0;

moveX = 0;
moveY = 0;
xx = 0;
yy = 0;

canJump = coyoteFrames;
onGround = true;

	#endregion
	


StateFree = function(){

	moveX = Approach(moveX, (global.moveRight - global.moveLeft)*moveSpeed, accel);
	moveY = moveY + grav;

	if (canJump-- > 0 && global.jumpKey){	//jump
		moveY = jumpSpeed;
		canJump = 0;
		y -= 1;
		audio_play_sound(JumpSwift,1,false,1-(VIEW_W/400),0,1.8);
		audio_play_sound(JumpSwift,1,false,1-(VIEW_W/400),0,1.8);
		audio_play_sound(JumpSwift,1,false,1-(VIEW_W/400),0,1.8);
		state = StateJump;
	}
	if (moveY > 0.4){		//fall
		state = StateFalling;
	}
	
	PlayerCanGrabRope();
	PlayerCanGrabWire();
	PlayerCollLedge();

}
StateJump = function(){
	
	if (global.moveLeft || global.moveRight){
		moveX = lerp(moveX, (global.moveRight - global.moveLeft)*moveSpeed, airResist);
	}else{
		moveX = lerp(moveX, (global.moveRight - global.moveLeft)*moveSpeed,0.0);
	}
	moveY = moveY + grav;

	if (moveY > 0){
		state = StateFalling;
	}else	if (moveY = 0){
		audio_play_sound(stepHard,200,false,0.5-(VIEW_W/2000),0);
		state = StateFree;
	}
	

	PlayerCanGrabRope();
	PlayerCanGrabWire();
	PlayerCollLedge();
	
}
StateFalling = function(){
	
	if (global.moveLeft || global.moveRight){
		moveX = lerp(moveX, (global.moveRight - global.moveLeft)*moveSpeed, airResist);
	}else{
		moveX = lerp(moveX, (global.moveRight - global.moveLeft)*moveSpeed,0.0);
	}
	moveY = moveY + grav;
	

	PlayerCanGrabRope();
	PlayerCanGrabWire();
	if (PlayerCollLedge()){
		if (moveY = 0){
			audio_play_sound(stepHard,200,false,0.6-(VIEW_W/2000),0,0.75);
			state = StateFree;
		}
	}
}
StateLedge = function(){

	if (global.moveDown && global.jumpKey){
		state = StateFree;
	}else if (global.jumpKey){
		if (global.moveRight || global.moveLeft){
			if (global.moveRight - global.moveLeft != 0){
				image_xscale = sign(global.moveRight-global.moveLeft);
			}
		}
		y -= 2;
		// Speed Boost When Jumping Off A Ledge
		if (!place_meeting(x,y,oCollision)){
			moveX += sign(global.moveRight-global.moveLeft)*1.1;
		}
		moveY = jumpSpeed;
		state = StateJump;
	}
}

StateRope = function(){
	//grav = 0;
	if(place_meeting(x,y,oRope)){
		var nearRope = instance_nearest(x,y,oRope);
		x = lerp(x,nearRope.x,0.3); // slides char onto rope

		if (!PlayerCollLedge()){
			moveY = (global.moveDown - global.moveUp); //Climb Speed
		}else{
			moveY = 0;
		}
		if (moveY != 0 && !audio_is_playing(skid2short)){
			audio_play_sound(skid2short, 20,false,1);
		}

		if (global.jumpKey){
			y += 2;
			if (global.moveRight || global.moveLeft){
				image_xscale = sign(global.moveRight-global.moveLeft);
			}
			if (!place_meeting(x,y,oCollision)){
				moveX += sign(global.moveRight-global.moveLeft)*1.1;
			}
			moveY = jumpSpeed+0.05;
			state = StateJump;
		}
	}else{
		moveY = -1;
		state = StateFree;
	}
	if (place_meeting(x,y+1,oCollision)){
		state = StateFree;
	}

}
StateWire = function(){
	y--;
	var wireColl = instance_place(x,y,oWire);
	
	if (wireColl){
		if (wireColl.dir > 90 && wireColl.dir < 270){
			moveX = lengthdir_x((global.moveLeft-global.moveRight)*wireSpeed, wireColl.dir);
			moveY = lengthdir_y((global.moveLeft-global.moveRight)*wireSpeed, wireColl.dir);
		}else{
			moveX = lengthdir_x((global.moveRight-global.moveLeft)*wireSpeed, wireColl.dir);
			moveY = lengthdir_y((global.moveRight-global.moveLeft)*wireSpeed, wireColl.dir);
		}
		
		if (global.jumpKey){
			if (!global.moveDown){
				y -= 1;
				moveY = jumpSpeed;
				state = StateJump;
			}else{
				state = StateFree;
			}
		}
		
	}else{
		state = StateFree;
	}
	x += moveX;
	y += moveY;
	
	if (place_meeting(x,y+1,oCollision)){
		moveY = 0;
		state = StateFree;
	}

}
StateJetpack = function(){

	jumpSpeed = -0.14;
	grav = 0.12;
	
	moveX = (global.moveRight - global.moveLeft)*moveSpeed;
	moveY = moveY + grav;
	
	if (global.jumpHold){
		oJetpack.image_speed = 1;
		audio_play_sound(skidLonger, 10, false);
		moveY += jumpSpeed;
	}else{
		oJetpack.image_speed = 0;
		oJetpack.image_index = 0;
	}

	PlayerCollNoLedge();
	
}

StateTrip = function(){
	
	if (global.jumpKey){
		image_speed = 1;
	}
	if (image_index > 7){
		state = StateFree;
	}	
}

state = StateFree;