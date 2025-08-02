if (global.gamePause){
	if (audio_is_playing(sndTrainBraking) or audio_is_playing(sndDrivingSoundStress)){
		audio_stop_all();
	}
	else if (!audio_is_playing(bgMusic)) audio_play_sound(bgMusic,SOUND.MUSIC,false);
}