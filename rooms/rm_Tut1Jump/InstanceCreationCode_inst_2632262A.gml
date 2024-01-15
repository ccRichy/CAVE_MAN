stateFunction = function(){

	if (place_meeting(x,y,oPlayer) && counter == 0){
		oPlayer.state = oPlayer.StateTrip;
		oPlayer.image_speed = 0;
		oPlayer.y = y+1;
		audio_play_sound(richochet__short_highs_,100,0,1);
		audio_play_sound(bump,101,0,1);
		instance_destroy();
	}
	
}		