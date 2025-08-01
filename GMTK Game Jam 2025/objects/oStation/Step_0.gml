if (!global.gamePause and !global.turtorialPause and !onlyDropoff){
	// spawn passengers
	currPassengers = array_length(passengerArray);

	if (currPassengers < maxPassengers and passengerTimer > 0) passengerTimer--;

	if (passengerTimer <= 0 and currPassengers < maxPassengers){
		passengerTimer = passengerTimerMax;
	
		var currPass = instance_create_layer(x,y,"Passengers",oPassenger);
		currPass.belongsTo = self.id;
		array_push(passengerArray,currPass);
	}
	
	hasFirstClass = false;
	if (array_length(passengerArray) > 0){
		for (var i = 0; i < array_length(passengerArray); i++){
			if (passengerArray[i].firstClass) hasFirstClass = true;
		}
	}
}