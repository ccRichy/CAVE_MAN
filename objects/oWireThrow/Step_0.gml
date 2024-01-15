/// @desc

//CHANGE ROPE TO WIRE

var coll = instance_place(x,y,oCollision);
if (coll){
	var _underneath = (bbox_top <= coll.bbox_bottom && bbox_top >= coll.bbox_bottom-4);
	var _right = ((bbox_right >= coll.bbox_left) && (bbox_right <= coll.bbox_left+4) &&! _underneath);
	var _left = ((bbox_left <= coll.bbox_right) && (bbox_left >= coll.bbox_right-4) &&! _underneath);
	
	if (_underneath){
		with (instance_create_depth(coll.x+4,coll.bbox_bottom-1,depth,oWireEnd)){
			start = other.start;
		}
	}else if(_right){
		with (instance_create_depth(coll.x+1,coll.y+1,depth,oWireEnd)){
			start = other.start;
		}
	}else if(_left){
		with (instance_create_depth(coll.x+7,coll.y+1,depth,oWireEnd)){
			start = other.start;
		}
	}
	instance_destroy();
}
