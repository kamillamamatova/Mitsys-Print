if (place_meeting(x,y,obj_aribel) && keyboard_check_pressed(ord("R"))) 
{
  var idx = -1;
    for (var i = 0; i < array_length(obj_puzzle_controller.levers); i++)
    {
        if (obj_puzzle_controller.levers[i] == id)
        {
            idx = i;
            break;
        }
    }

    show_debug_message("This lever is index: " + string(idx));

	// Flip yourself
    state = 1 - state;
	
	// Update sprite based on state
	if (state == 1) 
	{
		sprite_index = spr_lever_up;
	} else 
	{
		sprite_index = spr_lever_down;
	}

    // Flip neighbors
    var ncount = array_length(neighbors);
    for (var i = 0; i < ncount; i++)
    {
        with (obj_puzzle_controller.levers[neighbors[i]])
        {
            state = 1 - state;
        }
    }

    // Ask controller to check for victory
    with (obj_puzzle_controller) 
	{
		check_puzzle_complete();
	}
}
