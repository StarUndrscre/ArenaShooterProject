if invincible == 0 {
	hits -= 2;
	
	invincible = 1;
	alarm[1] = 120;
	alarm[2] = 1;
	
	if hits >= 1 {
		audio_play_sound(snd_plr_hurt,0,0);
	}
	
	if hits == 0 {
		audio_play_sound(snd_plr_die,0,0);
	}

}

// With help from "Gamemaker Game Programming Course": https://www.youtube.com/watch?v=iLH7jaK2Oe4