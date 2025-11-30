/// obj_LibraryDoor – Step

// 1. Open door sprite once the puzzle says it's unlocked
var ctl = instance_find(obj_LibraryDoorPuzzle, 0);
if (instance_exists(ctl)) {
    if (ctl.door_unlocked && !is_open) {
        image_index = 1;   // frame 1 = open
        is_open     = true;
        solid       = false; // so player can stand in the doorway if you want
    }
}

// 2. If door is open, allow entering the interior room with Enter
if (is_open) {
    var p = obj_aribel;
    if (instance_exists(p)) {
        var dist = point_distance(x, y, p.x, p.y);
        if (dist < 48 && keyboard_check_pressed(vk_enter)) {

            // OLD:
            // room_goto(rm_interior);

            // NEW: use room_fade
            if (!instance_exists(obj_room_fade)) {
                instance_create_layer(0, 0, "Instances", obj_room_fade);
            }

            var _rm = rm_interior; // your interior room
            var _tx = 1006;    // you can store these as vars on the door
            var _ty = 1518
            with (obj_room_fade) {
                start_transition(_rm, _tx, _ty);
            }
        }
    }
}
