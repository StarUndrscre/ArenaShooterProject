can_level_up = plr_score % 200 // how many points the player needs to level up
if (can_level_up != 0) lvlcheck = 1;
if (can_level_up == 0 and lvlcheck == 1) {plr_level++; lvlcheck = 0}

if room == rm_end {
	draw_set_font(fnt_score);
	draw_set_color(c_white); // Text is already white ingame, but setting this just in case
	draw_text(room_height / 2, room_width / 2, "hi")
}

/* Resources used:
	
	How to check if a number is divisible by x
		https://forums.tigsource.com/index.php?topic=44583.0

*/