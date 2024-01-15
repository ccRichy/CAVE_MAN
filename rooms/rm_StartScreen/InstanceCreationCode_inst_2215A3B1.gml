stateFunction = function(){
	if (mouse_check_button_released(mb_left)){
		instance_destroy(oMouse);
		counter = 1;
		oPlayer.sprite_index = sPlayerWalk;
		global.gameStarted = 1;
		instance_destroy(oTitle);
		oEnterFullscreen.x = -1000
		oEnterFullscreen.y = -1000
	}
	
	if (counter == 1){
		oPlayer.x += 1;
	}
 
}