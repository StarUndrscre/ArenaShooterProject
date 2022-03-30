with(other)
{	
	if (hp > 0) {
		var dmg = random(2); // generate random number between 0 and 2
		hp = hp - dmg;
	} else if (hp <= 0) {
		hp = 0;
	}
}

if (obj_enemy.hp > 0) {
	instance_destroy();
} else if (obj_enemy.hp <= 0) {} // this is allowed?????
/*
	Resources used:
		random(); function
			https://manual.yoyogames.com/GameMaker_Language/GML_Reference/Maths_And_Numbers/Number_Functions/random.htm
*/