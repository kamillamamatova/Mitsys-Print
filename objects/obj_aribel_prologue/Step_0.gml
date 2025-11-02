if (!variable_instance_exists(id, "dialogue_triggered")) dialogue_triggered = false;
if (!variable_instance_exists(id, "dialogue_done")) dialogue_done = false;

if (path_index == pt_prologue && room == rm_prologue) {
    // Stop at the dialogue point
    if (path_position >= 0.25 && !dialogue_triggered) {
        path_speed = 0;
        instance_create_layer(0, 0, "Instances", obj_dialogue_prologue);
        dialogue_triggered = true;
		dialogue_done = true;
    }

    // Resume after dialogue ends
    if (dialogue_triggered && dialogue_done) {
        path_speed = 2.25; // your normal movement speed
        dialogue_done = false;
    }
}

// aribel's directional movements

// Moving upwards
if (direction > 45 && direction <= 135)
{
     sprite_index = spr_aribel_up;
}

// Moving left
else if (direction > 135 && direction <= 225)
{
        sprite_index = spr_aribel_left;
}

// Moving downwards
else if (direction > 225 && direction <= 315)
{
        sprite_index = spr_aribel_down;
}

// Moving right (0-45 and 315-360)
else
{
   sprite_index = spr_aribel_right;
}


