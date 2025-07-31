// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Draw_Grid(){
/// @arg width
/// @arg height
/// @arg offset
/// @arg lineWidth
/// @arg color
	
var width = argument[0];
var height = argument[1];
var offset = argument[2]

var lineWidth = argument[3];
var color = argument[4];

draw_set_color(color);

for (var i = offset; i < RES_HEIGHT; i += height){
	draw_line_width(0,i,RES_WIDTH,i,lineWidth);
}

for (var i = offset; i < RES_WIDTH; i += width){
	draw_line_width(i,0,i,RES_HEIGHT,lineWidth);
}

}