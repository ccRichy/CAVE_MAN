stateFunction = function(){



	var rand = irandom(1000);
	var randVol = choose(0.1,0.2,0.3,0.4,0.6,0.8)
	var randPitch = choose(1,0.8,0.75,0.67);
	
	if ( rand == 20 || rand == 21 || rand == 22 || rand == 23 || rand == 24){
			if (flag = false){
				audio_play_sound(prettyWindy2,100,false,0.4,)
				flag = true;
			}
	}
	
	if (rand == 100 && !audio_is_playing(prettyWindy2)){
		audio_play_sound(prettyWindy2,100,false,0.4,0,randPitch);
	}
	
	
	
	if (rand == 1 && !audio_is_playing(birdChirp1)){
		audio_play_sound(birdChirp1,50,false,randVol,0,randPitch);
	}
	if (rand == 2 && !audio_is_playing(chirp2)){
		audio_play_sound(chirp2,50,false,randVol,0,randPitch);
	}
	
}