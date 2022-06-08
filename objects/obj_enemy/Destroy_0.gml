with(obj_stats) if obj_cheat.cheats == false {plr_score = plr_score + 5;}
repeat(floor(choose(5,8))) instance_create_layer(x,y,"SplatterLayer",obj_fragment);
with (instance_create_layer(x,y,"SplatterLayer",obj_splatter)) image_angle = other.direction;

var ableToSpawn = random_range(0,2);
if ableToSpawn >= 1 {
	instance_create_layer(x,y,"PlayerLayer",obj_health);
}

var rng1 = random_range(15,30);
var rng2 = random_range(3,9);

screenshake(rng1, rng2, 0.3);



audio_play_sound(snd_enm_kill,0,0);

/*
	Resources used:
		How do you tell if a number has a decimal?
			https://steamcommunity.com/app/214850/discussions/0/1694918539666894759/
*/