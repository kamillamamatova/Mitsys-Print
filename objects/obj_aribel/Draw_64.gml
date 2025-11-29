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