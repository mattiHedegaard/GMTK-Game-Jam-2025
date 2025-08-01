//sprites
curveSprite = sRailroadTurning;
straightSprite = sRailroad;

occupied = false;
occupiedBy = noone;

wreckTimerMax = random_range(20,500)*FPS;
wreckTimer = wreckTimerMax;
isWrecked = false;
wreckType = noone;
broken = false;
wrecked = false;

//broken rail
repairClicks = round(random_range(2,5));
repaired = false;
fixCost = random_range(10,20);
costPerClick = fixCost/repairClicks;
repairIcon = noone;
clickDelayMax = 1*FPS;
clickDelay = 0;

//obstacle
obstacle = noone;

touchingArray = [
	false, //left
	false,	//down
	false,	//up
	false	//right
]

//translate to normalized direction in gamemaker
GMDirTransArray = [
	-1, //left
	1,	//down
	-1,	//up
	1	//right
]

enum DIR {
	LEFT,
	DOWN,
	UP,
	RIGHT,
	HORIZONTAL,
	VERTICAL,
}

enum TURN_DIR {
	TURN_0,
	TURN_90,
	TURN_180,
	TURN_270
}
