/// @desc

if (!place_meeting(x,y,oCollision) && extendActive && !place_meeting(x,y,oRope)){
	extendTimer--;
	if (extendTimer < 0){
		with (instance_create_depth(x,bbox_bottom,depth,oRope)){
			owner = other.id;
			//owner.extendActive = false;
		}
		extendActive = false;
	}
}