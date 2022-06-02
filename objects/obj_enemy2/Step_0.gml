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

if timer >= 100 && can_shoot == 0 {
	roll = floor(random_range(0,3));
	if roll >= 2 {
		start_moving = 0;
		can_shoot = 1;
	}
	
	timer = 0;
}

if timer >= 45 && can_shoot == 1 {
	instance_create_layer(x,y,"BulletsLayer",obj_bullet_enm);
	start_moving = 1;
	can_shoot = 0;
	timer = 0;
}

timer++;

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