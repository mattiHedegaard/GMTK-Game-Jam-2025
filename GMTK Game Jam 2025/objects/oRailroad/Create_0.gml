occupied = false;

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
