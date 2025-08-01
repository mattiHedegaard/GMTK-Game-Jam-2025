image_index = 0;
if (mouse_x >= bbox_left and
mouse_x <= bbox_right and
mouse_y >= bbox_top and
mouse_y <= bbox_bottom){
	image_index = 1;
	
	if (mouse_check_button_pressed(mb_left)){
		clicked = true;
		audio_play_sound(sndGameStart,SOUND.GAME,false)
	}
}

if (clicked){
	delay--;
	if (delay <= 0) script_execute(effect);
}

