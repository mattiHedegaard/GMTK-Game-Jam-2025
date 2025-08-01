if (!global.gamePause and !global.turtorialPause){
	liveTimer--;
	if (liveTimer <= 0) instance_destroy();

	x += xSpd*xDir;
	y -= ySpd;
}