// movement code
if (keyboard_check(vk_right) or keyboard_check(ord("D"))) x = x + plr_speed;
if (keyboard_check(vk_left) or keyboard_check(ord("A"))) x = x - plr_speed;

if (keyboard_check(vk_up) or keyboard_check(ord("W"))) y = y - plr_speed;
if (keyboard_check(vk_down) or keyboard_check(ord("S"))) y = y + plr_speed;

image_angle = point_direction(x,y,mouse_x,mouse_y);

if (keyboard_check(vk_shift)) plr_speed = 8;
if (!keyboard_check(vk_shift)) plr_speed = 4;
// sprinting code. i'll get back to this later

// shoot code
if (mouse_check_button(mb_left)) && (cooldown < 1)
{
	instance_create_layer(x,y,"BulletsLayer",obj_bullet)
	cooldown = 10;
}

if (mouse_check_button(mb_left)) plr_speed = plr_speed / 2;
if (!mouse_check_button(mb_left)) plr_speed = plr_speed * 2;

cooldown = cooldown - 1;