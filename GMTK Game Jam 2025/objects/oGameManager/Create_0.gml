randomise();
managerLayer = "Managers";

//Managers
global.playerMng	= instance_create_layer(0,0,managerLayer,oPlayerManager);
global.passengerMng = instance_create_layer(0,0,managerLayer,oPassengerManager);
global.levelMng		= instance_create_layer(0,0,managerLayer,oLevelManager);
global.economyMng	= instance_create_layer(0,0,managerLayer,oEconomyManager);
//global.gridMng		= instance_create_layer(0,0,managerLayer,oGridMmanager);

global.gamePause = false;