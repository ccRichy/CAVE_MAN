/// @desc
//var coll = instance_place(x,y,oCollision);
var coll = collision_line(xprevious,yprevious,x,y,oCollision,false,true);

if (coll){
	var _underneath = ((bbox_top <= coll.bbox_bottom) && (bbox_bottom >= coll.bbox_top));
	var _left = ((bbox_left <= coll.bbox_right) && (bbox_right >= coll.bbox_left) /*&&! _underneath*/);
	var _right = ((bbox_left >= coll.bbox_right-3) && (bbox_left <= coll.bbox_right) /*&&! _underneath*/);
	
	if (_underneath /*&& !_right && !_left*/){
		instance_create_depth(coll.x+4,coll.bbox_bottom,depth,oRope);
	}else if(_left){
		instance_create_depth(coll.bbox_left-4,coll.bbox_top,depth,oRope);
	}else if(_right){
		instance_create_depth(coll.bbox_right+4,coll.bbox_top,depth,oRope);
	}
	instance_destroy();
}
