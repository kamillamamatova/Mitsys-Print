/// obj_door_answer: Collision with obj_aribel

var _player = other;

if (has_triggered) exit;
has_triggered = true;

if (is_correct) {
    // ✔ Correct door – go to the next room

    if (!instance_exists(obj_room_fade)) {
        instance_create_layer(0, 0, "Instances", obj_room_fade);
    }

    var _rm = target_room_correct;
    var _tx = target_x_correct;
    var _ty = target_y_correct;

    with (obj_room_fade) {
        start_transition(_rm, _tx, _ty);
    }
 
    
} else {
    // ✖ Wrong door – send the player to the incorrect room

    // Store where we were so we can come back later
    global.ch_puzzle_last_room = room;
    global.ch_puzzle_last_x = _player.x;
    global.ch_puzzle_last_y = _player.y;

    // Count this as an incorrect attempt
   // global.ch_puzzle_incorrect_count += 1;
	
	show_debug_message("Increment from door id " + string(id)
    + " is_correct=" + string(is_correct)
    + " room=" + string(room));
show_debug_message("count BEFORE = " + string(global.ch_puzzle_incorrect_count));

global.ch_puzzle_incorrect_count += 1;

show_debug_message("count AFTER  = " + string(global.ch_puzzle_incorrect_count));


    // Go to the incorrect room
    if (!instance_exists(obj_room_fade)) {
        instance_create_layer(0, 0, "Instances", obj_room_fade);
    }

    var _rm_wrong = incorrect_room;
    var _tx_wrong = 529;
    var _ty_wrong = 659; 

    with (obj_room_fade) {
        start_transition(_rm_wrong, _tx_wrong, _ty_wrong);
    }
 
	
global.ch_puzzle_spawn_x = 529; // <-- your chosen X inside rm_incorrect
global.ch_puzzle_spawn_y = 659;  // <-- your chosen Y


}
