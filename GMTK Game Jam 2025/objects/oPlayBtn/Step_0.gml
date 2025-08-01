image_index = 0;
if (mouse_x >= bbox_left and
mouse_x <= bbox_right and
mouse_y >= bbox_top and
mouse_y <= bbox_bottom){
	image_index = 1;
	
	if (mouse_check_button_pressed(mb_left)){
		script_execute(effect);
	}
}

