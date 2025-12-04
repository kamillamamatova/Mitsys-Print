// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_glow_warp(){


/// scr_glow_warp(_room, _x, _y)

// 1. Ensure fade controller exists
if (!instance_exists(obj_room_fade)) {
    instance_create_layer(0, 0, "Instances", obj_room_fade);
}

// 2. Trigger a white flash fade
with (obj_room_fade) {
    flash_white = true;
    start_transition(argument0, argument1, argument2);
}


}