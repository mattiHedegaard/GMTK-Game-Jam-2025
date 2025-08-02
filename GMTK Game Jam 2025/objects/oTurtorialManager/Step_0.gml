if (global.turtorialPause){
	inTurtorial = true;
	if (audio_is_playing(sndDrivingSoundStress) or audio_is_playing(sndTrainBraking)){
		audio_stop_sound(sndDrivingSoundStress);
		audio_stop_sound(sndTrainBraking);
		//audio_stop_all();
		//if (!audio_is_playing(global.sooundMng.bgMusic)) audio_play_sound(global.sooundMng.bgMusic,SOUND.MUSIC,true);
	}
}
else inTurtorial = false;
	
