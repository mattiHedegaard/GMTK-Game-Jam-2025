global.level = level;
global.goal = goal;
global.startPatients = startPatients;
global.money = startMoney;

global.currPatients = global.startPatients;


//Turtorials
if (level == 1){
	global.turtorialMng.turtorial = TURTORIAL.FIRST_LEVEL;
	global.turtorialPause = true;
}

if (!global.turtorialMng.seenSomeStations){
	global.turtorialMng.turtorial = TURTORIAL.SOME_STATIONS;
	global.turtorialPause = true;
}

//controle number of wrecked rails
railArray = [];
global.wreckedRailsNumber = 0;

for (var i = 0; i < instance_number(oRailroad); i++){
	railArray[i] = instance_find(oRailroad,i);
}

nextLevel = false;