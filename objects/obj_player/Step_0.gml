var plr_speed = 4;

if (keyboard_check(vk_right) or keyboard_check(ord("D"))) x = x + plr_speed;
if (keyboard_check(vk_left) or keyboard_check(ord("A"))) x = x - plr_speed;
if (keyboard_check(vk_up) or keyboard_check(ord("W"))) y = y - plr_speed;
if (keyboard_check(vk_down) or keyboard_check(ord("S"))) y = y + plr_speed;

// if (keyboard_check(vk_shift)) var plr_speed = 16;
// if (!keyboard_check(vk_shift)) var plr_speed = 4;

image_angle = point_direction(x,y,mouse_x,mouse_y)