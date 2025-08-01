if (!global.gamePause and !global.turtorialPause){
	if (place_meeting(x,y,oTrain)){
		occupied = true;
		occupiedBy = instance_place(x,y,oTrain);
	}
	else if (!wrecked) {
		occupied = false;
		occupiedBy = noone;
	}
	
	//wreck railroads
	if (!noWrecks){
		if (wreckTimer > 0 and !isWrecked) wreckTimer--;
	
		if (wreckTimer <= 0){
			if (!wrecked) wreckType = choose(Railroad_Broken_Rail,Railroad_Obstacle);
			script_execute(wreckType);
		}
	}
	if (broken){
		curveSprite = sRailroadTurningBroken;
		straightSprite = sRailroadBroken;
		
		if (repairIcon = noone){
			repairIcon = instance_create_layer(x+23-16,y-16,"Railroad",oRepairIcon); //16 is the center of the drawing, and 23 is where the rotation point of the hammer is
		}
	}
	else{
		curveSprite = sRailroadTurning;
		straightSprite = sRailroad;
		
		if (repairIcon != noone) {
			instance_destroy(repairIcon);
			repairIcon = noone;
		}
	}
}
