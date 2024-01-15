stateFunction = function(){

	if (place_meeting(x,y,oPlayer)){
		oGame.tutString = "Press R";
		oGame.tutorialText = 1;
		oGame.xx = 700;
		oGame.yy = 800;
	}
	
	if (keyboard_check_pressed(ord("R"))){
		oGame.tutorialText = 0;
	}
		

}