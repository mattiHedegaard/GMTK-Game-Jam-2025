if (patients > 0){
	patients --;
	
	if (patients <= 0){
		Change_Money(false,ticketValue,[x,y],firstClass);
		if (firstClass) global.globalPatients -= 2; else global.globalPatients -= 1;
		instance_destroy();
	}
}

x = belongsTo.x;
y = belongsTo.y;