with(other)
{	
	var dmg = random(2); // generate random number between 0 and 2
	hp = hp - dmg;
	if (hp < 0) {
		hp = 0;
	}
}

instance_destroy();

/*
	Resources used:
		random(); function
			https://manual.yoyogames.com/GameMaker_Language/GML_Reference/Maths_And_Numbers/Number_Functions/random.htm
*/