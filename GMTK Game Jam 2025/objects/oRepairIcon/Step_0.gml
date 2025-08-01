if (!global.gamePause and !global.turtorialPause){
	y = y + sin(hoverTimer*spd) * distance;

	hoverTimer++;

	if (hitTimer > 0) hitTimer--;
	if (hitTimer <= 0){
		hitting = !hitting;
		hitTimer = hitTimerMax;
	}

	if (hitting) image_angle = angle2 else image_angle = angle1;
}