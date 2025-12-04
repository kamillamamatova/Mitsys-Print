
/// obj_magic_book – Step

if (interacted) exit;

var p = obj_aribel;

if (instance_exists(p)) {

    // Require the player to be close to the book
    if (point_distance(x, y, p.x, p.y) < 48) {

        // Enter key pressed
        if (keyboard_check_pressed(vk_enter)) {
            interacted = true;

            

            // Ensure the fade controller exists
            if (!instance_exists(obj_room_fade)) {
                instance_create_layer(0, 0, "Instances", obj_room_fade);
            }

            // Cache destination info
            var _rm = target_rm;
            var _tx = target_x;
            var _ty = target_y;

            // Start the transition on the fade object
            with (obj_room_fade) {
                flash_white = true;       
                start_transition(_rm, _tx, _ty);
            }

           
            // instance_destroy();
        }
    }
}



