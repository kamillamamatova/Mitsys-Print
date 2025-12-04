
if(instance_exists(obj_dialog)) exit;

if(instance_exists(obj_aribel) && distance_to_object(obj_aribel) < 8)
{
	can_talk = true;
	
	if (keyboard_check_pressed((input_key))) 
	{
	    // Are all civilians here?
	    var all_here = true;

	    with (obj_civilian) {
	        if (!has_crossed) {
	            all_here = false;
	        }
	    }

	    if (!all_here) {
	        create_dialog(dialog);
	    }
	    else {
	       create_dialog(dialog2);
	    }
	}
}
else
{
	can_talk = false;
} 
