/// obj_ch_wrong_exit: Collision with obj_aribel

show_debug_message("WRONG EXIT: count = " 
    + string(global.ch_puzzle_incorrect_count)
    + " / max = " + string(global.ch_puzzle_max_incorrect));

var _player = other;

// DEBUG – optional but useful
show_debug_message("DEBUG: wrong-exit collision in " + room_get_name(room));

// Ensure fade controller exists and get reference
var _fade;
if (instance_exists(obj_room_fade)) {
    _fade = instance_find(obj_room_fade, 0);
} else {
    _fade = instance_create_layer(0, 0, "Instances", obj_room_fade);
}

// Make sure first_room is initialized
if (!variable_global_exists("ch_puzzle_first_room")) {
    global.ch_puzzle_first_room = rm_0; // fallback
}

// Determine if we have a valid last_room
var _has_last_room =
    variable_global_exists("ch_puzzle_last_room") &&
    global.ch_puzzle_last_room != noone &&
    global.ch_puzzle_last_room != rm_wrong;

var _rm;
var _pos;

// OUT OF CHANCES or NO VALID LAST ROOM → reset to first room
if (global.ch_puzzle_incorrect_count >= global.ch_puzzle_max_incorrect || !_has_last_room)
{
    show_debug_message("→ Cheshire: RESET to first room");

    global.ch_puzzle_incorrect_count = 0;

    _rm  = global.ch_puzzle_first_room;
    _pos = scr_ch_spawn_for_room(_rm);
}
else
{
    show_debug_message("→ Cheshire: return to last puzzle room");

    _rm  = global.ch_puzzle_last_room;
    _pos = scr_ch_spawn_for_room(_rm);
}

var _tx = _pos.x;
var _ty = _pos.y;

// Safety fallback
if (!is_real(_tx)) _tx = _player.x;
if (!is_real(_ty)) _ty = _player.y;

show_debug_message("Cheshire wrong-exit target: " +
    room_get_name(_rm) + " (" + string(_tx) + ", " + string(_ty) + ")");

// Start fade transition
with (_fade) {
    start_transition(_rm, _tx, _ty);
}
