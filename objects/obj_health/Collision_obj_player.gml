if image_alpha == 1 { // don't collect when we're in the middle of disappearing
	if obj_player.hits < 10 {
		obj_player.hits++;
		instance_destroy();
		audio_play_sound(snd_plr_heal,0,0);
	}
}