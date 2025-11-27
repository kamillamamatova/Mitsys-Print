draw_set_font(global.font_main);

var w = display_get_gui_width();
var h = display_get_gui_height();

// Dynamically gets width and height of menu
op_length = array_length(option[menu_level]);
var _new_w = 0;
for(var i = 0; i < op_length; i++){
	var _op_w = string_width(option[menu_level, i]);
	_new_w = max(_new_w, _op_w);
}
width = _new_w + op_border * 2;
//height = op_border * 2 + string_height(option[0, 0]) + (op_length - 1) * op_space;

if(op_length > 0){
	height = op_border * 2 + string_height(option[menu_level, 0]) + (op_length - 1) * op_space;
}
else{
	height = op_border * 2;
}

// Centers menu
x = w/2 - width/2;
y = h/2 - height/2;

// Semi transparent background
draw_set_alpha(0.6);
draw_set_color(c_black);
draw_rectangle(0, 0, w, h, false);
draw_set_alpha(1);

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