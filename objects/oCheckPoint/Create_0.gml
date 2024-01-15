/// @desc

image_alpha = 0.3;

counter = 0;
stateFunction = function(){
	if (place_meeting(x,y,oPlayer)){
		Save_Game("checkpoint.sav");
	}
}
state = stateFunction;