/// @desc
//Load_Room();
if (file_exists("savestate.sav")){
	file_delete("savestate.sav");
}
if (file_exists("checkpoint.sav")){
	file_delete("checkpoint.sav");
}

oGame.tutorialText = 0;