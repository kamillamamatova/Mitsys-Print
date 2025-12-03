/// obj_ch_door: Collision with obj_aribel

var _player = other;

// Ensure a fade controller exists and grab a reference
var _fade;
if (instance_exists(obj_room_fade)) {
    _fade = instance_find(obj_room_fade, 0);
} else {
    _fade = instance_create_layer(0, 0, "Instances", obj_room_fade);
}

var _rm;
var _pos;
var _tx;
var _ty;

if (is_correct)
{
	if (global.ch_puzzle_transition_lock) exit;
	
    // ✅ Correct door → next puzzle room
    _rm  = target_room_correct;
    _pos = scr_ch_spawn_for_room(_rm);
    _tx  = _pos.x;
    _ty  = _pos.y;
	
	show_debug_message(
    "door: spawn_for_room returned { x = " + string(_tx) +
    ", y = " + string(_ty) +
    " } for room " + room_get_name(_rm)
);
}
else
{
	/// inside obj_ch_door Collision with obj_aribel, incorrect branch

// If a transition is already happening, don't do anything
if (global.ch_puzzle_transition_lock) {
    exit;
}

// First time we hit this door for this warp → lock the transition
global.ch_puzzle_transition_lock += 1; // or = true; using +1 makes debugging easier

show_debug_message("INCORRECT DOOR: count BEFORE = " 
    + string(global.ch_puzzle_incorrect_count));

global.ch_puzzle_incorrect_count += 1;

show_debug_message("INCORRECT DOOR: count AFTER = " 
    + string(global.ch_puzzle_incorrect_count));
	
	
    // ❌ Incorrect door → incorrect/dead-end room
   // global.ch_puzzle_incorrect_count += 1;

    _rm  = rm_wrong;
    _pos = scr_ch_spawn_for_room(_rm);
    _tx  = _pos.x;
    _ty  = _pos.y;
}



// Safety fallback
if (!is_real(_tx)) _tx = _player.x;
if (!is_real(_ty)) _ty = _player.y;

// Start fade transition – fade object will ignore extra calls if busy
with (_fade) {
    start_transition(_rm, _tx, _ty);
}
