if (hp > 0) {
	flash = 1;
	repeat(2)
	with (instance_create_layer(x,y,"SplatterLayer",obj_fragment)) {
		speed = random_range(4, 6);
		image_index = floor(random(4));
		image_xscale = 0.5 + random(0.5);
		image_yscale = image_xscale;
	}
}

if (hp <= 0) obj_stats.plr_score += 2;