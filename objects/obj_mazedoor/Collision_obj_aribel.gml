if(is_correct)
{
	room_goto(target_rm);
}
else
{  
	if(global.wrong_counter == 2) {
		room_goto(wrong_target_rm);
		global.wrong_counter = 0;
	}
	else {
		global.wrong_counter += 1;
	}
}
obj_aribel.x = target_x;
obj_aribel.y = target_y;