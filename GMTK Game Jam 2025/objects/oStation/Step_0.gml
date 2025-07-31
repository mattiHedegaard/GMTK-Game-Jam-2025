// spawn passengers
currPassengers = array_length(passengerArray);

show_debug_message(currPassengers)
if (currPassengers < maxPassengers and passengerTimer > 0) passengerTimer--;

if (passengerTimer <= 0 and currPassengers < maxPassengers){
	show_debug_message("her")
	passengerTimer = passengerTimerMax;
	
	var currPass = instance_create_layer(x,y,"Passengers",oPassenger);
	currPass.belongsTo = self.id;
	array_push(passengerArray,currPass);
}