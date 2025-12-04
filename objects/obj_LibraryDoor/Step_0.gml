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

        // --- compensate for bottom-center origin on Aribel ---
        var px = p.x;
        var half_h = sprite_get_height(p.sprite_index) * 0.5;
        var py = p.y - half_h;   // "center" of her body, not her feet

        var dist = point_distance(x, y, px, py);
        if (dist < 56 && keyboard_check_pressed(vk_enter)) {
            // (56 instead of 48 for a bit more forgiveness)

            // Use room fade
            if (!instance_exists(obj_room_fade)) {
                instance_create_layer(0, 0, "Instances", obj_room_fade);
            }

            var _rm = rm_interior; // your interior room
            var _tx = 1006;        // spawn x
            var _ty = 1518;        // spawn y
            with (obj_room_fade) {
                start_transition(_rm, _tx, _ty);
            }
        }
    }
}
