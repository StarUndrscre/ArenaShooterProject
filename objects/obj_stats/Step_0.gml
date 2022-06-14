can_level_up = plr_kills % 30 // how many kills the player needs to level up
if (can_level_up != 0) lvlcheck = 1;
if (can_level_up == 0 and lvlcheck == 1) {
	plr_level++; 
	lvlcheck = 0; 
	audio_play_sound(snd_plr_levelup, 0, 0)
}

/* Resources used:
	
	How to check if a number is divisible by x
		https://forums.tigsource.com/index.php?topic=44583.0

*/