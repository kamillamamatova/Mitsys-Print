if(is_correct)
{
	room_goto(target_rm);
	if(global.wrong_counter == 2 && room == rm_wrong) {
		room_goto(rm_0);
		global.wrong_counter = 0;
	}
}
else
{  
	global.previous_rm = room;
	room_goto(rm_wrong);
	global.wrong_counter++;
	
}


//obj_aribel.x = target_x;
//obj_aribel.y = target_y;