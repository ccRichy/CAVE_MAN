/// @desc
mouseDraggable(0,4-moveY);

if (moveX != 0){
	moveDir = point_direction(0,0, moveX, moveY);
}

//grav = gravDefault;
state();

if (keyboard_check(vk_shift) && moveY = 0){
	moveSpeed = 0.5;
}else{
	moveSpeed = 1;
}

mouseDir = point_direction(x,y-throwOffset, mouse_x,mouse_y);


// Shoot Rope
if (global.leftClickRelease && global.ropeAmmo > 0){
	with (instance_create_depth(x-1,y-throwOffset,depth,oRopeThrow)){
		direction = other.mouseDir;
	}
	global.ropeAmmo -= 1;
}

//Shoot Wire
if (global.rightClickRelease && global.wireAmmo > 0){
	instance_create_depth(x,y,depth,oWireStart);
	with (instance_create_depth(x-1,y-throwOffset,depth,oWireThrow)){
		var connect = instance_nearest(x,y,oWireStart);
		direction = other.mouseDir;
		start = connect.id;
	}
	global.wireAmmo -= 1;
}