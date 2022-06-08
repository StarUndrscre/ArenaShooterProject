a = clamp(a + (fade * 0.05),0,1);

if (a == 1 and room == rm_title)
{
	room_goto(rm_game);
	fade = -1;
} else if (a == 1 and room == rm_game)
{
	surface_free(obj_decal_control.decal_surf);
	room_goto(rm_end);
	fade = -1;
	a = 0;
} else if (a == 1 and room == rm_end)
{
	fade = -1;
} else if (a == 0) && (fade == -1)
{
	instance_destroy();
}

draw_set_color(c_black);
draw_set_alpha(a);
draw_rectangle(
	view_xport[0],
	view_yport[0],
	view_xport[0] + room_width,
	view_yport[0] + room_height,
	0
);

draw_set_alpha(1);

/*
	Resources used:
		Fade in and Fade out:
			https://www.youtube.com/watch?v=ySpWZfcwwSQ
*/