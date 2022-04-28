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