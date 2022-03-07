// movement code
if (keyboard_check(vk_right) or keyboard_check(ord("D"))) x = x + plr_speed;
if (keyboard_check(vk_left) or keyboard_check(ord("A"))) x = x - plr_speed;

if (keyboard_check(vk_up) or keyboard_check(ord("W"))) y = y - plr_speed;
if (keyboard_check(vk_down) or keyboard_check(ord("S"))) y = y + plr_speed;

image_angle = point_direction(x,y,mouse_x,mouse_y);

// check if shift or control is being held down
if (keyboard_check(vk_shift)) sprint = 1;
if (!keyboard_check(vk_shift)) sprint = 0;

if (keyboard_check(vk_control)) breathe = 1;
if (!keyboard_check(vk_control)) breathe = 0;

// sprint and "breathe" code
if (breathe == 0 and sprint == 1) plr_speed = 6;
if (breathe == 1 and sprint == 0) plr_speed = 1.5;

if (breathe == 0 and sprint == 0) plr_speed = 3;
if (breathe == 1 and sprint == 1) plr_speed = 3;

// shoot code
if (mouse_check_button(mb_left)) && (cooldown < 1)
{
	instance_create_layer(x,y,"BulletsLayer",obj_bullet)
	cooldown = 10;
}

cooldown = cooldown - 1;

// check if player is moving
if (x > xprevious or x < xprevious or y > yprevious or y < yprevious) {
   plr_moving = 1;
   //show_debug_message("Moving")
}
else if (x = xprevious and y = yprevious){
   plr_moving = 0;
   // show_debug_message("Not Moving")
}

// [debug] check if player is "breathing" or sprinting
/* if (breathe == 1) {
   show_debug_message("Breathing")
}
else if (breathe == 0) {
   show_debug_message("Not Breathing")
}

if (sprint == 1) {
   show_debug_message("Sprinting")
}
else if (sprint == 0) {
   show_debug_message("Not Sprinting")
} */

// [debug] Restart keybind
if (keyboard_check(ord("R"))) restart_timer = restart_timer + 0.1;
if (restart_timer >= 2) game_restart();

/*
	Resources used:
		Check if something is moving:
			https://forum.yoyogames.com/index.php?threads/solved-check-if-something-is-moving.6817/
		
		Printing Values to Screen:
			https://steamcommunity.com/app/214850/discussions/0/1728701877467347782/
*/