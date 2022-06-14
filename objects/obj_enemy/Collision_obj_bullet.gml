if (hp > 0) {
	flash = 1;
	repeat(2)
	with (instance_create_layer(x,y,"SplatterLayer",obj_fragment)) {
		speed = random_range(2, 4);
		image_index = floor(random(4));
		image_xscale = 0.25 + random(0.5);
		image_yscale = image_xscale;
	}
}

if (hp <= 0) obj_stats.plr_score += 3;