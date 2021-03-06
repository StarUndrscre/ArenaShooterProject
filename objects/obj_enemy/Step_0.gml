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
	move_towards_point(obj_player.x, obj_player.y, spd);
} else if (start_moving == 0) {
	move_towards_point(obj_player.x, obj_player.y, 0)
}

if (hp <= 0) {
	instance_destroy();
}

image_angle = direction;

if (flash > 0) flash -= 0.05; else flash = 0;

/* 

	Resources used:
		Making the enemy flash when hit
			https://www.youtube.com/watch?v=g7uhXXUgeAM

		Help with either removing hitbox or checking variables on other object in place_meeting
			https://www.reddit.com/r/gamemaker/comments/3rk5ap/help_with_either_removing_hitbox_or_checking/
		
		Coffee-Break finished Arena Shooter project
			https://www.yoyogames.com/en/blog/coffee-break-tutorials-decal-effects-gml
*/