// Checks if the player has the ability before drawing the bar
if(has_cleansing){
	var percent = 1 - (ability_cooldown / ability_cooldown_max);
	
	draw_set_color(c_white);
	// Draws the cooldown bar
	draw_rectangle(50, 50, 50 + 100 * percent, 60, false);
	
	// Draws the label
	draw_text(50, 35, "Madness Cleansing");
}
