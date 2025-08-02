if (mouse_x >= bbox_left and
mouse_x <= bbox_right and
mouse_y >= bbox_top and
mouse_y <= bbox_bottom){
	
	if (mouse_check_button_pressed(mb_left) and !clicked){
		clicked = true;
		audio_play_sound(sndGameStart,SOUND.GAME,false)
	}
}

if (clicked){
	delay--;
	var target = global.roomArray[level];
	if (delay <= 0) room_goto(target);
}

