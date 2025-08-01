if (!global.gamePause and !global.turtorialPause){
	if (patients > 0){
		patients --;
	
		if (patients <= 0){
			//Turtorial
			if (!global.turtorialMng.seenImpatient){
				global.turtorialPause = true;
				global.turtorialMng.turtorial = TURTORIAL.IMPATIENT;
			}
			
			Change_Money(false,ticketValue,[x,y],firstClass);
			
			if (firstClass) global.currPatients -= 2; else global.currPatients -= 1;
		
			for (var i = 0; i< array_length(belongsTo.passengerArray); i++){
				var currPassenger = belongsTo.passengerArray[i];
				if (currPassenger.id = self.id){
					array_delete(belongsTo.passengerArray,i,1);
				}
			}
			instance_destroy();
		}
	}

	x = belongsTo.x;
	y = belongsTo.y;	
}