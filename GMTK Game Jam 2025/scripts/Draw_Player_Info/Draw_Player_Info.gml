// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Draw_Player_Info(){
draw_set_alpha(1);
draw_set_font(fDogica_big);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_set_color(c_white);

var margin = 8;

var rWidth = display_get_gui_width();
var rHeight = display_get_gui_height();

//Money
draw_set_color(c_yellow);
if (global.money <= 0) draw_set_color(c_red);
draw_text(rWidth-margin*12,rHeight-margin*10,$"{global.money} $");

//Patients
var color = c_white;
var imIndex = 0;

if (global.currPatients < global.startPatients*0.5){
	color = c_orange;
	imIndex = 1;
}
if (global.currPatients < global.startPatients*0.25){
	color = c_red;
	imIndex = 2;
}

draw_set_color(color);

draw_set_halign(fa_left);

draw_text(0+margin*24,rHeight-margin*10,$"{global.currPatients}/{global.startPatients}")
draw_sprite(sPatients,imIndex,0+margin*18,rHeight-margin*10);
}