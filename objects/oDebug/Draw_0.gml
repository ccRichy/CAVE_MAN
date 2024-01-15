/// @desc
if (!debugEnabled) return;

with (oPlayer){
	draw_set_halign(fa_left);
	draw_text_transformed(x-10,y,$"X: {moveX}\nY: {moveY}", 0.3,0.3, 0);
	
	var stateText = "none";
	switch (state){
		case StateFree: stateText = "Free"; break;
		case StateJump: stateText = "Jump"; break;
		case StateFalling: stateText = "Fall"; break;
		case StateLedge: stateText = "Ledge"; break;
		case StateRope: stateText = "Rope"; break;
		case StateWire: stateText = "Wire"; break;
		case StateJetpack: stateText = "Jetpack"; break;
	}
	draw_set_halign(fa_center);
	draw_text_transformed(x,y-20,stateText,0.4,0.4,0);
}