with(other)
{	
	var dmg = random(2); // generate random number between 0 and 2
	if (dmg < 1) {
		dmg += 1;
	}
	hp = hp - dmg;
	if (hp < 0) {
		hp = 0;
	}
}

/*
	Resources used:
		random(); function
			https://manual.yoyogames.com/GameMaker_Language/GML_Reference/Maths_And_Numbers/Number_Functions/random.htm
*/