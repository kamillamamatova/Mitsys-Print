// We just entered the new room while the screen is black.
// Put Aribel at the desired coordinates, then fade back out of black.

var p = instance_find(obj_aribel, 0);
if (instance_exists(p)) {
    p.x = target_x;
    p.y = target_y;
}

// Start the fade-in
state = FadeState.FadingIn;