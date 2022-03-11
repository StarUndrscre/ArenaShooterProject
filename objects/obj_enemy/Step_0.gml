// check if we are in distance of player
if (point_distance(x, y, obj_player.x, obj_player.y) < r and ai_enabled == 1) // r is the area radius
{
	start_moving = 1;
} else
{
	start_moving = 0;
}

if (instance_exists(obj_player) and start_moving == 1)
{
	move_towards_point(obj_player.x, obj_player.y, spd)
} else if (start_moving == 0) {
	move_towards_point(x, y, 0)
}

if (hp <= 0) {
	with(obj_score) plr_score = plr_score + 5;
	instance_destroy();
}

image_angle = direction;

/* 

	Resources used:
		How to tell if an object is within a distance of another?
			https://stackoverflow.com/questions/37373132/how-to-tell-if-an-object-is-within-a-distance-of-another

*/