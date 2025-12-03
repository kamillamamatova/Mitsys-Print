/// obj_gui_image_window – Step

var player = instance_nearest(x, y, obj_aribel);
if (player == noone) exit;

// If the GUI is already open, just handle closing:
if (gui_is_open) {
    if (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_enter)) {
        gui_is_open = false;
    }
    exit;
}

// If GUI is closed, check distance + Enter press:
if (point_distance(x, y, player.x, player.y) <= interaction_radius) {
    if (keyboard_check_pressed(vk_enter)) {
        // If no GUI sprite explicitly set, fall back to our own sprite
        if (gui_sprite == -1 || gui_sprite == noone) {
            gui_sprite = sprite_index;
        }
        gui_image_index = image_index;
        gui_is_open = true;
    }
}
