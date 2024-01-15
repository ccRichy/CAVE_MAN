stateFunction = function(){
	
	if (instance_exists(oRope)){
		counter = 1;

	}
	if (counter){
		oGame.tutString = "Press R To Undo\n        Hold to Load Checkpoint";
		oGame.tutorialText = 1;
		oGame.xx = 300;
		oGame.yy = 560;
	}
}