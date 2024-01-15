/// @desc
debugToggle = keyboard_check_pressed(vk_f1) && keyboard_check(vk_shift && keyboard_check(vk_control));

if (debugToggle){
	debugEnabled = !debugEnabled;
}

//reset room/game
var RKey = keyboard_check(ord("R"));
if (RKey){
	resetTimerOn = true;
}else{
	resetTimerOn = false;
	resetTimer = resetTimerSet;
}
if (resetTimerOn){
	resetTimer--;
	if (resetTimer < 0){
		if (file_exists("checkpoint.sav")){
			Load_Game("checkpoint.sav");
		}
	}else if (resetTimer < -100){
		room_restart();
	}
}

if (keyboard_check(vk_control) && keyboard_check_pressed(ord("R"))){
	game_restart();
}
// next/prev room
if (debugEnabled){
	if (keyboard_check_pressed(vk_pageup)){
		room_goto_previous();
	}
	if (keyboard_check_pressed(vk_pagedown)){
		room_goto_next();
	}
}

// reset ropes
if (debugEnabled){
	if (keyboard_check_direct(vk_delete)){ 
		with (oRope){
			instance_destroy();
		}
		with (oWire){
			instance_destroy();
		}
	}
}
 // infinite ammo
if (debugEnabled){
	if (keyboard_check_pressed(vk_add)){
		global.ropeAmmo += 9999;
		global.wireAmmo += 9999;
	}
}

