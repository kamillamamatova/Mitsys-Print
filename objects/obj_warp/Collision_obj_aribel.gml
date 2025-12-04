// Ensure the fade controller exists
if (!instance_exists(obj_room_fade)) {
    // Use any layer that exists in this room; "Instances" is common
    instance_create_layer(0, 0, "Instances", obj_room_fade);
}

// Cache our target info before entering the with() block
var _rm = target_rm;
var _tx = target_x;
var _ty = target_y;

// Start the transition
with (obj_room_fade) {
	flash_white = false; 
	global.snap_camera_next_room = true;
    start_transition(_rm, _tx, _ty);
}