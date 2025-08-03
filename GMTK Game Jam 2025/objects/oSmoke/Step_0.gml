if (!global.gamePause and !global.turtorialPause){
	timer--;

	y -= spd;
	x = x + cos(cosHoverTimer*cosSpd) * cosDistance;
	cosHoverTimer++;

	image_xscale += scalingSpd;
	image_yscale += scalingSpd;

	if (timer <= 0) instance_destroy();
}