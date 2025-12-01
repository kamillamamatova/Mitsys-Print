/// obj_incorrect_exit: Collision with obj_aribel

// Only trigger if the player actually presses Enter or clicks the door
var use_pressed = keyboard_check_pressed(vk_enter);

// Allow mouse click on the door sprite too
if (!use_pressed) {
    if (mouse_check_button_pressed(mb_left)) {
        if (position_meeting(mouse_x, mouse_y, id)) {
            use_pressed = true;
        }
    }
}

if (!use_pressed) exit; // player is just bumping into the door, do nothing


// ===== At this point, the player chose to use this exit =====

// Have they used up all their chances?
if (global.ch_puzzle_incorrect_count >= global.ch_puzzle_max_incorrect) {
    // ❌ They reached 3 incorrect attempts: back to the FIRST room

    global.ch_puzzle_incorrect_count = 0;  // reset for the next try
    global.ch_puzzle_return_flag     = false; // don't reposition, we're starting fresh

    // You can replace room_goto with your fade controller if you want
    room_goto(global.ch_puzzle_first_room);

} else {
    // ✅ Still have chances left: send them back to the room they messed up in

    global.ch_puzzle_return_flag = true;

    var _r = global.ch_puzzle_last_room;

    if (_r != noone) {
        room_goto(_r);
    } else {
        // Safety fallback: if for some reason last_room isn't set, go to first room
        room_goto(global.ch_puzzle_first_room);
    }
}

