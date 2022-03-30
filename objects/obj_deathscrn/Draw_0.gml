a = clamp(a + (fade * 0.02),0,0.5);

if (a == 1)
{
	fade = -1;
} else if (a == 0) && (fade == -1)
{
	instance_destroy();
}

draw_set_color(c_red);
draw_set_alpha(a);
draw_rectangle(
	view_xport[0],
	view_yport[0],
	view_xport[0] + view_wport[0],
	view_yport[0] + view_hport[0],
	0
);

draw_set_alpha(1);

/*
	Resources used:
		Fade in and Fade out:
			https://www.youtube.com/watch?v=ySpWZfcwwSQ
*/