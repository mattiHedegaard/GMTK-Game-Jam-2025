// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Show_Turtorial(){
/// @arg turImage
/// @arg whichNext
	
var turImage = argument[0];
var whichNext = argument[1];

var guiH = display_get_gui_height();
var guiW = display_get_gui_width();

global.turtorialPause = true;

draw_sprite(turImage,0,guiW/2,guiH-guiH/6);

if (keyboard_check_pressed(vk_space)){
	if (whichNext != noone){
		global.turtorialMng.turtorial = whichNext;
	}
	else{
		turtorial = -1;
		inTurtorial = false;
		global.turtorialPause = false;
	}
}

}