var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);
// var ch = camera_get_view_height(view_camera[0]);

draw_set_font(fnt_score);
draw_set_color(c_white); // Text is already white ingame, but setting this just in case
draw_text(cx + cw / 2, cy + 25, string(plr_score));