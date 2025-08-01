if (hasFirstClass){
	shader_set(shOutline);
	shader_set_uniform_f(upixelW,texelW);
	shader_set_uniform_f(upixelH,texelH);

	var color = c_yellow;
	//RGB color
	var r = color_get_red(color) / 255;
	var g = color_get_green(color) / 255;
	var b = color_get_blue(color) / 255;
	var a = 1.0;

	shader_set_uniform_f(outlineColor,r,g,b,a);

	draw_self();
	shader_reset();
}

draw_set_alpha(1);
draw_set_font(fDogica_small);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_black);
if (currPassengers > maxPassengers*0.5) draw_set_color(c_orange);
if (currPassengers > maxPassengers*0.8) draw_set_color(c_red);

draw_self();
if (!onlyDropoff) draw_text(x,y+-4,$"{currPassengers}/{maxPassengers}");
