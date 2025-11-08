// Gets inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_enter);

// Stores number of options in the current menu
op_length = array_length(option[menu_level]);

// Moves through the menu
pos += down_key - up_key;
if pos >= op_length{ pos = 0};
if pos < 0{ pos = op_length - 1};

// Using the options
if accept_key{
	// sml: start menu level
	var _sml = menu_level;
	
	// Pause menu
	switch(menu_level){
		case 0: 
			switch(pos){
				// Continues game
				case 0: global.is_paused = false; break;
				// Settings
				case 1: menu_level = 1; break;
				// Quits game
				case 2: global.is_paused = false; game_end(); break;
				}
			break;
	
		// Settings
		case 1: 
			switch(pos){
				// Window size
				case 0:
				
					break;
				// Brightness
				case 1:
				
					break;
				// Controls
				case 2:
				
					break;
				// Back
				case 3:
					menu_level = 0;
					break;
				}
			break;
		}
		
	// Sets position back
	if _sml != menu_level{ pos = 0};
		
	// The correct option length
	op_length = array_length(option[menu_level]);
}