// delete self when existing for an amount of time
delete_timer -= 1
if (delete_timer < 0)  {
	image_alpha -= 0.05; // fade out
}

if (image_alpha <= 0) {
	instance_destroy();
}

/*
	Resources used:
		"how can a make a sprite fade in and out?"
			https://steamcommunity.com/app/214850/discussions/0/142261352654806246/
*/