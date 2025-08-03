//if (!braking) global.money -= 0.2/FPS;
	
script_execute(state);


#region //smoke

if (!stopped){
	if (smokeSpawnTimer > 0) smokeSpawnTimer--;

	if (smokeSpawnTimer <= 0){
		var imAngle = image_angle;
		var dx = lengthdir_x(8,imAngle);
		var dy = lengthdir_y(8,imAngle);
	
		var currSmoke = instance_create_layer(x+dx,y+dy,"Smoke",oSmoke);
		
		smokeSpawnTimer = random_range(smokeRR[0],smokeRR[1]);
	}
}
	
#endregion

#region //Sound
	
//braking
if (braking and !stopped){
	if (!audio_is_playing(sndTrainBraking_Menu)) brakingSoundId = audio_play_sound(sndTrainBraking_Menu,SOUND.TRAIN,true);
}
else audio_stop_sound(brakingSoundId);
	
//Driving
if (!braking and !stopped){
	if (!audio_is_playing(sndDrivingSoundStress_Menu)) drivingSoundId = audio_play_sound(sndDrivingSoundStress_Menu,SOUND.TRAIN,true);
		
	if (whistleDelay > 0) whistleDelay--;
	if (whistleDelay <= 0){
		if (!audio_is_playing(sndTrainHorn_Menu)) hornSoundId = audio_play_sound(sndTrainHorn_Menu,SOUND.TRAIN,false);
		whistleDelay = random_range(10,20)*FPS;;
	}
}
else{
	audio_stop_sound(drivingSoundId);
}
	
#endregion	
