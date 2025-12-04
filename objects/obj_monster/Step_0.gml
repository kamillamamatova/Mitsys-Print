/// Path Finding AI

if (path_index != monster_path)
{
    speed = 0;
}


/// COLLISION WITH RUBBLE 
if (place_meeting(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), obj_rubble)) {
    // turn away from rubble
    direction += irandom_range(120, 240);
}

if (place_meeting(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), obj_wall_monster))
{
	// Collision detected, prevent horizontal movement
	 x = 0;
}

if (place_meeting(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), obj_wall_monster))
{
	// Collision detected, prevent vertical movement
	y = 0;
}


x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);