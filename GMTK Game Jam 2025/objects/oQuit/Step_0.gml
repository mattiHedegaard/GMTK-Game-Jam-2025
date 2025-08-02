if (mouse_x >= bbox_left and
mouse_x <= bbox_right and
mouse_y >= bbox_top and
mouse_y <= bbox_bottom){
	
	if (mouse_check_button_pressed(mb_left)){
		global.gamePause = true;
		global.pauseText = "Are you sure?";
		areYouSure = true;
		audio_play_sound(sndMenuClick,SOUND.GAME,false);
	}
		
}
if (keyboard_check_pressed(vk_escape)){
	global.gamePause = true;
	global.pauseText = "Are you sure?";
	areYouSure = true;
}
var rWidth = room_width;
var rHeight = room_height;
var margin = 8;
var yes;
var no;

if (areYouSure){
	if (!instance_exists(oMenuNo) and !instance_exists(oMenuYes)){
		yes =instance_create_layer(rWidth/2-margin*12,rHeight/2+margin*12,layer,oMenuYes);
		no =instance_create_layer(rWidth/2+margin*12,rHeight/2+margin*12,layer,oMenuNo);
	}
}
else{
	if (instance_exists(oMenuNo) and instance_exists(oMenuYes)){
		instance_destroy(oMenuNo);
		instance_destroy(oMenuYes);
}
}