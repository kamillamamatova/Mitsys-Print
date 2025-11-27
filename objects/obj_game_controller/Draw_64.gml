// Only if there's some darkness
if(variable_global_exists("brightness") && global.brightness > 0){
	var _w = display_get_gui_width();
	var _h = display_get_gui_height();
	
	draw_set_color(c_black);
	draw_set_alpha(global.brightness);
	
	// Draws a rectangle covering the whole screen
	draw_rectangle(0, 0, _w, _h, false);
	
	// Resets alpha so other things don't turn transparent
	draw_set_alpha(1);
	draw_set_color(c_white);
}
