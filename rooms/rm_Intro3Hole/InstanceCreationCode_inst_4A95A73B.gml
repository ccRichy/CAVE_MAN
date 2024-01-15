stateFunction = function(){
	
	if (place_meeting(x,y,oPlayer)){
		oPlayer.jumpSpeed = -1.50;
		var nearCam = instance_nearest(x,y,oCamPos);
		if (oPlayer.state = oPlayer.StateRope){
			oCamera.follow = nearCam;
			oCamera.camSpeed = 0.05;
			oCamera.aimX = -1000;
			oCamPos.aimY = 0;
			if (global.jumpKey){
				flag = true;
			}
		}else if (!flag){
			oCamera.follow = instance_furthest(x,y,oCamPos);
			oCamera.camSpeed = 0.05;
			oCamera.aimX = -1000;
		}
	}
}