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

hasFirstClass = false;
currPassengers = 0;
takePassengerTimerMax = 1*FPS;
takePassengerTimer = takePassengerTimerMax;
passengerArray =[];
filling = false;

dropPassengerTimerMax = 1*FPS;
dropPassengerTimer = dropPassengerTimerMax;

state = sm_train_driving;
braking = true;
stopped = true;
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

//shader
upixelH = shader_get_uniform(shOutline,"pixelH");
upixelW = shader_get_uniform(shOutline,"pixelW");
texelW = texture_get_texel_width(sprite_get_texture(sprite_index,0));
texelH = texture_get_texel_height(sprite_get_texture(sprite_index,0));
outlineColor = shader_get_uniform(shOutline,"outlineColor");