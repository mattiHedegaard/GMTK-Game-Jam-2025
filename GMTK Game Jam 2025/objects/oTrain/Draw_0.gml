draw_set_alpha(1);
draw_set_font(fDogica_small);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_black);
if (currPassengers > maxPassengers*0.5) draw_set_color(c_orange);
if (currPassengers > maxPassengers*0.8) draw_set_color(c_red);

draw_self();
draw_text(x,y,$"{currPassengers}/{maxPassengers}");
