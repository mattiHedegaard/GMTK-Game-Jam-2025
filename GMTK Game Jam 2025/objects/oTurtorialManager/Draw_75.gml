if (inTurtorial){
	draw_set_alpha(0.4);
	draw_set_color(c_black);

	var guiH = display_get_gui_height();
	var guiW = display_get_gui_width();

	draw_rectangle(0,0,guiW,guiH,false);
	
	
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	
	switch (turtorial){
		case -1:
		break;
	
		case TURTORIAL.FIRST_LEVEL:
			seenFirstLevel = true;
			Show_Turtorial(stFirstLevel,TURTORIAL.SOME_STATIONS);
		break;
		
		case TURTORIAL.FIRST_CLASS:
			seenFirstClass = true;
			Show_Turtorial(stFirstclass,noone);
		break;
	
		case TURTORIAL.IMPATIENT:
			seenImpatient = true;
			Show_Turtorial(stImpatient,TURTORIAL.WINNING_LOSING);
		break;
	
		case TURTORIAL.OBSTACLE:
			seenObstacle = true;
			Show_Turtorial(stObstacle,noone);
		break;
	
		case TURTORIAL.RAIL_BROKEN:
			seenBroken = true;
			Show_Turtorial(stBroken,noone);
		break;
		
		case TURTORIAL.SOME_STATIONS:
			seenSomeStations = true;
			Show_Turtorial(stSomeStations,TURTORIAL.IMPATIENT);
		break;
		
		case TURTORIAL.WINNING_LOSING:
			seenWinningLosing = true;
			Show_Turtorial(stWinningLoosing,noone);
		break;
		
		case TURTORIAL.AROUND_TRAIN:
			seenAroundTrains = true;
			Show_Turtorial(stAroundTrains,noone);
		break;
	}
}