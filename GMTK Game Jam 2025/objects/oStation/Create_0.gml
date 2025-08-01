passengerTimerMax = (random_range(-5,5)+10)*FPS;
passengerTimer = random_range(1,10)*FPS;
currPassengers = 0;

passengerArray =[];
hasFirstClass = false;

image_blend = color;
if (onlyDropoff) image_index = 1;
if (onlyPickup) image_index = 2;

//shader
upixelH = shader_get_uniform(shOutline,"pixelH");
upixelW = shader_get_uniform(shOutline,"pixelW");
texelW = texture_get_texel_width(sprite_get_texture(sprite_index,0));
texelH = texture_get_texel_height(sprite_get_texture(sprite_index,0));
outlineColor = shader_get_uniform(shOutline,"outlineColor");