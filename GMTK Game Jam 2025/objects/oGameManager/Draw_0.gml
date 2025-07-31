if (global.gamePause){
	draw_set_color(c_black);
	draw_set_alpha(0.7);
	
	var rWidth = room_width;
	var rHeight = room_height;
	
	draw_rectangle(0,0,rWidth,rHeight,false);
	
	draw_set_color(c_white);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_font(fDogica_big);
	draw_set_alpha(1);
	draw_text(rWidth/2,rHeight/2,global.pauseText);
}