// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Check_Target_Menu(){

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

for (var i = 0; i < array_length(checkAnglesArray); i++){
		track = collision_point(
		x + lengthdir_x(checkDis,imAng + checkAnglesArray[i]),
		y + lengthdir_y(checkDis,imAng + checkAnglesArray[i]),
		oMenuRail,
		true,
		true
	)
	
	if (track != noone){
		targetX = track.x;
		targetY = track.y;
		dir = dirTranslatorArray[i];

		if (random_range(0,100) > 25) break;
	}
}


var value = [targetX, targetY];
nowTurningDir = dir;

return value;
}