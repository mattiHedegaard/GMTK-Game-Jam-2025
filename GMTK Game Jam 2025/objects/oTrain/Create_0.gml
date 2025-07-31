enum TRAIN_TYPE{
	FRONT,
	BACK,
	NONE
}
enum TRAIN_DIR {
	RIGHT,
	UP,
	LEFT,
	DOWN
}

currPassengers = 0;
maxPassengers = 8;
takePassengerTimerMax = 1*FPS;
takePassengerTimer = takePassengerTimerMax;
passengerArray =[];
filling = false;

dropPassengerTimerMax = 1*FPS;
dropPassengerTimer = dropPassengerTimerMax;

state = sm_train_driving;
braking = false;
stopped = false;
brakeLever = noone;

track = noone;
targetArray = [-1,-1,0];
movingToTarget = false;
spd = 0;
targetSpd = 0;
//maxSpd = 1;
accalarationSpd = 150;
deaccalarationSpd = 50;
emergencyBrakeMp = 1;
emergencyBrakeMpMax = 10;
turningSpd = 90/8; //needs to fit with 90 degreed turns
nowTurningDir = 0;
degreesLeftToTurn = 0;
dir = startAngle;
image_angle = startAngle;