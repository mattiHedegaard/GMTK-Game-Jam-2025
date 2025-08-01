randomise();
managerLayer = "Managers";

//Managers
if (!instance_exists(oPlayerManager))	global.playerMng		= instance_create_layer(0,0,managerLayer,oPlayerManager);
if (!instance_exists(oPassengerManager))global.passengerMng		= instance_create_layer(0,0,managerLayer,oPassengerManager);
if (!instance_exists(oEconomyManager))	global.economyMng		= instance_create_layer(0,0,managerLayer,oEconomyManager);
if (!instance_exists(oGridManager))		global.gridMng			= instance_create_layer(0,0,managerLayer,oGridManager);
if (!instance_exists(oSoundManager))	global.sooundMng		= instance_create_layer(0,0,managerLayer,oSoundManager);

global.showTurtorials = false;
if (!instance_exists(oTurtorialManager))global.turtorialMng	= instance_create_layer(0,0,managerLayer,oTurtorialManager);

global.gamePause = false;
global.turtorialPause = false;
global.gameOver = false;

global.pauseText = "Game Paused";

