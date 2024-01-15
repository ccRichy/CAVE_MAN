stateFunction = function(){

		oCamera.camSpeed = 1;
		oCamera.follow = oPlayer;
		oCamera.aimX = 0;
		oCamera.aimY = 0;
		if (instance_exists(oJetpack)){
			oPlayer.state = oPlayer.StateJetpack;
		}
		//

}