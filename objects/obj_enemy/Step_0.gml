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
	ai_enabled = 0;
	image_alpha -= 0.1;
}

if (image_alpha <= 0) {
	instance_destroy();
	with(obj_score) plr_score = plr_score + 5;
}

image_angle = direction;

if (flash > 0) flash -= 0.05; else flash = 0;

/* 

	Resources used:
		How to tell if an object is within a distance of another?
			https://stackoverflow.com/questions/37373132/how-to-tell-if-an-object-is-within-a-distance-of-another

		Making the enemy flash when hit
			https://www.youtube.com/watch?v=g7uhXXUgeAM

		Help with either removing hitbox or checking variables on other object in place_meeting
			https://www.reddit.com/r/gamemaker/comments/3rk5ap/help_with_either_removing_hitbox_or_checking/
		
		Coffee-Break finished Arena Shooter project
			https://www.yoyogames.com/en/blog/coffee-break-tutorials-decal-effects-gml
*/