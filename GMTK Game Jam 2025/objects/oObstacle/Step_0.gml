var lMouse = mouse_check_button(mb_left);
var mouseDis = point_distance(x,y,mouse_x,mouse_y);
var mouseDir = point_direction(x,y,mouse_x,mouse_y)

if (!lMouse) {
	offsetX = mouse_x - x;
	offsetY = mouse_y - y;
}

if (lMouse and dragAount > 0){
	if (mouse_x >= hitbox.bbox_left and
	mouse_x <= hitbox.bbox_right and
	mouse_y >= hitbox.bbox_top and
	mouse_y <= hitbox.bbox_bottom){
		dragAount--;
		x = mouse_x - offsetX;
		y = mouse_y - offsetY;
		if (!audio_is_playing(sndDragging)) audio_play_sound(sndDragging,SOUND.EFFECTS,false);
	}
}

if (dragAount <= 0 and !lMouse) dragAount = dragAmountMax;
hitbox.x = x;
hitbox.y = y;