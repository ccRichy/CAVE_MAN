stateFunction = function(){
	
	if (place_meeting(x,y,oPlayer)){
		oPlayer.moveX = 1;
	}else{
		instance_destroy();
	}

}