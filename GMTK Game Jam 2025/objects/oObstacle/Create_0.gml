image_angle = random_range(0,359);
image_index = choose(0,1);

dragAmountMax = 3;
dragAount = dragAmountMax;

offsetX = 0;
offsetY = 0;

hitbox = instance_create_depth(x,y,-999,oObstacleHitBox);