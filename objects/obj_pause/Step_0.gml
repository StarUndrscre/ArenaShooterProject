if room == rm_game
{
if (keyboard_check_pressed(vk_escape))
    {
    paused = !paused;
    if paused == false
        {
			instance_activate_all();
			surface_free(paused_surf);
			paused_surf = -1;
        }
    }
if paused == true
    {
    alarm[0]++;
    alarm[1]++;
	alarm[2]++;
    }
}

cw = camera_get_view_width(view_camera[0]);
ch = camera_get_view_height(view_camera[0]);
cx = camera_get_view_x(view_camera[0]);
cy = camera_get_view_y(view_camera[0]);