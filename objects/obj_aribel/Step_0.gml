// Directional movement with arrow keys or WASD

if (instance_exists(obj_dialog)) exit; // Condition to stop player/npc from moving

right_key = keyboard_check(vk_right) || keyboard_check(ord("D"));
left_key = keyboard_check(vk_left) || keyboard_check(ord("A"));
up_key = keyboard_check(vk_up) || keyboard_check(ord("W"));
down_key = keyboard_check(vk_down) || keyboard_check(ord("S"));

//shift for increased speed if shift is pressed
if (keyboard_check(vk_shift)) {move_spd +=1}


// Gets xspd and yspd
xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

// For collision
if place_meeting(x + xspd, y, obj_wall){
	xspd = 0;
}
if place_meeting(x, y + yspd, obj_wall){
	yspd = 0;
}
// Moves the player
x += xspd;
y += yspd;

// Sets sprite
mask_index = sprite[DOWN]

if yspd == 0{
	if xspd > 0{ face = RIGHT;}
	if xspd < 0{ face = LEFT;}
}

if xspd > 0 && face == LEFT{ face = RIGHT};
if xspd < 0 && face == RIGHT{ face = LEFT};

if xspd = 0{
	if yspd > 0{ face = DOWN;}
	if yspd < 0{ face = UP;}
}

if yspd > 0 && face == UP{ face = DOWN};
if yspd < 0 && face == DOWN{ face = UP};

sprite_index = sprite[face];

// Animates
if xspd == 0 && yspd == 0{
	image_index = 0;
	
}

//reset move speed
move_spd = 2;

////////////// Ability ///////////////////

// Reduce cooldown if needed
if (ability_cooldown > 0) {
    ability_cooldown--;
}
 
// Activate ability when pressing C and not on cooldown
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
    // Example: affect monsters in range
    with (obj_monster) {
        var dist = point_distance(other.x, other.y, x, y);
        if (dist < other.ability_radius) {
            // Apply cleansing effect (stun, disable, etc.)
            state = "cleansed";
            alarm[0] = room_speed * 2; // Example: 1 second cleanse
        }
    }

    // Example: affect madness mist
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
