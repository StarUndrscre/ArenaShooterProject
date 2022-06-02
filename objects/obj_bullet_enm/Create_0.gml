// motion
direction = point_direction(x,y,obj_player.x,obj_player.y);
direction = direction + random_range(-8,8);
speed = 6;
image_angle = direction;
delete_timer = random_range(150,160);