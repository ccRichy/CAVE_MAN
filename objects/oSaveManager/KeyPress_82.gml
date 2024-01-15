if (file_exists("savestate.sav")){
	oGame.tutorialText = 0;
	Load_Game("savestate.sav");
}else if (file_exists("checkpoint.sav")){
	Load_Game("checkpoint.sav")
}else{
	room_restart();
}