/// @desc
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if (global.ropeAmmo > 0){
	draw_text_transformed(x+30,y+20,$"Ropes: {global.ropeAmmo}",2,2,0);
}
if (global.wireAmmo > 0){
	draw_text_transformed(x+30,y+40,$"Wires: {global.wireAmmo}",2,2,0);
}
draw_set_halign(fa_center);
draw_set_valign(fa_middle);



if (tutorialText = 1){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed(oCamera.x+xx,oCamera.y+yy,tutString, 4,4,0);
}