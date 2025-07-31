// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Draw_levelinfo(){
draw_set_alpha(1);
draw_set_font(fDogica_big);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);

var margin = 8;

var rWidth = display_get_gui_width();
var rHeight = display_get_gui_height();

//level
draw_text(rWidth/2,0+margin*2,$"Level: {global.level}");

//goal
draw_set_font(fDogica_meduim_big);

draw_text(rWidth/2-(margin*10),0+margin*10,$"Goal:");

draw_set_color(c_yellow);
draw_text(rWidth/2+(margin*10),0+margin*10,$"{global.goal}$");

}