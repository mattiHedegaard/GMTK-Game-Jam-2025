if (!global.gamePause){
	// spawn passengers
	currPassengers = array_length(passengerArray);

	if (currPassengers < maxPassengers and passengerTimer > 0) passengerTimer--;

	if (passengerTimer <= 0 and currPassengers < maxPassengers){
		passengerTimer = passengerTimerMax;
	
		var currPass = instance_create_layer(x,y,"Passengers",oPassenger);
		currPass.belongsTo = self.id;
		array_push(passengerArray,currPass);
	}	
}