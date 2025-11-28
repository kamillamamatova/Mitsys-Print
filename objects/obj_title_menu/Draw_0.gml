draw_set_font(global.font_main);

// ---------------------------------------------------------
// 1. CALCULATE MENU DIMENSIONS
// ---------------------------------------------------------
op_length = array_length(option[menu_level]);

// Calculate dynamic width based on longest text
var _new_w = 0;
for(var i = 0; i < op_length; i++){
	var _op_w = string_width(option[menu_level, i]);
	_new_w = max(_new_w, _op_w);
}

// Set Width and Height based on the current page
if (menu_level == 5) {
    // Fixed size for Controls page so text fits
    width = 300;
    height = 200;
} else {
    // Dynamic size for all other pages
    width = _new_w + op_border * 2;
    if(op_length > 0){
        height = op_border * 2 + string_height(option[menu_level, 0]) + (op_length - 1) * op_space;
    } else {
        height = op_border * 2;
    }
}

// ---------------------------------------------------------
// 2. CENTER MENU (Using Camera)
// ---------------------------------------------------------
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 - width / 2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2 - height / 2;

// ---------------------------------------------------------
// 3. DRAW BACKGROUND
// ---------------------------------------------------------
draw_sprite_ext(sprite_index, image_index, x, y, width / sprite_width, height / sprite_height, 0, c_white, 1);

// ---------------------------------------------------------
// 4. DRAW OPTIONS (The Buttons)
// ---------------------------------------------------------
draw_set_valign(fa_top);
draw_set_halign(fa_left);

// Determine where to start drawing options
var _start_y = y + op_border;

// If on the Controls page, push the "Back" button to the bottom
if (menu_level == 5) {
    _start_y = y + height - op_border - 20; // 20px buffer from bottom
}

for(var i = 0; i < op_length; i++){
	var _c = c_white;
	if pos == i { _c = c_yellow };
	
	// Draw options using the calculated _start_y
	draw_text_color(x + op_border, _start_y + op_space * i, option[menu_level, i], _c, _c, _c, _c, 1);
}

// ---------------------------------------------------------
// 5. DRAW MANUAL TEXT (Instructions)
// ---------------------------------------------------------
if(menu_level == 5){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	// Coordinates relative to the menu box
	var _cx = x + width/2;
	var _cy = y + op_border; 
	var _gap = 25; // Space between lines
	
	// Draw instructions at the top
	draw_text_color(_cx, _cy + _gap * 1, "- Controls -", c_yellow, c_yellow, c_yellow, c_yellow, 1);
	draw_text(_cx, _cy + _gap * 2.5, "Move: WASD / Arrows");
	draw_text(_cx, _cy + _gap * 3.5, "Sprint: Shift");
    draw_text(_cx, _cy + _gap * 4.5, "Interact: E"); // Added this based on player code
	draw_text(_cx, _cy + _gap * 5.5, "Menu: Esc");
	
	// Reset alignment
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}

/* draw_set_font(global.font_main);

// Dynamically gets width and height of menu
var _new_w = 0;
for(var i = 0; i < op_length; i++){
	var _op_w = string_width(option[menu_level, i]);
	_new_w = max(_new_w, _op_w);
}
width = _new_w + op_border * 2;
height = op_border * 2 + string_height(option[0, 0]) + (op_length - 1) * op_space;

// Centers menu
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 - width / 2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2 - height / 2;

// Draws the menu background
draw_sprite_ext(sprite_index, image_index, x, y, width / sprite_width, height / sprite_height, 0, c_white, 1);

// Draws the options
draw_set_valign(fa_top);
draw_set_halign(fa_left);
for(var i = 0; i < op_length; i++){
	var _c = c_white;
	if pos == i{ _c = c_yellow};
	draw_text_color(x + op_border, y + op_border + op_space * i, option[menu_level, i], _c, _c, _c, _c, 1);
}

// Draws control instructions manually when in the controls menu
if(menu_level == 5){
	width = 300;
	height = 200;
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(global.font_main);
	
	// Coordinates relative to the menu box
	var _cx = x + width/2;
	// Starts near top
	var _cy = y + op_border + 20; 
	// Space between lines
	var _gap = 20;
	
	draw_text_color(_cx, _cy, "- Controls -", c_yellow, c_yellow, c_yellow, c_yellow, 1);
	draw_text(_cx, _cy + _gap * 1.5, "Move: WASD / Arrows");
	draw_text(_cx, _cy + _gap * 2.5, "Sprint: Shift");
	draw_text(_cx, _cy + _gap * 3.5, "Menu: Esc");
	
	// Draws the back button at the bottom
	var _c = c_white;
	if pos == 0 { _c = c_yellow; }
	draw_text_color(_cx, y + height - op_border - 10, option[5, 0], _c, _c, _c, _c, 1);
	
	// Resets alignment
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}
else{
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	for(var i = 0; i < op_length; i++){
		var _c = c_white;
		if pos == i{ _c = c_yellow; }
		draw_text_color(x + op_border, y + op_border + op_space * i, option[menu_level, i], _c, _c, _c, _c, 1);
	}
}
