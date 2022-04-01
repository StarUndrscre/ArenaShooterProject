if image_alpha == 1 {
	image_alpha = 0.3
} else {
	image_alpha	= 1
}

if invincible == 1 and hits > 0 {
	alarm[2] = 8;
} else {
	image_alpha = 1
}