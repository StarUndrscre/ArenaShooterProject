// motion
direction = point_direction(x,y,mouse_x,mouse_y);
direction = direction + random_range(-8,8);
speed = 12;
image_angle = direction;
delete_timer = random(70);
if (delete_timer < 60) {
	delete_timer = 60;
}