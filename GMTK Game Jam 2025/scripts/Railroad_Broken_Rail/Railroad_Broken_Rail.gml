// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Railroad_Broken_Rail(){
if (!global.turtorialMng.seenBroken){
	global.turtorialMng.turtorial = TURTORIAL.RAIL_BROKEN;
	global.turtorialPause = true;
}

if (!broken){
	repairClicks = round(random_range(1,4));
	repaired = false;
	fixCost = random_range(10,20);
	costPerClick = (fixCost/repairClicks);
	broken = true;
	wrecked = true;
	occupied = true;
	occupiedBy = self;
}

if (clickDelay > 0) clickDelay--;

if (mouse_check_button_pressed(mb_left) and clickDelay <= 0){
	if (mouse_x >= bbox_left and
	mouse_x <= bbox_right and
	mouse_y >= bbox_top and
	mouse_y <= bbox_bottom){
		repairClicks--;
		Change_Money(false,costPerClick+random_range(-2,2),[mouse_x,mouse_y],false);
		clickDelay = clickDelayMax;
		if (!audio_is_playing(sndRepair)) audio_play_sound(sndRepair,SOUND.EFFECTS,false);
	}
}

if (repairClicks == 0){
	broken = false;
	occupied = false;
	occupiedBy = noone;
	wrecked = false;
	wreckTimer = wreckTimerMax;
}

}