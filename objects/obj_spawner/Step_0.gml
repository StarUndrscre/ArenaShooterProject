image_xscale = min(image_xscale+0.025,1);
image_yscale = image_xscale;

if type >= 2 {
	type = 2
}

if type == 1 {
	draw_sprite(spr_enemy,-1,x,y);
} else if type == 2 {
	draw_sprite(spr_enemy2,-1,x,y);
}

if (image_xscale == 1) {
	if type == 1 {
		instance_change(obj_enemy,1);
	} else if type == 2 {
		instance_change(obj_enemy2,1);
	}
}
image_angle = point_direction(x, y, obj_player.x, obj_player.y);