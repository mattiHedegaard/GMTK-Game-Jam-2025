if (!global.gamePause){
	if (!braking) global.money -= 0.2/FPS;
	
	script_execute(state);

	if (track.occupied and track.occupiedBy.id != self.id) braking = true

	//passengers
	currPassengers = array_length(passengerArray);

	var currStation = instance_place(x,y,oStation)

	if (!braking) filling = false;
	if (currStation != noone){
			if (place_meeting(x,y,currStation) and stopped and (currStation.stationGroup == trainGroup or trainGroup == 0 or currStation.allManStation)){
			
			if (array_length(passengerArray) > 0 and !filling){
				if (dropPassengerTimer > 0) dropPassengerTimer--;
			
				if (dropPassengerTimer <= 0){
					var droppedPassenger = array_pop(passengerArray);
					Change_Money(true,droppedPassenger.ticketValue,[x,y],droppedPassenger.firstClass);
					instance_destroy(droppedPassenger);
				
					if (array_length(passengerArray) == 0) filling = true;
				
					dropPassengerTimer = dropPassengerTimerMax;
				}
			}
			else filling = true;
		
			if (array_length(currStation.passengerArray) > 0 and filling and currPassengers < maxPassengers){
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
}