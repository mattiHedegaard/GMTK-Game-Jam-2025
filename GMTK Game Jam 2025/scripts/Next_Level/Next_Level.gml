// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Next_Level(){
global.gamePause = true;
global.pauseText = "CONGRATULATIONS!";

var rWidth = room_width;
var rHeight = room_height;
var margin = 8;
	
if (!instance_exists(oNextLevelBtn)) instance_create_depth(rWidth/2,rHeight/2+margin*8,-999,oNextLevelBtn);
}