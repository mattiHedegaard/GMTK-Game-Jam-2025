if (mouse_check_button_pressed(mb_left))
	if (mouse_x >= bbox_left and
	mouse_x <= bbox_right and
	mouse_y >= bbox_top and
	mouse_y <= bbox_bottom){
	audio_play_sound(sndMenuClick,SOUND.GAME,false);
	clicked = true;
}

if (clicked){
	delay--;
	if (delay <= 0) Restart_Level();
}