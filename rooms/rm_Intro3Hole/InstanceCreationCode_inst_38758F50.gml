stateFunction = function(){
	if (place_meeting(x,y,oPlayer)){
		if (global.jumpKey){
			counter += 1;
		}
	}
	if (counter > 15){
		if (global.jumpKey){
			oPlayer.jumpSpeed -= 0.005+(counter/2000);
		}
	}
}


//stateFunction = function(){
//	if (place_meeting(x,y,oPlayer)){
//		if (global.jumpHold){
//			oPlayer.jumpSpeed = -4;
//		}
//	}
//}