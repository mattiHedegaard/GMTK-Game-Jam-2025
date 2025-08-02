global.goal = goal;
global.startPatients = startPatients;
global.money = startMoney;

global.currPatients = global.startPatients;
global.replayMng.levelsCompleted[level-1] = true;


//Turtorials
if (level == 1 and !global.turtorialMng.seenFirstLevel){
	global.turtorialMng.turtorial = TURTORIAL.FIRST_LEVEL;
	global.turtorialPause = true;
}
if (level == 2 and !global.turtorialMng.seenAroundTrains){
	global.turtorialMng.turtorial = TURTORIAL.AROUND_TRAIN;
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