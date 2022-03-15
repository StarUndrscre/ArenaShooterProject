// Shotgun bullet code

// motion
direction = point_direction(x,y,mouse_x,mouse_y);
direction = direction + random_range(-20,20);
speed = 8;
image_angle = direction;

// Timer
delete_timer = 60;