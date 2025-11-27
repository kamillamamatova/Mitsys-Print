// Gets inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_enter);

// Stores number of options in the current menu
//op_length = array_length(option[menu_level]);

// Moves through the menu
pos += down_key - up_key;
if pos >= op_length{ pos = 0};
if pos < 0{ pos = op_length - 1};

// Using the options
if accept_key{
	// sml: start menu level
	//var _sml = menu_level;
	
	// Pause menu
	switch(menu_level){
		case 0: 
			switch(pos){
				// Continues game
				case 0: global.is_paused = false; break;
				// Settings
				case 1: menu_level = 1; pos = 0; break;
				// Quits game
				case 2: global.is_paused = false; game_end(); break;
				}
			break;
	
		// Settings
		case 1: 
			switch(pos){
				// Window size
				case 0:
					menu_level = 2;
					pos = 0;
					break;
				// Brightness
				case 1:
					// Cycles brightness
					// 0.0 to 0.2 to 0.4 to 0.6 to 0.8 to 0.0
					global.brightness += 0.2;
					
					if(global.brightness > 0.2){
						global.brightness = 0;
					}
					
					// Updates the text to show %
					// 0.0 is 100% bright and 0.2 is 80% bright
					var _percent = string(round((1 - global.brightness) * 100));
					option[1, 1] = "Brightness: " + _percent + "%";
					break;
				// Controls
				case 2:
				
					break;
				// Back
				case 3:
					menu_level = 0;
					pos = 0;
					break;
				}
			break;
		
		// Window size
		case 2:
			switch(pos){
				// x1
				case 0:
					window_set_size(320, 240);
					surface_resize(application_surface, 320, 240);
					window_size_pos = 0;
					break;
				// x2
				case 1:
					window_set_size(640, 480);
					surface_resize(application_surface, 640, 480);
					window_size_pos = 1;
					break;
				// x3
				case 2:
					window_set_size(960, 720);
					surface_resize(application_surface, 960, 720);
					window_size_pos = 2;
					break;
				// Back
				case 3:
					menu_level = 1;
					pos = 0;
					break;
			}
			break;
		}
		
	// Sets position back
	// if _sml != menu_level{ pos = 0};
		
	// The correct option length
	op_length = array_length(option[menu_level]);
}

// Sets the window size text
if(menu_level == 1){
	option[1, 0] = "Windows Size < " + option[2, window_size_pos] + " >";
}