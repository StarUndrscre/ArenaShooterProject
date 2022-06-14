if invincible == 0 and dead == 0 {
	hits -= 2;
	
	invincible = 1;
	alarm[1] = 120;
	alarm[2] = 1;
	
	if hits >= 1 {
		audio_play_sound(snd_plr_hurt,0,0);
	}
	
	if hits <= 0 {
		audio_play_sound(snd_plr_die,0,0);
	}
	
	obj_stats.plr_score -= 1;

}