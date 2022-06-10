draw_set_color(c_white);
draw_set_alpha(1);
draw_set_halign(fa_center);
if room == rm_end {
	draw_text(cw / 2, ch / 2.33 , "Score: " + string(plr_score));
	draw_text(cw / 2, ch / 2 , "Level: " + string(plr_level));
	draw_text(cw / 2, ch / 1.5, "You killed " + string(plr_score/5) + " enemies!");
}