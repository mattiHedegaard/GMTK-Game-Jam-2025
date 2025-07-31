// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sm_train_driving(){
targetSpd = maxSpd;
if (braking) targetSpd = 0;
if (stopped){
	targetSpd = 0;
	spd = 0;
}

//accalerate
if (spd < targetSpd and !braking and !stopped){
	spd += targetSpd/accalarationSpd;
}
//deccelarate
if (spd > targetSpd and braking and !stopped){
	spd -= spd/(deaccalarationSpd/emergencyBrakeMp);
}
if (spd <= 0.1 and braking){
	spd = 0;
	targetSpd = 0;
	stopped = true;
	brakeLever.stopped = stopped;
	emergencyBrakeMp = 1;
}


if (!movingToTarget){
	targetArray = Check_Target();
	movingToTarget = true;
}

var dir = point_direction(x,y,targetArray[0],targetArray[1]);
if (degreesLeftToTurn > 0){
	//Turning left
	if (nowTurningDir == 1){
		image_angle += turningSpd;
		degreesLeftToTurn -= turningSpd;
	}
	
	//Turning right
	if (nowTurningDir == -1){
		image_angle -= turningSpd;
		degreesLeftToTurn -= turningSpd;
	}
}

if (array_length(targetArray) == 2 and targetArray[0] != -1 and targetArray[1] != -1){
	var magnitude = spd;
	var dis = point_distance(x,y,targetArray[0],targetArray[1])
	
	if (dis > 0){
		x += lengthdir_x(spd,dir);
		y += lengthdir_y(spd,dir);
		if (dis <= 1){
			
			movingToTarget = false;
		}
	}

;}
else{
	show_debug_message("error in train target");
	targetArray = -1;
	targetArray = -1;
}
show_debug_message(braking)
}