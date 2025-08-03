timer = random_range(0.2,0.5)*FPS;
var alpha = random_range(0.3,0.7);
spd = random_range(2,4)/FPS;
scalingSpd = random_range(0.2,1.5)/FPS;

//cos
cosHoverTimer = 0 + random_range(1,360);
cosDistance = 1/FPS;
cosSpd = 1/FPS;

var colors = [
	#B5B5B5,
	#999999,
	#7F7F7F,
	#696969,
]
var color = colors[round(random_range(0,array_length(colors)-1))];
image_blend = color;
image_alpha = alpha;

image_xscale = random_range(0.25,0.5);
image_yscale = random_range(0.25,0.5);