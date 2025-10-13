// Moving upwards
if (direction > 45 && direction <= 135)
{
     sprite_index = spr_misty_up;
}

// Moving left
else if (direction > 135 && direction <= 225)
{
        sprite_index = spr_misty_left;
}

// Moving downwards
else if (direction > 225 && direction <= 315)
{
        sprite_index = spr_misty_down;
}

// Moving right (0-45 and 315-360)
else
{
   sprite_index = spr_misty_right;
}