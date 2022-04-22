with(obj_ui) plr_score = plr_score + 5;
repeat(choose(5,8)) instance_create_layer(x,y,"SplatterLayer",obj_fragment);
with (instance_create_layer(x,y,"SplatterLayer",obj_splatter)) image_angle = other.direction;
screenshake(20, 3, 0.3);