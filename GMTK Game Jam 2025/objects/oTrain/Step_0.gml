if (!global.gamePause and !global.turtorialPause){
	if (!braking) global.money -= 0.2/FPS;
	
	script_execute(state);

	if (track.occupiedBy != noone) if (track.occupied and track.occupiedBy.id != self.id) braking = true;

	//passengers
	currPassengers = array_length(passengerArray);

	var currStation = instance_place(x,y,oStation)

	if (!braking) filling = false;
	if (currStation != noone){
		if (place_meeting(x,y,currStation) and stopped and (currStation.stationGroup == trainGroup or trainGroup == 0 or currStation.allManStation)){
			
			if (currStation.onlyPickup) filling = true;
			//Dropoff
			if (array_length(passengerArray) > 0 and !filling){
				if (dropPassengerTimer > 0) dropPassengerTimer--;
			
				if (dropPassengerTimer <= 0){
					var droppedPassenger = array_pop(passengerArray);
					Change_Money(true,droppedPassenger.ticketValue,[x,y],droppedPassenger.firstClass);
					
					var patientGoUpChance = 33;
					if (random_range(0,100) <= patientGoUpChance and global.currPatients < global.startPatients) global.currPatients++;
					
					instance_destroy(droppedPassenger);
				
					if (array_length(passengerArray) == 0) filling = true;
				
					dropPassengerTimer = dropPassengerTimerMax;
				}
			}
			else filling = true;
		
			//Pickup
			if (array_length(currStation.passengerArray) > 0 and filling and currPassengers < maxPassengers and !currStation.onlyDropoff){
				if (takePassengerTimer > 0) takePassengerTimer--;
		
				if (takePassengerTimer <= 0){
					var takenPassenger = array_pop(currStation.passengerArray)
					array_push(passengerArray,takenPassenger)
					takenPassenger.belongsTo = self.id;
					takePassengerTimer = takePassengerTimerMax;
				}
			}
		}
	}
	
	hasFirstClass = false;
	if (array_length(passengerArray) > 0){
		for (var i = 0; i < array_length(passengerArray); i++){
			if (passengerArray[i].firstClass) hasFirstClass = true;
		}
	}
	
	#region //smoke

if (!stopped){
	if (smokeSpawnTimer > 0) smokeSpawnTimer--;

	if (smokeSpawnTimer <= 0){
		var imAngle = image_angle;
		var dx = lengthdir_x(8,imAngle);
		var dy = lengthdir_y(8,imAngle);
	
		var currSmoke = instance_create_layer(x+dx,y+dy,"Passengers",oSmoke);
		
		smokeSpawnTimer = random_range(smokeRR[0],smokeRR[1]);
	}
}
	
#endregion
	
	#region //Sound
	
	//braking
	if (braking and !stopped){
		if (!audio_is_playing(sndTrainBraking)) brakingSoundId = audio_play_sound(sndTrainBraking,SOUND.TRAIN,true);
	}
	else audio_stop_sound(brakingSoundId);
	
	//Driving
	if (!braking and !stopped){
		if (!audio_is_playing(sndDrivingSoundStress)) drivingSoundId = audio_play_sound(sndDrivingSoundStress,SOUND.TRAIN,true);
		
		if (whistleDelay > 0) whistleDelay--;
		if (whistleDelay <= 0){
			if (!audio_is_playing(sndTrainHorn)) hornSoundId = audio_play_sound(sndTrainHorn,SOUND.TRAIN,false);
			whistleDelay = whistleDelayMax;
		}
	}
	else{
		audio_stop_sound(drivingSoundId);
	}
	
	//
	
	#endregion	
}