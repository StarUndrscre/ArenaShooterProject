// motion
direction = point_direction(x,y,mouse_x,mouse_y);
//direction = direction + random_range(-4,4);
speed = 16;
image_angle = direction;

// randomize bullet position more if player is moving/sprinting
if (obj_player.sprint == 1 and obj_player.plr_moving == 1) direction = direction + random_range(-12,12);
if (obj_player.sprint == 0 and obj_player.plr_moving == 1) direction = direction + random_range(-8,8);
if (obj_player.breathe == 0 and obj_player.breathe == 0 and obj_player.plr_moving == 0) direction = direction + random_range(-4,4);
if (obj_player.breathe == 1 and obj_player.plr_moving == 1) direction = direction + random_range(-2,2);
if (obj_player.breathe == 1 and obj_player.plr_moving == 0) direction = direction + random_range(0,0);

/*
	Resources used:
		Addressing Variables In Other Instances
			https://manual.yoyogames.com/GameMaker_Language/GML_Overview/Addressing_Variables_In_Other_Instances.htm
*/