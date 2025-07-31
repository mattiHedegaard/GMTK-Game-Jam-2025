var touchingInstanceNum = 0;

//draw outer railroad sprites
for (var i = 0; i < array_length(touchingArray); i++){
	if (touchingArray[i]){
		touchingInstanceNum++; // to check if it touchees more or less than two
		
		draw_sprite(sRailroad,i,x,y);
	}
}
if (touchingArray[DIR.LEFT] and touchingArray[DIR.RIGHT]){
	draw_sprite(sRailroad,DIR.HORIZONTAL,x,y);
}
else if (touchingArray[DIR.UP] and touchingArray[DIR.DOWN]){
	draw_sprite(sRailroad,DIR.VERTICAL,x,y);
}
else{
	if (touchingArray[DIR.UP] and touchingArray[DIR.RIGHT]){
		draw_sprite(sRailroadTurning,TURN_DIR.TURN_0,x,y);
	}
	else if (touchingArray[DIR.RIGHT] and touchingArray[DIR.DOWN]){
		draw_sprite(sRailroadTurning,TURN_DIR.TURN_90,x,y);
	}
	else if (touchingArray[DIR.LEFT] and touchingArray[DIR.DOWN]){
		draw_sprite(sRailroadTurning,TURN_DIR.TURN_180,x,y);
	}
	else if (touchingArray[DIR.LEFT] and touchingArray[DIR.UP]){
		draw_sprite(sRailroadTurning,TURN_DIR.TURN_270,x,y);
	}
}

//if (touchingInstanceNum > 2 or touchingInstanceNum < 2) draw_sprite(sRRerror,0,x,y);