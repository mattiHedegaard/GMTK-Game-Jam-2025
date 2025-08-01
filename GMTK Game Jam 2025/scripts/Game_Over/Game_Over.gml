// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Game_Over(){
global.gamePause = true;
global.pauseText = "Game over";
global.gameOver = true;
audio_stop_all();
if (!audio_is_playing(sndGameOverFunny)) audio_play_sound(sndGameOverFunny,SOUND.GAME,false);
}