if (place_meeting(x,y,oTrain)){
	occupied = true;
	occupiedBy = instance_place(x,y,oTrain);
}
else {
	occupied = false;
	occupiedBy = noone;
}