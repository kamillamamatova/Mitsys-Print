// TEMP debug
if (object_get_name(object_index) == "obj_cheshire") {
    if (!instance_exists(obj_aribel)) {
        show_debug_message("Cheshire: no obj_aribel in room " + string(room));
    } else {
        var _d = distance_to_object(obj_aribel);
        show_debug_message("Cheshire in room " + string(room)
            + " distance to Aribel = " + string(_d)
            + " dialog set? " + string(dialog != undefined));
    }
}













if(instance_exists(obj_dialog)) exit;

if(instance_exists(obj_aribel) && distance_to_object(obj_aribel) < 8)
{
	can_talk = true;
	if(keyboard_check_pressed(input_key))
	{
		create_dialog(dialog);
	}
}
else
{
	can_talk = false;
} 


