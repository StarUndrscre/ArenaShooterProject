// movement code
if (keyboard_check(vk_right) or keyboard_check(ord("D"))) x = x + plr_speed;
if (keyboard_check(vk_left) or keyboard_check(ord("A"))) x = x - plr_speed;

if (keyboard_check(vk_up) or keyboard_check(ord("W"))) y = y - plr_speed;
if (keyboard_check(vk_down) or keyboard_check(ord("S"))) y = y + plr_speed;

image_angle = point_direction(x,y,mouse_x,mouse_y);

// shoot code
if (mouse_check_button(mb_left)) && (cooldown < 1)
{
	instance_create_layer(x,y,"BulletsLayer",obj_bullet)
	if (obj_ui.plr_level == 3) {
		cooldown = 5; 
		audio_play_sound(snd_plr_shoot,0,0);
	} else {
		cooldown = 10; 
		audio_play_sound(snd_plr_shoot,0,0);
	}
	plr_speed = 2;
}

if (mouse_check_button_pressed(mb_right)) && (cooldown < 1)
{	
	if (shotgun_use > 3 and shotgun_cooldown > 0) {
		return false
	} else {
		shotgun_use += 1;
		shotgun_cooldown = 75;
		for (var i = 0; i < 5; i +=1) {
			var spread = [ -20, -10, 0, 10, 20 ];
			var bullet = instance_create_layer(x,y,"BulletsLayer",obj_bullet2);
			with (bullet) {
				direction += spread[i];
			}
		}
	if (obj_ui.plr_level == 3) {
			cooldown = 15;
			audio_play_sound(snd_plr_sgshoot,0,0);
		} else {
			cooldown = 30
			audio_play_sound(snd_plr_sgshoot,0,0);
		}
	}
}

if (mouse_check_button_released(mb_left)) {
	plr_speed = 4;
}

cooldown -= 1;
shotgun_cooldown -= 1;
if (shotgun_cooldown < 0) shotgun_use = 0;

// we're dead! start the death stuff
if (hits <= 0) then {
	obj_deathscrn.fade = 1;
	scrn_cooldown -= 1;
	plr_speed = min(plr_speed-0.005,0);
	obj_enemy.spd = min(obj_enemy.spd-0.005,0);
	if (obj_enemy.spd < 0) obj_enemy.spd = 0;
	image_angle = 0;
	cooldown = infinity; // make player not shoot bullets anymore
}

if (scrn_cooldown < 0) {
	instance_create_layer(0,0,"OverLayer",obj_fade);
	obj_fade.fade = 1;
	obj_deathscrn.fade = -1;
}

if (combo == 5) && (hits < 5) { hits += 1; combo = 0; }

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
			
		Arrays
			https://manual.yoyogames.com/GameMaker_Language/GML_Overview/Arrays.htm
*/