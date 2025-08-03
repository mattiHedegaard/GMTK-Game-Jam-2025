if (!global.gamePause and !global.turtorialPause or room == rMenu){
	timer++;
	distance = timer/80;

	y -= spd;
	x = x + cos(hoverTimer*spd) * distance;
	y = y + sin(hoverTimer*spd) * distance;
	hoverTimer++;

	image_xscale += scalingSpd;
	image_yscale += scalingSpd;

	image_alpha -= alphaSpd;
	if (image_alpha <= 0) instance_destroy();
}