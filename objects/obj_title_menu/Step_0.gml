// Draws the menu background
draw_sprite_ext(sprite_index, image_index, x, y, width / sprite_width, height / sprite_height, 0, c_white, 1);

// Draws the options
draw_set_font(global.font_main);
draw_set_valign(fa.top);
draw_set_halign(fa.left);