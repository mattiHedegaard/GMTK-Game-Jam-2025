colorArray = [
	$FFFFD465,
	$FF7B77EE,
	$FF7FFFFF,
	$FF65BCFF
];

hasFirstClass = false;
currPassengers = 0;
takePassengerTimerMax = 1*FPS;
takePassengerTimer = takePassengerTimerMax;
passengerArray =[];
filling = false;

dropPassengerTimerMax = 1*FPS;
dropPassengerTimer = dropPassengerTimerMax;

state = sm_train_driving_Menu;
braking = false;
stopped = false;
brakeLever = noone;

track = noone;
targetArray = [-1,-1,0];
movingToTarget = false;
spd = 0;
targetSpd = maxSpd;
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

//smoke
smokeRR = [1,2];

smokeSpawnTimermax = random_range(smokeRR[0],smokeRR[1]);
smokeSpawnTimer = 0;

//sound
whistleDelayMax = random_range(10,20)*FPS;
whistleDelay = whistleDelayMax;

drivingSoundId = -1;
brakingSoundId = -1;
hornSoundId = -1;