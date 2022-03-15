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

if (mouse_check_button_pressed(mb_right)) && (cooldown < 1)
{	
	for (var i = 0; i < 5; i += 1)
	{
		instance_create_layer(x,y,"BulletsLayer",obj_bullet2)
	}
	cooldown = 30;
}

cooldown = cooldown - 1;

// check if player is moving
if (x > xprevious or x < xprevious or y > yprevious or y < yprevious) {
   plr_moving = 1;
}
else if (x = xprevious and y = yprevious){
   plr_moving = 0;
}

// [debug] Restart keybind
if (keyboard_check(ord("R"))) restart_timer = restart_timer + 0.1;
if (restart_timer >= 2) game_restart();

// [debug] Spawn enemy on cursor when F is pressed
if (keyboard_check_pressed(ord("F")))
{
	instance_create_layer(mouse_x,mouse_y,"EnemyLayer",obj_enemy)
}

// [debug] Disable enemy AI when G is pressed
if (keyboard_check_pressed(ord("G")))
{
	if (instance_exists(obj_enemy) and obj_enemy.ai_enabled == 1) {
		obj_enemy.ai_enabled = 0
		show_debug_message("AI Disabled")
	} else if instance_exists(obj_enemy) and (obj_enemy.ai_enabled == not 1) {
		obj_enemy.ai_enabled = 1
		show_debug_message("AI Enabled")
	}
}

// [debug] Swap playtest rooms
if (room == Room1 and keyboard_check_pressed(vk_space))
{
	room_goto(PlaytestRoom)
	show_debug_message("Teleported to Playtest Room!")
} else if (room == PlaytestRoom and keyboard_check_pressed(vk_space)) {
	room_goto(Room1)
	show_debug_message("Teleported to Enemy Room!")
}

/*
	Resources used:
		Check if something is moving:
			https://forum.yoyogames.com/index.php?threads/solved-check-if-something-is-moving.6817/
		
		Printing Values to Screen:
			https://steamcommunity.com/app/214850/discussions/0/1728701877467347782/
			
		Rooms
			https://manual.yoyogames.com/GameMaker_Language/GML_Reference/Asset_Management/Rooms/Rooms.htm
			
		for Loops
			https://manual.yoyogames.com/GameMaker_Language/GML_Overview/Language_Features/for.htm			
*/