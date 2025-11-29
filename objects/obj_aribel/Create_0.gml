xspd = 0;
yspd = 0;

move_spd = 2;

sprite[RIGHT] = spr_aribel_right;
sprite[UP] = spr_aribel_up;
sprite[LEFT] = spr_aribel_left;
sprite[DOWN] = spr_aribel_down;

// Initial direction of Aribel
face = DOWN;

if (!variable_global_exists("previous_rm")) {
    global.previous_rm = rm_0;
}


// Ability variables
has_cleansing = false; // player starts without the ability
ability_cooldown = 0;       // Time left before ability can be used again
ability_cooldown_max = 120; // 2 seconds at 60 FPS
ability_active = false;     // Is the cleansing pulse currently active?
ability_radius = 0;         // Current radius of the pulse
ability_max_radius = 175;   // Max distance pulse will reach
