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