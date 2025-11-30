var _dx = 0;
var _dy = gui_h * 0.7;
var _boxw = gui_w;
var _boxh = gui_h - _dy;

draw_sprite_stretched(spr_textbox, 0, _dx, _dy, _boxw, _boxh);

_dx += 16
_dy += 16;

// Gets the name
var _name = messages[current_message].name;

// Handles portrait drawing
var _portrait_sprite = -1;

// Checks if this name exists in the portrait list
if(variable_struct_exists(global.char_portraits, _name)){
    _portrait_sprite = global.char_portraits[$ _name];
}

// If there's a valid sprite, it'll be drawn
if(_portrait_sprite != -1){
	// Draws portrait on the left
	// 2, 2 scales it by 2x
	draw_sprite_ext(_portrait_sprite, 0, _dx, _dy, 2, 2, 0, c_white, 1);
	
	// Moves the text cursor 100 pixels to the right so it doesn't sit on
	// top of the face
	_dx += 100;
}

// Draws the name
draw_set_font(fnt_dialog);

// The default color is white if it's not already defined
if(variable_struct_exists(global.char_colors, _name)){
	draw_set_color(global.char_colors[$ _name]);
}
else{
	draw_set_color(c_white);
}

draw_text(_dx, _dy, _name);
// Resets color for the message text
draw_set_color(c_white);

// Draws the message 
_dy += 40;
draw_text_ext(_dx, _dy, draw_message, -1, _boxw - _dx - 32);
