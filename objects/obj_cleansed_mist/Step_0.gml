// Fade out slowly
image_alpha -= fade_speed;

// Count down to regrowth
regrow_timer--;

// If mist has faded enough OR timer expired, regrow it
if (image_alpha <= 0.05 || regrow_timer <= 0) {
    // Regrow back into corrupted mist
    instance_change(obj_madness_mist, true);

    // Reset alpha so the corrupted mist is fully visible again
    image_alpha = 1;
}
