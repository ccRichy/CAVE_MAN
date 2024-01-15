///@desc
function mouseDraggable(mouseOffsetX,mouseOffsetY){
	if (!instance_exists(oMouse)) return;
	oMouse.image_alpha = 1;
	if (place_meeting(x,y,oMouse) && mouse_check_button(mb_left))
	{
		oMouse.image_alpha = 0;
		x = mouse_x-mouseOffsetX;
		y = mouse_y-mouseOffsetY;
	}
}