y = y + sin(timer*frequency)*amplitude;
timer++;

if timer > 900 {
	image_alpha -= 0.05;
}

/* Resources used

	How to make an object "float"
		https://www.reddit.com/r/gamemaker/comments/4d971s/help_how_do_i_make_an_object_float/
	
*/