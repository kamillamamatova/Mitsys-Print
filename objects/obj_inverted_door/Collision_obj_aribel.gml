/// obj_incorrect_exit: Collision with obj_aribel

show_debug_message("=== INCORRECT EXIT COLLISION ===");
show_debug_message("count = " + string(global.ch_puzzle_incorrect_count)
    + " / max = " + string(global.ch_puzzle_max_incorrect));
show_debug_message("first_room = " + string(global.ch_puzzle_first_room));
show_debug_message("last_room  = " + string(global.ch_puzzle_last_room));

// Have they used up all their chances?
if (global.ch_puzzle_incorrect_count >= global.ch_puzzle_max_incorrect) {
    show_debug_message("→ DECISION: going to FIRST room");

    global.ch_puzzle_incorrect_count = 0; // reset for the next try
    global.ch_puzzle_return_flag     = false; // don't reposition, we're starting fresh

    room_goto(global.ch_puzzle_first_room);

} else {
    show_debug_message("→ DECISION: going to LAST room");

    global.ch_puzzle_return_flag = true;

    var _r = global.ch_puzzle_last_room;

    if (_r != noone) {
        room_goto(_r);
    } else {
        show_debug_message("WARNING: last_room is noone, fallback to first_room");
        room_goto(global.ch_puzzle_first_room);
    }
}
