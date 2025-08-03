var touchingInstanceNum = 0;

//draw outer railroad sprites
for (var i = 0; i < array_length(touchingArray); i++){
	if (touchingArray[i]){
		touchingInstanceNum++; // to check if it touchees more or less than two
		
		draw_sprite(straightSprite,i,x,y);
	}
}
if (touchingArray[DIR.LEFT] and touchingArray[DIR.RIGHT]){
	draw_sprite(straightSprite,DIR.HORIZONTAL,x,y);
}
else if (touchingArray[DIR.UP] and touchingArray[DIR.DOWN]){
	draw_sprite(straightSprite,DIR.VERTICAL,x,y);
}
else{
	if (touchingArray[DIR.UP] and touchingArray[DIR.RIGHT]){
		draw_sprite(curveSprite,TURN_DIR.TURN_0,x,y);
	}
	else if (touchingArray[DIR.RIGHT] and touchingArray[DIR.DOWN]){
		draw_sprite(curveSprite,TURN_DIR.TURN_90,x,y);
	}
	else if (touchingArray[DIR.LEFT] and touchingArray[DIR.DOWN]){
		draw_sprite(curveSprite,TURN_DIR.TURN_180,x,y);
	}
	else if (touchingArray[DIR.LEFT] and touchingArray[DIR.UP]){
		draw_sprite(curveSprite,TURN_DIR.TURN_270,x,y);
	}
}

//