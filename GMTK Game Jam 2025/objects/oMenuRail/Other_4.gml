for (var i = 0; i < array_length(touchingArray); i++){
	
	if (i == 0 or i == 3) { // left or right
		if (place_meeting(x+GMDirTransArray[i],y,oMenuRail)){
			touchingArray[i] = true;
		}
	}
	else if (i == 1 or i == 2){ //down or up
		if (place_meeting(x,y+GMDirTransArray[i],oMenuRail)){
			touchingArray[i] = true;
		}
	}
}