image_xscale = min(image_xscale+0.025,1);
image_yscale = image_xscale;

if (image_xscale == 1) instance_change(obj_enemy,1);
image_angle = point_direction(x, y, obj_player.x, obj_player.y);