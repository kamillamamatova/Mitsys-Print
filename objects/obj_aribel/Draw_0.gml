// --- Player Draw Event ---
draw_self();

// Draw cleansing pulse if active
if (ability_active) {
    draw_set_alpha(0.3);
    draw_set_color(c_aqua);
    draw_circle(x, y, ability_radius, false); // Outline circle
    draw_set_alpha(1);
}
