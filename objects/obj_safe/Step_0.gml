if (is_open && !animation_started)
{
    animation_started = true;
    sprite_index = spr_safe_open;   // swap to open sprite
    image_index = 0;                 // reset animation frame
    image_speed = 1;                 // start animation

    // Optional: sound or signal
    //audio_play_sound(snd_safe_open, 1, false);

    // Optional: spawn reward
    instance_create_layer(x, y- 32, "Instances", obj_reward);
}
