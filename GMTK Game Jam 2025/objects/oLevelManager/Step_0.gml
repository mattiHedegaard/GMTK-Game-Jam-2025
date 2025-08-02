if (global.gamePause){
	var rWidth = room_width;
	var rHeight = room_height;
	var margin = 8;
	
	if (!instance_exists(oRestartLevel)) instance_create_depth(rWidth-margin*8,0+margin*8,-999,oRestartLevel);
	if (!instance_exists(oGoHomeBtn)) instance_create_depth(0+margin*8,0+margin*8,-999,oGoHomeBtn);
}
else{
	if (instance_exists(oRestartLevel)) instance_destroy(oRestartLevel);
	if (instance_exists(oGoHomeBtn)) instance_destroy(oGoHomeBtn);
}

if (global.currPatients <= 0 or global.money < 0 and !global.gameOver) Game_Over();
if (global.money > goal and !nextLevel) Next_Level();

//controle number of wrecked rails
var count = 0;
for (var i = 0; i < array_length(railArray); i++){
	if (railArray[i].wrecked) count++;
}
global.wreckedRailsNumber = count;