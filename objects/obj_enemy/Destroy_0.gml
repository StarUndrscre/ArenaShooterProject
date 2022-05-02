with(obj_ui) if obj_cheat.cheats == false {plr_score = plr_score + 5;}
with(obj_player) combo++;
repeat(choose(5,8)) instance_create_layer(x,y,"SplatterLayer",obj_fragment);
with (instance_create_layer(x,y,"SplatterLayer",obj_splatter)) image_angle = other.direction;
screenshake(20, 3, 0.3);
audio_play_sound(snd_enm_kill,0,0);

/*
	Resources used:
		How do you tell if a number has a decimal?
			https://steamcommunity.com/app/214850/discussions/0/1694918539666894759/
*/