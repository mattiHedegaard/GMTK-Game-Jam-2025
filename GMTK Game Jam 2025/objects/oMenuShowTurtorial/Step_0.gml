if (global.showTurtorials) image_index = 1; else image_index = 0;


if (mouse_x >= bbox_left and
mouse_x <= bbox_right and
mouse_y >= bbox_top and
mouse_y <= bbox_bottom){
	
	if (mouse_check_button_pressed(mb_left)){
		global.showTurtorials = !global.showTurtorials
		Toggle_Show_turtorials();
		audio_play_sound(sndMenuClick,SOUND.GAME,false);
	}
		
}