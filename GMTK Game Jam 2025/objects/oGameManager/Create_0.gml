randomise();
managerLayer = "Managers";
global.level = 2;
global.gameWon = false;


//Managers
if (!instance_exists(oPlayerManager))	global.playerMng		= instance_create_layer(0,0,managerLayer,oPlayerManager);
if (!instance_exists(oPassengerManager))global.passengerMng		= instance_create_layer(0,0,managerLayer,oPassengerManager);
if (!instance_exists(oEconomyManager))	global.economyMng		= instance_create_layer(0,0,managerLayer,oEconomyManager);
//if (!instance_exists(oGridManager))		global.gridMng			= instance_create_layer(0,0,managerLayer,oGridManager);
if (!instance_exists(oSoundManager))	global.sooundMng		= instance_create_layer(0,0,managerLayer,oSoundManager);
if (!instance_exists(oReplayManager))	global.replayMng		= instance_create_layer(0,0,managerLayer,oReplayManager);

global.showTurtorials = true;
if (!instance_exists(oTurtorialManager))global.turtorialMng	= instance_create_layer(0,0,managerLayer,oTurtorialManager);

global.gamePause = false;
global.turtorialPause = false;
global.gameOver = false;

global.pauseText = "";

global.roomArray = [
	rMenu,
	rLevel1,
	rLevel2,
	rLevel3,
	rLevel4,
	rLevel5,
	rLevel6,
	rLevel7,
	rLevel8,
]
global.totalLevels = array_length(global.roomArray)-1;

