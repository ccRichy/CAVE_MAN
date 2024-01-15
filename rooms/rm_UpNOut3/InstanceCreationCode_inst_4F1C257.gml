stateFunction = function(){

	if (place_meeting(x,y,oPlayer)){
		instance_destroy(oJetpack);
		instance_destroy(oPlayer);
		flag = true;
	}
	
	if (flag){
		counter++
		audio_play_sound(skidLonger,10000,false,1-( counter/1000 ));
	}
	
	if (counter > 300){
		oGame.tutorialText = 1;
		oGame.tutString = "Thank's for Playing!";
		oGame.xx = 500;
		oGame.yy = 500;
	}
	if (counter = 300){
		audio_play_sound(victory,2,false,0.45,0,1)
	}
	if (counter = 600){
		audio_play_sound(victory3,2,false,0.2,0,2)
	}
	if (counter > 600){
		oGame.yy = 500+counter/2;
	}

	if (counter > 1700){
		//os_set_quit();
		game_end();
	}

}