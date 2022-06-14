shake *= 0.9;

var cam = view_camera[0]
camera_set_view_pos(
	cam, 
	camera_get_view_x(cam) + random_range(-shake, shake), 
	camera_get_view_y(cam) + random_range(-shake, shake)
);

// code taken from GameMaker's Decal Effects project
// https://gamemaker.io/en/blog/coffee-break-tutorials-decal-effects-gml