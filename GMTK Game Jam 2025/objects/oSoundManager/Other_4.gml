show_debug_message("here")
audio_stop_all();
if (room != rMenu){
	bgMusic = sndBGmusic;
}
else{
	bgMusic = sndMenuMusic2;
}

if (!audio_is_playing(bgMusic)) audio_play_sound(bgMusic,SOUND.MUSIC,true,undefined,1.5);