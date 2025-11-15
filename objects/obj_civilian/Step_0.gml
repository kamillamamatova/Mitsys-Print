if (following_player) {
    // Get direction toward player
    var dir = point_direction(x, y, obj_aribel.x, obj_aribel.y);
    
    // Move toward player
    var mx = lengthdir_x(move_speed, dir);
    var my = lengthdir_y(move_speed, dir);

    // Collision with rubble
    if (!place_meeting(x + mx, y, obj_rubble)) {
        x += mx;
    }
    if (!place_meeting(y + my, y + my, obj_rubble)) {
        y += my;
    }
}

// Stop following if close enough
if (point_distance(x, y, obj_aribel.x, obj_aribel.y) < 12) {
    following_player = false;
}