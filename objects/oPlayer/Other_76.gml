/// @desc
var randPitch = (choose(0.9, 1, 1.1, 1.2));
if (event_data[? "event_type"] == "sprite event"){
	
	switch(event_data[? "message"]){
		
	
		case "footstep":
			if (room = rm_StartScreen){
				audio_play_sound(stepgrass4,200,false,0.3-(VIEW_W/2000));
			}else{
				audio_play_sound(stepHard,200,false,0.5-(VIEW_W/1000),0,randPitch-0.2);
			}
				break;

		case "skid":
			audio_play_sound(skidLonger,140,false,0.4-(VIEW_W/2000),0);
				break;
	}
}