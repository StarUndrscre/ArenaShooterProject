if(keyboard_check_pressed(vk_anykey)) // only do the check when a key is pressed
{
	if(ds_list_find_value(godSequence, godIndex) == keyboard_lastkey) //check if the key matches the last key pressed
	{
		godIndex++; //if so move to the next index
	}
	else
	{
		godIndex = 0; //otherwise reset
	}

         //if we have done the entire code
	if(ds_list_size(godSequence) == godIndex)
	{
		godIndex = 0;
		if iddqd == false {
			iddqd = true;
			with(obj_player) {
				invincible = 1;
				alarm[1] = infinity;
				alarm[2] = infinity;
			} 
		} else if iddqd == true {
			iddqd = false;
			with(obj_player) {
				invincible = 0;
				alarm[1] = 120;
				alarm[2] = 1;
			}
		}
	}
}

show_debug_message(string(godIndex) + " " + string(ds_list_size(godSequence)))
show_debug_message(string(keyboard_lastkey) + " " + string(ord("i")))