stateFunction = function(){
	if (place_meeting(x,y,oPlayer)){
		oCamera.follow = instance_nearest(x,y, oCamPos)
		oCamera.camSpeed = 0.028;
		oCamera.aimY = 0;
		
		audio_play_sound(Tractor_beam,10,false,1,0,1)
	}
}