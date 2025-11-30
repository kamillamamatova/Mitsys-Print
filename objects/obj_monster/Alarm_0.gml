if (state == "cleansed") {
    image_blend = c_white;
} else {
    image_blend = c_red;
}

// Reset the alarm for the next calculation
alarm[0] = 60; 

// --- 1. Define Target Coordinates ---
var _target_x = obj_aribel.x;
var _target_y = obj_aribel.y;
var _speed = 2;

// --- 2. State-Based Target Modification ---

if (state == "cleansed")
{
	state = "normal";
    // If cleansed, we want to move *away* from Aribel.
    // Calculate a point far away in the opposite direction from Aribel.
	// The direction *away* from Aribel.
	alarm[0] = 300;
    var _away_direction = point_direction(_target_x, _target_y, x, y);
    var _distance_offset = 500; 

    // Calculate a point 500 pixels away from Aribel in the opposite direction.
    _target_x = _target_x + lengthdir_x(_distance_offset, _away_direction);
    _target_y = _target_y + lengthdir_y(_distance_offset, _away_direction);
}

// --- 3. Calculate Path ---
var _grid = obj_pathfinder.mp_grid; 
var _path_found = mp_grid_path(_grid, monster_path, x, y, _target_x, _target_y, 1);

if (_path_found)
{	
    // --- 4. Introduce Path Jitter/Noise ---
    var _max_deviation = 5; // Max pixels to randomly offset path points
    var _start_index = 1;   // Don't modify the first point (monster's current position)
    var _end_index = path_get_number(monster_path) - 1; // Don't modify the last point (target position)

    // Loop through all intermediate points in the calculated path
    for (var i = _start_index; i < _end_index; i++)
    {
        // Get the current path point coordinates
        var _px = path_get_point_x(monster_path, i);
        var _py = path_get_point_y(monster_path, i);
        
        // Add a random offset (noise) to the coordinates
        var _new_x = _px + random_range(-_max_deviation, _max_deviation);
        var _new_y = _py + random_range(-_max_deviation, _max_deviation);
        
        // Update the path with the new, jittered coordinates
        path_change_point(monster_path, i, _new_x, _new_y, 100); // 100 is speed scale
    }
    
    // --- 5. Start Following the Jittered Path ---
    path_set_precision(monster_path, 8); // Ensures smoother turns between the jittered points
    path_start(monster_path, _speed, path_action_stop, false);
}

