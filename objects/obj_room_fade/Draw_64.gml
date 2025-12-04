if (alpha > 0) {
    var w = display_get_gui_width();
    var h = display_get_gui_height();

    draw_set_alpha(alpha);
    if (flash_white)
		draw_set_colour(c_white);
	else
		draw_set_colour(c_black);
    draw_rectangle(0, 0, w, h, false);
    draw_set_alpha(1); // restore
}