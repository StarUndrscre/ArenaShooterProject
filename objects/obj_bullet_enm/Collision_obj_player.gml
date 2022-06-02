with(other)
{	
	hits -= 2;
}

audio_play_sound(snd_plr_hurt,0,0);
instance_destroy();

/*
	Resources used:
		random(); function
			https://manual.yoyogames.com/GameMaker_Language/GML_Reference/Maths_And_Numbers/Number_Functions/random.htm
*/