stateFunction = function(){
	layer_x("Background", oCamera.x-80);
	layer_y("Background", lerp(oCamera.y*0.8,oCamera.y, 0.05));
}