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