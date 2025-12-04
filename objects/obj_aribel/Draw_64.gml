
// --- Cleansing Ability UI ---
if (has_cleansing == true)
{
    // --- Variables for position and size ---
    var _x = 0; 
    var _y = 0; 
    var _size = 64; 

    // --- Draw the Main Box and Letter 'C' ---
    draw_set_color(c_blue);
    draw_set_alpha(0.7); 
    draw_rectangle(_x, _y, _x + _size, _y + _size, false);
    draw_set_alpha(1); 

    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
    draw_text(_x + _size/2, _y + _size + 4, "C"); 

    // --- Draw the Shrinking Cooldown Overlay (Only if on cooldown) ---
    if (ability_cooldown > 0)
    {
        var _cooldown_percent = ability_cooldown / ability_cooldown_max;
        var _cooldown_height = _size * _cooldown_percent;
        
        draw_set_color(c_white);
        draw_set_alpha(0.4); 
        
        draw_rectangle(_x, _y, _x + _size, _y + _cooldown_height, false);
        
        draw_set_alpha(1);
	    draw_set_halign(fa_center);
	    draw_set_valign(fa_middle);
	    draw_set_color(c_black);
    
	    var _time_seconds = ceil(ability_cooldown / room_speed); // Convert to nearest whole second
	    draw_text(_x + _size/2, _y + _size/2, string(_time_seconds));
    }
}

// --- Madness Bar UI ---

// Hide the bar if madness is exactly 0
if (madness > 0)
{
	// --- Bar Configuration (Adjust these for positioning) ---
	var _bar_w = 400; // Total width of the bar
	var _bar_h = 24;  // Total height of the bar
	var _x1 = (display_get_gui_width() / 2) - (_bar_w / 2); // Center the bar horizontally
	var _y1 = display_get_gui_height() - 40; // Position near the bottom
	var _x2 = _x1 + _bar_w;
	var _y2 = _y1 + _bar_h;
	
    var _madness_percent = madness / max_madness;
    
    var _filled_width = _bar_w * _madness_percent;

    // --- Draw the Bar Outline (The empty container) ---
    draw_set_color(c_dkgray);
    draw_set_alpha(0.8);
    draw_rectangle(_x1, _y1, _x2, _y2, false); // Filled background
    draw_set_color(c_black);
    draw_rectangle(_x1, _y1, _x2, _y2, true);  // Outline border
    draw_set_alpha(1);
    
    // --- Draw the Filled Bar ---
    draw_set_color(c_maroon);
    
    // Draw the filled rectangle from the left (_x1) up to the calculated filled width
    draw_rectangle(_x1, _y1, _x1 + _filled_width, _y2, false);
    
    // --- Draw Text Overlay (Madness level) ---
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    
    var _display_text = "Madness: " + string(round(madness)) + "%";
    draw_text(_x1 + _bar_w / 2, _y1 + _bar_h / 2, _display_text);
}
