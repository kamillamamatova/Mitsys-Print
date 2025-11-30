/// obj_aribel – Step

//-------------------------------------
// 1. Check if any UI (window/lock) is open
//-------------------------------------
var ctl = instance_find(obj_LibraryDoorPuzzle, 0);
var ui_open = instance_exists(ctl) && ctl.ui_open;

//-------------------------------------
// 2. Directional input
//-------------------------------------
var right_key = keyboard_check(vk_right) || keyboard_check(ord("D"));
var left_key  = keyboard_check(vk_left)  || keyboard_check(ord("A"));
var up_key    = keyboard_check(vk_up)    || keyboard_check(ord("W"));
var down_key  = keyboard_check(vk_down)  || keyboard_check(ord("S"));

//-------------------------------------
// 3. Movement (blocked if UI is open)
//-------------------------------------
var xspd = 0;
var yspd = 0;

if (!ui_open) {
    // Base speed is move_spd (set this in Create, e.g. move_spd = 2)
    var cur_spd = move_spd;

    // Hold Shift to move faster
    if (keyboard_check(vk_shift)) {
        cur_spd += 1; // or *= 1.5;
    }

    // Compute speeds using current speed
    xspd = (right_key - left_key) * cur_spd;
    yspd = (down_key - up_key)   * cur_spd;

    // Collision vs walls
    if (place_meeting(x + xspd, y, obj_wall)) {
        xspd = 0;
    }
    if (place_meeting(x, y + yspd, obj_wall)) {
        yspd = 0;
    }

    // Move
    x += xspd;
    y += yspd;

    // Facing + animation only update when movement is allowed
    // Sets sprite
    mask_index = sprite[DOWN];

    if (yspd == 0) {
        if (xspd > 0) face = RIGHT;
        if (xspd < 0) face = LEFT;
    }

    if (xspd > 0 && face == LEFT)  face = RIGHT;
    if (xspd < 0 && face == RIGHT) face = LEFT;

    if (xspd == 0) {
        if (yspd > 0) face = DOWN;
        if (yspd < 0) face = UP;
    }

    if (yspd > 0 && face == UP)   face = DOWN;
    if (yspd < 0 && face == DOWN) face = UP;

    sprite_index = sprite[face];

    // Idle frame when not moving
    if (xspd == 0 && yspd == 0) {
        image_index = 0;
    }
	
	depth = -bbox_bottom;

} else {
    // UI OPEN → completely frozen in place
    xspd = 0;
    yspd = 0;
    // Optional: force idle frame
    image_index = 0;
}

// NOTE: no need to reset move_spd here – treat move_spd as your base speed
// and use cur_spd for the Shift modifier above.



////////////// Ability ///////////////////

// Reduce cooldown if needed
if (ability_cooldown > 0) {
    ability_cooldown--;
}
 
// Activate ability 
if (keyboard_check_pressed(ord("C")) && ability_cooldown <= 0 && has_cleansing ) {
    ability_active = true;
    ability_cooldown = ability_cooldown_max;
    ability_radius = 0;
    // Optional: play sound or animation 
}

// Handle pulse expansion
if (ability_active) {
    ability_radius += 8; // Expansion speed
    if (ability_radius >= ability_max_radius) {
        ability_active = false;
        ability_radius = 0;
    }

    // Cleanse Effect
    // affect monsters in range
    with (obj_monster) {
        var dist = point_distance(other.x, other.y, x, y);
        if (dist < other.ability_radius) {
            // Apply cleansing effect
            state = "cleansed";
			
			alarm[0] = 5;
			path_end(); 
        }
    }

    // affect madness mist
    with (obj_madness_mist) {
        var dist = point_distance(other.x, other.y, x, y);
        if (dist < other.ability_radius) {
            instance_change(obj_cleansed_mist, true);
        }
    }
}

////////////// make civilians follow
if (keyboard_check_pressed(ord("E"))) {
    with (obj_civilian) {
        following_player = true;
    }
}

//if (keyboard_check_pressed(ord("E"))) {
//    with (obj_civilian) {
//        following_player = !following_player; // toggles follow on/off
//    }
//}
