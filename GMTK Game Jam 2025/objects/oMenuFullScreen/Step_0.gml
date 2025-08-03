if (window_get_fullscreen()) image_index = 1; else image_index = 0;


if (!global.gamePause and mouse_x >= bbox_left and
mouse_x <= bbox_right and
mouse_y >= bbox_top and
mouse_y <= bbox_bottom){
	
	if (mouse_check_button_pressed(mb_left)){
		audio_play_sound(sndMenuClick,SOUND.GAME,false);
		window_set_fullscreen(!window_get_fullscreen());
	}
		
}