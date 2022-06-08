can_level_up = plr_score % 200 // how many points the player needs to level up
if (can_level_up != 0) lvlcheck = 1;
if (can_level_up == 0 and lvlcheck == 1) {plr_level++; lvlcheck = 0}

draw_set_alpha(1);
draw_set_halign(fa_center);

/* Resources used:
	
	How to check if a number is divisible by x
		https://forums.tigsource.com/index.php?topic=44583.0

*/