if(is_correct)
{
	room_goto(correct_target_rm);
}
else
{
	if(wrong_counter == 2) {
		room_goto(wrong_target_rm);
		wrong_counter = 0;
	}
	else {
		global.wrong_counter++;
	}
}
obj_aribel.x = target_x;
obj_aribel.y = target_y;