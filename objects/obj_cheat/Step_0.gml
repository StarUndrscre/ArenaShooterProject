lastKey = keyboard_lastkey + 32

if(keyboard_check_pressed(vk_anykey)) // only do the check when a key is pressed
{
	/* keyboard_lastkey prints the ascii code subtracted by 32??? 
	   i don't know why it does that, and i added 32 back so i can use the ord() function
	   ~starundrscre */
	if(ds_list_find_value(godSequence, godIndex) == lastKey) //check if the key matches the last key pressed
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
		cheats = true;
		godIndex = 0;
		if iddqd == false {
			audio_play_sound(snd_plr_levelup,0,0);
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
	
	if(ds_list_find_value(choppersSeq, choppersIndex) == lastKey)
	{
		choppersIndex++;
	}
	else
	{
		choppersIndex = 0;
	}

	if(ds_list_size(choppersSeq) == choppersIndex)
	{
		cheats = true;
		choppersIndex = 0;
		instance_destroy(obj_enemy);
	}
	
	if(ds_list_find_value(beholdSeq, beholdIndex) == lastKey)
	{
		beholdIndex++;
	}
	else
	{
		beholdIndex = 0;
	}

	if(ds_list_size(beholdSeq) == beholdIndex)
	{
		cheats = true;
		beholdIndex = 0;
		if idbehold == false {
			idbehold = true;
			audio_play_sound(snd_pause,0,0);
			instance_deactivate_object(obj_director);
			instance_deactivate_object(obj_spawner);
			with (obj_enemy) ai_enabled = 0;
		} else if idbehold == true {
			idbehold = false;
			instance_activate_object(obj_director);
			instance_activate_object(obj_spawner);
			with (obj_enemy) ai_enabled = 1;
		}
	}
	
	if(ds_list_find_value(coolSeq, coolIndex) == lastKey)
	{
		coolIndex++;
	}
	else
	{
		coolIndex = 0;
	}

	if(ds_list_size(coolSeq) == coolIndex)
	{
		cheats = true;
		coolIndex = 0;
		if idkfa == false {
			idkfa = true;
		} else if idkfa == true {
			idkfa = false;
		}
	}
	
	// template
	/* if(ds_list_find_value(sequence, index) == lastKey)
	{
		index++;
	}
	else
	{
		index = 0;
	}

	if(ds_list_size(sequence) == index)
	{
		cheats = true;
		index = 0;
		code here
	} */
}

if ((obj_pause.paused == false) and (idbehold == true)) {
	instance_deactivate_object(obj_director);
	instance_deactivate_object(obj_spawner);
	with (obj_enemy) ai_enabled = 0;
} // This has to be outside of the cheat itself since the code doesn't execute when the cheat code hasn't been applied
	