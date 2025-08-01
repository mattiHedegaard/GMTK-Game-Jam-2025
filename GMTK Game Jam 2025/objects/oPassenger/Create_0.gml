patients = (random_range(-10,70)+40)*FPS;

firstClass = false;
firstClassChance = 10;
if (random_range(0,100) <= firstClassChance){
	firstClass = true;
	if (!global.turtorialMng.seenFirstClass){
		global.turtorialMng.turtorial = TURTORIAL.FIRST_CLASS;
		global.turtorialPause = true;
	}
}
firstClassMp = 1;
if (firstClass) firstClassMp = 2;

ticketValue = random_range(20,40)*firstClassMp;

//connections
belongsTo = noone;