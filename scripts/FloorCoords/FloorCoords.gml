///@desc Floors or Rounds coords if the sub-pixel fraction is > or < 0.5
function FloorCoords(xInput, yInput){
	if (xInput = 0){
		if (frac(x) > 0.5){
			x = round(x);
		}else{
			x = floor(x);
		}
	}
	if (yInput = 0){
		if (frac(y) > 0.5){
			y = round(y);
		}else{
			y = floor(y);
		}
	}
}