if (mouse_x >= bbox_left and
mouse_x <= bbox_right and
mouse_y >= bbox_top and
mouse_y <= bbox_bottom){
	
	if (mouse_check_button_pressed(mb_left)){
		global.gamePause = false;
		oQuit.areYouSure = false;
	}
		
}
