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
	//var _sml = menu_level;
	
	// Pause menu
	switch(menu_level){
		case 0: 
			switch(pos){
				// Starts game
				case 0: room_goto_next(); break;
				// Settings
				case 1: menu_level = 1; break;
				// Quits game
				case 2: game_end(); break;
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
					menu_level = 3;
					pos = 0;
					break;
				// Audio
				case 2:
					menu_level = 4;
					pos = 0;
					break;
				// Controls
				case 3:
				
					break;
				// Back
				case 4:
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
			
		// Brightness
		case 3:
			switch(pos){
				// 100%
				case 0:
					global.brightness = 1 - 1;
					brightness_pos = 0;
					break;
				// 80%
				case 1:
					global.brightness = 1 - 0.8;
					brightness_pos = 1;
					break;
				// 60%
				case 2:
					global.brightness = 1 - 0.6;
					brightness_pos = 2;
					break;
				// 40%
				case 3:
					global.brightness = 1 - 0.4;
					brightness_pos = 3;
					break;
				// 20%
				case 4:
					global.brightness = 1 - 0.2;
					brightness_pos = 4;
					break;
				// 0%
				/*case 5:
					global.brightness = 1 - 0.01;
					brightness_pos = 5;
					break;*/
				// Back
				case 5:
					menu_level = 1;
					pos = 0;
					break;
			}
			
			break;
			
		// Audio
		case 4:
			switch(pos){
				// Toggle music
				case 0:
					// Flips true/false
					global.music_on = !global.music_on
					
					if(global.music_on){
						// Plays the music for the current room immediately
						play_room_music();
					}
					else{
						// Stops the current track
						if(global.current_music != noone){
							audio_stop_sound(global.current_music);
							// Resets so it can start fresh when turned back on
							global.current_music = noone;
						}
					}
					break;
					
				// Toggle sound
				case 1:
					global.sound_on = !global.sound_on;
					break;
					
				// Back
				case 2:
					menu_level = 1;
					pos = 0;
					break;
			}
			
			break;
	}
		
	// Sets position back
	//if _sml != menu_level{ pos = 0};
		
	// The correct option length
	op_length = array_length(option[menu_level]);
}

// Sets the window size text
option[1, 0] = "Windows Size < " + option[2, window_size_pos] + " >";
option[1, 1] = "Brightness < " + option[3, brightness_pos] + " >";
option[1, 2] = "Audio < " + option[4, audio_pos] + " >";

// Updates audio menu text
option[4, 0] = "Music: " + (global.music_on ? "On" : "Off");
option[4, 1] = "Sound: " + (global.sound_on ? "On" : "Off");