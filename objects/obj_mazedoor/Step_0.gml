/// obj_door_answer – Step

if (!player_in_range || !instance_exists(player_id)) exit;

// 1) keyboard interaction
var use_pressed = keyboard_check_pressed(vk_enter);

// 2) mouse click on the door sprite
if (!use_pressed) {
    if (mouse_check_button_pressed(mb_left)) {
        // Check if the click is on this door
        if (position_meeting(mouse_x, mouse_y, id)) {
            use_pressed = true;
        }
    }
}

if (!use_pressed) exit; // nothing to do this step

// ===== from here on: player chose this door =====
var _player = player_id;

// CORRECT DOOR
if (is_correct)
{
    global.ch_puzzle_incorrect_count = 0; // optional: reset mistakes

    // --- with fade controller, if you want ---
    /*
    if (!instance_exists(obj_room_fade)) {
        instance_create_layer(0, 0, "Instances", obj_room_fade);
    }

    var _rm = target_room_correct;
    var _tx = target_x_correct;
    var _ty = target_y_correct;

    with (obj_room_fade) {
        start_transition(_rm, _tx, _ty);
    }
    */

    room_goto(target_room_correct);
}
// WRONG DOOR
else
{
    // Remember where we were
    global.ch_puzzle_last_room = room;
    global.ch_puzzle_last_x    = _player.x;
    global.ch_puzzle_last_y    = _player.y;

    // Count this as an incorrect attempt
    global.ch_puzzle_incorrect_count += 1;

    // Go to the incorrect Cheshire room
    /*
    if (!instance_exists(obj_room_fade)) {
        instance_create_layer(0, 0, "Instances", obj_room_fade);
    }

    var _rm_wrong = incorrect_room;
    var _tx_wrong = _player.x;
    var _ty_wrong = _player.y; // or a fixed start spot

    with (obj_room_fade) {
        start_transition(_rm_wrong, _tx_wrong, _ty_wrong);
    }
    */

    room_goto(incorrect_room);
}

