with(obj_ui) if obj_cheat.cheats == false {plr_score = plr_score + 5;}
with(obj_player) combo++;
repeat(choose(5,8)) instance_create_layer(x,y,"SplatterLayer",obj_fragment);
with (instance_create_layer(x,y,"SplatterLayer",obj_splatter)) image_angle = other.direction;

var rng1 = random(30)
if rng1 <= 15 {rng1 = 15}

var rng2 = random(9)
if rng2 <= 3 {rng2 = 3}

screenshake(rng1, rng2, 0.3);



audio_play_sound(snd_enm_kill,0,0);

/*
	Resources used:
		How do you tell if a number has a decimal?
			https://steamcommunity.com/app/214850/discussions/0/1694918539666894759/
*/