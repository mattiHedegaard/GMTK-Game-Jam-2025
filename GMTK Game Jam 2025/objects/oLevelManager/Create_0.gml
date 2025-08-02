global.goal = goal;
global.startPatients = startPatients;
global.money = startMoney;

global.currPatients = global.startPatients;


//Turtorials
if (level == 1 and !global.turtorialMng.seenFirstLevel){
	global.turtorialMng.turtorial = TURTORIAL.FIRST_LEVEL;
	global.turtorialPause = true;
}

//controle number of wrecked rails
railArray = [];
global.wreckedRailsNumber = 0;

for (var i = 0; i < instance_number(oRailroad); i++){
	railArray[i] = instance_find(oRailroad,i);
}

nextLevel = false;

global.gameOver = false;