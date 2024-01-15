/// @desc
dir = point_direction(x,y, start.x,start.y);
length = point_distance(x,y, start.x,start.y);


if (go = 0){
	dir = point_direction(x,y, start.x,start.y);
	length = point_distance(x,y, start.x,start.y);

	with (instance_create_depth(x,y,depth,oWire)){
		image_angle = other.dir;
		image_xscale = other.length;
		dir = other.dir;
	}
	go = 1;
}