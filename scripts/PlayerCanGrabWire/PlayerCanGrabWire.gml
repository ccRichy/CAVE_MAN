///@desc
function PlayerCanGrabWire(){
	
	//if (collision_line(xprevious,yprevious,x,y,oWire, true, true) && !global.moveDown /*&& !global.jumpHold*/){
	//	moveY = 0;
	//	state = StateWire;
	//}
	
	if (collision_point(x,y,oWire,true,true) && !global.moveDown /*&& moveY < 3*/){
		//moveX = 0;
		moveY = 0;
		state = StateWire;
	}
	
	//if (place_meeting(x,y+moveY,oWire) && !global.moveDown){
	//	//moveX = 0;
	//	moveY = 0;
	//	state = StateWire;
	//}
}