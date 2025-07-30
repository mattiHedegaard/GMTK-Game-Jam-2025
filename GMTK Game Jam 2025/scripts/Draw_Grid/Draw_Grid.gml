// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Draw_Grid(){
/// @arg width
/// @arg height
/// @arg lineWidth
/// @arg color
	
var width = argument[0];
var height = argument[1];

var lineWidth = argument[2];
var color = argument[3];

draw_set_color(color);

for (var i = 0; i < RES_HEIGHT; i += height){
	draw_line_width(0,i,RES_WIDTH,i,lineWidth);
}

for (var i = 0; i < RES_WIDTH; i += width){
	draw_line_width(i,0,i,RES_HEIGHT,lineWidth);
}

}