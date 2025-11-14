var percent = 1 - (ability_cooldown / ability_cooldown_max);
draw_set_color(c_white);
draw_rectangle(50, 50, 50 + 100 * percent, 60, false);
draw_text(50, 35, "Madness Cleansing");
