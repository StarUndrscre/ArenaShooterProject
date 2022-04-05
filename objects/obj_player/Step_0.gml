// movement code
if (keyboard_check(vk_right) or keyboard_check(ord("D"))) x = x + plr_speed;
if (keyboard_check(vk_left) or keyboard_check(ord("A"))) x = x - plr_speed;

if (keyboard_check(vk_up) or keyboard_check(ord("W"))) y = y - plr_speed;
if (keyboard_check(vk_down) or keyboard_check(ord("S"))) y = y + plr_speed;

image_angle = point_direction(x,y,mouse_x,mouse_y);

// check if shift or control is being held down
if (keyboard_check(vk_shift)) sprint = 1;
if (!keyboard_check(vk_shift)) sprint = 0

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
	if (shotgun_use > 3 and shotgun_cooldown > 0) {
		return false
	} else {
		shotgun_use += 1;
		shotgun_cooldown = 75;
		for (var i = 0; i < 6; i += 1)
			{
				instance_create_layer(x,y,"BulletsLayer",obj_bullet2)
			}
		}
	cooldown = 30;
}

cooldown -= 1;
shotgun_cooldown -= 1;
if (shotgun_cooldown < 0) shotgun_use = 0;

// check if player is moving
if (x > xprevious or x < xprevious or y > yprevious or y < yprevious) {
   plr_moving = 1;
}
else if (x = xprevious and y = yprevious){
   plr_moving = 0;
}

// we're dead! start the death stuff
if (hits <= 0) then {
	obj_deathscrn.fade = 1;
	scrn_cooldown -= 1;
	plr_speed = min(plr_speed-0.025,0);
	obj_enemy.spd = min(obj_enemy.spd-0.025,0);
	if (obj_enemy.spd < 0) obj_enemy.spd = 0;
	image_angle = 0;
	cooldown = infinity; // make player not shoot bullets anymore
}

if (scrn_cooldown < 0) {
	instance_create_layer(0,0,"OverLayer",obj_fade);
	obj_fade.fade = 1;
	obj_deathscrn.fade = -1;
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