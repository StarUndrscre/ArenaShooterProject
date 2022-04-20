//slowly decay any applied shake
shake *= 0.9;

//screenshake
var cam = view_camera[0] 
camera_set_view_pos(cam,camera_get_view_x(cam)+random_range(-shake,shake),camera_get_view_y(cam)+random_range(-shake,shake)) 

// Screenshake code taken from the finished Arena Shooter game from Yoyo Games
//		https://gamemaker.io/en/blog/coffee-break-tutorials-decal-effects-gml