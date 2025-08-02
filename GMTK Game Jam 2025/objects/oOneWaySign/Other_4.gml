if (onRail) image_index = 1;
var curr = noone;
if (onRail) curr = instance_create_layer(x,y,"Managers",oTrainDummy);
if (curr != noone) curr.image_angle = image_angle+90+random_range(-8,8)