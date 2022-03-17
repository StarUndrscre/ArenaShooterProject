// motion
direction = point_direction(x,y,mouse_x,mouse_y);
//direction = direction + random_range(-4,4);
speed = 12;
image_angle = direction;
delete_timer = random(70);
if (delete_timer < 60) {
	delete_timer = 60;
}

// randomize bullet position more if player is moving/sprinting

// set up variables first
sprint = obj_player.sprint;
plr_moving = obj_player.plr_moving;
breathe = obj_player.breathe;

if (sprint == 1 and plr_moving == 1) direction = direction + random_range(-12,12);
if (sprint == 0 and plr_moving == 1) direction = direction + random_range(-8,8);
if (breathe == 0 and breathe == 0 and plr_moving == 0) direction = direction + random_range(-4,4);
if (breathe == 1 and plr_moving == 1) direction = direction + random_range(-2,2);
if (breathe == 1 and plr_moving == 0) direction = direction;

/*
	Resources used:
		Addressing Variables In Other Instances
			https://manual.yoyogames.com/GameMaker_Language/GML_Overview/Addressing_Variables_In_Other_Instances.htm
*/