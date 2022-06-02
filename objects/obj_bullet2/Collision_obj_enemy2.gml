with(other)
{	
	if (hp > 0) {
		var dmg = random(2); // generate random number between 0 and 2
		if (dmg < 1) {
			dmg += 1; // weird hack
		}
		hp = hp - dmg;
	} else if (hp <= 0) {
		hp = 0;
	}
}

audio_play_sound(snd_enm_hit,0,0);
instance_destroy();

/*
	Resources used:
		random(); function
			https://manual.yoyogames.com/GameMaker_Language/GML_Reference/Maths_And_Numbers/Number_Functions/random.htm
*/