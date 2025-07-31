if (!global.gamePause){
	if (flipDelay > 0) flipDelay--;

	if (mouse_check_button_pressed(mb_left) and flipDelay <= 0)
		if (mouse_x >= bbox_left and
		mouse_x <= bbox_right and
		mouse_y >= bbox_top and
		mouse_y <= bbox_bottom){
		braking = !braking;
		if (stopped) stopped = false;
		train.braking = braking
		train.stopped = stopped;
	
		flipDelay = flipDelayMax;
	}

	if (braking) image_index = 1 else image_index = 0;
	if (stopped) image_index = 2;
}