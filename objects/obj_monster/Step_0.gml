event_inherited();

/// Handle Cleansed State
if (state == "cleansed") {
    image_blend = c_white;
} else {
    image_blend = c_red;
}

if (path_index != monster_path)
{
    speed = 0;
}


/// COLLISION WITH RUBBLE 
if (place_meeting(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), obj_rubble)) {
    // turn away from rubble
    direction += irandom_range(120, 240);
}

x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);
