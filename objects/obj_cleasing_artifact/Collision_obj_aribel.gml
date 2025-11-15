// Give the player the ability
other.has_cleansing = true;

// Optional: play a sound
//audio_play_sound(snd_pickup_magic, 1, false);

// Optional: show a popup message
show_debug_message("You feel a calming magic... The cleansing ability is now yours!");

// Destroy relic after collecting
instance_destroy();
