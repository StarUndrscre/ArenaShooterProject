if (instance_exists(obj_player))
{
	move_towards_point(obj_player.x, obj_player.y, spd);
}

if (hp <= 0) {
	with(obj_score) plr_score = plr_score + 5;
	instance_destroy();
}

image_angle = direction;