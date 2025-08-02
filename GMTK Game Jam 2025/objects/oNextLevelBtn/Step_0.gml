

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
	if (delay <= 0){
		if (global.level < global.totalLevels){
			global.level++;
			target = global.roomArray[global.level]
		}
		else{
			target = rMenu;
		}
		room_goto(target);
		global.gamePause = false;
	}
}

