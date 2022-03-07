if (instance_exists(obj_player))
{
	move_towards_point(obj_player.x, obj_player.y, spd);
}

if (hp <= 0) instance_destroy();

image_angle = direction;