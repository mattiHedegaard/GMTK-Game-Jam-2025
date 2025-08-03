// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Check_Target(){

//find target pos
var targetX = -1;
var targetY = -1;
var dir = 0; //-1 = right 1 = left

//check first in front and then to the sides.
var checkDis = 25;
var imAng = image_angle;
var checkAnglesArray = [
	0,
	-90, //right
	90	//left

]
var dirTranslatorArray = [
	0,
	-1, //right
	1	//left
]
var goAhead = true;

for (var i = 0; i < array_length(checkAnglesArray); i++){
		track = collision_point(
		x + lengthdir_x(checkDis,imAng + checkAnglesArray[i]),
		y + lengthdir_y(checkDis,imAng + checkAnglesArray[i]),
		oRailroad,
		true,
		true
	)
	
	if (track != noone){		
		targetX = track.x;
		targetY = track.y;
		dir = dirTranslatorArray[i];
		if (i != 0) goAhead = false;

		break;
	}
}
if (track.occupied and track.occupiedBy.id != self.id or track.notThisWay and !goAhead){
	var altTrack = noone;
	// look for alternate route if ccupied
	for (var j = 0; j < array_length(checkAnglesArray); j++){
		altTrack = collision_point(
			x + lengthdir_x(checkDis,imAng + checkAnglesArray[j]),
			y + lengthdir_y(checkDis,imAng + checkAnglesArray[j]),
			oRailroad,
			true,
			true
		)
		
		if (altTrack != noone){
			if (altTrack.occupied or altTrack.notThisWay){
				braking = true;
				brakeLever.braking = braking;
				emergencyBrakeMp = emergencyBrakeMpMax;
				continue;
			} else{
				targetX = altTrack.x;
				targetY = altTrack.y;
				track = altTrack;
				dir = dirTranslatorArray[j];
				if (brakeLever.flipDelay-(0.5*FPS) <= 0){
					braking = false;
					brakeLever.braking = braking;
					emergencyBrakeMp = 1;
				}
				else emergencyBrakeMp = 1;
				
			}
		}else{
			
		}
	}
}


var value = [targetX, targetY];
nowTurningDir = dir;

return value;
}