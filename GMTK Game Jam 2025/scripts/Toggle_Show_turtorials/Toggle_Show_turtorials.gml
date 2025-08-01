// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Toggle_Show_turtorials(){
with (global.turtorialMng){
	seenFirstClass = !global.showTurtorials;
	seenSomeStations = !global.showTurtorials;
	seenBroken = !global.showTurtorials;
	seenObstacle = !global.showTurtorials;
	seenImpatient = !global.showTurtorials;
	seenFirstLevel = !global.showTurtorials;
}
}