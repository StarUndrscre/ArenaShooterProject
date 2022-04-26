var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);
// var ch = camera_get_view_height(view_camera[0]);

draw_set_font(fnt_score);
draw_set_color(c_white); // Text is already white ingame, but setting this just in case
if plr_level == 5 { return true } else
{
	draw_text(cx + cw / 2, cy + 25, "Score: " + string(plr_score));
	if obj_player.hits >= 1 {
		draw_text((cx + cw / 2) - 400, cy + 25, string(obj_player.hits) + " hp");
	}
	draw_text((cx + cw / 2) + 400, cy + 25, "Level " + string(plr_level));
}