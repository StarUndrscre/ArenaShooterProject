if (hp > 0) {
	flash = 1;
	repeat(2)
	with (instance_create_layer(x,y,"SplatterLayer",obj_fragment2)) {
		speed = random_range(2, 4);
		image_index = floor(random(4));
		image_xscale = 0.25 + random(0.5);
		image_yscale = image_xscale;
	}
}

if (hp <= 0) obj_stats.plr_score += 3;

if (can_shoot == 1) {
	audio_play_sound(snd_enm_shoot,0,0);
	instance_create_layer(x,y,"BulletsLayer",obj_bullet_enm);
	start_moving = 1;
	can_shoot = 0;
	timer = 0;
}