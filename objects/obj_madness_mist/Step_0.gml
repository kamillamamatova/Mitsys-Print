// --- obj_madness_mist: Step ---
if (cleansed) {
    image_alpha -= 0.02; // Fade out
    if (image_alpha <= 0) instance_destroy();
}