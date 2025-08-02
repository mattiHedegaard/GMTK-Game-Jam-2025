// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Next_Level(){
global.gamePause = true;
global.pauseText = "CONGRATULATIONS!";
global.level++;


var rWidth = room_width;
var rHeight = room_height;
var margin = 8;

if (!instance_exists(oNextLevelBtn)) instance_create_depth(rWidth/2,rHeight/2+margin*8,-999,oNextLevelBtn);

audio_stop_all();
nextLevel = true;
if (!audio_is_playing(sndWinning)) audio_play_sound(sndWinning,SOUND.GAME,false);
}