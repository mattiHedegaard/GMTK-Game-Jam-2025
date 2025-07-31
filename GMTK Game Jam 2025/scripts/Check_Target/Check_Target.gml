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
	90, //left
	-90 //right
]
var dirTranslatorArray = [
	0,
	1, //left
	-1 //right
]

for (var i = 0; i < array_length(checkAnglesArray); i++){
		var track = collision_point(
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
			
		if (track.occupied){
			// look for alternate route if ccupied
			for (var j = array_length(checkAnglesArray)-1; j > 0; j--){
				var altTrack = collision_point(
					x + lengthdir_x(checkDis,imAng + checkAnglesArray[j]),
					y + lengthdir_y(checkDis,imAng + checkAnglesArray[j]),
					oRailroad,
					true,
					true
				)
				if (altTrack != noone){
					targetX = altTrack.x;
					targetY = altTrack.y;
					dir = dirTranslatorArray[i];
				}
				if (altTrack != noone){
					if (altTrack.occupied or altTrack.notThisWay){
						braking = true;
						brakeLever.braking = braking;
						emergencyBrakeMp = emergencyBrakeMpMax;
					}
				}
			}
		}
		break;
	}
}

var value = [targetX, targetY];
nowTurningDir = dir;
degreesLeftToTurn = 90;

return value;
}