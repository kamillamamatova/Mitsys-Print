draw_set_font(global.font_main);

// Calculates menu dimensions
op_length = array_length(option[menu_level]);

// Calculates dynamic width based on longest option text
var _new_w = 0;
for(var i = 0; i < op_length; i++){
	var _op_w = string_width(option[menu_level, i]);
	_new_w = max(_new_w, _op_w);
}

// Sets width and height based on the current page
if (menu_level == 5) {
    // Dynamic size for controls page based on the text content
    var _str_w = string_width("Move: WASD / Arrows"); 
    width = _str_w + op_border * 4;
    
    height = op_border * 2 + (20 * 7); 
} else {
    // Dynamic size for all other pages
    width = _new_w + op_border * 2;
    if(op_length > 0){
        height = op_border * 2 + string_height(option[menu_level, 0]) + (op_length - 1) * op_space;
    } else {
        height = op_border * 2;
    }
}

// Centers menu
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 - width / 2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2 - height / 2;

// Draws background
draw_sprite_ext(sprite_index, image_index, x, y, width / sprite_width, height / sprite_height, 0, c_white, 1);

// Draws options
draw_set_valign(fa_top);
draw_set_halign(fa_left);

// Determines where to start drawing options
var _start_y = y + op_border;

// If on the controls page, push the "Back" button to the bottom
if (menu_level == 5) {
    _start_y = y + height - op_border - 20; // 20px buffer from bottom
}

for(var i = 0; i < op_length; i++){
	var _c = c_white;
	if pos == i { _c = c_yellow };
	
	// Draws options using the calculated _start_y
	draw_text_color(x + op_border, _start_y + op_space * i, option[menu_level, i], _c, _c, _c, _c, 1);
}

// Draws manual text
if(menu_level == 5){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	// Coordinates relative to the menu box
	var _cx = x + width/2;
	var _cy = y + op_border; 
	var _gap = 20;
	
	// Draws instructions at the top
	draw_text_color(_cx, _cy + _gap * 2, "- Controls -", c_white, c_white, c_white, c_white, 1);
	draw_text(_cx, _cy + _gap * 2.8, "Move: WASD / Arrows");
	draw_text(_cx, _cy + _gap * 3.4, "Sprint: Shift");
    draw_text(_cx, _cy + _gap * 4, "Interact: E");
	draw_text(_cx, _cy + _gap * 4.6, "Menu: Esc");
	
	// Resets alignment
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}