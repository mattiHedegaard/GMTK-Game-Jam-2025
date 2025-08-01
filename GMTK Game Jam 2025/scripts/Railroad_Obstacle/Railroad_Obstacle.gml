// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Railroad_Obstacle(){
if (!global.turtorialMng.seenObstacle){
	global.turtorialMng.turtorial = TURTORIAL.OBSTACLE;
	global.turtorialPause = true;
}

if (!wrecked){
	wrecked = true;
	occupied = true;
	occupiedBy = self;
	
	if (obstacle == noone) obstacle = instance_create_layer(x,y,"Obstacles",oObstacle);
}

if (!place_meeting(x,y,obstacle)){
	if (obstacle != noone){
		instance_destroy(obstacle);
		obstacle = noone;
	}
	wrecked = false;
	occupied = false;
	occupiedBy = noone;
	wreckTimer = wreckTimerMax;
}


}